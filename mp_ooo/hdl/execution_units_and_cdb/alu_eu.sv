/*
 * This execution unit has the following features:
 *   It does decoding of needed information entirely
 *   from provided instruction and register data.
 * It is always ready, and data always outputs on next
 * cycle.
 */
module alu_eu 
import rv32i_types::*;
import params::*;
(
    input   logic           clk,
    input   logic           rst,

    input   logic           late_flush,

    input   logic           alu_start,
    input   logic           alu_bc_stall,

    input   eu_operand_t    alu_in,

    output  logic           alu_ready,
    output  logic           alu_done,
    output  cdb_t           alu_out,

    input   logic                       bra_done,
    input   logic                       bra_mispredict,
    input   logic   [EBR_MASK_SIZE-1:0] bra_id
);

                                        // Micro-ops
        logic   [2:0]   funct3;
        logic   [6:0]   funct7;
        logic   [6:0]   opcode;
        logic   [31:0]  i_imm;
        logic   [31:0]  s_imm;
        logic   [31:0]  b_imm;
        logic   [31:0]  u_imm;
        logic   [31:0]  j_imm;
        logic   [4:0]   rs1_s;
        logic   [4:0]   rs2_s;

        logic   [31:0]  inst;
        logic   [31:0]  rs1_v;
        logic   [31:0]  rs2_v;

        eu_operand_t    alu_in_reg;
                                        // ALU
        logic   [31:0]  a;
        logic   [31:0]  b;

        logic signed   [31:0] as;
        logic signed   [31:0] bs;
        logic unsigned [31:0] au;
        logic unsigned [31:0] bu;

        logic   [2:0]   aluop;
        logic   [2:0]   cmpop;

        logic   [31:0]  aluout;
        logic           br_en;

        logic   [31:0]  rd_v;


        logic [EBR_MASK_SIZE-1:0]   resolve_out;
        logic                       invalid_out;

    ebr_resolve ebr_resolve_out (
        .in_mask(alu_in_reg.ebr_mask),
        .bra_id(bra_id),
        .bra_mispredict(bra_mispredict),
        .out_mask(resolve_out),
        .invalid(invalid_out)
    );

    always_ff @(posedge clk) begin
        if (rst || late_flush) begin
            alu_in_reg      <= '0;
        end else begin
            if (alu_ready) begin
                alu_in_reg       <= alu_in;
                alu_in_reg.valid <= alu_start;
            end else begin
                if (bra_done) begin
                    alu_in_reg.ebr_mask <= resolve_out;
                    alu_in_reg.valid    <= alu_in_reg.valid && !invalid_out;
                end
            end
        end
    end

    assign inst         = alu_in_reg.inst.word;
    assign rs1_v        = alu_in_reg.prs1_v;
    assign rs2_v        = alu_in_reg.prs2_v;

                                        // Micro-ops
    assign funct3 = inst[14:12];
    assign funct7 = inst[31:25];
    assign opcode = inst[6:0];
    assign i_imm  = {{21{inst[31]}}, inst[30:20]};
    assign s_imm  = {{21{inst[31]}}, inst[30:25], inst[11:7]};
    assign b_imm  = {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
    assign u_imm  = {inst[31:12], 12'h000};
    assign j_imm  = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:21], 1'b0};
    assign rs1_s  = inst[19:15];
    assign rs2_s  = inst[24:20];

                                        // ALU
    assign as =   signed'(a);
    assign bs =   signed'(b);
    assign au = unsigned'(a);
    assign bu = unsigned'(b);

    always_comb begin
        unique case (aluop)
            alu_op_add : aluout = au +   bu;
            alu_op_sll : aluout = au <<  bu[4:0];
            alu_op_sra : aluout = unsigned'(as >>> bu[4:0]);
            alu_op_sub : aluout = au -   bu;
            alu_op_xor : aluout = au ^   bu;
            alu_op_srl : aluout = au >>  bu[4:0];
            alu_op_or  : aluout = au |   bu;
            alu_op_and : aluout = au &   bu;
            default    : aluout = 'x;
        endcase
    end

    always_comb begin
        unique case (cmpop)
            branch_f3_beq : br_en = (au == bu);
            branch_f3_bne : br_en = (au != bu);
            branch_f3_blt : br_en = (as <  bs);
            branch_f3_bge : br_en = (as >=  bs);
            branch_f3_bltu: br_en = (au <  bu);
            branch_f3_bgeu: br_en = (au >=  bu);
            default       : br_en = 1'bx;
        endcase
    end

    always_comb begin

        aluop      = 'x;
        cmpop      = 'x;
        a          = 'x;
        b          = 'x;
        alu_out    = 'x;
        rd_v       = 'x;


        unique case (opcode)
            op_b_imm  : begin
                a = rs1_v;
                b = i_imm;
                unique case (funct3)
                    arith_f3_slt: begin
                        cmpop = branch_f3_blt;
                        rd_v = {31'd0, br_en};
                    end
                    arith_f3_sltu: begin
                        cmpop = branch_f3_bltu;
                        rd_v = {31'd0, br_en};
                    end
                    arith_f3_sr: begin
                        if (funct7[5]) begin
                            aluop = alu_op_sra;
                        end else begin
                            aluop = alu_op_srl;
                        end
                        rd_v = aluout;
                    end
                    arith_f3_sll: begin
                        if (funct7 == base) begin
                            aluop = alu_op_sll;
                        end
                        rd_v = aluout;
                    end
                    default: begin
                        aluop = funct3;
                        rd_v = aluout;
                    end
                endcase
            end
            op_b_reg: begin
                a = rs1_v;
                b = rs2_v;
                unique case (funct3)
                    arith_f3_slt: begin
                        cmpop = branch_f3_blt;
                        rd_v = {31'd0, br_en};
                    end
                    arith_f3_sltu: begin
                        cmpop = branch_f3_bltu;
                        rd_v = {31'd0, br_en};
                    end
                    arith_f3_sr: begin
                        if (funct7[5]) begin
                            aluop = alu_op_sra;
                        end else begin
                            aluop = alu_op_srl;
                        end
                        rd_v = aluout;
                    end
                    arith_f3_add: begin
                        if (funct7[5]) begin
                            aluop = alu_op_sub;
                        end else begin
                            aluop = alu_op_add;
                        end
                        rd_v = aluout;
                    end
                    arith_f3_and: begin
                        if (funct7 == base) begin
                            aluop = alu_op_and;
                        end
                        rd_v = aluout;
                    end
                    default: begin
                        aluop = funct3;
                        rd_v = aluout;
                    end
                endcase
            end
            op_b_lui  : begin
                rd_v = u_imm;
            end
            op_b_auipc: begin
                rd_v = alu_in_reg.pc + u_imm;
            end
            default: begin
            end
        endcase

        // Don't broadcast if invalid due to EBR on resolve cycle
        if (bra_done && invalid_out) begin
            alu_done    = '0;
        end else begin
            alu_done    = alu_in_reg.valid && !alu_bc_stall;
        end

        alu_ready           = !alu_bc_stall;
        alu_out.rob_id      = alu_in_reg.rob_id;
        alu_out.prs1_v      = alu_in_reg.prs1_v;
        alu_out.prs2_v      = alu_in_reg.prs2_v;
        alu_out.prd_s       = alu_in_reg.prd_s;
        alu_out.lrd_s       = alu_in_reg.lrd_s;
        alu_out.prd_v       = rd_v;
        alu_out.dmem_addr   = '0;
        alu_out.dmem_rmask  = '0;
        alu_out.dmem_wmask  = '0;
        alu_out.dmem_rdata  = '0;
        alu_out.dmem_wdata  = '0;
        alu_out.is_flush    = '0;
        alu_out.pc_next     = alu_in_reg.pc + 'd4;
        if (bra_done)
            alu_out.ebr_mask    = resolve_out;
        else
            alu_out.ebr_mask    = alu_in_reg.ebr_mask;
        alu_out.valid       = 1'b1;
    end

endmodule
