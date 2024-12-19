/*
This lsq will enqueue any load/store instrucion from dispatcher (in order)
listen to cdb and update the address and data of such instruction
dequeue & spit out the load instruction to cache adaptor once both addr and data is ready
dequeue & spit out the store instruction to cache adaptor after commit
*/

module lsq_controller
import rv32i_types::*;
import params::*;
#(
    localparam int unsigned LQ_DEPTH = LOAD_QUEUE_DEPTH,
    localparam int unsigned LQ_HEAD_TAIL_SIZE = $clog2(LQ_DEPTH)-1
)
(
    input   logic                       clk,
    input   logic                       rst,
    input   logic                       late_flush,

    // Signals from rob
    //input   logic   [ROB_IDX_HIBIT:0]   commit_rob_id,

    // signal from/to lsq
    input   logic                       lq_empty,
    input   logic                       sq_empty,
    input   lq_entry_t                  lq_dmem_rdata,
    input   sq_entry_t                  sq_rdata,
    //input   logic                       sq_invalid_array_sq,
    input   logic                       lq_dependency,
    input   logic [3:0]                 lq_data_required,
    input   logic [31:0]                lq_data_forwarded,
    input   logic                       lq_invalid_array_lq,
    input   logic [EBR_MASK_SIZE-1:0]   lq_resolve_array_lq,

    output  logic                       lq_dispatched,
    output  logic                       sq_dispatched,

    //signal from/to dmem cache
    input   logic   [31:0]              dcache_ufp_rdata,
    input   logic                       dcache_ufp_resp,
    output  logic   [31:0]              dcache_ufp_addr,
    output  logic   [3:0]               dcache_ufp_rmask,
    output  logic   [3:0]               dcache_ufp_wmask,
    output  logic   [31:0]              dcache_ufp_wdata,

    // signal to/from cdb
    input   logic                   ls_bc_stall,
    output  logic                   ls_ready, // ready to recieve data
    output  logic                   ls_done,
    output  cdb_t                   ls_out,

    input   logic                       bra_done,
    input   logic                       bra_mispredict,
    input   logic   [EBR_MASK_SIZE-1:0] bra_id
);

    lsq_entry_t                 lsq_rdata_split;
    lsq_entry_t                 lsq_rdata_reg;
    lsq_entry_t                 lsq_rdata_comb;
    logic                       dmem_cache_ready;
    logic                       lsq_dmem_ready;
    logic                       lsq_dmem_ready_split;
    logic                       lsq_dmem_necessary_split;
    logic   [31:0]              rd_v;
    logic   [31:0]              dcache_ufp_rdata_in;
    logic   [3:0]               data_required_reg;
    logic   [31:0]              data_forwarded_reg;
    logic                       lsq_dmem_necessary_split_reg;
    logic                       invalid;

    logic [EBR_MASK_SIZE-1:0]   resolve_array;
    logic                       invalid_partial_flush;

    logic                       waiting;
    logic                       waiting_comb;
    cdb_t                       ls_out_reg;


    ebr_resolve ebr_resolve (
        .in_mask(lsq_rdata_reg.ebr_mask),
        .bra_id(bra_id),
        .bra_mispredict(bra_mispredict),
        .out_mask(resolve_array),
        .invalid(invalid_partial_flush)
    );

    assign ls_ready         = '1;
    assign ls_out           = (waiting) ? ls_out_reg : lsq_rdata_comb.cdb_data;

    // determine if to get sq data or lq data
    always_comb begin
        lsq_rdata_split = '0;
        if ((lq_dmem_rdata.sq_pointer == '0 || lq_dependency == '0) && lq_dmem_rdata.valid && lq_dmem_rdata.lsq_calculation_done && !lq_invalid_array_lq) begin
            lsq_rdata_split.valid                   = lq_dmem_rdata.valid;
            lsq_rdata_split.lsq_calculation_done    = lq_dmem_rdata.lsq_calculation_done;
            lsq_rdata_split.funct3                  = lq_dmem_rdata.funct3;
            lsq_rdata_split.ebr_mask                = lq_dmem_rdata.ebr_mask; 
            lsq_rdata_split.load_store              = lq_dmem_rdata.load_store;
            lsq_rdata_split.prs1_s                  = lq_dmem_rdata.prs1_s;
            lsq_rdata_split.prs2_s                  = lq_dmem_rdata.prs2_s;  
            lsq_rdata_split.cdb_data                = lq_dmem_rdata.cdb_data; 
        end 
        else if (sq_rdata.issue_ready) begin
            lsq_rdata_split.valid                   = sq_rdata.valid;
            lsq_rdata_split.lsq_calculation_done    = sq_rdata.lsq_calculation_done;
            lsq_rdata_split.funct3                  = sq_rdata.funct3;
            lsq_rdata_split.ebr_mask                = sq_rdata.ebr_mask; 
            lsq_rdata_split.load_store              = sq_rdata.load_store;
            lsq_rdata_split.prs1_s                  = sq_rdata.prs1_s;
            lsq_rdata_split.prs2_s                  = sq_rdata.prs2_s;  
            lsq_rdata_split.cdb_data                = sq_rdata.cdb_data; 
        end
    end

    // determine wether the data is ready to be sent to dmem and wether it is neverrery to send the data to dmem
    always_comb begin
        // if it is a store, have to wait until rob top is the same instruction to be ready
        // stall if broadcast queue is full
        // if at the exact cycle of sending to dmem cache late_flush, stop the request
        lsq_dmem_ready_split        = '0;
        lsq_dmem_necessary_split    = '1;
        if(late_flush)begin
            lsq_dmem_ready_split        = '0;
            lsq_dmem_necessary_split    = '1;
        end else if (lq_empty && sq_empty) begin
            lsq_dmem_ready_split = '0;
        end else if(lsq_rdata_split.load_store == '1)begin
            lsq_dmem_necessary_split = '1;
            // lsq_dmem_ready_split = lsq_rdata_split.lsq_calculation_done && !ls_bc_stall;

            // this inst is already committed just fire straight away
            // dont care if bc is stalling as we wont be broadcasting this
            // only if store issue ready = 1 will we select a store, dont need to check extra condition
            //lsq_dmem_ready_split = '1;
            lsq_dmem_ready_split = !ls_bc_stall;
        end
        else begin
            //lsq_dmem_ready_split = lsq_rdata_split.lsq_calculation_done && !ls_bc_stall;
            lsq_dmem_ready_split = lsq_rdata_split.lsq_calculation_done && !ls_bc_stall;
            // if no data required, not have to send to cache
            if(lq_data_required == '0 && !lq_invalid_array_lq)begin
                lsq_dmem_necessary_split = '0;
            end else begin
                lsq_dmem_necessary_split = '1;
            end
        end
    end

    // only dequeue(request read/write) when lsq is not empty and cache is ready
    // if load_store == 1, its a store, only dequeue store
    assign lq_dispatched    = ((dmem_cache_ready ) || dcache_ufp_resp) && lsq_dmem_ready_split && !lsq_rdata_split.load_store;
    assign sq_dispatched    = ((dmem_cache_ready || dcache_ufp_resp) && lsq_dmem_ready_split && lsq_rdata_split.load_store) || (!sq_empty && !sq_rdata.valid);

    // lsq_dmem_ready logic is assigned above
    assign dcache_ufp_addr  = lsq_rdata_split.cdb_data.dmem_addr;
    assign dcache_ufp_rmask = (lsq_dmem_ready_split && lsq_dmem_necessary_split)? lsq_rdata_split.cdb_data.dmem_rmask : '0;
    assign dcache_ufp_wmask = (lsq_dmem_ready_split && lsq_dmem_necessary_split)? lsq_rdata_split.cdb_data.dmem_wmask : '0;
    assign dcache_ufp_wdata = lsq_rdata_split.cdb_data.dmem_wdata;

    // latch lsq necessary data for poss processing (load forwarding)
    always_ff @(posedge clk)begin
        if (rst || late_flush) begin
            lsq_rdata_reg       <= '0;
            data_required_reg   <= '0;
            data_forwarded_reg  <= '0;
            lsq_dmem_necessary_split_reg <= '1;
            waiting <= '0;
            ls_out_reg <= '0;
        end else begin
            if(waiting_comb) begin
                waiting <= '1;
                ls_out_reg <= lsq_rdata_comb.cdb_data;
            end else if(!ls_bc_stall)begin
                waiting <= '0;
            end
            // check if this data point need cache
            if(lq_dispatched || (sq_dispatched && sq_rdata.valid))begin
                waiting <= '0;
                ls_out_reg <= '0;
                if(bra_done) begin
                    lsq_rdata_reg.valid                 <= lsq_rdata_split.valid;
                    lsq_rdata_reg.lsq_calculation_done  <= lsq_rdata_split.lsq_calculation_done;
                    lsq_rdata_reg.funct3                <= lsq_rdata_split.funct3;
                    lsq_rdata_reg.ebr_mask              <= lq_resolve_array_lq;
                    lsq_rdata_reg.load_store            <= lsq_rdata_split.load_store;
                    lsq_rdata_reg.prs1_s                <= lsq_rdata_split.prs1_s;
                    lsq_rdata_reg.prs2_s                <= lsq_rdata_split.prs2_s;
                    lsq_rdata_reg.cdb_data              <= lsq_rdata_split.cdb_data;
                end else begin
                    lsq_rdata_reg                   <= lsq_rdata_split;
                end
                lsq_dmem_necessary_split_reg    <= lsq_dmem_necessary_split;
                if(lq_dispatched) begin
                    data_required_reg   <= lq_data_required;
                    data_forwarded_reg  <= lq_data_forwarded;
                end
            end else if (bra_done) begin
                lsq_rdata_reg.ebr_mask          <= resolve_array;
                if(invalid_partial_flush) begin
                    waiting <= '0;
                    lsq_dmem_necessary_split_reg    <= '1;
                end else begin
                    lsq_dmem_necessary_split_reg    <= lsq_dmem_necessary_split_reg;
                end
            end else begin
                lsq_dmem_necessary_split_reg    <= '1;
            end
        end
    end

    // logic for ls_done and ls_out, including forwarding logic
    always_comb begin
        lsq_rdata_comb          = lsq_rdata_reg;
        dcache_ufp_rdata_in     = '0;
        ls_done                 = '0;
        waiting_comb            = '0;
        if(waiting) begin
            ls_done = !invalid_partial_flush && !ls_bc_stall && !invalid;
        end else if(!lsq_dmem_necessary_split_reg) begin
            ls_done = !invalid_partial_flush && !ls_bc_stall && !invalid;
            waiting_comb = !invalid_partial_flush && ls_bc_stall && !invalid;
            unique case (lsq_rdata_comb.funct3)
                load_f3_lb : lsq_rdata_comb.cdb_data.prd_v = {{24{data_forwarded_reg[7 +8 *lsq_rdata_comb.cdb_data.dmem_addr [1:0]]}}   , data_forwarded_reg[8 *lsq_rdata_comb.cdb_data.dmem_addr [1:0] +: 8 ]};
                load_f3_lbu: lsq_rdata_comb.cdb_data.prd_v = {{24{1'b0}}                                             , data_forwarded_reg[8 *lsq_rdata_comb.cdb_data.dmem_addr [1:0] +: 8 ]};
                load_f3_lh : lsq_rdata_comb.cdb_data.prd_v = {{16{data_forwarded_reg[15+16*lsq_rdata_comb.cdb_data.dmem_addr [1]  ]}}   , data_forwarded_reg[16*lsq_rdata_comb.cdb_data.dmem_addr [1]   +: 16]};
                load_f3_lhu: lsq_rdata_comb.cdb_data.prd_v = {{16{1'b0}}                                             , data_forwarded_reg[16*lsq_rdata_comb.cdb_data.dmem_addr [1]   +: 16]};
                load_f3_lw : lsq_rdata_comb.cdb_data.prd_v = data_forwarded_reg;
                default    : lsq_rdata_comb.cdb_data.prd_v = 'x;
            endcase
            lsq_rdata_comb.cdb_data.dmem_rdata   = data_forwarded_reg;
        end  else if (dcache_ufp_resp && !invalid && !late_flush) begin // if the dmem responded
            // if we are running a store dont broadcast
            // if it is a load, grab read value
            if(lsq_rdata_comb.load_store == '0) begin
                ls_done = !invalid_partial_flush && !ls_bc_stall && !invalid;
                waiting_comb = !invalid_partial_flush && ls_bc_stall && !invalid;
                unique case (lsq_rdata_comb.funct3)
                    load_f3_lb : rd_v = {{24{dcache_ufp_rdata[7 +8 *lsq_rdata_comb.cdb_data.dmem_addr [1:0]]}}   , dcache_ufp_rdata[8 *lsq_rdata_comb.cdb_data.dmem_addr [1:0] +: 8 ]};
                    load_f3_lbu: rd_v = {{24{1'b0}}                                             , dcache_ufp_rdata[8 *lsq_rdata_comb.cdb_data.dmem_addr [1:0] +: 8 ]};
                    load_f3_lh : rd_v = {{16{dcache_ufp_rdata[15+16*lsq_rdata_comb.cdb_data.dmem_addr [1]  ]}}   , dcache_ufp_rdata[16*lsq_rdata_comb.cdb_data.dmem_addr [1]   +: 16]};
                    load_f3_lhu: rd_v = {{16{1'b0}}                                             , dcache_ufp_rdata[16*lsq_rdata_comb.cdb_data.dmem_addr [1]   +: 16]};
                    load_f3_lw : rd_v = dcache_ufp_rdata;
                    default    : rd_v = 'x;
                endcase

                dcache_ufp_rdata_in = dcache_ufp_rdata;
                for( int unsigned i = 0 ; i < 4 ; i++) begin
                    if(data_required_reg[i] == 1'b0 && lsq_rdata_comb.cdb_data.dmem_rmask[i] == 1'b1) begin
                        unique case (lsq_rdata_comb.funct3)
                            // lb and lbu should not appear here cause they won't have partial dependency
                            load_f3_lh : begin
                                if((1'b1)'(i) == 1'b0) begin
                                    rd_v[7:0]               = data_forwarded_reg[(i << 3) +: 8];
                                end else begin
                                    rd_v [31:8]              = {{16{data_forwarded_reg[15+16*lsq_rdata_comb.cdb_data.dmem_addr[1]]}} ,data_forwarded_reg[(i << 3) +: 8]};
                                end
                                dcache_ufp_rdata_in [(i << 3) +: 8]    = data_forwarded_reg[(i << 3) +: 8];
                            end
                            
                            load_f3_lhu: begin
                                if((1'b1)'(i) == 1'b0) begin
                                    rd_v [7:0]               = data_forwarded_reg[(i << 3) +: 8];
                                end else begin
                                    rd_v [31:8]              = {{16{1'b0}} ,data_forwarded_reg[(i << 3) +: 8]};
                                end
                                dcache_ufp_rdata_in [(i << 3) +: 8]    = data_forwarded_reg[(i << 3) +: 8];
                            end
                            load_f3_lw : begin
                                rd_v [(i << 3) +: 8]         = data_forwarded_reg[(i << 3) +: 8];
                                dcache_ufp_rdata_in[(i << 3) +: 8]    = data_forwarded_reg[(i << 3) +: 8];
                            end
                            default    : rd_v  = 'x;
                        endcase
                    end
                end
                lsq_rdata_comb.cdb_data.dmem_rdata   = dcache_ufp_rdata_in;
                lsq_rdata_comb.cdb_data.prd_v        = rd_v;
            end else begin // if it is a store, pass zero directly
                // ls_done can be kept zeor as we are not broadcasting
                lsq_rdata_comb.cdb_data.dmem_rdata    = '0;
                lsq_rdata_comb.cdb_data.prd_v         = '0;
            end
        end 
    end

    // logic for invalid
    always_ff @(posedge clk) begin
        if(rst) begin
            invalid <= '0;
        end else if ((late_flush || invalid_partial_flush) && dcache_ufp_resp) begin // if there is a late_flush or partial flush exactly the same cycle as response
            invalid <= '0;
        end else if ((late_flush || invalid_partial_flush) && !dmem_cache_ready) begin // if there is a late_flush or partial flush mid cache process
            invalid <= '1;
        end else if (dcache_ufp_resp) begin // if respond, 
            invalid <= '0;
        end 
    end


    // logic regarding dmem-cache ready or not, related with dequeue logic
    always_ff @(posedge clk) begin
        if(rst) begin
            dmem_cache_ready <= '1;
        end else if (dcache_ufp_rmask != '0 || dcache_ufp_wmask != '0) begin // if there is a request
            dmem_cache_ready <= '0;
        end else if (dcache_ufp_resp) begin
            dmem_cache_ready <= '1;
        end 
    end

endmodule : lsq_controller
