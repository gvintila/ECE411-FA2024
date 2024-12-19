/*
 *  The rs_issue module will store all the reservation stations (issue queues) containing all dispatched
 *  instructions waiting to be issued. The issue queues will get updated whenever a dispatch happens,
 *  an EU is ready for an associated instruction, and CDB broadcasts new data change to a destination register.
 */

module rs_issue
import rv32i_types::*;
import params::*;
(
    input   logic                       clk,
    input   logic                       rst,

    // Signals from/to dispatcher
    input   logic                       disp_ready[DISP_WIDTH],
    input   rstation_t                  disp_rstation_data[DISP_WIDTH],
    output  logic                       isq_alu_ready_in,
    output  logic                       isq_bmd_ready_in,
    output  logic                       isq_ls_ready_in,

    // Signals from/to CDB
    input   cdb_t                       cdb_out[CDB_WIDTH],
    input   logic                       cdb_bc[CDB_WIDTH],

    // Signals from/to PRF
    output  logic   [PRF_IDX_HIBIT:0]   prf_prs1_s[PRF_WIDTH],
    output  logic   [PRF_IDX_HIBIT:0]   prf_prs2_s[PRF_WIDTH],
    input   logic   [31:0]              prf_prs1_v_o[PRF_WIDTH],
    input   logic   [31:0]              prf_prs2_v_o[PRF_WIDTH],

    // Signals from/to EU
    input   logic                       alu_ready,
    output  logic                       alu_start,
    output  eu_operand_t                alu_in,

    input   logic                       bra_ready,
    output  logic                       bra_start,
    output  eu_operand_t                bra_in,

    input   logic                       mult_ready,
    output  logic                       mult_start,
    output  eu_operand_t                mult_in,

    input   logic                       div_ready,
    output  logic                       div_start,
    output  eu_operand_t                div_in,

    input   logic                       ls_ready,
    output  logic                       ls_start,
    output  eu_operand_t                ls_in,

    // Signals from ROB
    input   logic                       late_flush,

    // Signals from EBR
    input   logic                       bra_done,
    input   logic                       bra_mispredict,
    input   logic   [EBR_MASK_SIZE-1:0] bra_id
);
    /* SIGNAL ***************************************************************************/

        // Control
        rstation_issue_t                alu_issue_data;
        logic                           isq_alu_ready_out;
        logic                           isq_alu_enqueue;
        logic                           isq_alu_dequeue;

        rstation_issue_t                bmd_issue_data;
        logic                           isq_bmd_ready_out;
        logic                           isq_bmd_enqueue;
        logic                           isq_bmd_dequeue;

        rstation_issue_t                ls_issue_data;
        logic                           isq_ls_ready_out;
        logic                           isq_ls_enqueue;
        logic                           isq_ls_dequeue;

    /* MODULES **************************************************************************/

    issue_shift_queue #(.QUEUE_DEPTH(ISQ_ALU_SIZE))
    issue_alu_queue(
        .enqueue(isq_alu_enqueue),
        .dequeue(isq_alu_dequeue),
        .wdata(disp_rstation_data[0]),
        .rdata(alu_issue_data),
        .ready_out(isq_alu_ready_out),
        .ready_in(isq_alu_ready_in),
        .*
    );

    issue_shift_queue #(.QUEUE_DEPTH(ISQ_BMD_SIZE)) 
    issue_bmd_queue(
        .enqueue(isq_bmd_enqueue),
        .dequeue(isq_bmd_dequeue),
        .wdata(disp_rstation_data[0]),
        .rdata(bmd_issue_data),
        .ready_out(isq_bmd_ready_out),
        .ready_in(isq_bmd_ready_in),
        .*
    );
    
    issue_shift_queue #(.QUEUE_DEPTH(ISQ_LS_SIZE))
    issue_ls_queue(
        .enqueue(isq_ls_enqueue),
        .dequeue(isq_ls_dequeue),
        .wdata(disp_rstation_data[0]),
        .rdata(ls_issue_data),
        .ready_out(isq_ls_ready_out),
        .ready_in(isq_ls_ready_in),
        .*
    );

    /* COMBINATIONAL ********************************************************************/

    always_comb begin
        isq_alu_enqueue         = '0;
        isq_alu_dequeue         = '0;
        
        isq_bmd_enqueue         = '0;
        isq_bmd_dequeue         = '0;

        isq_ls_enqueue          = '0;
        isq_ls_dequeue          = '0;

        prf_prs1_s[0]           = alu_issue_data.prs1_s;
        prf_prs2_s[0]           = alu_issue_data.prs2_s;

        prf_prs1_s[1]           = bmd_issue_data.prs1_s;
        prf_prs2_s[1]           = bmd_issue_data.prs2_s;

        prf_prs1_s[2]           = ls_issue_data.prs1_s;
        prf_prs2_s[2]           = ls_issue_data.prs2_s;

        alu_start               = '0;
        bra_start               = '0;
        mult_start              = '0;
        div_start               = '0;
        ls_start                = '0;

        alu_in                  = 'x;
        bra_in                  = 'x;
        mult_in                 = 'x;
        div_in                  = 'x;
        ls_in                   = 'x;

        if (!late_flush) begin
            // If dispatcher is ready to send data, determine which data should be sent to specific ISQ
            if (disp_ready[0]) begin
                unique case (disp_rstation_data[0].eu_opcode)
                    op_eu_alu: begin
                        isq_alu_enqueue     = '1;
                    end
                    op_eu_branch, op_eu_mult, op_eu_div: begin
                        isq_bmd_enqueue     = '1;
                    end
                    op_eu_load_store: begin
                        isq_ls_enqueue      = '1;
                    end
                    default: begin
                    end
                endcase
            end

            // Check if respective issue is ready to be sent
            if (isq_alu_ready_out) begin
                if (alu_ready) begin
                    isq_alu_dequeue         = '1;

                    alu_start               = '1;
                    alu_in.rob_id           = alu_issue_data.rob_id; 
                    alu_in.prs1_v           = prf_prs1_v_o[0];      
                    alu_in.prs2_v           = prf_prs2_v_o[0];     
                    alu_in.prd_s            = alu_issue_data.prd_s;
                    alu_in.lrd_s            = alu_issue_data.lrd_s;
                    alu_in.bp_target        = '0;
                    alu_in.pc               = alu_issue_data.pc;   
                    alu_in.inst             = alu_issue_data.inst;
                    alu_in.bra_id           = '0;
                    alu_in.ebr_mask         = alu_issue_data.ebr_mask;
                    alu_in.valid            = 1'b1;
                end
            end

            if (isq_bmd_ready_out) begin
                unique case (bmd_issue_data.eu_opcode)
                    op_eu_mult: begin
                        if (mult_ready) begin
                            isq_bmd_dequeue         = '1;

                            mult_start              = '1;
                            mult_in.rob_id          = bmd_issue_data.rob_id; 
                            mult_in.prs1_v          = prf_prs1_v_o[1];      
                            mult_in.prs2_v          = prf_prs2_v_o[1];     
                            mult_in.prd_s           = bmd_issue_data.prd_s;
                            mult_in.lrd_s           = bmd_issue_data.lrd_s;
                            mult_in.bp_target       = '0;
                            mult_in.pc              = bmd_issue_data.pc;   
                            mult_in.inst            = bmd_issue_data.inst;
                            mult_in.bra_id          = '0;
                            mult_in.ebr_mask        = bmd_issue_data.ebr_mask;
                            mult_in.valid           = 1'b1;
                        end
                    end
                    op_eu_div: begin
                        if (div_ready) begin
                            isq_bmd_dequeue         = '1;

                            div_start               = '1;
                            div_in.rob_id           = bmd_issue_data.rob_id; 
                            div_in.prs1_v           = prf_prs1_v_o[1];      
                            div_in.prs2_v           = prf_prs2_v_o[1];     
                            div_in.prd_s            = bmd_issue_data.prd_s;
                            div_in.lrd_s            = bmd_issue_data.lrd_s;
                            div_in.bp_target        = '0;
                            div_in.pc               = bmd_issue_data.pc;   
                            div_in.inst             = bmd_issue_data.inst;
                            div_in.bra_id           = '0;
                            div_in.ebr_mask         = bmd_issue_data.ebr_mask;
                            div_in.valid            = 1'b1;
                        end
                    end
                    op_eu_branch: begin
                        if (bra_ready) begin
                            isq_bmd_dequeue         = '1;

                            bra_start               = '1;
                            bra_in.rob_id           = bmd_issue_data.rob_id; 
                            bra_in.prs1_v           = prf_prs1_v_o[1];      
                            bra_in.prs2_v           = prf_prs2_v_o[1];     
                            bra_in.prd_s            = bmd_issue_data.prd_s;
                            bra_in.lrd_s            = bmd_issue_data.lrd_s;
                            bra_in.bp_target        = bmd_issue_data.bp_target;
                            bra_in.pc               = bmd_issue_data.pc;   
                            bra_in.inst             = bmd_issue_data.inst;
                            bra_in.bra_id           = bmd_issue_data.bra_id;
                            bra_in.ebr_mask         = bmd_issue_data.ebr_mask;
                            bra_in.valid            = 1'b1;
                        end
                    end
                    default: begin
                    end
                endcase
            end

            if (isq_ls_ready_out) begin
                if (ls_ready) begin
                    isq_ls_dequeue          = '1;

                    ls_start                = '1;
                    ls_in.rob_id            = ls_issue_data.rob_id; 
                    ls_in.prs1_v            = prf_prs1_v_o[2];      
                    ls_in.prs2_v            = prf_prs2_v_o[2];     
                    ls_in.prd_s             = ls_issue_data.prd_s;
                    ls_in.lrd_s             = ls_issue_data.lrd_s;
                    ls_in.bp_target         = '0;
                    ls_in.pc                = ls_issue_data.pc;   
                    ls_in.inst              = ls_issue_data.inst;
                    ls_in.bra_id            = '0;
                    ls_in.ebr_mask          = ls_issue_data.ebr_mask;
                    ls_in.valid             = 1'b1;
                end
            end
        end
    end

endmodule : rs_issue
