/*
This lsq will enqueue any load/store instrucion from dispatcher (in order)
listen to cdb and update the address and data of such instruction
dequeue & spit out the load instruction to cache adaptor once both addr and data is ready
dequeue & spit out the store instruction to cache adaptor after commit
*/

module lsq
import rv32i_types::*;
import params::*;
#(
    localparam int unsigned LQ_DEPTH = LOAD_QUEUE_DEPTH,
    localparam int unsigned SQ_DEPTH = STORE_QUEUE_DEPTH,
    localparam int unsigned LQ_HEAD_TAIL_SIZE = $clog2(LQ_DEPTH)-1,
    localparam int unsigned SQ_HEAD_TAIL_SIZE = $clog2(SQ_DEPTH)-1,
    localparam [31:0] LOAD_QUEUE_DEPTH_TOP  = LQ_DEPTH - 1,
    localparam [31:0] STORE_QUEUE_DEPTH_TOP = SQ_DEPTH - 1
)
(

    input   logic                   clk,
    input   logic                   rst,
    input   logic                   late_flush,

    // Signals from dispatcher
    // internalize dequeue signal with ls_done
    input   logic                   lq_enqueue,
    input   logic                   sq_enqueue,
    input   lsq_entry_t             lsq_data,

    // Signals from ls_eu
    input  eu_operand_t             ls_eu_lsq_eu_operand,
    input  logic                    ls_eu_data_ready,
    input  logic [31:0]             lsq_address,
    input  logic [3:0]              lsq_mask,
    input  logic [31:0]             lsq_wdata,

    // signal to/from lsq_controller
    input   logic                   lq_dispatched,
    input   logic                   sq_dispatched,

    output  lq_entry_t              lq_dmem_rdata,
    output  logic                   lq_dependency,
    output  logic [3:0]             lq_data_required,
    output  logic [31:0]            lq_data_forwarded,
    output  logic                   lq_invalid_array_lq,
    output  logic [EBR_MASK_SIZE-1:0] lq_resolve_array_lq,
    output  sq_entry_t              sq_rdata,
    //output  logic                   sq_invalid_array_sq,

    // signal to/from rob
    input   logic   [ROB_IDX_HIBIT:0]   commit_rob_id,
    output  logic                       sq_to_rob_ready,
    output  cdb_t                       sq_to_rob_data,

    // signal to/from cdb
    output  logic                   lq_full,
    output  logic                   lq_empty,
    output  logic                   sq_full,
    output  logic                   sq_empty,

    input   logic                       bra_done,
    input   logic                       bra_mispredict,
    input   logic   [EBR_MASK_SIZE-1:0] bra_id
);

    localparam int LQ_DEPTH_SIGNED = LQ_DEPTH;
    localparam int SQ_DEPTH_SIGNED = SQ_DEPTH;

    logic       lq_dequeue;
    logic       sq_dequeue;
    logic       valid_lq_enqueue;
    logic       valid_lq_dequeue;
    logic       valid_sq_enqueue;
    logic       valid_sq_dequeue;

    lq_entry_t   lq_comb[LQ_DEPTH];  // Load Queue
    sq_entry_t   sq_comb[SQ_DEPTH];  // Store Queue
    logic [SQ_HEAD_TAIL_SIZE + 1'b1: 0] sq_tail_comb;

    logic [EBR_MASK_SIZE-1:0]   resolve_array_lq       [LQ_DEPTH];
    logic                       invalid_array_lq       [LQ_DEPTH];

    logic [EBR_MASK_SIZE-1:0]   resolve_array_sq       [SQ_DEPTH];
    logic                       invalid_array_sq       [SQ_DEPTH];

    lq_entry_t  lq_issue_rdata;

    lq_entry_t   lq[LQ_DEPTH];  // Load Queue
    logic        dependency[LQ_DEPTH];
    logic [3:0]  data_required[LQ_DEPTH];
    logic [31:0] data_forwarded[LQ_DEPTH];
    logic [LQ_HEAD_TAIL_SIZE + 1'b1: 0] lq_to_dmem_ptr;

    sq_entry_t  sq[SQ_DEPTH];  // Store Queue
    //wether the store cdb data is ready (if it is calculated)
    logic       sq_to_rob_ready_comb;
    // the actual data to commit
    cdb_t       sq_to_rob_data_comb;
    // Queue size counters
    // as we are implementing using shifting register, only tail is needed (head is always index 0)
    // tail will range from 0 to QUEUE_DEPTH, need to be one bit bigger
    // logic [LQ_HEAD_TAIL_SIZE + 1'b1: 0] lq_tail;
    logic [LQ_HEAD_TAIL_SIZE + 1'b1: 0] lq_enqueue_ptr;
    logic [LQ_HEAD_TAIL_SIZE + 1'b1: 0] lq_dequeue_ptr;
    logic [SQ_HEAD_TAIL_SIZE + 1'b1: 0] sq_tail;

    assign valid_lq_enqueue = lq_enqueue  && !lq_dequeue && !lq_full;
    assign valid_lq_dequeue = !lq_enqueue && lq_dequeue  && !lq_empty;
    assign valid_sq_enqueue = sq_enqueue  && !sq_dequeue && !sq_full;
    assign valid_sq_dequeue = !sq_enqueue && sq_dequeue  && !sq_empty;

    assign sq_full  = (sq_tail >= SQ_DEPTH[SQ_HEAD_TAIL_SIZE + 1:0]); 
    assign sq_empty = (sq_tail == 0); 

    assign lq_dmem_rdata    = lq[lq_to_dmem_ptr];
    assign lq_issue_rdata   = lq[lq_dequeue_ptr];
    assign lq_dependency    = dependency[lq_to_dmem_ptr];
    assign lq_data_required    = data_required[lq_to_dmem_ptr];
    assign lq_data_forwarded   = data_forwarded[lq_to_dmem_ptr];
    assign lq_resolve_array_lq = resolve_array_lq[lq_to_dmem_ptr];
    assign lq_invalid_array_lq = invalid_array_lq[lq_to_dmem_ptr];
    //assign sq_invalid_array_sq = invalid_array_sq[0];
    assign sq_rdata         = sq[0];

    assign lq_dequeue = lq_dispatched;
    assign sq_dequeue = sq_dispatched;

    assign sq_to_rob_ready  = sq_to_rob_ready_comb;
    assign sq_to_rob_data   = sq_to_rob_data_comb;

    generate for (genvar i = 0; i < LQ_DEPTH_SIGNED; i++) begin : lq_ebr
        ebr_resolve ebr_resolve (
            .in_mask(lq[i].ebr_mask),
            .bra_id(bra_id),
            .bra_mispredict(bra_mispredict),
            .out_mask(resolve_array_lq[i]),
            .invalid(invalid_array_lq[i])
        );
    end endgenerate

    generate for (genvar i = 0; i < SQ_DEPTH_SIGNED; i++) begin : sq_ebr
        ebr_resolve ebr_resolve (
            .in_mask(sq[i].ebr_mask),
            .bra_id(bra_id),
            .bra_mispredict(bra_mispredict),
            .out_mask(resolve_array_sq[i]),
            .invalid(invalid_array_sq[i])
        );
    end endgenerate

    always_comb begin
        sq_to_rob_ready_comb = '0;
        sq_to_rob_data_comb = '0;
        // grab value from sq and lq
        for(int unsigned i = 0 ; i < SQ_DEPTH ; i++) begin
            sq_comb[i] = sq[i];
        end
        for(int unsigned i = 0 ; i < LQ_DEPTH ; i++) begin
            lq_comb[i] = lq[i];
        end
        sq_tail_comb = sq_tail;

        if (late_flush) begin
            // basically dequeue every element after the last issue_ready element
            for (int unsigned i = 0 ; i < SQ_DEPTH; i++) begin
                if(sq_comb[i].issue_ready) begin
                    sq_tail_comb = (SQ_HEAD_TAIL_SIZE + 2'b10)'(i);
                end
            end
            sq_tail_comb = sq_tail_comb + 1'b1;
        end else begin
            if (bra_done) begin
                for(int unsigned i = 0 ; i < LQ_DEPTH ; i++) begin
                    lq_comb[i].ebr_mask = resolve_array_lq[i];
                    lq_comb[i].valid    = lq_comb[i].valid && !invalid_array_lq[i];
                end
                for(int unsigned i = 0 ; i < SQ_DEPTH ; i++) begin
                    sq_comb[i].ebr_mask = resolve_array_sq[i];
                    sq_comb[i].valid    = sq_comb[i].valid && !invalid_array_sq[i];
                end
            end

            for(int unsigned i = 0 ; i < SQ_DEPTH ; i++) begin
                if(sq_comb[i].valid && sq_comb[i].lsq_calculation_done && !sq_comb[i].issue_ready && sq_comb[i].cdb_data.rob_id == commit_rob_id) begin
                    sq_comb[i].issue_ready  = '1;
                    sq_to_rob_ready_comb    = '1;
                    sq_to_rob_data_comb     = sq_comb[i].cdb_data;
                end
            end

            // grab value from load_store execution unit
            // have to compare rob_id to make sure the value go to the correct queue element
            if(ls_eu_data_ready) begin
                for (int unsigned i = 0; i < LQ_DEPTH; i++) begin
                    if (lq_comb[i].valid && lq_comb[i].cdb_data.rob_id == ls_eu_lsq_eu_operand.rob_id) begin
                        lq_comb[i].cdb_data.valid       = ls_eu_lsq_eu_operand.valid;
                        lq_comb[i].cdb_data.prs1_v      = ls_eu_lsq_eu_operand.prs1_v;
                        lq_comb[i].cdb_data.prs2_v      = ls_eu_lsq_eu_operand.prs2_v;
                        lq_comb[i].cdb_data.prd_s       = ls_eu_lsq_eu_operand.prd_s;
                        lq_comb[i].cdb_data.lrd_s       = ls_eu_lsq_eu_operand.lrd_s;
                        lq_comb[i].cdb_data.is_flush    = '0;
                        lq_comb[i].cdb_data.pc_next     = ls_eu_lsq_eu_operand.pc + 'd4;
                        lq_comb[i].lsq_calculation_done = '1;
                        lq_comb[i].cdb_data.dmem_addr   = lsq_address;
                        lq_comb[i].cdb_data.dmem_rmask  = lsq_mask;  
                        lq_comb[i].cdb_data.dmem_wmask  = '0;
                        lq_comb[i].cdb_data.dmem_wdata  = lsq_wdata;   
                    end
                end
                for (int unsigned i = 0; i < SQ_DEPTH; i++) begin
                    if (sq_comb[i].valid && !sq_comb[i].issue_ready && sq_comb[i].cdb_data.rob_id == ls_eu_lsq_eu_operand.rob_id) begin
                        sq_comb[i].cdb_data.valid       = ls_eu_lsq_eu_operand.valid;
                        sq_comb[i].cdb_data.prs1_v      = ls_eu_lsq_eu_operand.prs1_v;
                        sq_comb[i].cdb_data.prs2_v      = ls_eu_lsq_eu_operand.prs2_v;
                        sq_comb[i].cdb_data.prd_s       = ls_eu_lsq_eu_operand.prd_s;
                        sq_comb[i].cdb_data.lrd_s       = ls_eu_lsq_eu_operand.lrd_s;
                        sq_comb[i].cdb_data.is_flush    = '0;
                        sq_comb[i].cdb_data.pc_next     = ls_eu_lsq_eu_operand.pc + 'd4;
                        sq_comb[i].lsq_calculation_done = '1;
                        sq_comb[i].cdb_data.dmem_addr   = lsq_address;
                        sq_comb[i].cdb_data.dmem_rmask  = '0;  
                        sq_comb[i].cdb_data.dmem_wmask  = lsq_mask;
                        sq_comb[i].cdb_data.dmem_wdata  = lsq_wdata;   
                    end
                end
            end

            if (sq_enqueue && sq_dequeue && !sq_empty) begin

                for (int unsigned i = 0; i < SQ_DEPTH-1; i++) begin
                    sq_comb[i] = sq_comb[i+1];
                end

                sq_comb[SQ_DEPTH-1]       = '0;
                for (int unsigned i = 0; i < LQ_DEPTH; i++) begin
                    if(lq_comb[i].sq_pointer > '0 && lq_comb[i].valid == '1) begin
                        lq_comb[i].sq_pointer = lq_comb[i].sq_pointer -1;
                    end
                end
                sq_comb[sq_tail_comb-1'b1].valid                      = lsq_data.valid;
                sq_comb[sq_tail_comb-1'b1].lsq_calculation_done       = lsq_data.lsq_calculation_done;
                sq_comb[sq_tail_comb-1'b1].dmem_dispatched            = '0;
                sq_comb[sq_tail_comb-1'b1].issue_ready                = '0;
                sq_comb[sq_tail_comb-1'b1].funct3                     = lsq_data.funct3;
                sq_comb[sq_tail_comb-1'b1].ebr_mask                   = lsq_data.ebr_mask;
                sq_comb[sq_tail_comb-1'b1].load_store                 = lsq_data.load_store;
                sq_comb[sq_tail_comb-1'b1].prs1_s                     = lsq_data.prs1_s;
                sq_comb[sq_tail_comb-1'b1].prs2_s                     = lsq_data.prs2_s;
                sq_comb[sq_tail_comb-1'b1].cdb_data                   = lsq_data.cdb_data;
            end else if (lq_enqueue && lq_dequeue && !lq_empty) begin
                lq_comb[lq_dequeue_ptr] = '0;
                lq_comb[lq_enqueue_ptr].valid                    = lsq_data.valid;
                lq_comb[lq_enqueue_ptr].lsq_calculation_done     = lsq_data.lsq_calculation_done;
                lq_comb[lq_enqueue_ptr].dmem_dispatched          = '0;
                lq_comb[lq_enqueue_ptr].issue_ready              = '0;
                lq_comb[lq_enqueue_ptr].funct3                   = lsq_data.funct3;
                lq_comb[lq_enqueue_ptr].ebr_mask                 = lsq_data.ebr_mask;
                lq_comb[lq_enqueue_ptr].load_store               = lsq_data.load_store;
                lq_comb[lq_enqueue_ptr].prs1_s                   = lsq_data.prs1_s;
                lq_comb[lq_enqueue_ptr].prs2_s                   = lsq_data.prs2_s;
                lq_comb[lq_enqueue_ptr].cdb_data                 = lsq_data.cdb_data;
                lq_comb[lq_enqueue_ptr].sq_pointer               = sq_tail_comb;
            end else if (valid_sq_enqueue && valid_lq_dequeue) begin
                sq_comb[sq_tail_comb].valid                   = lsq_data.valid;
                sq_comb[sq_tail_comb].lsq_calculation_done    = lsq_data.lsq_calculation_done;
                sq_comb[sq_tail_comb].dmem_dispatched         = '0;
                sq_comb[sq_tail_comb].issue_ready             = '0;
                sq_comb[sq_tail_comb].funct3                  = lsq_data.funct3;
                sq_comb[sq_tail_comb].ebr_mask                = lsq_data.ebr_mask;
                sq_comb[sq_tail_comb].load_store              = lsq_data.load_store;
                sq_comb[sq_tail_comb].prs1_s                  = lsq_data.prs1_s;
                sq_comb[sq_tail_comb].prs2_s                  = lsq_data.prs2_s;
                sq_comb[sq_tail_comb].cdb_data                = lsq_data.cdb_data;
                sq_tail_comb              = sq_tail_comb + 1'b1;
                lq_comb[lq_dequeue_ptr] = '0;
            end else if (valid_sq_enqueue && !valid_lq_dequeue) begin
                sq_comb[sq_tail_comb].valid                   = lsq_data.valid;
                sq_comb[sq_tail_comb].lsq_calculation_done    = lsq_data.lsq_calculation_done;
                sq_comb[sq_tail_comb].dmem_dispatched         = '0;
                sq_comb[sq_tail_comb].issue_ready             = '0;
                sq_comb[sq_tail_comb].funct3                  = lsq_data.funct3;
                sq_comb[sq_tail_comb].ebr_mask                = lsq_data.ebr_mask;
                sq_comb[sq_tail_comb].load_store              = lsq_data.load_store;
                sq_comb[sq_tail_comb].prs1_s                  = lsq_data.prs1_s;
                sq_comb[sq_tail_comb].prs2_s                  = lsq_data.prs2_s;
                sq_comb[sq_tail_comb].cdb_data                = lsq_data.cdb_data;
                sq_tail_comb              = sq_tail_comb + 1'b1;
            end else if (valid_sq_dequeue && valid_lq_enqueue) begin
                for (int unsigned i = 0; i < SQ_DEPTH-1; i++) begin
                    sq_comb[i] = sq_comb[i+1];
                end
                sq_comb[SQ_DEPTH-1]       = '0;
                for (int unsigned i = 0; i < LQ_DEPTH; i++) begin
                    if(lq_comb[i].sq_pointer > '0 && lq_comb[i].valid == '1) begin
                        lq_comb[i].sq_pointer = lq_comb[i].sq_pointer -1'b1;
                    end
                end
                sq_tail_comb                                     = sq_tail_comb - 1'b1;
                lq_comb[lq_enqueue_ptr].valid                    = lsq_data.valid;
                lq_comb[lq_enqueue_ptr].lsq_calculation_done     = lsq_data.lsq_calculation_done;
                lq_comb[lq_enqueue_ptr].dmem_dispatched          = '0;
                lq_comb[lq_enqueue_ptr].issue_ready              = '0;
                lq_comb[lq_enqueue_ptr].funct3                   = lsq_data.funct3;
                lq_comb[lq_enqueue_ptr].ebr_mask                 = lsq_data.ebr_mask;
                lq_comb[lq_enqueue_ptr].load_store               = lsq_data.load_store;
                lq_comb[lq_enqueue_ptr].prs1_s                   = lsq_data.prs1_s;
                lq_comb[lq_enqueue_ptr].prs2_s                   = lsq_data.prs2_s;
                lq_comb[lq_enqueue_ptr].cdb_data                 = lsq_data.cdb_data;
                lq_comb[lq_enqueue_ptr].sq_pointer               = sq_tail_comb;
            end else if (valid_sq_dequeue && !valid_lq_enqueue) begin
                for (int unsigned i = 0; i < SQ_DEPTH-1; i++) begin
                    sq_comb[i] = sq_comb[i+1];
                end
                sq_comb[SQ_DEPTH-1]       = '0;
                for (int unsigned i = 0; i < LQ_DEPTH; i++) begin
                    if(lq_comb[i].sq_pointer > '0 && lq_comb[i].valid == '1) begin
                        lq_comb[i].sq_pointer = lq_comb[i].sq_pointer -1'b1;
                    end
                end
                sq_tail_comb                             = sq_tail_comb - 1'b1;
            end else if (valid_lq_enqueue && !valid_sq_dequeue) begin
                lq_comb[lq_enqueue_ptr].valid                    = lsq_data.valid;
                lq_comb[lq_enqueue_ptr].lsq_calculation_done     = lsq_data.lsq_calculation_done;
                lq_comb[lq_enqueue_ptr].dmem_dispatched          = '0;
                lq_comb[lq_enqueue_ptr].issue_ready              = '0;
                lq_comb[lq_enqueue_ptr].funct3                   = lsq_data.funct3;
                lq_comb[lq_enqueue_ptr].ebr_mask                 = lsq_data.ebr_mask;
                lq_comb[lq_enqueue_ptr].load_store               = lsq_data.load_store;
                lq_comb[lq_enqueue_ptr].prs1_s                   = lsq_data.prs1_s;
                lq_comb[lq_enqueue_ptr].prs2_s                   = lsq_data.prs2_s;
                lq_comb[lq_enqueue_ptr].cdb_data                 = lsq_data.cdb_data;
                lq_comb[lq_enqueue_ptr].sq_pointer               = sq_tail_comb;
            end else if (valid_lq_dequeue && !valid_sq_enqueue) begin
                lq_comb[lq_dequeue_ptr] = '0;
            end
        end
    end

    always_comb begin
        for( int unsigned i = 0 ; i < LQ_DEPTH ; i++) begin
            dependency[i] = '0;
            data_required[i] = '1;
            data_forwarded[i] = '0;
            if(lq[i].lsq_calculation_done && lq[i].valid) begin
                data_required[i] = lq[i].cdb_data.dmem_rmask;
            end
            for(int unsigned j = 0 ; j < SQ_DEPTH ; j++) begin
                // only check & calculate forward data if the inst is still not dependent
                // e.g. sq_pointer = 6, sq[3] not calculated yet but valid & sq[5] calculated and valid
                if(lq[i].sq_pointer > (SQ_HEAD_TAIL_SIZE + 2'b10)'(j) && lq[i].valid && lq[i].lsq_calculation_done && sq[j].valid && sq[j].lsq_calculation_done && (lq[i].cdb_data.dmem_addr[31:2] == sq[j].cdb_data.dmem_addr[31:2]) && !dependency[i]) begin
                    for(int unsigned k = 0 ; k < 4 ; k++) begin
                        // if wmask and rmask on bit k is both high, can forward
                        if(lq[i].cdb_data.dmem_rmask[k] && sq[j].cdb_data.dmem_wmask[k]) begin
                            data_forwarded[i][(k << 3) +: 8] = sq[j].cdb_data.dmem_wdata[(k << 3) +: 8];
                            data_required[i][k] = 1'b0;
                        end
                    end
                    dependency[i] = '0;
                end else if (lq[i].sq_pointer > (SQ_HEAD_TAIL_SIZE + 2'b10)'(j) && lq[i].valid && lq[i].lsq_calculation_done && !sq[j].lsq_calculation_done && sq[j].valid) begin
                    dependency[i] = '1;
                end else if(!lq[i].lsq_calculation_done && lq[i].valid) begin
                    dependency[i] = '1;
                end
            end
        end
    end

    always_comb begin
        lq_enqueue_ptr  = '0;
        lq_to_dmem_ptr  = '0;
        lq_dequeue_ptr  = '0;
        lq_empty        = '1;
        lq_full         = '1;
        for (int unsigned i = 0; i < LQ_DEPTH; i++) begin
            if(lq[i].valid) begin
                lq_empty     = '0;
            end
            if(!lq[i].valid) begin
                lq_enqueue_ptr  = (LQ_HEAD_TAIL_SIZE + 2'b10)'(i);
                lq_full      = '0;
            end
            // if it is valid and calculation is done and (no store before it in sq or store before is not dependent)
            if(lq[i].valid && lq[i].lsq_calculation_done && (lq[i].sq_pointer == '0 || !dependency[i])) begin
                lq_to_dmem_ptr = (LQ_HEAD_TAIL_SIZE + 2'b10)'(i);
                lq_dequeue_ptr = (LQ_HEAD_TAIL_SIZE + 2'b10)'(i);
            end
        end
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            sq_tail <= '0;
            for (int unsigned i = 0; i < SQ_DEPTH; i++) begin
                sq[i] <= '0;
            end
            for (int unsigned i = 0; i < LQ_DEPTH; i++) begin
                lq[i] <= '0;
            end
        end else if (late_flush) begin
            sq_tail <= sq_tail_comb;
            for (int unsigned i = 0; i < SQ_DEPTH; i++) begin
                if(!sq[i].issue_ready) begin
                    sq[i] <= '0;
                end
            end
            for (int unsigned i = 0; i < LQ_DEPTH; i++) begin
                lq[i] <= '0;
            end
        end
        else begin
            sq_tail <= sq_tail_comb;
            for (int unsigned i = 0; i < SQ_DEPTH; i++) begin
                sq[i] <= sq_comb[i];
            end
            for (int unsigned i = 0; i < LQ_DEPTH; i++) begin
                lq[i] <= lq_comb[i];
            end
        end
    end


endmodule : lsq
