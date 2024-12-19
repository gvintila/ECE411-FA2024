/*
This module has 1 read port (port 0) and 1 write port (port1)
Combinational read and ff write
index(addr) = logical address number, output = corresponding physical address number
If concurrent write & read to same addr, the read value will be the old value
The parameter PHYSICAL_REG_COUNT has to be the same as the one in rat
*/

// R
//               ..----.._    _
//             .' .--.    "-.(O)_
// '-.__.-'"'=:|  ,  _)_ \__ . c\'-..
//              ''------'---''---'-"

module rrat
import rv32i_types::*;
import params::*;
(
    input   logic         clk,
    input   logic         rst,

    input   logic                    web1,
    input   logic    [4:0]           addr0,
    input   logic    [4:0]           addr1,
    input   logic    [PRF_IDX_HIBIT:0]   din1,
    output  logic    [PRF_IDX_HIBIT:0]   dout0,
    output  logic    [PRF_IDX_HIBIT:0]   rrat_internal_array_out [32]
);

    logic [PRF_IDX_HIBIT:0] internal_array [32];

    always_ff @(posedge clk) begin
        if (rst) begin
            for (int unsigned i = 0; i < 32; i++) begin
                internal_array[i] <= (PRF_IDX_SIZE)'(i);
            end
        end else begin
            if (web1) begin
                internal_array[addr1] <= din1;
            end
        end
    end

    always_comb begin
        dout0 = internal_array[addr0];
    end

    assign rrat_internal_array_out = internal_array;

endmodule : rrat
