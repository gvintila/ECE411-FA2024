module cdb_fifo
import rv32i_types::*;
import params::*;
#(
    parameter int QUEUE_DEPTH = 3,
    localparam int HEAD_TAIL_SIZE = $clog2(QUEUE_DEPTH)-1,
    localparam [31:0] QUEUE_DEPTH_TOP = QUEUE_DEPTH - 1
)
(
    input   logic               clk,
    input   logic               rst,

    input   logic               enqueue,
    input   logic               dequeue,

    input   cdb_t               wdata,
    output  cdb_t               rdata,

    output  logic               full,
    output  logic               empty,

    input   logic                       bra_done,
    input   logic                       bra_mispredict,
    input   logic   [EBR_MASK_SIZE-1:0] bra_id
);

    localparam int QUEUE_DEPTH_SIGNED = QUEUE_DEPTH;

    cdb_t queue [QUEUE_DEPTH];
    
    logic [EBR_MASK_SIZE-1:0]   resolve_array       [QUEUE_DEPTH];
    logic                       invalid_array       [QUEUE_DEPTH];

    generate for (genvar i = 0; i < QUEUE_DEPTH_SIGNED; i++) begin : cdb_fifo_ebr
        ebr_resolve ebr_resolve (
            .in_mask(queue[i].ebr_mask),
            .bra_id(bra_id),
            .bra_mispredict(bra_mispredict),
            .out_mask(resolve_array[i]),
            .invalid(invalid_array[i])
        );
    end endgenerate
    
    // head points to the next pop element
    // tail points to the next available space
    logic [HEAD_TAIL_SIZE : 0] head, tail;
    // count range from 0 to QUEUE_DEPTH, need to be one bit bigger than head & tail
    logic [HEAD_TAIL_SIZE + 1:0] count;

    assign full  = (count >= QUEUE_DEPTH[HEAD_TAIL_SIZE + 1:0]); 
    assign empty = (count == 0); 
    assign rdata = queue[head];

    always_ff @(posedge clk) begin
        if(rst) begin
            for(int i = 0 ; i < QUEUE_DEPTH ; i++) begin
                queue[i] <= '0;
            end
            head  <= '0;
            tail  <= '0;
            count <= '0;
        end
        //simulteneous read write only allowed when not empty and not full
        else begin
            if (bra_done) begin
                for(int i = 0 ; i < QUEUE_DEPTH ; i++) begin
                    queue[i].ebr_mask <= resolve_array[i];
                    queue[i].valid <= queue[i].valid && !invalid_array[i];
                end
            end
            if (enqueue && dequeue && !empty) begin
                queue[tail] <= wdata;
                tail <= (tail == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE:0]) ? '0 : (tail + 1'b1);
                head <= (head == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE:0]) ? '0 : (head + 1'b1);
            end else if (enqueue && !dequeue && !full) begin
                count <= count + 1'b1;
                queue[tail] <= wdata;
                tail <= (tail == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE:0]) ? '0 : (tail + 1'b1);
            end else if (!enqueue && dequeue && !empty) begin
                count <= count - 1'b1;
                head <= (head == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE:0]) ? '0 : (head + 1'b1);
            end
        end
    end

endmodule : cdb_fifo
