module regfile
(
    input   logic           clk,
    input   logic           rst,

    // Signals to be received from writeback (WB)
    input   logic           regf_we,
    input   logic   [31:0]  rd_v_wb,
    input   logic   [4:0]   rd_s_wb,

    // Signals to be received from execute (EX)
    input   logic   [4:0]   rs1_s_ex, rs2_s_ex,

    // Signals to be sent to forwarding check
    output  logic   [31:0]  rs1_v_reg, rs2_v_reg
);

    logic   [31:0]  data [32];

    always_ff @(posedge clk) begin
        if (rst) begin
            for (int i = 0; i < 32; i++) begin
                data[i] <= '0;
            end
        end 
        else if (regf_we && (rd_s_wb != 5'd0)) begin
            data[rd_s_wb] <= rd_v_wb;
        end
    end

    // Sequential rerad
    // always_ff @(posedge clk) begin
    //     if (rst) begin
    //         rs1_v_reg <= '0;
    //         rs2_v_reg <= '0;
    //     end else begin
    //         if (rs1_s_id == 5'd0)
    //             rs1_v_reg <= '0;
    //         else if (rs1_s_id == rd_s_wb && regf_we)
    //             rs1_v_reg <= rd_v_wb;
    //         else
    //             rs1_v_reg <= data[rs1_s_id];

    //         if (rs2_s_id == 5'd0)
    //             rs2_v_reg <= '0;
    //         else if (rs2_s_id == rd_s_wb && regf_we)
    //             rs2_v_reg <= rd_v_wb;
    //         else
    //             rs2_v_reg <= data[rs2_s_id];
    //     end
    // end

    // Combinational read
    always_comb begin
        if (rs1_s_ex == 5'd0)
            rs1_v_reg = '0;
        else if (rs1_s_ex == rd_s_wb && regf_we)
            rs1_v_reg = rd_v_wb;
        else
            rs1_v_reg = data[rs1_s_ex];

        if (rs2_s_ex == 5'd0)
            rs2_v_reg = '0;
        else if (rs2_s_ex == rd_s_wb && regf_we)
            rs2_v_reg = rd_v_wb;
        else
            rs2_v_reg = data[rs2_s_ex];
    end

endmodule : regfile
