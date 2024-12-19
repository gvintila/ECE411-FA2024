/*
 *  The physical register file (PRF) is used to store data pertaining to each physical register.
 *  The PRF will get read by the issue unit to send data to it's respective execution unit (EU).
 *  The PRF will get written to a physical destination register by the CDB broadcast.
 */

module physical_reg_file
import params::*;
(
    input   logic                       clk,
    input   logic                       rst,

    // From CDB
    input   logic                       cdb_bc[CDB_WIDTH],
    input   logic   [31:0]              prf_prd_v_i[CDB_WIDTH],
    input   logic   [PRF_IDX_HIBIT:0]   prf_prd_s[CDB_WIDTH],

    // From/to issue
    input   logic   [PRF_IDX_HIBIT:0]   prf_prs1_s[PRF_WIDTH], prf_prs2_s[PRF_WIDTH],
    output  logic   [31:0]              prf_prs1_v_o[PRF_WIDTH], prf_prs2_v_o[PRF_WIDTH]
);

    logic   [31:0]  data [NUM_PHYSICAL_REGISTERS];
    logic           rst_reg;

    always_ff @(posedge clk) begin
        for (int unsigned i = 0; i < CDB_WIDTH; i++) begin
            if (cdb_bc[i]) begin
                data[prf_prd_s[i]] <= prf_prd_v_i[i];
            end
        end

        if (rst) begin
            for (int unsigned i = 0; i < NUM_PHYSICAL_REGISTERS; i++) begin
                data[i] <= '0;
            end
            rst_reg <= '1;
        end 
        else begin
            rst_reg <= '0;
        end
    end

    always_comb begin
        // rst_reg used to save reset signal so timing doesn't get decimated here
        if (rst_reg) begin
            for (int unsigned i = 0; i < PRF_WIDTH; i++) begin
                prf_prs1_v_o[i]     = 'x;
                prf_prs2_v_o[i]     = 'x;
            end
        end else begin
            for (int unsigned i = 0; i < PRF_WIDTH; i++) begin
                if (prf_prs1_s[i] == '0) begin
                    prf_prs1_v_o[i] = '0;
                end 
                else begin
                    prf_prs1_v_o[i] = data[prf_prs1_s[i]];
                end

                if (prf_prs2_s[i] == '0) begin
                    prf_prs2_v_o[i] = '0;
                end 
                else begin
                    prf_prs2_v_o[i] = data[prf_prs2_s[i]];
                end
            end
        end
    end

endmodule : physical_reg_file
