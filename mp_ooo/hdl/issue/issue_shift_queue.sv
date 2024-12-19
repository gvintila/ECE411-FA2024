/*
 *  The issue shift queue is a collapsing queue that enqueues new values at the bottom and shifts
 *  each slot upwards until it reaches the top of the queue or gets dequeued out. Slots toward
 *  the top of the queue have higher priority for being issued.
 */   
module issue_shift_queue
import rv32i_types::*;
import params::*;
#(
    parameter int QUEUE_DEPTH = 5,
    parameter int unsigned QUEUE_DEPTH_U = $unsigned(QUEUE_DEPTH),
    localparam int HEAD_TAIL_SIZE = $clog2(QUEUE_DEPTH) - 1
)
(
    input   logic                           clk,
    input   logic                           rst,

    // Signals from/to reservation station
    input   logic                           enqueue,
    input   logic                           dequeue,
    input   rstation_t                      wdata,
    output  rstation_issue_t                rdata,
    output  logic                           ready_out,
    output  logic                           ready_in,

    // Signals from CDB
    input   cdb_t                           cdb_out[CDB_WIDTH],
    input   logic                           cdb_bc[CDB_WIDTH],

    // Signals from ROB
    input   logic                           late_flush,

    // Signals from EBR
    input   logic                           bra_done,
    input   logic                           bra_mispredict,
    input   logic   [EBR_MASK_SIZE-1:0]     bra_id
);

    rstation_t                      queue           [QUEUE_DEPTH];
    rstation_t                      queue_next      [QUEUE_DEPTH];
    logic   [QUEUE_DEPTH-1:0]       queue_state;

    logic   [HEAD_TAIL_SIZE:0]      ready_out_idx;

    logic   [EBR_MASK_SIZE-1:0]     resolve_array   [QUEUE_DEPTH];
    logic                           invalid_array   [QUEUE_DEPTH];

    generate for (genvar i = 0; i < QUEUE_DEPTH; i++) begin : issue_fifo_ebr
        ebr_resolve ebr_resolve (
            .in_mask(queue[i].ebr_mask),
            .bra_id(bra_id),
            .bra_mispredict(bra_mispredict),
            .out_mask(resolve_array[i]),
            .invalid(invalid_array[i])
        );
    end endgenerate

    always_ff @(posedge clk) begin
        if (rst || late_flush) begin
            for(int unsigned i = 0; i < QUEUE_DEPTH; i++) begin
                queue[i].valid      <= '0;
            end
        end
        else begin
            // Setting up enqueue for first slot
            if (enqueue) begin
                queue[0]            <= wdata;
            end
            else begin
                queue[0]            <= 'x;
                queue[0].valid      <= '0;
            end

            // Setting up new writes for each slot in queue
            for (int unsigned i = 0; i < QUEUE_DEPTH_U - 1; i++) begin
                if (!queue_state[i] && !queue_state[i+1]) begin
                    queue[i+1]          <= queue_next[i];
                end
                else if (queue_state[i]) begin
                    queue[i]            <= queue_next[i];
                end
            end

            // Setting up write for top most entry
            if (queue_state[QUEUE_DEPTH-1]) begin
                queue[QUEUE_DEPTH-1]    <= queue_next[QUEUE_DEPTH-1];
            end


        end
    end

    always_comb begin
        ready_out       = '0;
        ready_out_idx   = 'x;
        rdata           = 'x;

        // Check for latest entry ready to issue
        for (int i = QUEUE_DEPTH-1; i >= 0; i--) begin
            if (queue[$unsigned(i)].valid 
                && queue[$unsigned(i)].prs1_ready && queue[$unsigned(i)].prs2_ready 
                && !(bra_done && invalid_array[$unsigned(i)])) begin
                ready_out       = '1;
                ready_out_idx   = $unsigned((HEAD_TAIL_SIZE+1'b1)'(i));
                break;
            end
        end

        // Package rdata for issue
        if (ready_out) begin
            rdata.inst          = queue[ready_out_idx].inst;
            rdata.prs1_s        = queue[ready_out_idx].prs1_s;
            rdata.prs2_s        = queue[ready_out_idx].prs2_s;
            rdata.prs2_r        = queue[ready_out_idx].prs2_r; 
            rdata.prd_s         = queue[ready_out_idx].prd_s;
            rdata.lrd_s         = queue[ready_out_idx].lrd_s;
            rdata.bp_target     = queue[ready_out_idx].bp_target;
            rdata.pc            = queue[ready_out_idx].pc;
            rdata.rob_id        = queue[ready_out_idx].rob_id;
            rdata.eu_opcode     = queue[ready_out_idx].eu_opcode;
            rdata.bra_id        = queue[ready_out_idx].bra_id;
            rdata.ebr_mask      = queue[ready_out_idx].ebr_mask;
            if (bra_done)
                rdata.ebr_mask  = resolve_array[ready_out_idx];
        end

        // Check for state of queue
        queue_state     = '0;

        // 0 = Free to take (will be shifted up)
        // 1 = Cannot take (not shifted up)
        for (int i = QUEUE_DEPTH-1; i >= 0; i--) begin
            if (!queue[i].valid) begin
                queue_state[i]          = '0;
                break;
            end
            else begin
                queue_state[i]          = '1;
            end
        end

        // New entry can be taken if first queue entry will be free next cycle
        ready_in    = !queue_state[0];

        // Set up next state of queue
        queue_next  = queue;

        // Continuously update each entry with new incoming data
        for (int unsigned i = 0; i < QUEUE_DEPTH; i++) begin
            // Check EBR
            if (bra_done) begin
                queue_next[i].ebr_mask  = resolve_array[i];
                queue_next[i].valid     = queue[i].valid && !invalid_array[i];
            end

            // Check CDB
            for (int unsigned j = 0; j < CDB_WIDTH; j++) begin
                if (cdb_bc[j]) begin
                    if (queue[i].prs1_s == cdb_out[j].prd_s) begin
                        queue_next[i].prs1_ready = 1'b1;
                    end
                    if (queue[i].prs2_s == cdb_out[j].prd_s) begin
                        queue_next[i].prs2_ready = 1'b1;
                    end
                end
            end

            if (dequeue && ready_out_idx == (HEAD_TAIL_SIZE+1'b1)'(i)) begin
                queue_next[i].valid     = '0;
            end
        end
    end

endmodule : issue_shift_queue
