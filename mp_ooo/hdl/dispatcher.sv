/*
 *  The dispatcher (disp) module does decoding of data and then sends to
 *  free list and RAT to send to the ROB and reservation stations.
 *  
 *  The dispatcher will stall if the ROB is full, the reservation stations are full, or the free list is empty.
 */

module dispatcher
import rv32i_types::*;
import params::*;
(

    // Signals from/to ROB
    input   logic                       late_flush,
    input   logic                       rob_full,
    input   logic   [ROB_IDX_SIZE-1:0]  new_rob_id,
    output  logic                       disp_rob_enqueue,
    output  rob_entry_t                 disp_rob_data,

    // Signals from/to Reservation Stations
    input   logic                       isq_alu_ready_in,
    input   logic                       isq_bmd_ready_in,
    input   logic                       isq_ls_ready_in,
    output  logic                       disp_ready,
    output  rstation_t                  disp_rstation_data,

    // Signals from/to LSQ
    input   logic                       lq_full,
    input   logic                       sq_full,
    output  logic                       lq_enqueue,
    output  logic                       sq_enqueue,
    output  lsq_entry_t                 lsq_data,

    // EBR
    output  logic                       ebr_enqueue,
    input   logic                       ebr_full,
    input   logic   [EBR_MASK_SIZE-1:0] ebr_enqueue_mask,
    input   logic   [EBR_MASK_SIZE-1:0] active_mask,

    input   logic                       bra_done,
    input   logic                       bra_mispredict,
    input   logic   [EBR_MASK_SIZE-1:0] bra_id, 

    // Signals from/to fetch stage
    output  logic                       id_ft_dequeue,
    input   logic                       ft_iq_empty,
    input   logic   [31:0]              ft_iq_rdata,
    input   logic   [31:0]              ft_pcq_rdata,
    input   logic   [31:0]              ft_bpq_rdata,

    // Signals to RAT
    // Assuming combinational read from RAT
    output  logic   [4:0]               rat_lrs1_s,
    output  logic   [4:0]               rat_lrs2_s,
    output  logic   [4:0]               id_rat_lrd_s,
    output  logic                       id_rat_lrd_web,

    // Signals from RAT
    // Assuming combinational read from RAT
    input   logic   [PRF_IDX_HIBIT:0]   rat_prs1_s,
    input   logic   [PRF_IDX_HIBIT:0]   rat_prs2_s,
    input   logic                       rat_prs1_ready,
    input   logic                       rat_prs2_ready,

    // Signals from/to Free List
    input   logic   [PRF_IDX_HIBIT:0]   free_id_prd,
    output  logic                       id_free_dequeue,

    // Signals from free list
    input   logic                       free_empty
    
);
    /* SIGNAL ***************************************************************************/

        // RAT
        logic   [PRF_IDX_HIBIT:0]   new_prd_s;   

        // EBR
        logic [EBR_MASK_SIZE-1:0]   resolve_dispatch;
        logic                       invalid_dispatch;
        logic [EBR_MASK_SIZE-1:0]   ebr_mask_sel;
        logic                       ebr_valid;

        // Decoded data struct
        decode_t    decode;
        logic       is_bra;
        logic       is_ls;

        // Perfcs
        logic       disp_stall;
        logic       lq_stall;
        logic       sq_stall;

        // RS
        logic       rstation_full;

    /* MODULES **************************************************************************/

    ebr_resolve ebr_resolve (
        .in_mask(active_mask),
        .bra_id(bra_id),
        .bra_mispredict(bra_mispredict),
        .out_mask(resolve_dispatch),
        .invalid(invalid_dispatch)
    );

    new_decode new_decode (.decode_data(decode), .*);

    /* COMBINATIONAL ********************************************************************/

    // Signals for determining operand physical registers from rat
    assign rat_lrs1_s   = decode.lrs1_s;
    assign rat_lrs2_s   = decode.lrs2_s;
    // Signal for writing new destination physical register to RAT
    assign id_rat_lrd_s = decode.lrd_s;

    assign new_prd_s    = (decode.lrd_s != '0) ? free_id_prd : '0;

    assign is_ls        = (decode.eu_opcode == op_eu_load_store);
    assign is_bra       = (decode.eu_opcode == op_eu_branch);

    assign ebr_valid    = (bra_done) ? !invalid_dispatch : 1'b1;
    assign ebr_mask_sel = (bra_done) ? resolve_dispatch : active_mask;

    /*
     *  The following comb block corresponds to the logic of the dispatcher stage that recieves
     *  data from the decode stage and sends respective signals to decode, rstation, and ROB
     */
    always_comb begin

        id_ft_dequeue       = '0;
        id_free_dequeue     = '0;
        id_rat_lrd_web      = '0;
        disp_ready = '0;
        disp_rstation_data = 'x;
        disp_rstation_data.valid = '0;
        disp_rob_enqueue = 1'b0;
        disp_rob_data = '0;
        ebr_enqueue                       = 1'b0;
        lq_enqueue      = 1'b0;
        sq_enqueue      = 1'b0;
        lsq_data        = '0;

        //disp_stall          = ft_iq_empty || rob_full || rstation_full || free_empty || late_flush || (is_ls && ((lq_full && !decode.is_load_store) || (sq_full && decode.is_load_store)));

        disp_stall          = !(!ft_iq_empty && !rob_full && !rstation_full && !free_empty && !late_flush && !(is_ls && ((lq_full && !decode.is_load_store) || (sq_full && decode.is_load_store))));
        lq_stall            = (is_ls && lq_full && !decode.is_load_store);
        sq_stall            = (is_ls && sq_full && decode.is_load_store);

        // Check respective issue queues if they can accept decode data
        rstation_full       = '1;

        unique case (decode.eu_opcode)
            op_eu_alu: begin
                if (isq_alu_ready_in)
                    rstation_full   = '0;
            end
            op_eu_branch: begin
                if (isq_bmd_ready_in)
                    rstation_full   = '0;
            end
            op_eu_mult: begin
                if (isq_bmd_ready_in)
                    rstation_full   = '0;
            end
            op_eu_div: begin
                if (isq_bmd_ready_in)
                    rstation_full   = '0;
            end
            op_eu_load_store: begin
                if (isq_ls_ready_in)
                    rstation_full   = '0;
            end
            default: begin
            end
        endcase

        // If decode data is available and no stalls are occuring, send data to rstation and ROB
        // Throw away data if invalidated by EBR
        if (!ft_iq_empty && !rob_full && !rstation_full && !free_empty && !late_flush && !(is_ls && ((lq_full && !decode.is_load_store) || (sq_full && decode.is_load_store)))) begin

            // Dequeue from the fetch queue
            id_ft_dequeue       = '1;

            if (ebr_valid) begin

                // Dequeue the free list
                id_free_dequeue     = (decode.lrd_s != '0) ? '1 : '0;

                // Write the logical destination register to the RAT
                id_rat_lrd_web      = (decode.lrd_s != '0) ? '1 : '0;

                // Send data to reservation station
                disp_ready  = '1;
                disp_rstation_data.valid        = '1;
                disp_rstation_data.inst         = decode.inst;
                disp_rstation_data.prs1_ready   = rat_prs1_ready;
                disp_rstation_data.prs1_s       = rat_prs1_s;      
                disp_rstation_data.prs2_ready   = rat_prs2_ready;
                disp_rstation_data.prs2_s       = rat_prs2_s;
                disp_rstation_data.prs2_r       = decode.prs2_r;      // 0 = imm, 1 = ps2
                disp_rstation_data.prd_s        = new_prd_s;
                disp_rstation_data.lrd_s        = decode.lrd_s;
                disp_rstation_data.bp_target    = decode.bp_target;
                disp_rstation_data.pc           = decode.pc;   
                disp_rstation_data.eu_opcode    = decode.eu_opcode;
                disp_rstation_data.rob_id       = new_rob_id; 
                disp_rstation_data.bra_id       = ebr_enqueue_mask;
                disp_rstation_data.ebr_mask     = ebr_mask_sel;

                // Send data to ROB
                disp_rob_enqueue                = 1'b1;
                disp_rob_data                   = 'x;
                disp_rob_data.valid             = 1'b1;
                disp_rob_data.commit_ready      = '0;
                disp_rob_data.inst              = decode.inst;
                disp_rob_data.pc                = decode.pc;
                disp_rob_data.rs1_s             = decode.lrs1_s;
                disp_rob_data.rs2_s             = decode.lrs2_s;
                disp_rob_data.rd_s              = decode.lrd_s;
                disp_rob_data.prs1_s            = rat_prs1_s;
                disp_rob_data.prs2_s            = rat_prs2_s;
                disp_rob_data.prd_s             = new_prd_s;
                disp_rob_data.early_recover     = |ebr_enqueue_mask;

                // For branches, reserve early recovery branch in EBR if space
                if (is_bra && (!ebr_full || (bra_done && bra_id != '0))) begin
                    ebr_enqueue                     = 1'b1;
                end

                // For loads and stores, enqueue into LSQ if space
                // if (is_ls && !lsq_full) begin
                //     lsq_enqueue                     = is_ls;
                // end
                // lsq_data                        = 'x;
                // lsq_data.valid                  = '1;
                // lsq_data.lsq_calculation_done   = '0;
                // lsq_data.cdb_data.rob_id        = new_rob_id;
                // lsq_data.load_store             = decode.is_load_store; 
                // lsq_data.prs1_s                 = rat_prs1_s;
                // lsq_data.prs2_s                 = rat_prs2_s;
                // lsq_data.funct3                 = decode.funct3;
                // lsq_data.ebr_mask               = ebr_mask_sel;
                lq_enqueue                      = is_ls && !decode.is_load_store;;
                sq_enqueue                      = is_ls && decode.is_load_store;;
                lsq_data                        = '0;
                lsq_data.valid                  = '1;
                lsq_data.lsq_calculation_done   = '0;
                lsq_data.cdb_data.rob_id        = new_rob_id;
                lsq_data.load_store             = decode.is_load_store;;
                lsq_data.prs1_s                 = rat_prs1_s;
                lsq_data.prs2_s                 = rat_prs2_s;
                lsq_data.funct3                 = decode.funct3;
                lsq_data.ebr_mask               = ebr_mask_sel;
            end
        end 
    end

endmodule : dispatcher
