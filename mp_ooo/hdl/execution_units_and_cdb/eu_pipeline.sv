module eu_pipeline
import rv32i_types::*;
import params::*;
#(
    parameter num_stages = 5
)
(
    input   logic   clk,
    input   logic   rst,

    input   logic                       pl_en,
    output  logic                       pl_stall,
    input   logic                       bc_stall,
    input   eu_operand_t                in,
    output  eu_operand_t                out,

    // EBR Broadcast
    input   logic                       bra_done,
    input   logic                       bra_mispredict,
    input   logic   [EBR_MASK_SIZE-1:0] bra_id
);

    /* 
     This module's purpose is for use with pipelined execution units
     so that data relevant to the output of the execution is available
     when the output is ready.
    */

    localparam int unsigned NUM_REGS = num_stages - 1;
    localparam int NUM_REGS_SIGNED = NUM_REGS;

    eu_operand_t stages        [NUM_REGS];

    logic [EBR_MASK_SIZE-1:0]   resolve_in;
    logic                       invalid_in;

    logic [EBR_MASK_SIZE-1:0]   resolve_array       [NUM_REGS];
    logic                       invalid_array       [NUM_REGS];

    ebr_resolve ebr_resolve (
        .in_mask(in.ebr_mask),
        .bra_id(bra_id),
        .bra_mispredict(bra_mispredict),
        .out_mask(resolve_in),
        .invalid(invalid_in)
    );
    generate for (genvar i = 0; i < NUM_REGS_SIGNED; i++) begin : eu_pipeline_ebr
        ebr_resolve ebr_resolve (
            .in_mask(stages[i].ebr_mask),
            .bra_id(bra_id),
            .bra_mispredict(bra_mispredict),
            .out_mask(resolve_array[i]),
            .invalid(invalid_array[i])
        );
    end endgenerate

    always_ff @(posedge clk) begin
        if (rst) begin
            pl_stall    <= '1;
            for (int unsigned i = 0; i < NUM_REGS; i++) begin
                stages[i]   <= '0;
            end
        end 
        else if (!bc_stall && (pl_en || !pl_stall)) begin // Case for normal EU operation
            stages[0]   <= in;
            for (int unsigned i = 1; i < NUM_REGS; i++) begin
                stages[i]   <= stages[i-1];
            end
            if (bra_done) begin
                stages[0].ebr_mask <= resolve_in;
                stages[0].valid <= in.valid && !invalid_in;
                for(int unsigned i = 1 ; i < NUM_REGS; i++) begin
                    stages[i].ebr_mask  <= resolve_array[i-1];
                    stages[i].valid     <= stages[i-1].valid && !invalid_array[i-1];
                end
            end

            // Start pipeline if new valid input comes in
            // Pipeline stalls if no registers have valid instructions
            if (pl_en) begin
                pl_stall    <= '0;
            end
            else begin
                pl_stall    <= '1;
                for (int unsigned i = 0; i < NUM_REGS; i++) begin
                    if (stages[i].valid)
                        pl_stall            <= '0;
                end
            end
        end
        // Continue checking for EBR during pipeline stall
        else if (bra_done) begin
            stages[0].ebr_mask <= resolve_in;
            stages[0].valid <= in.valid && !invalid_in;
            for(int unsigned i = 0; i < NUM_REGS; i++) begin
                stages[i].ebr_mask  <= resolve_array[i];
                stages[i].valid     <= stages[i].valid && !invalid_array[i];
            end
        end
    end
    
    assign out = stages[NUM_REGS-1];

endmodule