module cpu
import rv32i_types::*;
import params::*;
(
    input   logic               clk,
    input   logic               rst,

    output  logic   [31:0]      bmem_addr,
    output  logic               bmem_read,
    output  logic               bmem_write,
    output  logic   [63:0]      bmem_wdata,
    input   logic               bmem_ready,

    input   logic   [31:0]      bmem_raddr,
    input   logic   [63:0]      bmem_rdata,
    input   logic               bmem_rvalid
);

    /* SIGNAL ***************************************************************************/
        
        // Cacheline Adapter
        logic                       cl_ready;
        logic   [31:0]              cl_raddr;
        logic   [255:0]             cl_rdata; 
        logic                       cl_resp;   
        
        // Memory Controller
        logic   [31:0]              mc_addr;
        logic                       mc_read;
        logic                       mc_write;
        logic   [255:0]             mc_wdata;

        // Cache
        logic   [31:0]              dcache_ufp_addr;
        logic   [3:0]               dcache_ufp_rmask;
        logic   [3:0]               dcache_ufp_wmask;
        logic   [31:0]              dcache_ufp_rdata;
        logic   [31:0]              dcache_ufp_wdata;
        logic                       dcache_ufp_resp;

        logic   [31:0]              dcache_dfp_addr;
        logic                       dcache_dfp_read;
        logic                       dcache_dfp_write;
        logic   [255:0]             dcache_dfp_rdata;
        logic   [255:0]             dcache_dfp_wdata;
        logic                       dcache_dfp_resp;

        logic   [31:0]              icache_ufp_addr;
        logic   [3:0]               icache_ufp_rmask;
        logic   [3:0]               icache_ufp_wmask;
        logic   [31:0]              icache_ufp_rdata;
        logic   [31:0]              icache_ufp_wdata;
        logic                       icache_ufp_resp;

        logic   [31:0]              icache_dfp_addr;
        logic                       icache_dfp_read;
        logic                       icache_dfp_write;
        logic   [255:0]             icache_dfp_rdata;
        logic   [255:0]             icache_dfp_wdata;
        logic                       icache_dfp_resp;

        // Fetch
        logic                       id_ft_dequeue;
        logic                       ft_iq_empty;
        logic   [31:0]              ft_iq_rdata;
        logic   [31:0]              ft_pcq_rdata;
        logic   [31:0]              ft_bpq_rdata;

        // Decode
        logic   [4:0]               rat_lrs1_s;
        logic   [4:0]               rat_lrs2_s;
        logic   [4:0]               id_rat_lrd_s;
        logic                       id_rat_lrd_web;
        logic   [PRF_IDX_HIBIT:0]   free_id_prd;
        logic                       id_free_dequeue;
        logic                       id_ready;
        id_disp_t                   id_disp_data;

        // Dispatcher
        logic   [PRF_IDX_HIBIT:0]   rat_prs1_s;
        logic   [PRF_IDX_HIBIT:0]   rat_prs2_s;
        logic                       rat_prs1_ready;
        logic                       rat_prs2_ready;
        logic                       free_empty;
        logic                       rob_full;
        logic   [ROB_IDX_HIBIT:0]   new_rob_id;
        logic                       disp_rob_enqueue;
        rob_entry_t                 disp_rob_data;
        logic                       disp_ready[DISP_WIDTH];
        logic                       disp_stall[DISP_WIDTH];
        rstation_t                  disp_rstation_data[DISP_WIDTH];

        // RS / Issue
        logic                       isq_alu_ready_in;
        logic                       isq_bmd_ready_in;
        logic                       isq_ls_ready_in;
        logic   [PRF_IDX_HIBIT:0]   prf_prs1_s[PRF_WIDTH];
        logic   [PRF_IDX_HIBIT:0]   prf_prs2_s[PRF_WIDTH];
        logic   [31:0]              prf_prs1_v_o[PRF_WIDTH];
        logic   [31:0]              prf_prs2_v_o[PRF_WIDTH];

        // EU
        eu_operand_t                alu_in;         // Controlled by RS
        logic                       alu_start;      // Controlled by RS
        logic                       alu_ready;      // Sent to RS
        logic                       alu_done;
        cdb_t                       alu_out;

        eu_operand_t                div_in;         // Controlled by RS
        logic                       div_start;      // Controlled by RS
        logic                       div_ready;      // Sent to RS
        logic                       div_done;
        cdb_t                       div_out;

        eu_operand_t                mult_in;         // Controlled by RS
        logic                       mult_start;      // Controlled by RS
        logic                       mult_ready;      // Sent to RS
        logic                       mult_done;
        cdb_t                       mult_out;

        eu_operand_t                bra_in;         // Controlled by RS
        logic                       bra_start;      // Controlled by RS
        logic                       bra_ready;      // Sent to RS
        logic                       bra_enqueue; 
        logic                       bra_done;
        logic                       bra_taken;
        cdb_t                       bra_out;

        eu_operand_t                ls_in;
        logic                       ls_start;
        logic                       ls_ready;
        logic                       ls_done;
        cdb_t                       ls_out;

        // CDB
        logic                       alu_bc_stall;
        logic                       mult_cdb_stall;
        logic                       div_cdb_stall;
        logic                       bra_bc_stall;
        logic                       ls_bc_stall;
        logic                       cdb_bc[CDB_WIDTH];
        cdb_t                       cdb_out[CDB_WIDTH];

        // CDB Writebacks
        logic   [31:0]              prf_prd_v_i[CDB_WIDTH];
        logic   [PRF_IDX_HIBIT:0]   prf_prd_s[CDB_WIDTH];
        logic   [4:0]               cdb_rat_lrd_s[CDB_WIDTH];
        logic   [PRF_IDX_HIBIT:0]   cdb_rat_prd_s[CDB_WIDTH];

        // ROB
        logic                       commit;
        logic [PRF_IDX_HIBIT:0]     commit_prd_addr;
        logic [4:0]                 commit_rd_addr;
        logic [ROB_IDX_HIBIT:0]     commit_rob_id;
        logic [PRF_IDX_HIBIT:0]     rrat_prd_stale;

        logic                       late_flush;
        logic   [31:0]              late_flush_target;
        logic                       enqueue_free_list;

        logic   [FREE_LIST_IDX_HIBIT:0]   ebrfl_head_wdata;
        logic   [FREE_LIST_IDX_HIBIT:0]   ebrfl_head_eflush;
        logic   [FREE_LIST_IDX_HIBIT+1:0] ebrfl_count_wdata;
        logic   [FREE_LIST_IDX_HIBIT+1:0] ebrfl_count_eflush;

        logic [PRF_IDX_HIBIT:0]     rrat_internal_array_out [32];
        logic [PRF_IDX_HIBIT:0]     rat_internal_array_out [32];
        logic [PRF_IDX_HIBIT:0]     ebrat_checkpoint_out [32];

        // LSQ
        logic                       id_lsq_enqueue;
        logic                       id_load_store;
        logic                       lq_enqueue;
        logic                       lq_dispatched;
        logic                       sq_enqueue;
        logic                       sq_dispatched;

        logic [31:0]                lsq_address;
        logic [3:0]                 lsq_mask;
        logic [31:0]                lsq_wdata;

        logic                       lq_full;
        logic                       lq_empty;
        logic                       sq_full;
        logic                       sq_empty;

        lsq_entry_t                 lsq_data;
        lq_entry_t                  lq_dmem_rdata;
        sq_entry_t                  sq_rdata;
        logic                       lq_dependency;

        logic                       ls_eu_data_ready;
        eu_operand_t                ls_eu_lsq_eu_operand;

        logic [3:0]                 lq_data_required;
        logic [31:0]                lq_data_forwarded;
        logic                       lq_invalid_array_lq;
        logic [EBR_MASK_SIZE-1:0]   lq_resolve_array_lq                     ;
        logic                       sq_invalid_array_sq;

        logic                       sq_to_rob_ready;
        cdb_t                       sq_to_rob_data;

        // EBR
        logic                       ebr_enqueue;
        logic                       ebr_full;
        logic   [EBR_MASK_SIZE-1:0] ebr_enqueue_mask;

        logic   [EBR_MASK_SIZE-1:0] bra_id;
        logic                       bra_mispredict;

        logic   [EBR_MASK_SIZE-1:0] active_mask;
        logic   [ROB_IDX_HIBIT:0]   bra_rob_id;

        logic   [31:0]              bra_pc;
        logic   [31:0]              early_flush_target;

    cacheline_adapter cladapt(.*);

    memory_controller memory_controller(.*);

    cache icache(
        .ufp_addr(icache_ufp_addr),
        .ufp_rmask(icache_ufp_rmask),
        .ufp_wmask(icache_ufp_wmask),
        .ufp_rdata(icache_ufp_rdata),
        .ufp_wdata(icache_ufp_wdata),
        .ufp_resp(icache_ufp_resp),

        .dfp_addr(icache_dfp_addr),
        .dfp_read(icache_dfp_read),
        .dfp_write(icache_dfp_write),
        .dfp_rdata(icache_dfp_rdata),
        .dfp_wdata(icache_dfp_wdata),
        .dfp_resp(icache_dfp_resp),
        .*
    );

    cache dcache(
        .ufp_addr(dcache_ufp_addr),
        .ufp_rmask(dcache_ufp_rmask),
        .ufp_wmask(dcache_ufp_wmask),
        .ufp_rdata(dcache_ufp_rdata),
        .ufp_wdata(dcache_ufp_wdata),
        .ufp_resp(dcache_ufp_resp),

        .dfp_addr(dcache_dfp_addr),
        .dfp_read(dcache_dfp_read),
        .dfp_write(dcache_dfp_write),
        .dfp_rdata(dcache_dfp_rdata),
        .dfp_wdata(dcache_dfp_wdata),
        .dfp_resp(dcache_dfp_resp),
        .*
    );

    fetch fetch(
        .ufp_addr(icache_ufp_addr),
        .ufp_rmask(icache_ufp_rmask),
        .ufp_wmask(icache_ufp_wmask),
        .ufp_rdata(icache_ufp_rdata),
        .ufp_wdata(icache_ufp_wdata),
        .ufp_resp(icache_ufp_resp),
        .*
    );

    dispatcher dispatcher(
        .disp_ready(disp_ready[0]),
        .disp_rstation_data(disp_rstation_data[0]),
        .*
    );

    rs_issue rs_issue(.*);

    cdb cdb(
        .mult_done(mult_done),
        .mult_out(mult_out),
        .div_done(div_done),
        .div_out(div_out),
        .mult_bc_stall(mult_cdb_stall),
        .div_bc_stall(div_cdb_stall),
        .*
    );

    alu_eu alu_eu(.*);

    div_eu div_eu(
        .div_bc_stall(div_cdb_stall),
        .*
    );

    mult_eu mult_eu(
        .mult_bc_stall(mult_cdb_stall),
        .*
    );

    branch_eu branch_eu(.*);

    ls_eu ls_eu(
        .*
    );

    rat rat(
        .*
    );

    rrat rrat(
        .clk(clk),
        .rst(rst),
        .web1(commit),
        .addr0(commit_rd_addr),
        .addr1(commit_rd_addr),
        .din1(commit_prd_addr),
        .dout0(rrat_prd_stale),
        .rrat_internal_array_out(rrat_internal_array_out)
    );

    physical_reg_file prf(
        .*
    );

        logic free_full;

    free_list free_list(
        .clk(clk),
        .rst(rst),
        .late_flush(late_flush),
        .enqueue(enqueue_free_list),
        .dequeue(id_free_dequeue),

        .wdata(rrat_prd_stale),
        .rdata(free_id_prd),
        .full(free_full),
        .empty(free_empty),
        .*
    );

    rob rob(
        .*
    );

    lsq lsq(
        .*
    );

    lsq_controller lsq_controller(
        .*
    );  

    ebrat ebrat(
        .*
    );



    always_comb begin
        for (int unsigned i = 0; i < CDB_WIDTH; i++) begin
            prf_prd_s[i]        = cdb_out[i].prd_s;
            prf_prd_v_i[i]      = cdb_out[i].prd_v;
            cdb_rat_lrd_s[i]    = cdb_out[i].lrd_s;
            cdb_rat_prd_s[i]    = cdb_out[i].prd_s;
        end
    end

endmodule : cpu
