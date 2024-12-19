module BIG_cdb_fifo
import rv32i_types::*;
import params::*;
#(
    parameter int QUEUE_DEPTH = 10,
    localparam int HEAD_TAIL_SIZE = $clog2(QUEUE_DEPTH)-1,
    localparam [31:0] QUEUE_DEPTH_TOP = QUEUE_DEPTH - 1,

    // Index determines priority for enqueue (highest is 0, lowest is 4)
    localparam int ENQUEUE_SIZE = 5,
    localparam int ENQUEUE_HIBIT = $clog2(ENQUEUE_SIZE) - 1
)
(
    input   logic                       clk,
    input   logic                       rst,

    input   logic                       enqueue[ENQUEUE_SIZE],
    output  logic                       dequeue_bb[ENQUEUE_SIZE],
    // dequeue_bb dequeues the baby CDB fifos

    input   cdb_t                       wdata[ENQUEUE_SIZE],
    output  cdb_t                       rdata,

    //output  logic                       full,
    output  logic                       cdb_bc,

    input   logic                       bra_done,
    input   logic                       bra_mispredict,
    input   logic   [EBR_MASK_SIZE-1:0] bra_id
);

    localparam int QUEUE_DEPTH_SIGNED = QUEUE_DEPTH;

    cdb_t                       queue               [QUEUE_DEPTH];
    logic [1:0]                 enqueue_state;          // Determines amount of enqueues happening
    logic [ENQUEUE_HIBIT:0]     enqueue1, enqueue2;     // Determines which enqueue will happen first
    logic                       full, empty;

    // EBR
    logic [EBR_MASK_SIZE-1:0]   resolve_queue_array [QUEUE_DEPTH];
    logic                       invalid_queue_array [QUEUE_DEPTH];

    // For queue
    generate for (genvar i = 0; i < QUEUE_DEPTH_SIGNED; i++) begin : cdb_fifo_ebr
        ebr_resolve ebr_resolve (
            .in_mask(queue[i].ebr_mask),
            .bra_id(bra_id),
            .bra_mispredict(bra_mispredict),
            .out_mask(resolve_queue_array[i]),
            .invalid(invalid_queue_array[i])
        );
    end endgenerate

    logic [EBR_MASK_SIZE-1:0]   resolve_in_array    [5];
    logic                       invalid_in_array    [5];

    // For inputs
    generate for (genvar i = 0; i < 5; i++) begin
        ebr_resolve ebr_resolve (
            .in_mask(wdata[i].ebr_mask),
            .bra_id(bra_id),
            .bra_mispredict(bra_mispredict),
            .out_mask(resolve_in_array[i]),
            .invalid(invalid_in_array[i])
        );
    end endgenerate
    
    // head points to the next pop element
    // tail points to the next available space
    logic [HEAD_TAIL_SIZE : 0] head, tail, next_tail1, next_tail2;
    // count range from 0 to QUEUE_DEPTH, need to be one bit bigger than head & tail
    logic [HEAD_TAIL_SIZE + 1:0] count;
    logic [HEAD_TAIL_SIZE + 1:0] next_count;

    // Do not try enqueuing if queue cannot accept 2 possible enqueues
    assign full     = (count >= (QUEUE_DEPTH[HEAD_TAIL_SIZE + 1:0] - 1'b1)); 
    assign empty    = (count == 0);
    assign rdata    = queue[head];
    assign cdb_bc   = !empty && rdata.valid;

    always_ff @(posedge clk) begin
        if (rst) begin
            for(int i = 0 ; i < QUEUE_DEPTH ; i++) begin
                queue[i] <= '0;
            end
            head  <= '0;
            tail  <= '0;
            count <= '0;
        end
        else begin
            // EBR
            if (bra_done) begin
                for (int unsigned i = 0 ; i < QUEUE_DEPTH ; i++) begin
                    queue[i].ebr_mask <= resolve_queue_array[i];
                    queue[i].valid <= queue[i].valid && !invalid_queue_array[i];
                end
            end

            // Only enqueue stuff if not full
            if (!full) begin
                // Setup first enqueue
                unique case (enqueue_state)
                    2'b00: begin    // No enqueue
                    end
                    2'b01: begin    // Enqueue once
                        tail <= next_tail1;
                        queue[tail] <= wdata[enqueue1];
                        if (bra_done) begin
                            queue[tail].ebr_mask <= resolve_in_array[enqueue1];
                        end
                    end
                    2'b10: begin    // Enqueue twice
                        tail <= next_tail2;
                        queue[tail] <= wdata[enqueue1];
                        queue[next_tail1] <= wdata[enqueue2];
                        if (bra_done) begin
                            queue[tail].ebr_mask <= resolve_in_array[enqueue1];
                            queue[next_tail1].ebr_mask <= resolve_in_array[enqueue2];
                        end
                    end
                    default: begin
                    end
                endcase
            end

            // Always send data if available (also flush out invalid data)
            if (!empty) begin
                queue[head].valid   <= '0;
                head                <= (head == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE:0]) ? '0 : (head + 1'b1);
            end

            count <= next_count;
        end
    end

    always_comb begin
        // Calculate indices for two tails
        next_tail1      = (tail == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE:0]) ? '0 : (tail + 1'b1);
        next_tail2      = (next_tail1 == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE:0]) ? '0 : (next_tail1 + 1'b1);

        enqueue_state   = '0;
        enqueue1        = '0;
        enqueue2        = '0;

        for (int unsigned i = 0; i < 5; i++)
            dequeue_bb[i]   = '0;

        if (!full) begin
            // Find first enqueue
            for (int unsigned i = 0; i < ENQUEUE_SIZE; i++) begin
                if (enqueue[i] && !(bra_done && invalid_in_array[i])) begin
                    enqueue_state       = 2'b01; 
                    dequeue_bb[i]       = '1;
                    enqueue1            = (ENQUEUE_HIBIT+1'b1)'(i);
                    break;
                end
            end
            // Find second enqueue
            for (int unsigned i = 0; i < ENQUEUE_SIZE; i++) begin
                if (enqueue[i] && !(bra_done && invalid_in_array[i])
                    && enqueue1 != (ENQUEUE_HIBIT+1'b1)'(i)) begin
                    enqueue_state       = 2'b10; 
                    dequeue_bb[i]       = '1;
                    enqueue2            = (ENQUEUE_HIBIT+1'b1)'(i);
                    break;
                end
            end
        end

        if (!empty) begin
            unique case (enqueue_state)
                2'b00: next_count = count - 1'b1; 
                2'b01: next_count = count;
                2'b10: next_count = count + 1'b1;
                2'b11: next_count = 'x;
                default: begin
                end
            endcase
        end
        else begin
            unique case (enqueue_state)
                2'b00: next_count = count; 
                2'b01: next_count = count + 1'b1;
                2'b10: next_count = count + 2'b10;
                2'b11: next_count = 'x;
                default: begin
                end
            endcase
        end
    end

endmodule : BIG_cdb_fifo
