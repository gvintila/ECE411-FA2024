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

module ebrat
import rv32i_types::*;
import params::*;
(
    input   logic                       clk,
    input   logic                       rst,

    input   logic                       ebr_enqueue,
    output  logic                       ebr_full,
    output  logic   [EBR_MASK_SIZE-1:0] ebr_enqueue_mask,

    input   logic                       bra_done,
    input   logic   [EBR_MASK_SIZE-1:0] bra_id,
    input   logic                       bra_mispredict,

    output  logic   [EBR_MASK_SIZE-1:0] active_mask,
    
    input   logic                       late_flush,

    input logic   [FREE_LIST_IDX_HIBIT: 0]     ebrfl_head_wdata,
    output logic   [FREE_LIST_IDX_HIBIT : 0]   ebrfl_head_eflush,

    input logic   [FREE_LIST_IDX_HIBIT+1:0]    ebrfl_count_wdata,
    output logic   [FREE_LIST_IDX_HIBIT+1:0]   ebrfl_count_eflush,

    input  logic                                   enqueue_free_list,

    // checkpoint
    input   logic    [PRF_IDX_HIBIT:0]  rat_internal_array_out  [32],
    output  logic    [PRF_IDX_HIBIT:0]  ebrat_checkpoint_out    [32]
);

    /*
     *  Summary of behavior in logic below:
     *      
     *      Any time a branch is detected at decode/dispatch, the branch enqueues
     *      into the EBRAT. This checkpoints the RAT and reserves a bit inside the 
     *      active mask.
     *      
     *      Any instruction dispatched after the branch but before its resolved by
     *      the branch execution unit will carry that bit as a dependency in the
     *      ebr_mask variable associated with all in-flight instructions.
     *
     *      When the branch resolves, one of two things can happen, a correct prediction
     *      or a misprediction. On correct prediction, all the ebr_mask variables lose
     *      the dependency and the active_mask bit becomes available for the next incoming branch to 
     *      use. On misprediction, all dependent branch reservations also get freed.
     *
     *      For all cases, changes in the active_mask happen one cycle later (so one cycle after
     *      ebr_enqueue or bra_done).
     *
     */

        logic [31:0] ebr_enqueue_id;
        logic [31:0] ebr_dequeue_id;

        logic [EBR_MASK_SIZE-1:0]   dependency_array        [EBR_MASK_SIZE];
        logic [EBR_MASK_SIZE-1:0]   resolve_array           [EBR_MASK_SIZE];
        logic [EBR_MASK_SIZE-1:0]   invalid_array;

        logic   [EBR_MASK_SIZE-1:0] active_mask_next;
        logic   [EBR_MASK_SIZE-1:0] enqueue_mask_next;

        logic    [PRF_IDX_HIBIT:0]  ebrat_internal_array [EBR_MASK_SIZE][32];

        logic    [FREE_LIST_IDX_HIBIT:0] free_list_head_array [EBR_MASK_SIZE];
        logic    [FREE_LIST_IDX_HIBIT+1:0] free_list_count_array [EBR_MASK_SIZE];

        logic   [EBR_MASK_SIZE-1:0] free_bit;

    always_comb begin
        ebr_enqueue_id = 'x;
        ebr_dequeue_id = 'x;
        for (int unsigned i = 0; i < EBR_MASK_SIZE; i++) begin
            if (ebr_enqueue_mask[i]) ebr_enqueue_id = i;
            if (bra_id[i]) ebr_dequeue_id = i;
        end
    end


    assign ebrat_checkpoint_out = ebrat_internal_array[ebr_dequeue_id];
    assign ebrfl_head_eflush = free_list_head_array[ebr_dequeue_id];
    assign ebrfl_count_eflush = free_list_count_array[ebr_dequeue_id];

    always_ff @(posedge clk) begin
        if (rst || late_flush) begin
            active_mask <= '0;
            for (int unsigned i = 0; i < EBR_MASK_SIZE; i++) begin
                dependency_array[i] <= '0;
                free_list_head_array[i] <= '0;
                free_list_count_array[i] <= '0;
            end
        end else begin
            if (enqueue_free_list) begin
                for (int unsigned i = 0; i < EBR_MASK_SIZE; i++) begin
                    free_list_count_array[i] <= free_list_count_array[i] + {{(FREE_LIST_IDX_HIBIT+1){1'b0}}, 1'b1};
                end
            end
            active_mask <= active_mask_next; // always updates mask (edge casese caught in comb block)
            if (bra_done) begin // update dependency on bra_done
                for (int unsigned i = 0; i < EBR_MASK_SIZE; i++) begin
                    dependency_array[i] <= resolve_array[i];
                end
            end
            if (ebr_enqueue && !(bra_done && bra_mispredict)) begin // Cancel enqueue if mispredict
                free_list_head_array[ebr_enqueue_id] <= ebrfl_head_wdata;
                free_list_count_array[ebr_enqueue_id] <= ebrfl_count_wdata;
                dependency_array[ebr_enqueue_id] <= enqueue_mask_next;
                for (int unsigned i = 0; i < 32; i++) begin
                    ebrat_internal_array[ebr_enqueue_id][i] <= rat_internal_array_out[i];
                end
            end
        end
    end

    always_comb begin
        ebr_full = '0;
        free_bit = ~(active_mask) & (active_mask + { {(EBR_MASK_SIZE-1){1'b0}}, 1'b1 });
        if (free_bit == '0) begin
            ebr_full = 1'b1;
        end
        ebr_enqueue_mask = (bra_done && ebr_full) ? bra_id : free_bit; 
        active_mask_next = active_mask;
        enqueue_mask_next = 'x;
        if (!ebr_full) begin
            if (ebr_enqueue && !bra_done) begin // ENQUEUE, no edge case
                active_mask_next = active_mask | ebr_enqueue_mask;
                enqueue_mask_next = active_mask;
            end else if (!ebr_enqueue && bra_done) begin // BRANCH RESOLVE, no edge case
                if (bra_mispredict) begin
                    active_mask_next = (active_mask & (~invalid_array) & (~bra_id)); // Mispredict get rid of invalid deps and resolved branch
                end else begin
                    active_mask_next = (active_mask & (~bra_id));
                end
            end else if (ebr_enqueue && bra_done) begin // BRANCH RESOLVE and ENQUEUE, edge case
                if (bra_mispredict) begin
                    active_mask_next = (active_mask & (~invalid_array) & (~bra_id)); // Mispredict stops enqueue
                end else begin
                    active_mask_next = (active_mask & (~bra_id)) | ebr_enqueue_mask; // Mask reflects enqueue and branch clear
                    enqueue_mask_next = (active_mask & (~bra_id)); 
                end
            end
        end else if (ebr_full && bra_done) begin
            if (!ebr_enqueue && bra_done) begin // BRANCH RESOLVE, no edge case
                if (bra_mispredict) begin
                    active_mask_next = (active_mask & (~invalid_array) & (~bra_id)); // Mispredict get rid of invalid deps and resolved branch
                end else begin
                    active_mask_next = (active_mask & (~bra_id));
                end
            end else if (ebr_enqueue && bra_done) begin // BRANCH RESOLVE and ENQUEUE, edge case
                if (bra_mispredict) begin
                    active_mask_next = (active_mask & (~invalid_array) & (~bra_id)); // Mispredict stops enqueue
                end else begin     
                    active_mask_next = active_mask; // Mask stays the same
                    enqueue_mask_next = (active_mask & (~bra_id)); 
                end
            end
        end
    end

    generate for (genvar i = 0; i < EBR_MASK_SIZE_SIGNED; i++) begin : resolve_ebr
        ebr_resolve ebr_resolve (
            .in_mask(dependency_array[i]),
            .bra_id(bra_id),
            .bra_mispredict(bra_mispredict),
            .out_mask(resolve_array[i]),
            .invalid(invalid_array[i])
        );
    end endgenerate

    //logic [PRF_IDX_HIBIT:0] phys_reg_array  [32];
    //logic                   ready_array     [32];

    //always_ff @(posedge clk) begin
    //    if (rst) begin
    //        for (int unsigned i = 0; i < 32; i++) begin
    //            phys_reg_array[i] <= '0;
    //            ready_array[i] <= '1;
    //        end
    //    end 
    //    else if (late_flush) begin
    //        for (int unsigned i = 0; i < 32; i++) begin
    //            phys_reg_array[i] <= rrat_internal_array_out[i];
    //            ready_array[i] <= '1;
    //        end
    //    end
    //    else begin
    //        // Ensure that ready doesn't go high for a WAW case
    //        if (cdb_bc && cdb_rat_prd_s == phys_reg_array[cdb_rat_lrd_s]) begin
    //            ready_array[cdb_rat_lrd_s] <= '1;
    //        end
    //        // Write case overwrites CDB broadcast
    //        // Decode write to new destination register
    //        if (id_rat_lrd_web) begin
    //            phys_reg_array[id_rat_lrd_s] <= free_id_prd;
    //            ready_array[id_rat_lrd_s] <= '0;
    //        end
    //    end
    //end

    //always_comb begin
    //    if (rat_lrs1_s == '0) begin
    //        rat_prs1_s = '0;
    //        rat_prs1_ready = '1;
    //    end 
    //    else begin
    //        // Transparent if decode read and CDB bc happen at the same time
    //        if (cdb_bc && cdb_rat_prd_s == phys_reg_array[rat_lrs1_s]) begin
    //            rat_prs1_s = phys_reg_array[rat_lrs1_s];
    //            rat_prs1_ready = '1;
    //        end
    //        else begin
    //            rat_prs1_s = phys_reg_array[rat_lrs1_s];
    //            rat_prs1_ready = ready_array[rat_lrs1_s];
    //        end
    //    end

    //    if (rat_lrs2_s == '0) begin
    //        rat_prs2_s = '0;
    //        rat_prs2_ready = '1;
    //    end 
    //    else begin
    //        // Transparent if decode read and CDB bc happen at the same time
    //        if (cdb_bc && cdb_rat_prd_s == phys_reg_array[rat_lrs2_s]) begin
    //            rat_prs2_s = phys_reg_array[rat_lrs2_s];
    //            rat_prs2_ready = '1;
    //        end
    //        else begin
    //            rat_prs2_s = phys_reg_array[rat_lrs2_s];
    //            rat_prs2_ready = ready_array[rat_lrs2_s];
    //        end
    //    end
    //end

endmodule : ebrat