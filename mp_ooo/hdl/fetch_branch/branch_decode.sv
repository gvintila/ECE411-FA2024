module branch_decode    // BRID
import rv32i_types::*;
import params::*;
(
    // input   logic               clk,
    // input   logic               rst,

    // Signals from/to fetch
    input   logic               fetch_enqueue,
    input   logic   [31:0]      iq_wdata,
    input   logic   [31:0]      pc,

    output  logic               bp_is_taken,
    output  logic   [31:0]      pc_br_brid
);
    /* SIGNAL ***************************************************************************/

        // Control
        logic   [6:0]       opcode;
        logic               bp_en;
        logic               bp_out;

        // Data
        logic   [31:0]      inst;
        logic   [31:0]      pc_bp;
        logic   [31:0]      j_imm;

        assign inst = iq_wdata;
        assign j_imm = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:21], 1'b0};

        assign opcode = inst[6:0];

    /* MODULE ***************************************************************************/

    branch_predictor branch_predictor (.*);

    /* FF *******************************************************************************/

    /* COMBINATIONAL ********************************************************************/

    /* 
     *  Determine relevant branch data from instruction to send to PC queue
     */
    always_comb begin
        bp_en = '0;
        bp_is_taken = '0;
        pc_br_brid = 'x;

        // Check when PC queue can be written with new data
        if (fetch_enqueue) begin
            unique case (opcode)
                op_b_jal: begin
                    bp_is_taken = '1;
                    pc_br_brid = (pc + j_imm) & 32'hfffffffe;
                end
                // op_b_jalr: /* JALR requires reg read */
                op_b_br: begin
                    // Consult the trusty branch predictor
                    bp_en = '1;
                    bp_is_taken = bp_out;
                    pc_br_brid = pc_bp;
                end
                default: begin
                end
            endcase
        end
    end

endmodule : branch_decode
