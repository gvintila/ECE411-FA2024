/*
 *  RAT (register aliasing table) is a table containing both ready and physical registers associated
 *  with their respective architectural (logical) registers by index. This module is accessed by the
 *  decode to find which physical registers to use and written to by decode and CDB to identify which
 *  architectural/physical register is ready.
 */

//               ..----.._    _
//             .' .--.    "-.(O)_
// '-.__.-'"'=:|  ,  _)_ \__ . c\'-..
//              ''------'---''---'-"

module rat
import rv32i_types::*;
import params::*;
(
    input   logic                       clk,
    input   logic                       rst,
    input   logic                       late_flush,

    // Read port 0 and 1 
    // Signals from decode
    input   logic    [4:0]              rat_lrs1_s, 
    input   logic    [4:0]              rat_lrs2_s, 
    
    // Signals to dispatcher
    output  logic    [PRF_IDX_HIBIT:0]  rat_prs1_s,
    output  logic                       rat_prs1_ready,
    output  logic    [PRF_IDX_HIBIT:0]  rat_prs2_s,
    output  logic                       rat_prs2_ready,

    // Write port 2 and 3
    // Signals from decode/free list
    input   logic    [4:0]              id_rat_lrd_s,
    input   logic                       id_rat_lrd_web,
    input   logic    [PRF_IDX_HIBIT:0]  free_id_prd,

    // Signals from CDB
    input   logic                       cdb_bc[CDB_WIDTH],
    input   logic    [PRF_IDX_HIBIT:0]  cdb_rat_prd_s[CDB_WIDTH],

    // Signal from rrat
    input   logic    [PRF_IDX_HIBIT:0]  rrat_internal_array_out [32],

    // EBR
    output  logic    [PRF_IDX_HIBIT:0]  rat_internal_array_out  [32],
    input   logic    [PRF_IDX_HIBIT:0]  ebrat_checkpoint_out    [32],
    input   logic                       bra_done,
    input   logic                       bra_mispredict
);

    logic [PRF_IDX_HIBIT:0] phys_reg_array  [32];
    logic                   ready_array     [NUM_PHYSICAL_REGISTERS];

    // Transparent writes for EBRAT
    always_comb begin
        rat_internal_array_out = phys_reg_array;
        if (id_rat_lrd_web) begin
            rat_internal_array_out[id_rat_lrd_s] = free_id_prd;
        end
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            for (int unsigned i = 0; i < 32; i++) begin
                phys_reg_array[i] <= '0;
            end
            for (int unsigned i = 0; i < NUM_PHYSICAL_REGISTERS; i++) begin
                ready_array[i] <= '1;
            end
        end 
        else if (late_flush) begin
            for (int unsigned i = 0; i < 32; i++) begin
                phys_reg_array[i] <= rrat_internal_array_out[i];
            end
            for (int unsigned i = 0; i < NUM_PHYSICAL_REGISTERS; i++) begin
                ready_array[i] <= '1;
            end
        end
        else begin
            // Ensure that ready doesn't go high for a WAW case
            for (int unsigned i = 0; i < CDB_WIDTH; i++) begin
                if (cdb_bc[i]) begin
                    ready_array[cdb_rat_prd_s[i]] <= '1;
                end
            end
            if (bra_done && bra_mispredict) begin
                for (int unsigned i = 0; i < 32; i++) begin
                    phys_reg_array[i] <= ebrat_checkpoint_out[i];
                end
            end else if (id_rat_lrd_web) begin
                // Write case overwrites CDB broadcast
                // Decode write to new destination register
                phys_reg_array[id_rat_lrd_s] <= free_id_prd;
                ready_array[free_id_prd] <= '0;
            end
        end
    end

    always_comb begin
        if (rat_lrs1_s == '0) begin
            rat_prs1_s = '0;
            rat_prs1_ready = '1;
        end 
        else begin
            // Transparent if decode read and CDB bc happen at the same time
            rat_prs1_s = phys_reg_array[rat_lrs1_s];
            for (int unsigned i = 0; i < CDB_WIDTH; i++) begin
                if (cdb_bc[i] && cdb_rat_prd_s[i] == rat_prs1_s) begin
                    rat_prs1_ready = '1;
                    break;
                end
                else begin
                    rat_prs1_ready = ready_array[rat_prs1_s];
                end
            end
        end

        if (rat_lrs2_s == '0) begin
            rat_prs2_s = '0;
            rat_prs2_ready = '1;
        end 
        else begin
            // Transparent if decode read and CDB bc happen at the same time
            rat_prs2_s = phys_reg_array[rat_lrs2_s];
            for (int unsigned i = 0; i < CDB_WIDTH; i++) begin
                if (cdb_bc[i] && cdb_rat_prd_s[i] == rat_prs2_s) begin
                    rat_prs2_ready = '1;
                    break;
                end
                else begin
                    rat_prs2_ready = ready_array[rat_prs2_s];
                end
            end
        end
    end

endmodule : rat
