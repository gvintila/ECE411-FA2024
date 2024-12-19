module cdb
import rv32i_types::*;
import params::*;
#(
    parameter BUS_WIDTH = 1
)
(
    input logic         rst,
    input logic         clk,

    input logic         late_flush,

    input logic         alu_done, // raise 'alu_done' for one cycle with valid data in 'alu_out' to queue a broadcast to cdb, otherwise set 'alu_done' to 0
    input cdb_t         alu_out,
    input logic         mult_done, // ^^^ analagous for all other execution units
    input cdb_t         mult_out,
    input logic         div_done,
    input cdb_t         div_out,
    input logic         bra_enqueue,    // Change name to bra_done
    input logic         bra_done,       // Change name to bra_bc
    input cdb_t         bra_out,
    input logic         ls_done,
    input cdb_t         ls_out,

    output logic        alu_bc_stall, // this stall goes high when no more data can be enqueued for broadcast for a specific execution unit
    output logic        mult_bc_stall, // so for instance do not raise 'alu_done' when 'alu_bc_stall' is high
    output logic        div_bc_stall,
    output logic        bra_bc_stall,
    output logic        ls_bc_stall,

    output logic        cdb_bc[CDB_WIDTH], // cdb_bc goes high when cdb broadcasting
    output cdb_t        cdb_out[CDB_WIDTH], // cdb_out is data for cdb broadcast

    input  logic                       bra_mispredict,
    input  logic   [EBR_MASK_SIZE-1:0] bra_id
);
        // logic big_cdb_bcq_enqueue[5];
        // logic big_cdb_bcq_dequeue[5];
        // cdb_t big_cdb_bcq_wdata[5];

        //logic alu_on;

        logic mult_bcq_empty;
        cdb_t mult_bcq_rdata;
        logic mult_bcq_dequeue;
        logic mult_bcq_full;

        logic alu_bcq_empty;
        cdb_t alu_bcq_rdata;
        logic alu_bcq_dequeue;
        logic alu_bcq_full;

        logic div_bcq_empty;
        cdb_t div_bcq_rdata;
        logic div_bcq_dequeue;
        logic div_bcq_full;

        logic bra_bcq_empty;
        cdb_t bra_bcq_rdata;
        logic bra_bcq_dequeue;
        logic bra_bcq_full;

        logic ls_bcq_empty;
        cdb_t ls_bcq_rdata;
        logic ls_bcq_dequeue;
        logic ls_bcq_full;

    cdb_fifo #(.QUEUE_DEPTH(CDB_MUL_Q_DEPTH)) mult_broadcast_fifo(
        .clk        (clk),
        .rst        (rst || late_flush),
        .enqueue    (mult_done),
        .dequeue    (mult_bcq_dequeue),
        .wdata      (mult_out),
        .rdata      (mult_bcq_rdata),
        .full       (mult_bcq_full),
        .empty      (mult_bcq_empty),
        .bra_done   (bra_done),
        .bra_mispredict     (bra_mispredict),
        .bra_id     (bra_id)
    );

    cdb_fifo #(.QUEUE_DEPTH(CDB_ALU_Q_DEPTH)) alu_broadcast_fifo(
        .clk        (clk),
        .rst        (rst || late_flush),
        .enqueue    (alu_done),
        .dequeue    (alu_bcq_dequeue),
        .wdata      (alu_out),
        .rdata      (alu_bcq_rdata),
        .full       (alu_bcq_full),
        .empty      (alu_bcq_empty),
        .bra_done   (bra_done),
        .bra_mispredict     (bra_mispredict),
        .bra_id     (bra_id)
    );

    cdb_fifo #(.QUEUE_DEPTH(CDB_DIV_Q_DEPTH)) div_broadcast_fifo(
        .clk        (clk),
        .rst        (rst || late_flush),
        .enqueue    (div_done),
        .dequeue    (div_bcq_dequeue),
        .wdata      (div_out),
        .rdata      (div_bcq_rdata),
        .full       (div_bcq_full),
        .empty      (div_bcq_empty),
        .bra_done   (bra_done),
        .bra_mispredict     (bra_mispredict),
        .bra_id     (bra_id)
    );

    cdb_fifo #(.QUEUE_DEPTH(CDB_BRA_Q_DEPTH)) bra_broadcast_fifo(
        .clk        (clk),
        .rst        (rst || late_flush),
        .enqueue    (bra_enqueue),
        .dequeue    (bra_bcq_dequeue),
        .wdata      (bra_out),
        .rdata      (bra_bcq_rdata),
        .full       (bra_bcq_full),
        .empty      (bra_bcq_empty),
        .bra_done   (bra_done),
        .bra_mispredict     (bra_mispredict),
        .bra_id     (bra_id)
    );

    cdb_fifo #(.QUEUE_DEPTH(CDB_LS_Q_DEPTH)) ls_broadcast_fifo(
        .clk        (clk),
        .rst        (rst || late_flush),
        .enqueue    (ls_done),
        .dequeue    (ls_bcq_dequeue),
        .wdata      (ls_out),
        .rdata      (ls_bcq_rdata),
        .full       (ls_bcq_full),
        .empty      (ls_bcq_empty),
        .bra_done   (bra_done),
        .bra_mispredict     (bra_mispredict),
        .bra_id     (bra_id)
    );

    // Allows enqueuing to broadcast queues only if queue not full
    assign mult_bc_stall = mult_bcq_full;
    assign alu_bc_stall = alu_bcq_full;
    assign div_bc_stall = div_bcq_full;
    assign bra_bc_stall = bra_bcq_full;
    assign ls_bc_stall  = ls_bcq_full;

    // Comb loop for dequeuing broadcast queues to send
    always_comb begin

        // MULTI CDB BROADCAST

        mult_bcq_dequeue    = 1'b0;
        alu_bcq_dequeue     = 1'b0;
        div_bcq_dequeue     = 1'b0;
        bra_bcq_dequeue     = 1'b0;
        ls_bcq_dequeue      = 1'b0;

        for (int unsigned i = 0; i < CDB_WIDTH; i++) begin
            cdb_bc[i]           = '0;
            cdb_out[i]          = 'x;
        end

        /* FIRST CDB BC */
        /* Div should take highest priority */
        if (!div_bcq_empty && div_bcq_rdata.valid) begin
            cdb_bc[0] = 1'b1;
            cdb_out[0] = div_bcq_rdata;
            div_bcq_dequeue = 1'b1;
        end else if (!mult_bcq_empty && mult_bcq_rdata.valid) begin
            cdb_bc[0] = 1'b1;
            cdb_out[0] = mult_bcq_rdata;
            mult_bcq_dequeue = 1'b1;
        end else if (!ls_bcq_empty && ls_bcq_rdata.valid) begin
            cdb_bc[0] = 1'b1;
            cdb_out[0] = ls_bcq_rdata;
            ls_bcq_dequeue = 1'b1;
        end else if (!bra_bcq_empty && bra_bcq_rdata.valid) begin
            cdb_bc[0] = 1'b1;
            cdb_out[0] = bra_bcq_rdata;
            bra_bcq_dequeue = 1'b1;
        end else if (!alu_bcq_empty && alu_bcq_rdata.valid) begin
            cdb_bc[0] = 1'b1;
            cdb_out[0] = alu_bcq_rdata;
            alu_bcq_dequeue = 1'b1;
        end 

        /* SECOND/THIRD CDB BC */
        /* ALU should take highest priority */
        for (int unsigned i = 1; i < CDB_WIDTH; i++) begin
            if (cdb_bc[i-1]) begin
                if (!alu_bcq_empty && alu_bcq_rdata.valid && !alu_bcq_dequeue) begin
                    cdb_bc[i] = 1'b1;
                    cdb_out[i] = alu_bcq_rdata;
                    alu_bcq_dequeue = 1'b1;
                end else if (!div_bcq_empty && div_bcq_rdata.valid && !div_bcq_dequeue) begin
                    cdb_bc[i] = 1'b1;
                    cdb_out[i] = div_bcq_rdata;
                    div_bcq_dequeue = 1'b1;
                end else if (!mult_bcq_empty && mult_bcq_rdata.valid && !mult_bcq_dequeue) begin
                    cdb_bc[i] = 1'b1;
                    cdb_out[i] = mult_bcq_rdata;
                    mult_bcq_dequeue = 1'b1;
                end else if (!ls_bcq_empty && ls_bcq_rdata.valid && !ls_bcq_dequeue) begin
                    cdb_bc[i] = 1'b1;
                    cdb_out[i] = ls_bcq_rdata;
                    ls_bcq_dequeue = 1'b1;
                end else if (!bra_bcq_empty && bra_bcq_rdata.valid && !bra_bcq_dequeue) begin
                    cdb_bc[i] = 1'b1;
                    cdb_out[i] = bra_bcq_rdata;
                    bra_bcq_dequeue = 1'b1;
                end
            end
        end


        // Flush out invalid broadcast requests
        if (!bra_bcq_empty && !bra_bcq_rdata.valid) begin
            bra_bcq_dequeue         = 1'b1;
        end
        if (!div_bcq_empty && !div_bcq_rdata.valid) begin
            div_bcq_dequeue         = 1'b1;
        end
        if (!mult_bcq_empty && !mult_bcq_rdata.valid) begin
            mult_bcq_dequeue        = 1'b1;
        end
        if (!ls_bcq_empty && !ls_bcq_rdata.valid) begin
            ls_bcq_dequeue          = 1'b1;
        end
        if (!alu_bcq_empty && !alu_bcq_rdata.valid) begin
            alu_bcq_dequeue         = 1'b1;
        end



        // SINGLE CDB BROADCAST

        // mult_bcq_dequeue    = 1'b0;
        // alu_bcq_dequeue     = 1'b0;
        // div_bcq_dequeue     = 1'b0;
        // bra_bcq_dequeue     = 1'b0;
        // ls_bcq_dequeue      = 1'b0;

        // cdb_bc[0]           = '0;
        // cdb_out[0]          = 'x;

        // /* Branches should take highest priority */
        // if (!bra_bcq_empty && bra_bcq_rdata.valid) begin
        //     cdb_bc[0] = 1'b1;
        //     cdb_out[0] = bra_bcq_rdata;
        //     bra_bcq_dequeue = 1'b1;
        // end else if (!div_bcq_empty && div_bcq_rdata.valid) begin
        //     cdb_bc[0] = 1'b1;
        //     cdb_out[0] = div_bcq_rdata;
        //     div_bcq_dequeue = 1'b1;
        // end else if (!mult_bcq_empty && mult_bcq_rdata.valid) begin
        //     cdb_bc[0] = 1'b1;
        //     cdb_out[0] = mult_bcq_rdata;
        //     mult_bcq_dequeue = 1'b1;
        // end else if (!ls_bcq_empty && ls_bcq_rdata.valid) begin
        //     cdb_bc[0] = 1'b1;
        //     cdb_out[0] = ls_bcq_rdata;
        //     ls_bcq_dequeue = 1'b1;
        // end else if (!alu_bcq_empty && alu_bcq_rdata.valid) begin
        //     cdb_bc[0] = 1'b1;
        //     cdb_out[0] = alu_bcq_rdata;
        //     alu_bcq_dequeue = 1'b1;
        // end 

        // // Flush out invalid broadcast requests
        // if (!bra_bcq_empty && !bra_bcq_rdata.valid) begin
        //     bra_bcq_dequeue = 1'b1;
        // end
        // if (!div_bcq_empty && !div_bcq_rdata.valid) begin
        //     div_bcq_dequeue = 1'b1;
        // end
        // if (!mult_bcq_empty && !mult_bcq_rdata.valid) begin
        //     mult_bcq_dequeue = 1'b1;
        // end
        // if (!alu_bcq_empty && !alu_bcq_rdata.valid) begin
        //     alu_bcq_dequeue = 1'b1;
        // end
        // if (!ls_bcq_empty && !ls_bcq_rdata.valid) begin
        //     ls_bcq_dequeue = 1'b1;
        // end


        // RIP BIG CDB :(((        
                
        // // Lowest index is higher priority to broadcast

        // for (int unsigned i = 0; i < 5; i++) begin
        //     big_cdb_bcq_enqueue[i]  = '0;
        // end

        // big_cdb_bcq_enqueue[0]  = !bra_bcq_empty;
        // big_cdb_bcq_enqueue[1]  = !div_bcq_empty;
        // big_cdb_bcq_enqueue[2]  = !mult_bcq_empty;
        // big_cdb_bcq_enqueue[3]  = !ls_bcq_empty;
        // big_cdb_bcq_enqueue[4]  = !alu_bcq_empty;

        // big_cdb_bcq_wdata[0]    = bra_bcq_rdata;
        // big_cdb_bcq_wdata[1]    = div_bcq_rdata;
        // big_cdb_bcq_wdata[2]    = mult_bcq_rdata;
        // big_cdb_bcq_wdata[3]    = ls_bcq_rdata;
        // big_cdb_bcq_wdata[4]    = alu_bcq_rdata;

        // bra_bcq_dequeue         = big_cdb_bcq_dequeue[0];       
        // div_bcq_dequeue         = big_cdb_bcq_dequeue[1];
        // mult_bcq_dequeue        = big_cdb_bcq_dequeue[2];
        // ls_bcq_dequeue          = big_cdb_bcq_dequeue[3];
        // alu_bcq_dequeue         = big_cdb_bcq_dequeue[4];

        // // Flush out invalid broadcast requests
        // if (!bra_bcq_empty && !bra_bcq_rdata.valid) begin
        //     big_cdb_bcq_enqueue[0]  = 1'b0;
        //     bra_bcq_dequeue         = 1'b1;
        // end

        // if (!div_bcq_empty && !div_bcq_rdata.valid) begin
        //     big_cdb_bcq_enqueue[1]  = 1'b0;
        //     div_bcq_dequeue         = 1'b1;
        // end

        // if (!mult_bcq_empty && !mult_bcq_rdata.valid) begin
        //     big_cdb_bcq_enqueue[2]  = 1'b0;
        //     mult_bcq_dequeue        = 1'b1;
        // end

        // if (!ls_bcq_empty && !ls_bcq_rdata.valid) begin
        //     big_cdb_bcq_enqueue[3]  = 1'b0;
        //     ls_bcq_dequeue          = 1'b1;
        // end

        // if (!alu_bcq_empty && !alu_bcq_rdata.valid) begin
        //     big_cdb_bcq_enqueue[4]  = 1'b0;
        //     alu_bcq_dequeue         = 1'b1;
        // end

    end


endmodule
