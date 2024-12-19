module cpu
import rv32i_types::*;
(
    input   logic           clk,
    input   logic           rst,

    output  logic   [31:0]  imem_addr,
    output  logic   [3:0]   imem_rmask,
    input   logic   [31:0]  imem_rdata,
    input   logic           imem_resp,

    output  logic   [31:0]  dmem_addr,
    output  logic   [3:0]   dmem_rmask,
    output  logic   [3:0]   dmem_wmask,
    input   logic   [31:0]  dmem_rdata,
    output  logic   [31:0]  dmem_wdata,
    input   logic           dmem_resp
);
    // Decode (ID) signals
    logic   [31:0]  pc_id;
    logic   [31:0]  inst_id;
    logic           imem_stall;

    // Execute (EX) signals
    contw_t         contw_ex;

    // Memory (MEM) signals
    contw_t         contw_mem;

    // Writeback (WB) signals
    contw_t         contw_wb;

    // General signals
    logic           dmem_stall;
    logic   [31:0]  pc_br;
    logic           br;

    // Regfile and RVFI signals (comes from ID and WB)
    logic           regf_we;
    logic   [31:0]  rs1_v_reg, rs2_v_reg, rd_v_wb;
    logic   [4:0]   rs1_s_ex, rs2_s_ex, rd_s_wb;

    logic           commit;
    contw_t         contw_rvfi;

    // Forwarding
    logic   [31:0]  rd_v_mem;
    logic   [4:0]   rd_s_mem;
    logic           rd_lh_mem;
    logic           lh_stall;

    regfile regfile(
        .*
    );

    fetch fetch(
        .*
    );

    decode decode(
        .*
    );

    exec exec(
        .*
    );

    mem mem(
        .*
    );

    wb wb(
        .*
    );

    //////////
    // RVFI //
    //////////

    logic           monitor_valid;
    logic   [63:0]  monitor_order;
    logic   [31:0]  monitor_inst;
    logic   [4:0]   monitor_rs1_addr;
    logic   [4:0]   monitor_rs2_addr;
    logic   [31:0]  monitor_rs1_rdata;
    logic   [31:0]  monitor_rs2_rdata;
    logic           monitor_regf_we;
    logic   [4:0]   monitor_rd_addr;
    logic   [31:0]  monitor_rd_wdata;
    logic   [31:0]  monitor_pc_rdata;
    logic   [31:0]  monitor_pc_wdata;
    logic   [31:0]  monitor_mem_addr;
    logic   [3:0]   monitor_mem_rmask;
    logic   [3:0]   monitor_mem_wmask;
    logic   [31:0]  monitor_mem_rdata;
    logic   [31:0]  monitor_mem_wdata;

    assign monitor_valid     = commit;
    assign monitor_order     = contw_rvfi.order;
    assign monitor_inst      = contw_rvfi.inst;
    assign monitor_rs1_addr  = contw_rvfi.rs1_s;
    assign monitor_rs2_addr  = contw_rvfi.rs2_s;
    assign monitor_rs1_rdata = contw_rvfi.rs1_v;
    assign monitor_rs2_rdata = contw_rvfi.rs2_v;
    assign monitor_rd_addr   = regf_we ? rd_s_wb : 5'd0;
    assign monitor_rd_wdata  = contw_rvfi.rd_v;
    assign monitor_pc_rdata  = contw_rvfi.pc;
    assign monitor_pc_wdata  = contw_rvfi.pc_next;
    assign monitor_mem_addr  = contw_rvfi.dmem_addr;
    assign monitor_mem_rmask = contw_rvfi.state != s_fetch ? contw_rvfi.dmem_rmask : 4'd0;
    assign monitor_mem_wmask = contw_rvfi.dmem_wmask;
    assign monitor_mem_rdata = contw_rvfi.dmem_rdata;
    assign monitor_mem_wdata = contw_rvfi.dmem_wdata;


endmodule : cpu
