module mem   // MEM //
import rv32i_types::*;
(
    input   logic           clk,
    input   logic           rst,

    // Signals to be received from execute (EX)
    input   contw_t         contw_mem,

    // Signals to be sent to writeback (WB)
    output  contw_t         contw_wb,

    // Signals to be received from dmem
    input   logic   [31:0]  dmem_rdata,
    input   logic           dmem_resp,

    // Signals to be sent for forwarding to execute (EX)
    output  logic   [31:0]  rd_v_mem,
    output  logic   [4:0]   rd_s_mem,
    output  logic           rd_lh_mem,

    // Signals sent for stalling
    output  logic           dmem_stall          // Tells exec and wb to stall if dmem has no response
);
    logic           [31:0]  rd_v;
    logic           [31:0]  rd_v_save;          // Saves rd_v caught from response
    logic           [31:0]  dmem_addr;          
    logic                   dmem_rec_resp;      // Confirms if response received from dmem

    // Update signals to send
    always_ff @(posedge clk) begin
        rd_v_save <= rd_v_save;
        dmem_rec_resp <= dmem_rec_resp;

        if (rst) begin
            // Control Word
            contw_wb <= '0;
            rd_v_save <= '0;
            dmem_rec_resp <= '0;

            // Stall
            contw_wb.imem_stall <= '1;
        end 
        else begin
            // Normal flow
            if (!contw_mem.imem_stall && !dmem_stall) begin
                // Control Word
                contw_wb <= contw_mem;
                contw_wb.rd_v <= rd_v;
                contw_wb.dmem_rdata <= dmem_rdata;
                contw_wb.dmem_addr <= dmem_addr;
                dmem_rec_resp <= '0;
            end
            // Stall until dmem_resp if required or imem_stall is active 
            else begin
                // Control Word
                contw_wb <= contw_wb;

                // Catch data if stalling
                if (contw_mem.dmem_exp_resp && dmem_resp) begin
                    rd_v_save <= dmem_rdata;
                    dmem_rec_resp <= '1;
                end

                // Pass bubble
                contw_wb.imem_stall <= '1;
            end
        end
    end

    // Stall if not bubble and expecting response and has not yet been received
    always_comb begin
        if (!contw_mem.imem_stall && contw_mem.dmem_exp_resp && (!dmem_resp && !dmem_rec_resp))
            dmem_stall = '1;
        else
            dmem_stall = '0;
    end

    // Forwarding logic
    always_comb begin
        // Only forward if not in bubble state
        if (!contw_mem.imem_stall) begin
            rd_v_mem = contw_mem.rd_v;
            rd_s_mem = contw_mem.rd_s;
            rd_lh_mem = (contw_mem.state == s_load);    // Check for load hazard
        end
        else begin
            rd_v_mem = '0;
            rd_s_mem = '0;
            rd_lh_mem = '0;
        end
    end

    always_comb begin
        // Set rd_v = caught dmem value if loading
        if (contw_mem.state != s_load)
            rd_v = contw_mem.rd_v;
        else
            rd_v = rd_v_save;

        dmem_addr = contw_mem.dmem_addr;
        if (dmem_resp && contw_mem.state == s_load) begin
            unique case (contw_mem.funct3)
                load_f3_lb : rd_v = {{24{dmem_rdata[7 +8 *dmem_addr[1:0]]}}, dmem_rdata[8 *dmem_addr[1:0] +: 8 ]};
                load_f3_lbu: rd_v = {{24{1'b0}}                          , dmem_rdata[8 *dmem_addr[1:0] +: 8 ]};
                load_f3_lh : rd_v = {{16{dmem_rdata[15+16*dmem_addr[1]  ]}}, dmem_rdata[16*dmem_addr[1]   +: 16]};
                load_f3_lhu: rd_v = {{16{1'b0}}                          , dmem_rdata[16*dmem_addr[1]   +: 16]};
                load_f3_lw : rd_v = dmem_rdata;
                default    : rd_v = 'x;
            endcase
            dmem_addr[1:0] = 2'b00;
        end
    end

endmodule : mem