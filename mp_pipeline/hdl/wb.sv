module wb   // WB //
import rv32i_types::*;
(
    // input   logic           clk,        // Is this necessary?
    // input   logic           rst,

    // Signals to be received from memory (MEM)
    // input   logic           dmem_stall,
    input   contw_t         contw_wb,

    // Signals to be sent to regfile, RVFI, and execute (for forwarding)
    output  logic           regf_we,
    output  logic   [31:0]  rd_v_wb,
    output  logic   [4:0]   rd_s_wb,

    output  logic           commit,
    output  contw_t         contw_rvfi
);
    // always_ff @(posedge clk) begin
    //     if (rst)
    //         contw_rvfi <= '0;
    //     else begin
    //         if (!stall_wb) 
    //             contw_rvfi <= contw_wb;
    //         else
    //             contw_rvfi <= contw_rvfi;
    //     end
    // end

    always_comb begin
        contw_rvfi  = '0;
        rd_v_wb     = '0;
        rd_s_wb     = '0;
        commit      = '0;
        regf_we     = '0;

        if (!contw_wb.imem_stall) begin
            contw_rvfi = contw_wb;
            rd_v_wb = contw_wb.rd_v;
            rd_s_wb = contw_wb.rd_s;

            unique case (contw_wb.state)
                s_lui: begin
                    regf_we = 1'b1;
                    commit = 1'b1;
                end
                s_aupic: begin
                    regf_we = 1'b1;
                    commit = 1'b1;
                end
                s_jal: begin
                    regf_we = 1'b1;
                    commit = 1'b1;
                end
                s_jalr: begin
                    regf_we = 1'b1;
                    commit = 1'b1;
                end
                s_br: begin
                    commit = 1'b1;
                end
                s_load: begin
                    regf_we = 1'b1;
                    commit = 1'b1;
                end
                s_store: begin
                    regf_we = 1'b1;
                    commit = 1'b1;
                end
                s_ri: begin
                    regf_we = 1'b1;
                    commit = 1'b1;
                end
                s_rr: begin
                    regf_we = 1'b1;
                    commit = 1'b1;
                end
                default: begin
                end
            endcase
        end
    end

endmodule : wb