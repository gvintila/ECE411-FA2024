/////////////////////////////////////////////////////////////
// Maybe merge what is in mp_verif/pkg/types.sv over here? //
/////////////////////////////////////////////////////////////

package rv32i_types;

    typedef enum logic {
        rs1_out = 1'b0,
        pc_out  = 1'b1
    } alu_m1_sel_t;

    // more mux def here

    typedef enum logic [3:0] {
        s_reset        = 4'b0000,
        s_halt         = 4'b0001,
        s_fetch        = 4'b0010,
        s_decode       = 4'b0011,
        s_lui          = 4'b0100,
        s_aupic        = 4'b0101,
        s_jal          = 4'b0110,
        s_jalr         = 4'b0111,
        s_br           = 4'b1000,
        s_load         = 4'b1001,
        s_store        = 4'b1010,
        s_ri           = 4'b1011,
        s_rr           = 4'b1100
    } state_t;

    typedef enum logic [6:0] {
        op_b_lui       = 7'b0110111, // load upper immediate (U type)
        op_b_auipc     = 7'b0010111, // add upper immediate PC (U type)
        op_b_jal       = 7'b1101111, // jump and link (J type)
        op_b_jalr      = 7'b1100111, // jump and link register (I type)
        op_b_br        = 7'b1100011, // branch (B type)
        op_b_load      = 7'b0000011, // load (I type)
        op_b_store     = 7'b0100011, // store (S type)
        op_b_imm       = 7'b0010011, // arith ops with register/immediate operands (I type)
        op_b_reg       = 7'b0110011  // arith ops with register operands (R type)
    } rv32i_opcode;

    typedef enum logic [2:0] {
        misc_f3_jalr   = 3'b000
    } misc_f3_t;

    typedef enum logic [2:0] {
        alu_op_add = 3'b000,
        alu_op_sll = 3'b001,
        alu_op_sra = 3'b010,
        alu_op_sub = 3'b011,
        alu_op_xor = 3'b100,
        alu_op_srl = 3'b101,
        alu_op_or  = 3'b110,
        alu_op_and = 3'b111
    } alu_op_t;

    typedef enum logic [2:0] {
        arith_f3_add   = 3'b000, // check logic 30 for sub if op_reg op
        arith_f3_sll   = 3'b001,
        arith_f3_slt   = 3'b010,
        arith_f3_sltu  = 3'b011,
        arith_f3_xor   = 3'b100,
        arith_f3_sr    = 3'b101, // check logic 30 for logical/arithmetic
        arith_f3_or    = 3'b110,
        arith_f3_and   = 3'b111
    } arith_f3_t;

    typedef enum logic [2:0] {
        load_f3_lb     = 3'b000,
        load_f3_lh     = 3'b001,
        load_f3_lw     = 3'b010,
        load_f3_lbu    = 3'b100,
        load_f3_lhu    = 3'b101
    } load_f3_t;

    typedef enum logic [2:0] {
        store_f3_sb    = 3'b000,
        store_f3_sh    = 3'b001,
        store_f3_sw    = 3'b010
    } store_f3_t;

    typedef enum logic [2:0] {
        branch_f3_beq  = 3'b000,
        branch_f3_bne  = 3'b001,
        branch_f3_blt  = 3'b100,
        branch_f3_bge  = 3'b101,
        branch_f3_bltu = 3'b110,
        branch_f3_bgeu = 3'b111
    } branch_f3_t;

    // You'll need this type to randomly generate variants of certain
    // instructions that have the funct7 field.
    typedef enum logic [6:0] {
        base           = 7'b0000000,
        variant        = 7'b0100000
    } funct7_t;

    // Various ways RISC-V instruction words can be interpreted.
    // See page 104, Chapter 19 RV32/64G Instruction Set Listings
    // of the RISC-V v2.2 spec.
    typedef union packed {
        logic [31:0] word;

        struct packed {
            logic [11:0] i_imm;
            logic [4:0]  rs1;
            logic [2:0]  funct3;
            logic [4:0]  rd;
            rv32i_opcode opcode;
        } i_type;

        struct packed {
            logic [6:0]  funct7;
            logic [4:0]  rs2;
            logic [4:0]  rs1;
            logic [2:0]  funct3;
            logic [4:0]  rd;
            rv32i_opcode opcode;
        } r_type;

        struct packed {
            logic [11:5] imm_s_top;
            logic [4:0]  rs2;
            logic [4:0]  rs1;
            logic [2:0]  funct3;
            logic [4:0]  imm_s_bot;
            rv32i_opcode opcode;
        } s_type;

        // TODO: Write the struct for b-type instructions.
        struct packed {
            // Fill this out to get branches running!
            logic imm_b_12;
            logic [10:5] imm_b_top;
            logic [4:0] rs2;
            logic [4:0] rs1;
            logic [2:0] funct3;
            logic [4:1] imm_b_bot;
            logic imm_b_11;
            rv32i_opcode opcode;
        } b_type;

        struct packed {
            logic [31:12] imm;
            logic [4:0]   rd;
            rv32i_opcode  opcode;
        } j_type;

    } instr_t;

    typedef struct packed {
        logic   [31:0]      inst;
        logic   [31:0]      pc;
        logic   [31:0]      pc_next;
        logic   [63:0]      order;

        logic   [4:0]       rs1_s;
        logic   [4:0]       rs2_s;
        logic   [4:0]       rd_s;

        logic   [31:0]      rs1_v;
        logic   [31:0]      rs2_v;
        logic   [31:0]      rd_v;

        logic   [2:0]       funct3;
        logic   [6:0]       funct7;

        logic   [2:0]       aluop;
        logic   [2:0]       cmpop;

        logic   [31:0]      dmem_addr;
        logic   [3:0]       dmem_rmask;
        logic   [3:0]       dmem_wmask;
        logic   [31:0]      dmem_rdata;
        logic   [31:0]      dmem_wdata;
        logic               dmem_exp_resp;
        
        logic               imem_stall;

        state_t             state;
    } contw_t;

    // Full instructions
    typedef enum logic [31:0] {
        full_instr_nop = 32'h00000013
    } full_instr_t;

endpackage
