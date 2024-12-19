/*
This module is extremely similar to fifo. 
Only difference for now is when reseting we set each value to 32, 33... and set the queue to full
Flushing mechanism is not implemented yet
The PRF_IDX_SIZE is $clog2(PHYSICAL_REG_COUNT)
The QUEUE_DEPTH is PHYSICAL_REG_COUNT - 32
PHYSICAL_REG_COUNT has to be the same with rrat and rat
*/

module free_list
// import rv32i_types::*;
import params::*;
#(
    localparam int unsigned QUEUE_DEPTH = FREE_LIST_DEPTH,
    localparam int unsigned HEAD_TAIL_SIZE = $clog2(QUEUE_DEPTH)-1,
    localparam [31:0] QUEUE_DEPTH_TOP = QUEUE_DEPTH - 1
)
(
    input   logic               clk,
    input   logic               rst,
    input   logic               late_flush,

    input   logic               enqueue,
    input   logic               dequeue,

    input   logic   [PRF_IDX_HIBIT:0]      wdata,
    output  logic   [PRF_IDX_HIBIT:0]      rdata,

    output  logic               full,
    output  logic               empty,
    output  logic   [HEAD_TAIL_SIZE:0]      ebrfl_head_wdata,
    output  logic   [HEAD_TAIL_SIZE+1:0]    ebrfl_count_wdata,
    input logic   [HEAD_TAIL_SIZE : 0]      ebrfl_head_eflush,
    input logic    [HEAD_TAIL_SIZE+1:0]      ebrfl_count_eflush,

    input   logic                       bra_done,
    input   logic                       bra_mispredict
);

    logic [PRF_IDX_HIBIT:0] queue [QUEUE_DEPTH];
    
    // head points to the next pop element
    // tail points to the next available space
    logic [HEAD_TAIL_SIZE : 0] head, tail;
    // count range from 0 to QUEUE_DEPTH, need to be one bit bigger than head & tail
    logic [HEAD_TAIL_SIZE + 1:0] count;

    // PROTECT FROM ADDING physical register 0 to the free list
    logic enqueue_safe;

    int unsigned j;
    assign j = 32;

    assign full  = (count >= QUEUE_DEPTH[HEAD_TAIL_SIZE + 1:0]); 
    assign empty = (count == 0); 
    assign rdata = queue[head];
    assign enqueue_safe = (wdata == '0) ? '0 : enqueue; 

    always_comb begin
        ebrfl_count_wdata = count;
        ebrfl_head_wdata = head;
        if(rst) begin
            ebrfl_head_wdata  = '0;
            ebrfl_count_wdata = QUEUE_DEPTH[HEAD_TAIL_SIZE + 1:0];
        end
        else if (late_flush) begin
            ebrfl_head_wdata  = tail;
            ebrfl_count_wdata = QUEUE_DEPTH[HEAD_TAIL_SIZE + 1:0];
        end else if (bra_done && bra_mispredict) begin
            ebrfl_head_wdata = ebrfl_head_eflush;
            ebrfl_count_wdata = ebrfl_count_eflush;
        end
        //simulteneous read write only allowed when not empty
        else begin
            if (enqueue_safe && dequeue && !empty) begin
                ebrfl_head_wdata = (head == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE:0]) ? '0 : (head + 1'b1);
            end else if (enqueue_safe && !dequeue && !full) begin
                ebrfl_count_wdata = count + 1'b1;
            end else if (!enqueue_safe && dequeue && !empty) begin
                ebrfl_count_wdata = count - 1'b1;
                ebrfl_head_wdata = (head == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE:0]) ? '0 : (head + 1'b1);
            end
        end
    end

    always_ff @(posedge clk) begin
        if(rst) begin
            for(int unsigned i = 32; i < QUEUE_DEPTH + 32; i++) begin
                queue[i-j] <= (PRF_IDX_SIZE)'(i);
            end
            head  <= '0;
            tail  <= '0;
            count <= QUEUE_DEPTH[HEAD_TAIL_SIZE + 1:0];
        end
        else if (late_flush) begin
            head  <= tail;
            count <= QUEUE_DEPTH[HEAD_TAIL_SIZE + 1:0];
        end else if (bra_done && bra_mispredict) begin
            head <= ebrfl_head_eflush;
            tail <= tail;
            count <= ebrfl_count_eflush;
        end
        //simulteneous read write only allowed when not empty
        else begin
            if (enqueue_safe && dequeue && !empty) begin
                queue[tail] <= wdata;
                tail <= (tail == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE:0]) ? '0 : (tail + 1'b1);
                head <= (head == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE:0]) ? '0 : (head + 1'b1);
            end else if (enqueue_safe && !dequeue && !full) begin
                count <= count + 1'b1;
                queue[tail] <= wdata;
                tail <= (tail == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE:0]) ? '0 : (tail + 1'b1);
            end else if (!enqueue_safe && dequeue && !empty) begin
                count <= count - 1'b1;
                head <= (head == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE:0]) ? '0 : (head + 1'b1);
            end
        end
    end

endmodule : free_list
