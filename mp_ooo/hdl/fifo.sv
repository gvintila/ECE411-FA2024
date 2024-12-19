module fifo
// import rv32i_types::*;
#(
    parameter int DATA_WIDTH = 32,
    parameter int QUEUE_DEPTH = 5,
    localparam int HEAD_TAIL_SIZE = $clog2(QUEUE_DEPTH)-1,
    localparam [31:0] QUEUE_DEPTH_TOP = QUEUE_DEPTH - 1
)
(
    input   logic               clk,
    input   logic               rst,

    input   logic               enqueue,
    input   logic               dequeue,

    input   logic   [DATA_WIDTH-1:0]      wdata,
    output  logic   [DATA_WIDTH-1:0]      rdata,

    output  logic               full,
    output  logic               empty
);

    logic [DATA_WIDTH-1:0] queue [QUEUE_DEPTH];
    
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

endmodule : fifo
