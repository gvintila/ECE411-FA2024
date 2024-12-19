module fetch    // IF //
import rv32i_types::*;
(
    input   logic           clk,
    input   logic           rst,

    // Signals to be sent to decode (ID)
    output  logic   [31:0]  pc_id,          // PC given to decode for instruction received
    output  logic   [31:0]  inst_id,        // Instruction
    output  logic           imem_stall,     // Stall decode if imem is awaiting response (effectively a bubble)

    // Signals to be received from memory (MEM)
    input   logic           dmem_stall,

    // Forwarding
    input   logic           lh_stall,

    // Branching
    input   logic   [31:0]  pc_br,
    input   logic           br,
    
    // Instruction Memory
    output  logic   [31:0]  imem_addr,      // Memory request
    output  logic   [3:0]   imem_rmask,     
    input   logic   [31:0]  imem_rdata,     // Instruction
    input   logic           imem_resp
);
    logic   [31:0]  pc_next;                // Next PC value
    logic   [31:0]  pc_req;                 // PC address requested to imem
    logic   [31:0]  pc_br_save;

    logic   [2:0]   rst_flag;
    logic           br_flag; 

    logic           imem_rec_resp;          // imem received response
    logic   [31:0]  imem_rdata_save;        // imem_rdata caught
    logic           imem_req;               // Make a read request
    // logic   [1:0]   imem_await_resp;        // Account for stupid read delay

    always_ff @(posedge clk) begin
        if (rst) begin
            rst_flag <= 3'b100;
            br_flag <= 1'b0;
            inst_id <= '0;

            // PC
            pc_id <= 'x;
            pc_req <= 32'h1eceb000 - 'd4;
            pc_br_save <= 'x;

            // imem
            imem_stall <= 1'b1;
            imem_rec_resp <= 1'b0;
            imem_rdata_save <= '0;
        end
        else begin
            // Reset signal
            if (rst_flag == 3'b100)
                rst_flag <= 3'b010;
            else if (rst_flag == 3'b010)
                rst_flag <= 3'b001;
            else
                rst_flag <= 3'b000;

            // Branching
            br_flag <= br_flag;
            pc_br_save <= pc_br_save;
            if (br) begin
                br_flag <= 1'b1;
                pc_br_save <= pc_br;
            end

            // imem
            imem_rec_resp <= imem_rec_resp;
            imem_rdata_save <= imem_rdata_save;

            // Save imem response and data
            if (imem_resp) begin
                imem_rec_resp <= 1'b1;
                imem_rdata_save <= imem_rdata;
            end

            // Normal flow (make imem request when data can be delivered)
            if (imem_req) begin 
                // PC
                pc_id <= pc_req;
                pc_req <= imem_addr;

                // imem
                imem_stall <= 1'b0;

                // Turn branch flag off after request
                if (br || br_flag)
                    br_flag <= 1'b0;

                // Send caught data if response passed
                if (imem_rec_resp)
                    inst_id <= imem_rdata_save;
                else
                    inst_id <= imem_rdata;
                imem_rec_resp <= 1'b0;
            end
            // Stall
            else begin
                // PC
                pc_id <= pc_id;
                pc_req <= pc_req;

                // imem
                // If dmem or lh are stalling, keep stall the same
                if (dmem_stall || lh_stall)
                    imem_stall <= imem_stall;
                // Only bubble if imem is not responding
                else if (!imem_resp && !imem_rec_resp)
                    imem_stall <= 1'b1;
                
                inst_id <= inst_id;
            end

            // imem
            // If branch is happening or doing first request, bubble
            if (br || br_flag || rst_flag[0])
                imem_stall <= 1'b1;
        end
    end

    // pc_next
    always_comb begin
        if (br)
            imem_addr = pc_br;
        else if (br_flag)
            imem_addr = pc_br_save;
        else if (imem_req)
            imem_addr = pc_req + 'd4;
        else
            imem_addr = '0;
    end

    // imem requests should be made when no stalls are happening and a response is received, or after reset
    assign imem_req = ((imem_resp || imem_rec_resp) && !dmem_stall && !lh_stall) || rst_flag[0];

    always_comb begin
        // During reset, no reads should happen
        if (rst || rst_flag[2] || rst_flag[1]) begin
            imem_rmask = '0;
        end
        // Constantly request unless a stall occurs
        else if (!dmem_stall && !lh_stall) begin
            imem_rmask = '1;
        end
        else begin
            imem_rmask = '0;
        end
    end


endmodule : fetch