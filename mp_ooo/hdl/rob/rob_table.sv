module rob_table
import rv32i_types::*;
import params::*;
#(
    parameter int QUEUE_DEPTH = 5,
    localparam int HEAD_TAIL_SIZE = $clog2(QUEUE_DEPTH),
    localparam [31:0] QUEUE_DEPTH_TOP = QUEUE_DEPTH - 1
)
(
    input   logic                   clk,
    input   logic                   rst,

    input   logic                   disp_rob_enqueue,
    input   logic                   dequeue_rob_table,

    input   rob_entry_t             disp_rob_data,
    output  rob_entry_t             commit_data,
    output  [HEAD_TAIL_SIZE-1 : 0]  commit_rob_id,
    output  [HEAD_TAIL_SIZE-1 : 0]  new_rob_id,

    input   logic                   cdb_bc[CDB_WIDTH],
    input   [HEAD_TAIL_SIZE-1 : 0]  bc_rob_id[CDB_WIDTH],
    input   rob_entry_t             bc_rob_wdata[CDB_WIDTH],

    // data from sq for store at head
    input  logic                    sq_to_rob_ready,
    input  cdb_t                    sq_to_rob_data,

    output  logic                   full,
    output  logic                   empty,

    input   logic                   late_flush,
    input   logic                   bra_done,
    input   logic                   bra_mispredict,
    input   logic [ROB_IDX_HIBIT:0] bra_rob_id
);

    rob_entry_t queue [QUEUE_DEPTH];
    
    // head points to the next pop element
    // tail points to the next available space
    logic [HEAD_TAIL_SIZE-1 : 0] head, tail;
    // count range from 0 to QUEUE_DEPTH, need to be one bit bigger than head & tail
    logic [HEAD_TAIL_SIZE:0]        count;
    logic [ROB_IDX_HIBIT+1:0]     bra_rob_id_plus1;

    assign full             = (count >= QUEUE_DEPTH[HEAD_TAIL_SIZE:0]); 
    assign empty            = (count == 0); 
    assign commit_data      = queue[head];
    assign commit_rob_id    = head;
    assign new_rob_id       = tail;
    assign bra_rob_id_plus1   = (bra_rob_id == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE-1:0]) ? '0 : (bra_rob_id + 1'b1);;

    always_ff @(posedge clk) begin
        if(rst) begin
            for(int i = 0 ; i < QUEUE_DEPTH ; i++) begin
                queue[i] <= '0;
            end
            head  <= '0;
            tail  <= '0;
            count <= '0;
        end
        else if(late_flush) begin
            tail <= head;
            count <= '0;
        end
        else begin
            if (bra_done && bra_mispredict) begin // Early recovery rob tail move
                tail <= bra_rob_id_plus1[HEAD_TAIL_SIZE-1:0];
                if ({1'b0,head} < bra_rob_id_plus1) begin
                    count <= bra_rob_id_plus1 - head; 
                end else begin
                    count <= QUEUE_DEPTH[HEAD_TAIL_SIZE:0] - ({1'b0,head} - bra_rob_id_plus1);
                end
            end
            //simulteneous read write only allowed when not empty and not full
            else begin
                if (disp_rob_enqueue && dequeue_rob_table && !empty) begin
                    queue[tail] <= disp_rob_data;
                    tail <= (tail == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE-1:0]) ? '0 : (tail + 1'b1);
                    head <= (head == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE-1:0]) ? '0 : (head + 1'b1);
                end else if (disp_rob_enqueue && !dequeue_rob_table && !full) begin
                    count <= count + 1'b1;
                    queue[tail] <= disp_rob_data;
                    tail <= (tail == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE-1:0]) ? '0 : (tail + 1'b1);
                end else if (!disp_rob_enqueue && dequeue_rob_table && !empty) begin
                    count <= count - 1'b1;
                    head <= (head == QUEUE_DEPTH_TOP[HEAD_TAIL_SIZE-1:0]) ? '0 : (head + 1'b1);
                end

            end
            for (int unsigned i = 0; i < CDB_WIDTH; i++) begin
                if (cdb_bc[i]) begin
                    queue[bc_rob_id[i]].rs1_v           <= bc_rob_wdata[i].rs1_v;
                    queue[bc_rob_id[i]].rs2_v           <= bc_rob_wdata[i].rs2_v;
                    queue[bc_rob_id[i]].rd_v            <= bc_rob_wdata[i].rd_v;
                    queue[bc_rob_id[i]].pc_next         <= bc_rob_wdata[i].pc_next;
                    queue[bc_rob_id[i]].dmem_addr       <= bc_rob_wdata[i].dmem_addr;
                    queue[bc_rob_id[i]].dmem_rmask      <= bc_rob_wdata[i].dmem_rmask;
                    queue[bc_rob_id[i]].dmem_wmask      <= bc_rob_wdata[i].dmem_wmask;
                    queue[bc_rob_id[i]].dmem_rdata      <= bc_rob_wdata[i].dmem_rdata;
                    queue[bc_rob_id[i]].dmem_wdata      <= bc_rob_wdata[i].dmem_wdata;
                    queue[bc_rob_id[i]].is_flush        <= bc_rob_wdata[i].is_flush;
                    queue[bc_rob_id[i]].commit_ready    <= bc_rob_wdata[i].commit_ready;
                end
            end

            if(sq_to_rob_ready) begin
                    queue[head].rs1_v           <= sq_to_rob_data.prs1_v;
                    queue[head].rs2_v           <= sq_to_rob_data.prs2_v;
                    queue[head].rd_v            <= sq_to_rob_data.prd_v;
                    queue[head].pc_next         <= sq_to_rob_data.pc_next;
                    queue[head].dmem_addr       <= sq_to_rob_data.dmem_addr;
                    queue[head].dmem_rmask      <= sq_to_rob_data.dmem_rmask;
                    queue[head].dmem_wmask      <= sq_to_rob_data.dmem_wmask;
                    queue[head].dmem_rdata      <= sq_to_rob_data.dmem_rdata;
                    queue[head].dmem_wdata      <= sq_to_rob_data.dmem_wdata;
                    queue[head].is_flush        <= sq_to_rob_data.is_flush;
                    queue[head].commit_ready    <= '1;
            end
        end
    end

endmodule : rob_table
