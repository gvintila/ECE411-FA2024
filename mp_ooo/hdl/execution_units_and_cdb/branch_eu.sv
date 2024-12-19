module branch_eu 
import rv32i_types::*;
import params::*;
(
    input   logic                       clk,
    input   logic                       rst,
    input   logic                       late_flush,

    // Input
    output  logic                       bra_ready,
    input   logic                       bra_start,
    input   eu_operand_t                bra_in,

    // CDB Enqueue
    input   logic                       bra_bc_stall,
    // bra_enqueue might stall due to cdb, but bra_done will not do this
    output  logic                       bra_enqueue,    // Change name to bra_done
    output  cdb_t                       bra_out,

    // EBR Broadcast
    output  logic                       bra_done,       // Change name to bra_bc
    output  logic   [EBR_MASK_SIZE-1:0] bra_id,
    output  logic   [ROB_IDX_HIBIT:0]   bra_rob_id,
    output  logic                       bra_mispredict,
    output  logic                       bra_taken,
    output  logic   [31:0]              bra_pc,
    output  logic   [31:0]              early_flush_target

);

        // Micro-ops
        logic   [2:0]   funct3;
        logic   [6:0]   opcode;
        logic   [31:0]  i_imm;
        logic   [31:0]  b_imm;
        logic   [31:0]  j_imm;

        logic   [31:0]  inst;
        logic   [31:0]  rs1_v;
        logic   [31:0]  rs2_v;

        logic   [31:0]  bp_target;
        logic           is_flush;
        logic   [31:0]  pc;
        logic   [31:0]  pc_next;

        eu_operand_t    bra_in_reg;
        logic           bra_start_reg;
        logic           bra_valid;

        logic   [31:0]  a;
        logic   [31:0]  b;

        logic signed   [31:0] as;
        logic signed   [31:0] bs;
        logic unsigned [31:0] au;
        logic unsigned [31:0] bu;

        logic   [2:0]   cmpop;

        logic           br_en;

        logic   [31:0]  rd_v;

        logic [EBR_MASK_SIZE-1:0]   resolve_bra;
        logic                       invalid_bra;

        logic                       bra_taken_next;

    ebr_resolve ebr_resolve (
        .in_mask(bra_in_reg.ebr_mask),
        .bra_id(bra_id),
        .bra_mispredict(bra_mispredict),
        .out_mask(resolve_bra),
        .invalid(invalid_bra)
    );

    // Change this file like so:
    // Register inputs from rstation when bra_start goes high if bra_ready is high                      - Stage 1
    // Do calculation then REGISTER calculation into flip flop (also check ebr_resolve for invalid)     - Stage 2
    // Broadcast flip flop to every other module (Check for stall from BC, broadcast bra regardless)    - Stage 3
    // Please don't do everything in one cycle!!!!! That adds comb time to everything else
    always_ff @(posedge clk) begin
        if (rst || late_flush) begin
            bra_start_reg           <= '0;
            bra_in_reg              <= 'x;

            bra_out                 <= 'x;
            bra_valid               <= '0;

            bra_done                <= '0;
            bra_id                  <= '0;
            bra_rob_id              <= 'x;
            bra_mispredict          <= '0;
            bra_pc      <= 'x;
            early_flush_target      <= 'x;
        end 
        else begin
            // Register new inputs from issue if ready
            // bra_ready represents "pipeline" stall
            if (bra_ready) begin
                bra_start_reg       <= bra_start;
                bra_in_reg          <= bra_in;

                // bra_valid indicates if output should be considered an enqueue
                // If a valid instruction registers into bra_out but stalls, we want to keep it there and recognize it's valid
                bra_valid           <= (bra_start_reg && !invalid_bra && bra_in_reg.valid) ? '1 : '0;
            end 
            else begin // Don't need EBR case for stall since no branches can be resolved if branch eu is stalling
                // bra_start_reg       <= bra_start_reg;
                // bra_in_reg          <= bra_in_reg;
            end

            // Registering calculation result if valid result and not stalling
            if (bra_start_reg && !invalid_bra && bra_ready) begin
                bra_out.rob_id      <= bra_in_reg.rob_id;
                bra_out.prs1_v      <= bra_in_reg.prs1_v;
                bra_out.prs2_v      <= bra_in_reg.prs2_v;
                bra_out.prd_s       <= bra_in_reg.prd_s;
                bra_out.lrd_s       <= bra_in_reg.lrd_s;
                bra_out.prd_v       <= rd_v;
                bra_out.dmem_addr   <= '0;
                bra_out.dmem_rmask  <= '0;
                bra_out.dmem_wmask  <= '0;
                bra_out.dmem_rdata  <= '0;
                bra_out.dmem_wdata  <= '0;
                bra_out.is_flush    <= is_flush;
                bra_out.pc_next     <= pc_next;
                if (bra_done)
                    bra_out.ebr_mask    <= resolve_bra;
                else
                    bra_out.ebr_mask    <= bra_in_reg.ebr_mask;
                bra_out.valid       <= '1;

                // EBR Broadcast
                bra_done            <= '1;
                bra_id              <= bra_in_reg.bra_id;
                bra_rob_id          <= bra_in_reg.rob_id;
                bra_pc  <= pc;
                early_flush_target  <= pc_next;
                bra_mispredict      <= is_flush && |bra_in_reg.bra_id; //only mispredict if branch registered with ebr
                bra_taken           <= bra_taken_next;
            end
            else begin
                
                // Update in_reg if stalled and broadcast occurs
                if (bra_done && !bra_ready) begin
                    bra_in_reg.ebr_mask     <= resolve_bra;
                    if (invalid_bra)
                        bra_in_reg.valid    <= '0;
                end

                // EBR Broadcast
                bra_done            <= '0;
                bra_mispredict      <= '0;
                bra_taken           <= '0;
            end
        end
    end

    assign inst         = bra_in_reg.inst.word;
    assign rs1_v        = bra_in_reg.prs1_v;
    assign rs2_v        = bra_in_reg.prs2_v;
    assign pc           = bra_in_reg.pc;
    assign bp_target    = bra_in_reg.bp_target;

    // Micro-ops
    assign funct3 = inst[14:12];
    assign opcode = inst[6:0];
    assign i_imm  = {{21{inst[31]}}, inst[30:20]};
    assign b_imm  = {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
    assign j_imm  = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:21], 1'b0};

    assign as =   signed'(a);
    assign bs =   signed'(b);
    assign au = unsigned'(a);
    assign bu = unsigned'(b);

    always_comb begin
        unique case (cmpop)
            branch_f3_beq : br_en = (au == bu);
            branch_f3_bne : br_en = (au != bu);
            branch_f3_blt : br_en = (as <  bs);
            branch_f3_bge : br_en = (as >=  bs);
            branch_f3_bltu: br_en = (au <  bu);
            branch_f3_bgeu: br_en = (au >=  bu);
            default       : br_en = 1'bx;
        endcase
    end

    always_comb begin

        cmpop      = 'x;
        a          = 'x;
        b          = 'x;
        rd_v       = 'x;
        pc_next    = 'x;
        is_flush   = 'x;
        bra_taken_next = 'x;

        unique case (opcode)
            // JAL should already be predicted
            op_b_jal: begin
                is_flush = '0;
                rd_v = pc + 'd4;
                pc_next = (pc + j_imm) & 32'hfffffffe;
                bra_taken_next = 1'b1;
            end
            op_b_jalr: begin
                is_flush = '1;
                rd_v = pc + 'd4;
                pc_next = (rs1_v + i_imm) & 32'hfffffffe;
                bra_taken_next = 1'b1;
            end
            op_b_br: begin
                cmpop = funct3;
                a = rs1_v;
                b = rs2_v;
                if (br_en) begin
                    pc_next = (pc + b_imm) & 32'hfffffffe;
                    bra_taken_next = 1'b1;
                end else begin
                    pc_next = pc + 'd4;
                    bra_taken_next = 1'b0;
                end
            end
            default: begin
            end
        endcase

        if (pc_next != bp_target) 
            is_flush = 1'b1;
        else
            is_flush = 1'b0;

        bra_ready       = !bra_bc_stall;
        bra_enqueue     = bra_ready && bra_valid;

    end

endmodule
