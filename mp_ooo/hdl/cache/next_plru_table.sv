module next_plru_table (
    input  logic [2:0] plru,     
    input  logic [1:0] line,
    output logic [2:0] next_plru 
);

    //// First array is plru
    //// Second array is line
    //logic [2:0] tbl [2][2] = {
    //    {   3'b000, 3'b010, 3'b100, 3'b101 },
    //    {   3'b001, 3'b011, 3'b100, 3'b101 },
    //    {   3'b000, 3'b010, 3'b110, 3'b111 },
    //    {   3'b001, 3'b011, 3'b110, 3'b111 }
    //};
    always_comb begin
        case ({plru[1:0], line}) 
            4'b0000: next_plru = 3'b000;
            4'b0001: next_plru = 3'b010;
            4'b0010: next_plru = 3'b100;
            4'b0011: next_plru = 3'b101;
            4'b0100: next_plru = 3'b001;
            4'b0101: next_plru = 3'b011;
            4'b0110: next_plru = 3'b100;
            4'b0111: next_plru = 3'b101;
            4'b1000: next_plru = 3'b000;
            4'b1001: next_plru = 3'b010;
            4'b1010: next_plru = 3'b110;
            4'b1011: next_plru = 3'b111;
            4'b1100: next_plru = 3'b001;
            4'b1101: next_plru = 3'b011;
            4'b1110: next_plru = 3'b110;
            4'b1111: next_plru = 3'b111;
        endcase
    end

endmodule
