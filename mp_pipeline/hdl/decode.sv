module decode   // ID //
import rv32i_types::*;
(
    input   logic           clk,
    input   logic           rst,

    // Signals to send to regfile
    // output  logic   [4:0]   rs1_s_id, rs2_s_id,

    // Signals to be received from fetch (IF)
    input   logic   [31:0]  pc_id,      
    input   logic   [31:0]  inst_id,        // Same as imem_rdata
    input   logic           imem_stall,

    // Signals to be received from memory (MEM)
    input   logic           dmem_stall,

    // Forwarding
    input   logic           lh_stall,

    // Branching
    input   logic           br,

    // Signals to be sent to execute (EX)
    output  contw_t         contw_ex
);
    logic   [63:0]  order;
    logic   [31:0]  pc_next;

    logic   [6:0]   opcode;
    logic   [2:0]   funct3;
    logic   [6:0]   funct7;

    logic   [4:0]   rs1_s;
    logic   [4:0]   rs2_s;
    logic   [4:0]   rd_s;

    logic   [2:0]   aluop;
    logic   [2:0]   cmpop;

    logic           dmem_exp_resp;

    state_t         state;

    logic           br_flag;        // Effectively a flush

    assign opcode = inst_id[6:0];
    assign funct3 = inst_id[14:12];
    assign funct7 = inst_id[31:25];
    assign pc_next = pc_id + 'd4;

    // Update signals to send to execute (EX)
    always_ff @(posedge clk) begin
        if (rst) begin
            order <= 64'd0;
            br_flag <= 1'b0;

            // Control Word
            contw_ex <= '0;
            contw_ex.state <= s_reset;
            contw_ex.imem_stall <= '1;
        end 
        else begin
            // Catch branch signal
            br_flag <= br_flag;
            if (br)
                br_flag <= 1'b1;
            
            // Normal flow
            if (!imem_stall && !dmem_stall && !lh_stall && !br && !br_flag) begin
                order <= order + 1;

                // Control Word
                contw_ex.inst <= inst_id;
                contw_ex.pc <= pc_id;
                contw_ex.pc_next <= pc_next;
                contw_ex.order <= order;

                contw_ex.rs1_s <= rs1_s;
                contw_ex.rs2_s <= rs2_s;
                contw_ex.rd_s <= rd_s;

                contw_ex.rs1_v <= 'x;
                contw_ex.rs2_v <= 'x;
                contw_ex.rd_v <= '0;

                contw_ex.funct3 <= funct3;
                contw_ex.funct7 <= funct7;

                contw_ex.aluop <= aluop;
                contw_ex.cmpop <= cmpop;

                contw_ex.dmem_addr <= pc_id;
                contw_ex.dmem_rmask <= 'x;        
                contw_ex.dmem_wmask <= 'x;        
                contw_ex.dmem_rdata <= inst_id;    
                contw_ex.dmem_wdata <= 'x;
                contw_ex.dmem_exp_resp <= dmem_exp_resp;

                contw_ex.imem_stall <= '0;

                contw_ex.state <= state;
            end
            else begin
                order <= order;

                // Control Word
                contw_ex <= contw_ex;

                // If dmem or lh are stalling, keep bubble state the same
                if (dmem_stall || lh_stall) begin
                    contw_ex.imem_stall <= contw_ex.imem_stall;
                end
                // Send bubble if branching
                else if (br || br_flag) begin
                    contw_ex.imem_stall <= 1'b1;
                    br_flag <= 1'b0;
                end
                // Send bubble if in a bubble and no other stalls present
                else begin
                    contw_ex.imem_stall <= 1'b1;
                end
            end
        end
    end

    always_comb begin
        unique case (opcode)
            op_b_lui    :   state = s_lui;
            op_b_auipc  :   state = s_aupic;
            op_b_jal    :   state = s_jal;
            op_b_jalr   :   state = s_jalr;
            op_b_br     :   state = s_br;
            op_b_load   :   state = s_load;
            op_b_store  :   state = s_store;
            op_b_imm    :   state = s_ri;
            op_b_reg    :   state = s_rr;
            default     :   state = s_halt;
        endcase

        rs1_s           = '0;
        rs2_s           = '0;
        rd_s            = '0;
        dmem_exp_resp   = '0;
        cmpop           = 'x;
        aluop           = 'x;
        unique case (state)
            s_lui: begin
                rd_s = inst_id[11:7];
            end
            s_aupic: begin
                rd_s = inst_id[11:7];
            end
            s_jal: begin
                rd_s = inst_id[11:7];
            end
            s_jalr: begin
                rs1_s = inst_id[19:15];
                rd_s = inst_id[11:7];
            end
            s_br: begin
                rs1_s = inst_id[19:15];
                rs2_s = inst_id[24:20];
                cmpop = funct3;
            end
            s_load: begin
                rs1_s = inst_id[19:15];
                rd_s = inst_id[11:7];
                dmem_exp_resp = '1;
            end
            s_store: begin
                rs1_s = inst_id[19:15];
                rs2_s = inst_id[24:20];
                rd_s = '0;
                dmem_exp_resp = '1;
            end
            s_ri: begin
                rs1_s = inst_id[19:15];
                rd_s = inst_id[11:7];
                unique case (funct3)
                    arith_f3_slt:
                        cmpop = branch_f3_blt;
                    arith_f3_sltu:
                        cmpop = branch_f3_bltu;
                    arith_f3_sr: begin
                        if (funct7[5]) begin
                            aluop = alu_op_sra;
                        end 
                        else begin
                            aluop = alu_op_srl;
                        end
                    end
                    default:
                        aluop = funct3;
                endcase
            end
            s_rr: begin
                rs1_s = inst_id[19:15];
                rs2_s = inst_id[24:20];
                rd_s = inst_id[11:7];
                unique case (funct3)
                    arith_f3_slt: 
                        cmpop = branch_f3_blt;
                    arith_f3_sltu:
                        cmpop = branch_f3_bltu;
                    arith_f3_sr: begin
                        if (funct7[5]) begin
                            aluop = alu_op_sra;
                        end 
                        else begin
                            aluop = alu_op_srl;
                        end
                    end
                    arith_f3_add: begin
                        if (funct7[5]) begin
                            aluop = alu_op_sub;
                        end else begin
                            aluop = alu_op_add;
                        end
                    end
                    default: 
                        aluop = funct3;
                endcase
            end
            default: begin
            end
        endcase
    end

endmodule : decode