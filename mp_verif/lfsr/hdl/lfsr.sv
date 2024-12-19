module lfsr #(
    parameter bit   [15:0]  SEED_VALUE = 'hECEB
) (
    input   logic           clk,
    input   logic           rst,
    input   logic           en,
    output  logic           rand_bit,
    output  logic   [15:0]  shift_reg
);

    logic   shift_in;
    assign  shift_in = (shift_reg[5] ^ shift_reg[3] ^ shift_reg[2] ^ shift_reg[0]);

    always_ff @ (posedge clk) begin
        rand_bit <= rand_bit;
        if (rst)
            shift_reg <= SEED_VALUE;
        else if (en) begin
            shift_reg <= {shift_in, shift_reg[15:1]};
            rand_bit <= shift_reg[0];
        end
        else
            shift_reg <= shift_reg;
    end

endmodule : lfsr
