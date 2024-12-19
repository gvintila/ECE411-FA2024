/*
 *  load store address calculator
 *  Unlike other eu, output of this one is feed 
 *  straight to lsq
 */
module ls_eu 
import rv32i_types::*;
import params::*;
(
    input   logic                       clk,
    input   logic                       rst,

    input   logic                       late_flush,

    input   logic                       ls_start,
    input   eu_operand_t                ls_in,

    output  eu_operand_t                ls_eu_lsq_eu_operand,
    output  logic                       ls_eu_data_ready,
    output  logic   [31:0]              lsq_address,
    output  logic   [3:0]               lsq_mask,
    output  logic   [31:0]              lsq_wdata,

    input   logic                       bra_done,
    input   logic                       bra_mispredict,
    input   logic   [EBR_MASK_SIZE-1:0] bra_id
);

        eu_operand_t    ls_in_reg;

                                        // Micro-ops
        logic   [2:0]   funct3;
        logic   [6:0]   opcode;
        logic   [31:0]  i_imm;
        logic   [31:0]  s_imm;

        logic   [31:0]  inst;
        logic   [31:0]  rs1_v;
        logic   [31:0]  rs2_v;

        logic [EBR_MASK_SIZE-1:0]   resolve_in;
        logic                       invalid_in;

    ebr_resolve ebr_resolve_in (
        .in_mask(ls_in.ebr_mask),
        .bra_id(bra_id),
        .bra_mispredict(bra_mispredict),
        .out_mask(resolve_in),
        .invalid(invalid_in)
    );

        logic [EBR_MASK_SIZE-1:0]   resolve_out;
        logic                       invalid_out;

    ebr_resolve ebr_resolve_out (
        .in_mask(ls_in_reg.ebr_mask),
        .bra_id(bra_id),
        .bra_mispredict(bra_mispredict),
        .out_mask(resolve_out),
        .invalid(invalid_out)
    );

    always_ff @(posedge clk) begin
        if (rst || late_flush) begin
            ls_in_reg      <= '0;
        end else begin
            ls_in_reg       <= ls_in;
            ls_in_reg.valid <= ls_start;
            if (bra_done) begin
                ls_in_reg.ebr_mask <= resolve_in;
                ls_in_reg.valid    <= ls_start && !invalid_in;
            end
        end
    end

    assign inst                     = ls_in_reg.inst.word;
    assign rs1_v                    = ls_in_reg.prs1_v;
    assign rs2_v                    = ls_in_reg.prs2_v;
    assign ls_eu_lsq_eu_operand     = ls_in_reg;
                                        // Micro-ops
    assign funct3 = inst[14:12];
    assign opcode = inst[6:0];
    assign i_imm  = {{21{inst[31]}}, inst[30:20]};
    assign s_imm  = {{21{inst[31]}}, inst[30:25], inst[11:7]};

    always_comb begin
        lsq_mask       = '0;
        lsq_address    = '0;
        lsq_wdata      = '0;

        unique case (opcode)
            op_b_load  : begin
                lsq_address = i_imm + rs1_v;
                unique case (funct3)
                    load_f3_lb, load_f3_lbu: lsq_mask = 4'b0001 << lsq_address[1:0];
                    load_f3_lh, load_f3_lhu: lsq_mask = 4'b0011 << lsq_address[1:0];
                    load_f3_lw             : lsq_mask = 4'b1111;
                    default                : lsq_mask = 'x;
                endcase
            end
            op_b_store: begin
                lsq_address = rs1_v + s_imm;
                unique case (funct3)
                    store_f3_sb: lsq_mask = 4'b0001 << lsq_address[1:0];
                    store_f3_sh: lsq_mask = 4'b0011 << lsq_address[1:0];
                    store_f3_sw: lsq_mask = 4'b1111;
                    default    : lsq_mask = 'x;
                endcase
                unique case (funct3)
                    store_f3_sb: lsq_wdata[8 *lsq_address[1:0] +: 8 ] = rs2_v[7 :0];
                    store_f3_sh: lsq_wdata[16*lsq_address[1]   +: 16] = rs2_v[15:0];
                    store_f3_sw: lsq_wdata = rs2_v;
                    default    : lsq_wdata = 'x;
                endcase
            end
            default: begin
            end
        endcase

        // Don't broadcast if invalid due to EBR on resolve cycle
        if (bra_done && invalid_out) begin
            ls_eu_data_ready = '0;
        end else begin
            ls_eu_data_ready = ls_in_reg.valid;
        end
    end


endmodule
