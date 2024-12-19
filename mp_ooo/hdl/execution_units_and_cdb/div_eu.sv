/*
 *  Signed divider
 */
module div_eu 
import rv32i_types::*;
import params::*;
#(
    localparam int num_stages = DIV_STAGES,
    localparam int num_div = DIV_WIDTH
)
(
    input   logic           clk,
    input   logic           rst,

    input   logic           late_flush,

    input   logic           div_start,
    input   logic           div_bc_stall,

    input   eu_operand_t    div_in,

    output  logic           div_ready, // ready to recieve data
    output  logic           div_done, // ready to output data, high for 1 cycle
    output  cdb_t           div_out,

    input   logic                       bra_done,
    input   logic                       bra_mispredict,
    input   logic   [EBR_MASK_SIZE-1:0] bra_id
);

        eu_operand_t    bc_data[num_div];

        logic   [2:0]   div_next;
        logic           div_start_real[num_div];
        logic   [32:0]  a;
        logic   [32:0]  b;
        logic   [32:0]  quotient[num_div];
        logic   [32:0]  remainder[num_div];
        logic           divide_by_0[num_div];
        logic           div_complete[num_div];


        logic [EBR_MASK_SIZE-1:0]   resolve_out[num_div];
        logic                       invalid_out[num_div];


    generate for (genvar i = 0; i < num_div; i++) begin : div_seq
        DW_div_seq #(
            .a_width(33),
            .b_width(33),
            .tc_mode(1),    // signed always
            .num_cyc(num_stages),
            .rst_mode(1)    // sync reset
        ) dw_div_seq (
            .clk(clk),
            .rst_n(!(rst || late_flush || (bc_data[i].valid && invalid_out[i]))),
            .hold(div_bc_stall),
            .start(div_start_real[i]),
            .a(a),
            .b(b),
            .complete(div_complete[i]),
            .quotient(quotient[i]),
            .remainder(remainder[i]),
            .divide_by_0(divide_by_0[i])
        );
        ebr_resolve ebr_resolve_div (
            .in_mask(bc_data[i].ebr_mask),
            .bra_id(bra_id),
            .bra_mispredict(bra_mispredict),
            .out_mask(resolve_out[i]),
            .invalid(invalid_out[i])
        );
    end endgenerate

    always_ff @(posedge clk) begin
        if (rst || late_flush) begin
            for (int unsigned i = 0; i < num_div; i++) begin
                bc_data[i]              <= 'x;
                bc_data[i].valid        <= '0;
            end
        end
        else begin
            for (int unsigned i = 0; i < num_div; i++) begin
                if (bc_data[i].valid) begin
                    // Check EBR for each valid entry
                    if (bra_done) begin
                        if (invalid_out[i]) begin
                            bc_data[i]          <= 'x;
                            bc_data[i].valid    <= '0;
                        end
                        else begin
                            bc_data[i].ebr_mask <= resolve_out[i];
                        end
                    end

                    // Signal entry is complete and now invalidated
                    if (div_complete[i] && div_done) begin
                        bc_data[i]          <= 'x;
                        bc_data[i].valid    <= '0;
                    end
                end
                else begin
                    // Identify entry for start
                    if (div_next == 3'(i) && div_start) begin
                        // Set valid bit on operands
                        bc_data[i]          <= div_in;
                        bc_data[i].valid    <= '1;
                    end
                end
            end
        end
    end

    always_comb begin
        // Check each div to see which one can take data
        div_next    = 'x;
        div_ready   = '0;
        for (int unsigned i = 0; i < num_div; i++) begin
            if (!bc_data[i].valid && !div_bc_stall) begin
                div_ready   = '1;
                div_next    = 3'(i);
                break;
            end
        end

        a           = 'x;
        b           = 'x;
        div_done    = '0;
        div_out     = 'x;

        // Only one div can start/broadcast at a time
        for (int unsigned i = 0; i < num_div; i++) begin
            // Select div for start
            if (div_next == 3'(i) && div_start) begin
                div_start_real[i] = '1;

                // Feed operands into division ip
                if (div_in.inst.word[14:12] == rv32m_f3_div || div_in.inst.word[14:12] == rv32m_f3_rem) begin
                    a       = { div_in.prs1_v[31], div_in.prs1_v };        // signed 
                    b       = { div_in.prs2_v[31], div_in.prs2_v };        // signed
                end else begin
                    a       = { 1'b0, div_in.prs1_v };                     // unsigned
                    b       = { 1'b0, div_in.prs2_v };                     // unsigned
                end
            end
            else begin
                div_start_real[i] = '0;
            end
        end

        for (int unsigned i = 0; i < num_div; i++) begin
            // Don't broadcast if invalid due to EBR on resolve cycle
            if (bc_data[i].valid && div_complete[i] && !div_bc_stall && !(bra_done && invalid_out[i])) begin

                div_done            = '1;

                // Fill out broadcast struct
                div_out.valid       = bc_data[i].valid;
                div_out.rob_id      = bc_data[i].rob_id;
                div_out.prs1_v      = bc_data[i].prs1_v;
                div_out.prs2_v      = bc_data[i].prs2_v;
                div_out.prd_s       = bc_data[i].prd_s;
                div_out.lrd_s       = bc_data[i].lrd_s;
                div_out.dmem_addr   = '0;
                div_out.dmem_rmask  = '0;
                div_out.dmem_wmask  = '0;
                div_out.dmem_rdata  = '0;
                div_out.dmem_wdata  = '0;
                div_out.is_flush    = '0;
                div_out.pc_next     = bc_data[i].pc + 'd4;
                if (bra_done) begin 
                    div_out.ebr_mask    = resolve_out[i];
                end 
                else begin
                    div_out.ebr_mask    = bc_data[i].ebr_mask;
                end

                unique case (bc_data[i].inst.word[14:12])
                    rv32m_f3_div: begin
                        if(divide_by_0[i]) begin
                            div_out.prd_v       = '1;
                        end else if (div_out.prs1_v == 32'h80000000 && div_out.prs2_v == '1) begin
                            div_out.prd_v       = bc_data[i].prs1_v;
                        end else begin
                            div_out.prd_v       = quotient[i][31:0];
                        end
                    end
                    rv32m_f3_rem: begin
                        if(divide_by_0[i]) begin
                            div_out.prd_v       = bc_data[i].prs1_v;
                        end else if (div_out.prs1_v == 32'h80000000 && div_out.prs2_v == '1) begin
                            div_out.prd_v       = '0;
                        end else begin
                            div_out.prd_v       = remainder[i][31:0];
                        end
                    end
                    rv32m_f3_divu: begin
                        if(divide_by_0[i]) begin
                            div_out.prd_v       = '1;
                        end else begin
                            div_out.prd_v       = quotient[i][31:0];
                        end
                    end
                    rv32m_f3_remu: begin
                        if(divide_by_0[i]) begin
                            div_out.prd_v       = bc_data[i].prs1_v;
                        end else begin
                            div_out.prd_v       = remainder[i][31:0];
                        end
                    end
                    default: begin
                        div_out.prd_v       = '0;
                    end
                endcase

                break;
            end
        end
    end
endmodule
