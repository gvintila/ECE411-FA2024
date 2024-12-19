module rob
import rv32i_types::*;
import params::*;
(
    input   logic                   clk,
    input   logic                   rst,

    input   logic                   disp_rob_enqueue,

    input   rob_entry_t             disp_rob_data,
    output  logic [ROB_IDX_SIZE - 1 : 0]  new_rob_id,

    input   logic                   cdb_bc[CDB_WIDTH],
    input   cdb_t                   cdb_out[CDB_WIDTH],

    // signal from sq directly for store 
    input  logic                    sq_to_rob_ready,
    input  cdb_t                    sq_to_rob_data,

    output  logic                   rob_full,

    output  logic                   commit,
    output  logic [PRF_IDX_HIBIT:0] commit_prd_addr,
    output  logic [4:0]             commit_rd_addr,
    output  logic [ROB_IDX_SIZE - 1 : 0]  commit_rob_id,

    input   logic [PRF_IDX_HIBIT:0] rrat_prd_stale,
    output  logic                   enqueue_free_list,
    output  logic                   late_flush,
    output  logic   [31:0]          late_flush_target,
    input   logic                   bra_done,
    input   logic                   bra_mispredict,
    input   logic [ROB_IDX_HIBIT:0] bra_rob_id
);

            rob_entry_t                 commit_data;
            logic                       rob_empty;

            // Converting CDB output for input to ROB on broadcast
            logic  [ROB_IDX_SIZE-1:0]   bc_rob_id[CDB_WIDTH];
            rob_entry_t                 bc_rob_wdata[CDB_WIDTH];

            logic                       flush_next;
            logic   [31:0]              target_flush_next;

            logic                       dequeue_rob_table;
            logic   [63:0]              order;


    rob_table #(.QUEUE_DEPTH(NUM_ROB_ENTRIES)) rob_table 
    (
        .full(rob_full),
        .empty(rob_empty),
        .*
    );

    always_ff @(posedge clk) begin
        if (rst) begin
            late_flush       <= '0;
            late_flush_target <= '0;
            order           <= '0;
        end else begin
            late_flush       <= flush_next;
            late_flush_target <= target_flush_next;
            if (commit) begin
                order  <= order + 'd1;
            end
        end
    end

    always_comb begin
        commit              = 1'b0;
        enqueue_free_list   = 1'b0;
        dequeue_rob_table   = 1'b0;

        flush_next          = 1'b0;

        for (int unsigned i = 0; i < CDB_WIDTH; i++)
            bc_rob_wdata[i]     = 'x;

        /*
           IMPORTANT NOTE!!!
            The not all member variables in 'bc_rob_wdata' are written
            to the ROB table. Please look inside the ROB table sv file
            and make sure that any new variables added here are also
            written to the rob table on a broadcast.
        */
        // Send data in for CDB broadcast
        for (int unsigned i = 0; i < CDB_WIDTH; i++) begin
            bc_rob_wdata[i].rs1_v           = cdb_out[i].prs1_v;
            bc_rob_wdata[i].rs2_v           = cdb_out[i].prs2_v;
            bc_rob_wdata[i].rd_v            = cdb_out[i].prd_v;
            bc_rob_wdata[i].pc_next         = cdb_out[i].pc_next;
            bc_rob_wdata[i].dmem_addr       = cdb_out[i].dmem_addr;
            bc_rob_wdata[i].dmem_rmask      = cdb_out[i].dmem_rmask;
            bc_rob_wdata[i].dmem_wmask      = cdb_out[i].dmem_wmask;
            bc_rob_wdata[i].dmem_rdata      = cdb_out[i].dmem_rdata;
            bc_rob_wdata[i].dmem_wdata      = cdb_out[i].dmem_wdata;
            bc_rob_wdata[i].is_flush        = cdb_out[i].is_flush;
            bc_rob_wdata[i].commit_ready    = 1'b1;

            bc_rob_id[i]                    = cdb_out[i].rob_id;
        end

        // Commit ready instructions
        commit_rd_addr  = commit_data.rd_s;
        commit_prd_addr = commit_data.prd_s;

        // Don't commit if early flushing
        if (!rob_empty && commit_data.commit_ready && !late_flush && !(bra_done && bra_mispredict)) begin
            enqueue_free_list   = (rrat_prd_stale == '0) ? '0 : 1'b1; 
            dequeue_rob_table   = 1'b1;

            if (commit_data.valid) begin
                commit          = 1'b1;
            end
            if (commit_data.is_flush && !commit_data.early_recover) begin
                flush_next      = 1'b1;
            end
        end

    end
                // RVFI
            logic           monitor_valid;
            logic   [63:0]  monitor_order;
            logic   [31:0]  monitor_inst;
            logic   [4:0]   monitor_rs1_addr;
            logic   [4:0]   monitor_rs2_addr;
            logic   [31:0]  monitor_rs1_rdata;
            logic   [31:0]  monitor_rs2_rdata;
            logic   [4:0]   monitor_rd_addr;
            logic   [31:0]  monitor_rd_wdata;
            logic   [31:0]  monitor_pc_rdata;
            logic   [31:0]  monitor_pc_wdata;
            logic   [31:0]  monitor_mem_addr;
            logic   [3:0]   monitor_mem_rmask;
            logic   [3:0]   monitor_mem_wmask;
            logic   [31:0]  monitor_mem_rdata;
            logic   [31:0]  monitor_mem_wdata;
            logic   [PRF_IDX_HIBIT:0]   monitor_prs1_addr;
            logic   [PRF_IDX_HIBIT:0]   monitor_prs2_addr;
            logic   [PRF_IDX_HIBIT:0]   monitor_prd_addr;

    assign monitor_valid     = commit;
    assign monitor_order     = order;
    assign monitor_inst      = commit_data.inst.word;
    assign monitor_rs1_addr  = commit_data.rs1_s;
    assign monitor_rs2_addr  = commit_data.rs2_s; 
    assign monitor_rs1_rdata = commit_data.rs1_v;
    assign monitor_rs2_rdata = commit_data.rs2_v;
    assign monitor_rd_addr   = commit_data.rd_s;
    assign monitor_rd_wdata  = commit_data.rd_v;
    assign monitor_pc_rdata  = commit_data.pc;
    assign monitor_pc_wdata  = commit_data.pc_next;
    assign monitor_mem_addr  = commit_data.dmem_addr;
    assign monitor_mem_rmask = commit_data.dmem_rmask;
    assign monitor_mem_wmask = commit_data.dmem_wmask;
    assign monitor_mem_rdata = commit_data.dmem_rdata;
    assign monitor_mem_wdata = commit_data.dmem_wdata;
    assign monitor_prs1_addr = commit_data.prs1_s;
    assign monitor_prs2_addr = commit_data.prs2_s;
    assign monitor_prd_addr  = commit_data.prd_s;

    assign target_flush_next  = commit_data.pc_next;

endmodule
