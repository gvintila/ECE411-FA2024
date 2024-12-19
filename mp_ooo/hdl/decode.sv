/*
 *  The decode (ID) module will take new data from the queues in fetch, tell fetch to dequeue,
 *  decode the data and send all relevant requests to RAT and free list. The dispatcher
 *  will collect all this data to compile and send to the ROB and reservation stations.
 */

module decode
import rv32i_types::*;
import params::*;
(
    // input   logic                    clk,
    // input   logic                    rst,

    // Signals from/to fetch stage
    output  logic                       id_ft_dequeue,
    input   logic                       ft_iq_empty,
    input   logic   [31:0]              ft_iq_rdata,
    input   logic   [31:0]              ft_pcq_rdata,
    input   logic                       ft_bpq_rdata,

    // Signals to RAT
    // Assuming combinational read from RAT
    output  logic   [4:0]               rat_lrs1_s,
    output  logic   [4:0]               rat_lrs2_s,
    output  logic   [4:0]               id_rat_lrd_s,
    output  logic                       id_rat_lrd_web,

    // Signals from/to Free List
    input   logic   [PRF_IDX_HIBIT:0]   free_id_prd,
    output  logic                       id_free_dequeue,

    // Signals from/to dispatcher
    input   logic                       disp_stall,
    output  logic                       id_lsq_enqueue,
    output  logic                       id_load_store,
    //output  logic   [63:0]              id_lsq_pc,
    output  logic                       id_ready,
    output  id_disp_t                   id_disp_data

);

endmodule : decode
