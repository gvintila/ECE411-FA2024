module nlp
import rv32i_types::*;
import params::*;
(
    input   logic           clk,
    input   logic           rst,

    input   logic           bra_done,
    input   logic           bra_taken,
    input   logic   [31:0]  bra_pc,
    input   logic   [31:0]  early_flush_target,

    input   logic   [31:0]  iq_wdata,
    input   logic   [31:0]  pc,

    input   logic           fetch_enqueue,
    output  logic           bp_predict_enable,
    output  logic   [31:0]  bp_target
);

            localparam int unsigned         S_INDEX         = LOG2_BTB_SIZE;
            localparam int unsigned         NUM_SETS        = 2**S_INDEX;
            localparam int                  S_INDEX_TOP_BIT = S_INDEX-1;

    /* SIGNAL ***************************************************************************/

        logic   [6:0]       opcode;
        logic   [31:0]      bp_pc;
        logic   [31:0]      bra_target;

    assign opcode       = iq_wdata[6:0];
    assign bra_target   = early_flush_target;
    assign bp_pc        = (fetch_enqueue) ? pc + 'd4 : pc;

        logic               bra_hit;
        logic [S_INDEX-1:0] bra_addr;
        logic               bp_hit;
        logic [S_INDEX-1:0] bp_addr;
        logic [31:0]        bp_hit_target;
        logic [1:0]         bp_hit_bim;

        logic [31:0]        bra_addr_lint;
        logic [31:0]        bp_addr_lint;

        logic               bra_hit_reg;
        logic [S_INDEX-1:0] bra_addr_reg;
        logic               bp_hit_reg;
        logic [31:0]        bp_hit_target_reg;
        logic [1:0]         bp_hit_bim_reg;
        logic               bra_taken_reg;
        logic               bra_done_reg;
        logic [31:0]        bra_target_reg;

        logic [S_INDEX-1:0] evict_addr;
        logic               bp_evict;

        logic [1:0]         new_bim_value;

            logic              valid_array [NUM_SETS];
            logic   [31:0]     pc_array [NUM_SETS];
            logic   [31:0]     target_array [NUM_SETS];
            logic   [1:0]      bim_array [NUM_SETS];



    /* FF *******************************************************************************/

    // REGISTERED VALUES
    always_ff @(posedge clk) begin
        if (rst) begin
            bp_hit_target_reg   <= '0;
            bp_hit_bim_reg      <= '0;
            bp_hit_reg          <= '0;
            bra_hit_reg         <= '0;
            bra_addr_reg        <= '0;
            bra_taken_reg       <= '0;
            bra_done_reg        <= '0;
            bra_target_reg      <= '0;
        end else begin
            bp_hit_target_reg   <= bp_hit_target;
            bp_hit_bim_reg      <= bp_hit_bim;
            bp_hit_reg          <= bp_hit;
            bra_hit_reg         <= bra_hit;
            bra_addr_reg        <= bra_addr;
            bra_taken_reg       <= bra_taken;
            bra_done_reg        <= bra_done;
            bra_target_reg      <= bra_target;
        end
    end

    // WRITING TO THE INTERNAL ARRAYS
    always_ff @(posedge clk) begin
        if (rst) begin
            for (int unsigned i = 0; i < NUM_SETS; i++) begin
                valid_array[i]  <= '0;
                pc_array[i]     <= '0;
                target_array[i] <= '0;
                bim_array[i]    <= '0;
            end
            evict_addr <= '0;
        end else begin
                    // When branch EU is done do the following:
                        // Increment or decrement BIM
                        // If taken, update target to calculated target
            if (bra_hit_reg && bra_done_reg) begin
                bim_array[bra_addr_reg] <= new_bim_value;
                if (bra_taken_reg) begin
                    target_array[bra_addr_reg] <= bra_target_reg;
                end
            end
                    // On eviction do the following:
                        // Set valid to 1
                        // Set pc tag to pc of new branch
                        // Set target temporarily to pc + 4
                        // Set bim counter to weakly not taken (2)
                        // Increment evict address
            if (bp_evict) begin
                valid_array[evict_addr]     <= 1'b1;
                pc_array[evict_addr]        <= pc;
                target_array[evict_addr]    <= pc + 'd4;
                bim_array[evict_addr]       <= 2'd2;
                evict_addr                  <= (evict_addr == '1) ? '0 : (evict_addr + 1'b1);
            end
        end
    end

    /* COMBINATIONAL ********************************************************************/

    // HIT LOGIC FOR FULLY-ASSOCIATIVE
    always_comb begin
        bp_addr         = 'x;
        bp_addr_lint    = 'x;
        bp_hit          = 1'b0;
        bp_hit_target   = 'x;
        bp_hit_bim      = 'x;
        bra_addr        = 'x;
        bra_addr_lint   = 'x;
        bra_hit         = 1'b0;
        for (int unsigned i = 0; i < NUM_SETS; i++) begin
            if (pc_array[i] == bp_pc && valid_array[i]) begin
                bp_hit          = 1'b1;
                bp_addr_lint    = i;
                bp_addr         = bp_addr_lint[S_INDEX_TOP_BIT:0];
                bp_hit_target   = target_array[i];
                bp_hit_bim      = bim_array[i];
            end
            if (pc_array[i] == bra_pc && valid_array[i]) begin
                bra_hit         = 1'b1;
                bra_addr_lint   = i;
                bra_addr        = bra_addr_lint[S_INDEX_TOP_BIT:0];
            end
        end
    end

    // BIM increments if branch taken
    // BIM decrements if branch not taken
    always_comb begin
        if (bra_taken_reg) begin 
            if (bim_array[bra_addr_reg] == 2'd3) begin
                new_bim_value = 2'd3;
            end else begin
                new_bim_value = bim_array[bra_addr_reg] + 2'd1;
            end
        end else begin
            if (bim_array[bra_addr_reg] == 2'd0) begin
                new_bim_value = 2'd0;
            end else begin
                new_bim_value = bim_array[bra_addr_reg] - 2'd1;
            end
        end
    end

    // Evict if incoming instruction is branch but no PC match
    assign bp_evict = fetch_enqueue && !bp_hit_reg && (opcode == op_b_jal || opcode == op_b_jalr || opcode == op_b_br);

    // Output prediction if hit on BTB and taken is predicted
    // Taken is predicted if BIM > 2
    always_comb begin
        bp_predict_enable   = '0;
        bp_target           = 'x;
        if (opcode == op_b_jal || opcode == op_b_jalr || opcode == op_b_br) begin
            if (bp_hit_reg && bp_hit_bim_reg > 2'd2) begin
                bp_predict_enable   = 1'b1;
                bp_target           = bp_hit_target_reg;
            end
        end

    end


endmodule