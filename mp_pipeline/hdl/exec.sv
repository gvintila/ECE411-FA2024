module exec   // EX //
import rv32i_types::*;
(
    input   logic           clk,
    input   logic           rst,

    // Signals to be sent to regfile
    output  logic   [4:0]   rs1_s_ex, rs2_s_ex,

    // Signals to be received from regfile
    input   logic   [31:0]  rs1_v_reg,
    input   logic   [31:0]  rs2_v_reg,

    // Signals to be received from decode (ID)
    input   contw_t         contw_ex,

    // Signals to be received from memory (MEM)
    input   logic           dmem_stall,

    // Forwarding 
    input   logic   [31:0]  rd_v_mem, rd_v_wb,
    input   logic   [4:0]   rd_s_mem, rd_s_wb,
    input   logic           rd_lh_mem,
    output  logic           lh_stall,

    // Branching
    output  logic   [31:0]  pc_br,
    output  logic           br,

    // Signals to be sent to memory (MEM)
    output  contw_t         contw_mem,

    // Signals to be sent to dmem
    output  logic   [31:0]  dmem_addr,
    output  logic   [3:0]   dmem_rmask,
    output  logic   [3:0]   dmem_wmask,
    output  logic   [31:0]  dmem_wdata
);
    logic           [31:0]  dmem_addr_save;
    logic           [31:0]  inst;
    logic           [31:0]  i_imm;
    logic           [31:0]  s_imm;
    logic           [31:0]  b_imm;
    logic           [31:0]  u_imm;
    logic           [31:0]  j_imm;

    assign inst = contw_ex.inst;
    assign i_imm  = {{21{inst[31]}}, inst[30:20]};
    assign s_imm  = {{21{inst[31]}}, inst[30:25], inst[11:7]};
    assign b_imm  = {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
    assign u_imm  = {inst[31:12], 12'h000};
    assign j_imm  = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:21], 1'b0};

    logic           [31:0]  rs1_v;
    logic           [31:0]  rs2_v;
    logic           [31:0]  rd_v;

    assign rs1_s_ex = contw_ex.rs1_s;
    assign rs2_s_ex = contw_ex.rs2_s;

    // Forwarding
    logic                   rs1_f_mem, rs1_f_wb;
    logic                   rs2_f_mem, rs2_f_wb;
    logic           [1:0]   lh_fsm;

    // ALU and CMP
    logic           [31:0]  a;
    logic           [31:0]  b;

    logic signed    [31:0]  as;
    logic signed    [31:0]  bs;
    logic unsigned  [31:0]  au;
    logic unsigned  [31:0]  bu;

    assign as =   signed'(a);
    assign bs =   signed'(b);
    assign au = unsigned'(a);
    assign bu = unsigned'(b);

    logic           [31:0]  aluout;
    logic                   br_en;

    always_comb begin
        unique case (contw_ex.aluop)
            alu_op_add: aluout = au +   bu;
            alu_op_sll: aluout = au <<  bu[4:0];
            alu_op_sra: aluout = unsigned'(as >>> bu[4:0]);
            alu_op_sub: aluout = au -   bu;
            alu_op_xor: aluout = au ^   bu;
            alu_op_srl: aluout = au >>  bu[4:0];
            alu_op_or : aluout = au |   bu;
            alu_op_and: aluout = au &   bu;
            default   : aluout = 'x;
        endcase
    end

    always_comb begin
        unique case (contw_ex.cmpop)
            branch_f3_beq : br_en = (au == bu);
            branch_f3_bne : br_en = (au != bu);
            branch_f3_blt : br_en = (as <  bs);
            branch_f3_bge : br_en = (as >=  bs);
            branch_f3_bltu: br_en = (au <  bu);
            branch_f3_bgeu: br_en = (au >=  bu);
            default       : br_en = 1'bx;
        endcase
    end

    // Update signals to send to memory (MEM)
    always_ff @(posedge clk) begin
        if (rst) begin
            // Control Word
            contw_mem <= '0;

            // Stall
            contw_mem.imem_stall <= '1;
        end 
        else begin
            if (!contw_ex.imem_stall && !dmem_stall && !lh_stall) begin
                // Control Word
                contw_mem <= contw_ex;
                contw_mem.rs1_v <= rs1_v;
                contw_mem.rs2_v <= rs2_v;
                contw_mem.rd_v <= rd_v;
                contw_mem.dmem_addr <= dmem_addr_save;
                contw_mem.dmem_rmask <= dmem_rmask;
                contw_mem.dmem_wmask <= dmem_wmask;
                contw_mem.dmem_wdata <= dmem_wdata;
                if (br)
                    contw_mem.pc_next <= pc_br;
            end
            else begin
                // Control Word
                contw_mem <= contw_mem;

                // If dmem or lh are stalling, keep bubble state the same
                if (dmem_stall || lh_stall)
                    contw_mem.imem_stall <= contw_mem.imem_stall;
                // Pass bubble if currently in a bubble and no other stalls present
                else
                    contw_mem.imem_stall <= '1;
                
                // If dmem is no longer stalling and lh is detected, create a bubble for one cycle (and disable lh warning)
                if (!dmem_stall && lh_stall) begin
                    contw_mem.imem_stall <= '1;
                    contw_mem.state <= s_reset;
                end
            end
        end
    end

    // Load hazard check (stall until data is retrieved and in WB)
    always_ff @(posedge clk) begin
        // lh_fsm = '2 means that data hasn't been retrieved yet
        if (lh_stall && dmem_stall)
            lh_fsm <= 2'b10;
        // lh_fsm = '1 means that data has been retrieved and is in WB
        else if (lh_stall && !dmem_stall)
            lh_fsm <= 2'b01;
        // lh_fsm = '0 indicates no load hazard
        else
            lh_fsm <= 2'b00;
    end

    always_comb begin
        a               = 'x;
        b               = 'x;
        rd_v            = '0;
        dmem_addr       = '0;
        dmem_addr_save  = '0;
        dmem_rmask      = '0;
        dmem_wmask      = '0;
        dmem_wdata      = '0;
        pc_br           = '0;
        br              = '0;

        // Forwarding logic
        rs1_f_mem = '0;
        rs2_f_mem = '0;
        rs1_f_wb = '0;
        rs2_f_wb = '0;
        if (rd_s_mem != '0) begin
            rs1_f_mem = (rd_s_mem == contw_ex.rs1_s) ? '1 : '0;
            rs2_f_mem = (rd_s_mem == contw_ex.rs2_s) ? '1 : '0;
        end
        if (rd_s_wb != '0) begin
            rs1_f_wb = (rd_s_wb == contw_ex.rs1_s) ? '1 : '0;
            rs2_f_wb = (rd_s_wb == contw_ex.rs2_s) ? '1 : '0;
        end

        // If values need to be forwarded and lh flag is up, stall until load value is provided
        if (rd_lh_mem && (rs1_f_mem || rs2_f_mem))
            lh_stall = '1;
        else
            lh_stall = '0;

        // If no load hazard in progress, forward value from MEM or WB
        if (lh_fsm == 2'b00) begin
            if (!rs1_f_mem && !rs1_f_wb)
                rs1_v = rs1_v_reg;
            else if (!rs1_f_mem && rs1_f_wb)
                rs1_v = rd_v_wb;
            else
                rs1_v = rd_v_mem;

            if (!rs2_f_mem && !rs2_f_wb)
                rs2_v = rs2_v_reg;
            else if (!rs2_f_mem && rs2_f_wb)
                rs2_v = rd_v_wb;
            else
                rs2_v = rd_v_mem;
        end
        // If load hazard detected, forward value from WB
        else begin
            rs1_v = (rs1_f_wb) ? rd_v_wb : rs1_v_reg;
            rs2_v = (rs2_f_wb) ? rd_v_wb : rs2_v_reg; 
        end

        if (!contw_ex.imem_stall && !lh_stall) begin
            unique case (contw_ex.state)
                s_lui: begin
                    rd_v = u_imm;
                end
                s_aupic: begin
                    rd_v = contw_ex.pc + u_imm;
                end
                s_jal: begin
                    br = '1;
                    rd_v = contw_ex.pc + 'd4;
                    pc_br = (contw_ex.pc + j_imm) & 32'hfffffffe;
                end
                s_jalr: begin
                    br = '1;
                    rd_v = contw_ex.pc + 'd4;
                    pc_br = (rs1_v + i_imm) & 32'hfffffffe;
                end
                s_br: begin
                    a = rs1_v;
                    b = rs2_v;
                    if (br_en) begin
                        br = '1;
                        pc_br = (contw_ex.pc + b_imm) & 32'hfffffffe;
                    end else begin
                        br = '0;
                        pc_br = contw_ex.pc + 'd4;
                    end
                end
                s_load: begin
                    dmem_addr = rs1_v + i_imm;
                    dmem_addr_save = dmem_addr;
                    unique case (contw_ex.funct3)
                        load_f3_lb, load_f3_lbu: dmem_rmask = 4'b0001 << dmem_addr[1:0];
                        load_f3_lh, load_f3_lhu: dmem_rmask = 4'b0011 << dmem_addr[1:0];
                        load_f3_lw             : dmem_rmask = 4'b1111;
                        default                : dmem_rmask = 'x;
                    endcase
                    dmem_addr[1:0] = 2'd0;
                end
                s_store: begin
                    dmem_addr = rs1_v + s_imm;
                    dmem_addr_save = dmem_addr;
                    unique case (contw_ex.funct3)
                        store_f3_sb: dmem_wmask = 4'b0001 << dmem_addr[1:0];
                        store_f3_sh: dmem_wmask = 4'b0011 << dmem_addr[1:0];
                        store_f3_sw: dmem_wmask = 4'b1111;
                        default    : dmem_wmask = 'x;
                    endcase
                    unique case (contw_ex.funct3)
                        store_f3_sb: dmem_wdata[8 *dmem_addr[1:0] +: 8 ] = rs2_v[7 :0];
                        store_f3_sh: dmem_wdata[16*dmem_addr[1]   +: 16] = rs2_v[15:0];
                        store_f3_sw: dmem_wdata = rs2_v;
                        default    : dmem_wdata = 'x;
                    endcase
                    dmem_addr[1:0] = 2'd0;
                end
                s_ri: begin
                    a = rs1_v;
                    b = i_imm;
                    unique case (contw_ex.funct3)
                        arith_f3_slt:
                            rd_v = {31'd0, br_en};
                        arith_f3_sltu:
                            rd_v = {31'd0, br_en};
                        arith_f3_sr:
                            rd_v = aluout;
                        default:
                            rd_v = aluout;
                    endcase
                end
                s_rr: begin
                    a = rs1_v;
                    b = rs2_v;
                    unique case (contw_ex.funct3)
                        arith_f3_slt:
                            rd_v = {31'd0, br_en};
                        arith_f3_sltu:
                            rd_v = {31'd0, br_en};
                        arith_f3_sr:
                            rd_v = aluout;
                        arith_f3_add:
                            rd_v = aluout;
                        default:
                            rd_v = aluout;
                    endcase
                end
                default: begin
                end
            endcase
        end
    end

endmodule : exec