/*
 *  The BIG CDB queue is a collapsing queue that enqueues new values at the bottom and shifts
 *  each slot upwards until it reaches the top of the queue or gets dequeued out. Slots toward
 *  the top of the queue have higher priority for being issued. The queue dynamically sorts for
 *  double enqueues.
 */   
module BIG_cdb_fifo_2
import rv32i_types::*;
import params::*;
#(
    parameter int QUEUE_DEPTH = 10,
    parameter int unsigned QUEUE_DEPTH_U = $unsigned(QUEUE_DEPTH),
    localparam int HEAD_TAIL_SIZE = $clog2(QUEUE_DEPTH) - 1,

    // Index determines priority for enqueue (highest is 0, lowest is 4)
    localparam int ENQUEUE_SIZE = 5,
    localparam int ENQUEUE_HIBIT = $clog2(ENQUEUE_SIZE) - 1
)
(
    input   logic                           clk,
    input   logic                           rst,

    // Signals from/to reservation station
    input   logic                           enqueue[ENQUEUE_SIZE],
    output  logic                           dequeue_bb[ENQUEUE_SIZE],
    // dequeue_bb dequeues the baby CDB fifos

    input   cdb_t                           wdata[ENQUEUE_SIZE],
    output  cdb_t                           rdata,
    
    output  logic                           cdb_bc,
    
    // Signals from EBR
    input   logic                           bra_done,
    input   logic                           bra_mispredict,
    input   logic   [EBR_MASK_SIZE-1:0]     bra_id
);

    cdb_t                           queue               [QUEUE_DEPTH];
    cdb_t                           queue_next          [QUEUE_DEPTH];
    logic   [QUEUE_DEPTH-1:0]       queue_state;

    logic   [HEAD_TAIL_SIZE:0]      ready_out_idx;
    logic   [ENQUEUE_HIBIT:0]       enqueue1, enqueue2;
    logic   [1:0]                   enqueue_state;

    // EBR
    logic   [EBR_MASK_SIZE-1:0]     resolve_queue_array [QUEUE_DEPTH];
    logic                           invalid_queue_array [QUEUE_DEPTH];

    // For queue
    generate for (genvar i = 0; i < QUEUE_DEPTH; i++) begin : big_cdb_queue_ebr
        ebr_resolve ebr_resolve (
            .in_mask(queue[i].ebr_mask),
            .bra_id(bra_id),
            .bra_mispredict(bra_mispredict),
            .out_mask(resolve_queue_array[i]),
            .invalid(invalid_queue_array[i])
        );
    end endgenerate

    logic [EBR_MASK_SIZE-1:0]       resolve_in_array    [5];
    logic                           invalid_in_array    [5];

    // For inputs
    generate for (genvar i = 0; i < 5; i++) begin : big_cdb_input_ebr
        ebr_resolve ebr_resolve (
            .in_mask(wdata[i].ebr_mask),
            .bra_id(bra_id),
            .bra_mispredict(bra_mispredict),
            .out_mask(resolve_in_array[i]),
            .invalid(invalid_in_array[i])
        );
    end endgenerate

    always_ff @(posedge clk) begin
        if (rst) begin
            for(int unsigned i = 0; i < QUEUE_DEPTH; i++) begin
                queue[i].valid      <= '0;
            end
        end
        else begin
            // Setting up enqueues for first slots
            if (enqueue_state == 2'b10) begin
                queue[0]            <= wdata[enqueue2];
                queue[1]            <= wdata[enqueue1];
            end
            else if (enqueue_state == 2'b01) begin
                queue[0]            <= wdata[enqueue1];
                queue[1]            <= 'x;
                queue[1]            <= '0;
            end
            else begin
                queue[0]            <= 'x;
                queue[0].valid      <= '0;
                queue[1]            <= 'x;
                queue[1].valid      <= '0;
            end

            // Setting up new writes for each slot in queue
            for (int unsigned i = 0; i < QUEUE_DEPTH_U - 2; i++) begin
                if (!queue_state[i] && !queue_state[i+1] && !queue_state[i+2]) begin
                    queue[i+2]          <= queue_next[i];
                end
                else if (queue_state[i]) begin
                    queue[i]            <= queue_next[i];
                end
            end

            // Setting up write for top most entries to ensure data properly leaves
            if (queue_state[QUEUE_DEPTH-2]) begin
                queue[QUEUE_DEPTH-2]    <= queue_next[QUEUE_DEPTH-2];
            end

            if (queue_state[QUEUE_DEPTH-1]) begin
                queue[QUEUE_DEPTH-1]    <= queue_next[QUEUE_DEPTH-1];
            end

        end
    end

    always_comb begin
        cdb_bc          = '0;
        ready_out_idx   = 'x;
        rdata           = 'x;

        // Check for latest entry ready to issue
        for (int i = QUEUE_DEPTH-1; i >= 0; i--) begin
            if (queue[$unsigned(i)].valid) begin
                cdb_bc          = '1;
                ready_out_idx   = $unsigned((HEAD_TAIL_SIZE+1'b1)'(i));
                rdata           = queue[ready_out_idx];
                break;
            end
        end

        // Check for state of queue
        queue_state     = '0;

        // 0 = Free to take (will be shifted up)
        // 1 = Cannot take (not shifted up)
        for (int i = QUEUE_DEPTH-1; i >= 0; i--) begin
            if (!queue[i].valid && !queue[i-1].valid) begin
                queue_state[i]  = '0;
                break;
            end
            else begin
                queue_state[i]  = '1;
            end
        end

        // Set up next state of queue
        queue_next      = queue;

        // Continuously update each entry with new incoming data
        for (int unsigned i = 0; i < QUEUE_DEPTH; i++) begin
            // Check EBR
            if (bra_done) begin
                queue_next[i].ebr_mask  = resolve_queue_array[i];
                queue_next[i].valid     = queue[i].valid && !invalid_queue_array[i];
            end

            if (ready_out_idx == (HEAD_TAIL_SIZE+1'b1)'(i)) begin
                queue_next[i].valid     = '0;
            end
        end

        // Determine values to be enqueued
        enqueue_state   = '0;
        enqueue1        = '0;
        enqueue2        = '0;

        for (int unsigned i = 0; i < 5; i++)
            dequeue_bb[i]   = '0;

        // Find first enqueue
        if (!queue_state[0]) begin
            for (int unsigned i = 0; i < ENQUEUE_SIZE; i++) begin
                if (enqueue[i] && !(bra_done && invalid_in_array[i])) begin
                    enqueue_state   = 2'b01;
                    dequeue_bb[i]   = '1;
                    enqueue1        = (ENQUEUE_HIBIT+1'b1)'(i);
                    break;
                end
            end
        end
        // Find second enqueue
        if (!queue_state[0] && !queue_state[1]) begin
            for (int unsigned i = 0; i < ENQUEUE_SIZE; i++) begin
                if (enqueue[i] && !(bra_done && invalid_in_array[i])
                    && enqueue1 != (ENQUEUE_HIBIT+1'b1)'(i)) begin
                    enqueue_state   = 2'b10;
                    dequeue_bb[i]   = '1;
                    enqueue2        = (ENQUEUE_HIBIT+1'b1)'(i);
                    break;
                end
            end
        end
    end

endmodule : BIG_cdb_fifo_2
