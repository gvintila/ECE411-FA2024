/*
 *  The decode (ID) module will take new data from the queues in fetch, tell fetch to dequeue,
 *  decode the data and send all relevant requests to RAT and free list. The dispatcher
 *  will collect all this data to compile and send to the ROB and reservation stations.
 */

module new_decode
import rv32i_types::*;
import params::*;
(
    input   logic   [31:0]              ft_iq_rdata,
    input   logic   [31:0]              ft_pcq_rdata,
    input   logic   [31:0]              ft_bpq_rdata,

    output  decode_t                    decode_data
);
        // Data
        instr_t             inst;
        logic   [4:0]       lrs1_s;
        logic   [4:0]       lrs2_s;
        logic               prs2_r;      // 0 = imm, 1 = rs2
        logic   [11:0]      imm;    
        logic   [4:0]       lrd_s;
        logic   [31:0]      pc;

        // Control
        logic   [6:0]       opcode;
        logic   [2:0]       funct3;
        logic   [6:0]       funct7;


        assign opcode = ft_iq_rdata[6:0];
        assign funct3 = ft_iq_rdata[14:12];
        assign funct7 = ft_iq_rdata[31:25];
        assign inst = ft_iq_rdata;
        assign imm = ft_iq_rdata[31:20];
        assign pc = ft_pcq_rdata;

    /* 
     *  Determine data from instruction to send to dispatcher/RAT/Free List
     */
    always_comb begin

        decode_data = 'x;

        decode_data.inst        = ft_iq_rdata;
        decode_data.bp_target   = ft_bpq_rdata;
        decode_data.pc          = ft_pcq_rdata;
        decode_data.funct3      = funct3;

        decode_data.lrs1_s      = '0;
        decode_data.lrs2_s      = '0;
        decode_data.prs2_r      = '0;
        decode_data.lrd_s       = '0;
        decode_data.eu_opcode = op_eu_alu;

        unique case (opcode)
            op_b_lui: begin
                decode_data.lrd_s = inst[11:7];
                decode_data.eu_opcode = op_eu_alu;
            end
            op_b_auipc: begin
                decode_data.lrd_s = inst[11:7];
                decode_data.eu_opcode = op_eu_alu;
            end
            op_b_jal: begin
                decode_data.lrd_s = inst[11:7];
                decode_data.eu_opcode = op_eu_branch;
            end
            op_b_jalr: begin
                decode_data.lrs1_s = inst[19:15];
                decode_data.lrd_s = inst[11:7];
                decode_data.eu_opcode = op_eu_branch;
            end
            op_b_br: begin
                decode_data.lrs1_s = inst[19:15];
                decode_data.lrs2_s = inst[24:20];
                decode_data.prs2_r = 1'b1;
                decode_data.eu_opcode = op_eu_branch;
            end
            op_b_load: begin
                decode_data.lrs1_s = inst[19:15];
                decode_data.lrd_s = inst[11:7];
                decode_data.is_load_store = 1'b0;
                decode_data.eu_opcode = op_eu_load_store;
            end
            op_b_store: begin
                decode_data.lrs1_s = inst[19:15];
                decode_data.lrs2_s = inst[24:20];
                decode_data.prs2_r = 1'b1;
                decode_data.lrd_s = '0;
                decode_data.is_load_store = 1'b1;
                decode_data.eu_opcode = op_eu_load_store;
            end
            op_b_imm: begin
                decode_data.lrs1_s = inst[19:15];
                decode_data.lrd_s = inst[11:7];
                decode_data.eu_opcode = op_eu_alu;
                // Encode operation into something to send to rstation
            end
            op_b_reg: begin
                decode_data.lrs1_s = inst[19:15];
                decode_data.lrs2_s = inst[24:20];
                decode_data.prs2_r = 1'b1;
                decode_data.lrd_s = inst[11:7];
                decode_data.eu_opcode = op_eu_alu;
                // Encode operation into something to send to rstation
                if (funct7 == rv32m_f7) begin
                    // Check for rv32m ops
                    unique case (funct3)
                        rv32m_f3_mul:       decode_data.eu_opcode = op_eu_mult;    // mul can be used by either unsigned or signed multiplier
                        rv32m_f3_mulh:      decode_data.eu_opcode = op_eu_mult;
                        rv32m_f3_mulhu:     decode_data.eu_opcode = op_eu_mult;
                        rv32m_f3_mulhsu:    decode_data.eu_opcode = op_eu_mult;
                        rv32m_f3_div:       decode_data.eu_opcode = op_eu_div;     // div can be either signed or unsigned
                        rv32m_f3_divu:      decode_data.eu_opcode = op_eu_div;
                        rv32m_f3_rem:       decode_data.eu_opcode = op_eu_div;
                        rv32m_f3_remu:      decode_data.eu_opcode = op_eu_div;
                    endcase
                end
            end
            default: begin
            end
        endcase
    end




endmodule 
