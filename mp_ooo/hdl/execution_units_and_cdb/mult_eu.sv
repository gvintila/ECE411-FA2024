module mult_eu 
import rv32i_types::*;
import params::*;
#(
    localparam int unsigned num_stages = MULT_STAGES
)
(
    input   logic           clk,
    input   logic           rst,

    input   logic           late_flush,

    input   logic           mult_start,
    input   logic           mult_bc_stall,

    input   eu_operand_t    mult_in,

    output  logic           mult_ready,
    output  logic           mult_done,
    output  cdb_t           mult_out,

    input   logic                       bra_done,
    input   logic                       bra_mispredict,
    input   logic   [EBR_MASK_SIZE-1:0] bra_id
);

        logic           pl_stall;

        eu_operand_t    mult_in_reg;
        eu_operand_t    bc_data;
        logic   [32:0]  a_reg;
        logic   [32:0]  b_reg;
        logic   [65:0]  product;
        
        logic [EBR_MASK_SIZE-1:0]   resolve_out;
        logic                       invalid_out;

    DW_mult_pipe #(
        .a_width(33),
        .b_width(33),   
        .num_stages(num_stages), 
        .stall_mode(1), // stallable
        .rst_mode(0),   // sync reset
        .op_iso_mode(4)
    ) dw_mult_pipe (
        .clk(clk),
        .rst_n(1'b1),
        .en(!mult_bc_stall && (mult_in_reg.valid || !pl_stall)),
        .tc(1'b1),      // always signed
        .a(a_reg),
        .b(b_reg),
        .product(product)
    );
    
    eu_pipeline #(.num_stages(num_stages)) mult_eu_pipeline (
        .clk(clk),
        .rst((rst || late_flush)),

        .pl_en(mult_in_reg.valid),
        .pl_stall(pl_stall),
        .bc_stall(mult_bc_stall),
        .in(mult_in_reg),
        .out(bc_data),

        .bra_done(bra_done),
        .bra_mispredict(bra_mispredict),
        .bra_id(bra_id)
    );

    ebr_resolve ebr_resolve (
        .in_mask(bc_data.ebr_mask),
        .bra_id(bra_id),
        .bra_mispredict(bra_mispredict),
        .out_mask(resolve_out),
        .invalid(invalid_out)
    );

    always_ff @(posedge clk) begin
        if (rst) begin
            mult_in_reg             <= 'x;
            mult_in_reg.valid       <= '0;
            a_reg                   <= 'x;
            b_reg                   <= 'x;
        end
        else begin
            if (mult_start) begin
                // set valid bit on operands
                mult_in_reg         <= mult_in;
                mult_in_reg.valid   <= '1;

                // sending operands to multiplication IP
                unique case (mult_in.inst.b_type.funct3)
                    3'b000: begin                                               // MUL
                        a_reg   <= { 1'b0, mult_in.prs1_v };                    // unsigned
                        b_reg   <= { 1'b0, mult_in.prs2_v };                    // unsigned
                    end
                    3'b001: begin                                               // MULH
                        a_reg   <= { mult_in.prs1_v[31], mult_in.prs1_v };      // signed 
                        b_reg   <= { mult_in.prs2_v[31], mult_in.prs2_v };      // signed
                    end
                    3'b010: begin                                               // MULHSU
                        a_reg   <= { mult_in.prs1_v[31], mult_in.prs1_v };      // signed
                        b_reg   <= { 1'b0, mult_in.prs2_v };                    // unsigned
                    end
                    3'b011: begin                                               // MULHU
                        a_reg   <= { 1'b0, mult_in.prs1_v };                    // unsigned
                        b_reg   <= { 1'b0, mult_in.prs2_v };                    // unsigned
                    end
                    default: begin
                    end
                endcase
            end
            else if (!mult_bc_stall) begin
                mult_in_reg         <= 'x;
                mult_in_reg.valid   <= '0;
            end
        end
    end

    always_comb begin
        mult_ready          = !mult_bc_stall;

        // Don't broadcast if invalid due to EBR on resolve cycle
        if (bra_done && invalid_out) begin
            mult_done       = '0;
        end else begin
            mult_done       = bc_data.valid && !mult_bc_stall;
        end

        // fill out broadcast data
        mult_out.valid       = bc_data.valid;
        mult_out.rob_id      = bc_data.rob_id;
        mult_out.prs1_v      = bc_data.prs1_v;
        mult_out.prs2_v      = bc_data.prs2_v;
        mult_out.prd_s       = bc_data.prd_s;
        mult_out.lrd_s       = bc_data.lrd_s;
        mult_out.dmem_addr   = '0;
        mult_out.dmem_rmask  = '0;
        mult_out.dmem_wmask  = '0;
        mult_out.dmem_rdata  = '0;
        mult_out.dmem_wdata  = '0;
        mult_out.is_flush    = '0;
        mult_out.pc_next     = bc_data.pc + 'd4;
        mult_out.prd_v       = 'x;
        if (bra_done) begin 
            mult_out.ebr_mask    = resolve_out;
        end 
        else begin
            mult_out.ebr_mask    = bc_data.ebr_mask;
        end

        unique case (bc_data.inst.b_type.funct3)
            3'b000: begin                                   // MUL
                mult_out.prd_v       = product[31:0];     // lo 32 bits
            end
            3'b001: begin                                   // MULH
                mult_out.prd_v       = product[63:32];    // hi 32 bits
            end
            3'b010: begin                                   // MULHSU
                mult_out.prd_v       = product[63:32];    // hi 32 bits
            end
            3'b011: begin                                   // MULHU
                mult_out.prd_v       = product[63:32];    // hi 32 bits
            end
            default: begin
            end
        endcase
    end

endmodule
