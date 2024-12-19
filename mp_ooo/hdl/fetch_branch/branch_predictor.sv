module branch_predictor     // BP
import rv32i_types::*;
import params::*;
(
    // input   logic               clk,
    // input   logic               rst,

    input   logic               bp_en, // Enable branch prediction output
    input   logic   [31:0]      pc,    // PC of data incoming on inst
    input   logic   [31:0]      inst,  // Instruction from ufp

    output  logic               bp_out, // The predicted branch pc
    output  logic   [31:0]      pc_bp   // Signal that says the branch should be taken
);

        logic   [31:0]  b_imm;
    assign b_imm  = {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};

    // NEXT LEVEL BRANCH PREDICTOR
    always_comb begin
        bp_out = '0;
        pc_bp = 'x;

        if (bp_en) begin
            bp_out = 1'b1;
            pc_bp = (pc + b_imm) & 32'hfffffffe;
        end
    end
        
endmodule : branch_predictor
