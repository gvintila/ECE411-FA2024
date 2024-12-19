/*
 *  The fetch (IF) module stores three queues which contain order, PC, and instruction
 *  data for each instruction received from the cache. The fetch module will also branch
 *  if it's branch decoder detects an early branch/jump can be made. Branches that are mispredicted
 *  later will signal to the fetch to late_flush.
 */

module fetch
import rv32i_types::*;
import params::*;
(
    input   logic               clk,
    input   logic               rst,

    // Signals from/to i-cache
    output  logic   [31:0]      ufp_addr,
    output  logic   [3:0]       ufp_rmask,
    output  logic   [3:0]       ufp_wmask,
    input   logic   [31:0]      ufp_rdata,
    output  logic   [31:0]      ufp_wdata,
    input   logic               ufp_resp,

    // Signals from/to decode stage
    input   logic               id_ft_dequeue,
    output  logic               ft_iq_empty,
    output  logic   [31:0]      ft_iq_rdata,
    output  logic   [31:0]      ft_pcq_rdata,
    output  logic   [31:0]      ft_bpq_rdata,

    // Signals from ROB
    input   logic               late_flush,
    input   logic   [31:0]      late_flush_target,

    // Signals from branch execution unit
    input logic                       bra_done,
    input logic                       bra_mispredict,
    input logic                       bra_taken,
    input logic   [31:0]              bra_pc,
    input logic   [31:0]              early_flush_target
);

    /* SIGNAL ***************************************************************************/

        logic   [31:0]      pc, pc_next, bp_target, flush_target_reg;
        logic               bp_predict_enable;
        logic               late_flush_reg;
        logic               early_flush_reg;

        logic               ufp_resp_reg;
        logic   [31:0]      ufp_rdata_reg;

        logic               if_idle;     
        logic               if_idle_next;

        logic               system_stall;
        logic               rst_reg;

        logic               fetch_enqueue;

        logic               iq_full;
        logic               iq_full_reg;
        logic   [31:0]      iq_wdata;

        logic               pcq_full;
        logic               pcq_empty;
        logic   [31:0]      pcq_wdata;

        logic               bpq_full;
        logic               bpq_empty;
        logic   [31:0]      bpq_wdata;

        logic               early_flush;

        assign bpq_wdata = pc_next;
        assign early_flush  = bra_done && bra_mispredict;

    /* MODULE ***************************************************************************/

    fifo instruction_fetch_queue (
        .clk        (clk),
        .rst        (rst || late_flush || early_flush),
        .enqueue    (fetch_enqueue),
        .dequeue    (id_ft_dequeue),
        .wdata      (iq_wdata),
        .rdata      (ft_iq_rdata),
        .full       (iq_full),
        .empty      (ft_iq_empty)
    );

    fifo pc_queue (
        .clk        (clk),
        .rst        (rst || late_flush || early_flush),
        .enqueue    (fetch_enqueue),
        .dequeue    (id_ft_dequeue),
        .wdata      (pcq_wdata),
        .rdata      (ft_pcq_rdata),
        .full       (pcq_full),
        .empty      (pcq_empty)
    );

    fifo #(.DATA_WIDTH(32)) bp_queue (
        .clk        (clk),
        .rst        (rst || late_flush || early_flush),
        .enqueue    (fetch_enqueue),
        .dequeue    (id_ft_dequeue),
        .wdata      (bpq_wdata),
        .rdata      (ft_bpq_rdata),
        .full       (bpq_full),
        .empty      (bpq_empty)
    );

    nlp branch_predictor (
        .*
    );

    /*
     *  What happens during a late_flush?
     *
     *  1.) Fetch will wait for previous response and send new ufp_addr and NOT enqueue
     *  2.) Fetch gets the new branched instruction and starts enqueuing like normal
     */

     /* 1 cycle reset, then enqueue new data on next cycle */

    /* FF *******************************************************************************/

    always_ff @(posedge clk) begin
        rst_reg <= rst;
        if (rst) begin
            pc                  <= 32'h1eceb000;
            flush_target_reg    <= '0;
            late_flush_reg      <= '0;
            early_flush_reg     <= '0;
            if_idle             <= '1;
            ufp_rdata_reg       <= '0;
            iq_full_reg         <= '0;
            ufp_resp_reg        <= '0;
        end else begin
            pc          <= pc_next; 
            if_idle     <= if_idle_next;
            iq_full_reg <= iq_full;

            // Capture ufp response
            if (ufp_resp) begin
                ufp_rdata_reg <= ufp_rdata;
                // If unable to enqueue, save response
                if (!id_ft_dequeue && iq_full )
                    ufp_resp_reg <= '1;
            end
            // Unsave after successful enqueue
            if ((id_ft_dequeue && ufp_resp_reg) || early_flush || late_flush)
                ufp_resp_reg <= '0;

            // Capture late_flush response if no response was generated
            // Late flush takes priority over early flush
            // Late flush reg will block early flush
            if (late_flush && !(ufp_resp || ufp_resp_reg)) begin
                late_flush_reg <= 1'b1;
                flush_target_reg <= late_flush_target;
            end else if (early_flush && !(ufp_resp || ufp_resp_reg) && !(late_flush_reg)) begin // note do not block if early flush reg high
                early_flush_reg <= 1'b1;
                flush_target_reg <= early_flush_target;
            end


            // Unsave after successful late_flush or low priority early flush
            if ((late_flush || late_flush_reg) && (ufp_resp || ufp_resp_reg)) begin
                late_flush_reg  <= '0;
                early_flush_reg <= '0;
                ufp_resp_reg    <= '0;
            end else if ((early_flush || early_flush_reg) && (ufp_resp || ufp_resp_reg)) begin
                early_flush_reg <= '0;
                ufp_resp_reg    <= '0;
            end

        end
    end

    /* COMBINATIONAL ********************************************************************/

    assign system_stall = rst_reg;

    always_comb begin
        if_idle_next    = if_idle;
        pc_next         = pc;

        ufp_addr        = '0;
        ufp_wdata       = 'x;
        ufp_rmask       = '0;
        ufp_wmask       = '0;

        fetch_enqueue   = '0;
        iq_wdata        = 'x;
        pcq_wdata       = 'x;

        if (!system_stall) begin
            if (if_idle) begin 
                if_idle_next    = '0;
                ufp_addr        = pc;
                ufp_rmask       = '1;
            end 
            else begin
                // If any flush detected, change read address and PC
                // Priority is late flush, then early flush, regs, then non reg
                if ((late_flush || early_flush || late_flush_reg || early_flush_reg) && (ufp_resp || ufp_resp_reg)) begin
                    ufp_rmask       = '1;
                    fetch_enqueue   = 1'b0;
                    if (late_flush_reg) begin // always handle earliest late flush first
                        pc_next         = flush_target_reg;
                        ufp_addr        = flush_target_reg;
                    end
                    else if (late_flush) begin
                        pc_next         = late_flush_target;
                        ufp_addr        = late_flush_target;
                    end 
                    else if (early_flush) begin   // always handle latest early flush first
                        pc_next         = early_flush_target;
                        ufp_addr        = early_flush_target;
                    end
                    else if (early_flush_reg) begin
                        pc_next         = flush_target_reg;
                        ufp_addr        = flush_target_reg;
                    end
                end
                /* If not full, spam reads */
                else if (!iq_full && ufp_resp) begin
                    ufp_rmask       = '1;
                    fetch_enqueue   = 1'b1;
                    iq_wdata        = ufp_rdata;
                end 
                // Got request from ufp_resp
                else if (id_ft_dequeue && ufp_resp) begin
                    ufp_rmask       = '1;
                    fetch_enqueue   = 1'b1;
                    iq_wdata        = ufp_rdata;
                end
                // Saved response from ufp_resp_reg
                else if (id_ft_dequeue && ufp_resp_reg) begin
                    ufp_rmask       = '1;
                    fetch_enqueue   = 1'b1;
                    iq_wdata        = ufp_rdata_reg;
                end
                // No response is saved from ufp_resp
            end
            if (fetch_enqueue) begin
                pcq_wdata   = pc;
                if (bp_predict_enable) begin
                    pc_next         = bp_target;
                    ufp_addr        = bp_target;
                end
                else begin
                    pc_next         = pc + 'd4;
                    ufp_addr        = pc + 'd4;
                end
            end
        end
    end

endmodule : fetch
