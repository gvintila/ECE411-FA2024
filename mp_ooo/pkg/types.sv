package params;
    localparam int unsigned IC_PREFETCH_DEGREE = 3;     // (Ranges from 1-3)
    localparam int unsigned DC_PREFETCH_DEGREE = 1;     // (Ranges from 1-3)
    localparam int unsigned SB_HIBIT = $clog2(IC_PREFETCH_DEGREE + 1) - 1;
    localparam int unsigned RPT_SETS = 4;       // DO NOT CHANGE (RELIANT ON SRAM)
    localparam int unsigned RPT_STRIDE = 5;     // DO NOT CHANGE (RELIANT ON SRAM)
    localparam int unsigned RPT_TAG_HIBIT = 26 - (RPT_SETS + RPT_STRIDE);
    localparam int unsigned RPT_DATA_HIBIT = RPT_TAG_HIBIT + (2 * RPT_STRIDE) + 4;
    localparam int unsigned DATA_REQUEST_TABLE_SIZE = 6;

    localparam int unsigned ISQ_ALU_SIZE = 9;
    localparam int unsigned ISQ_BMD_SIZE = 4;
    localparam int unsigned ISQ_LS_SIZE = 6;

    localparam int unsigned LOAD_QUEUE_DEPTH = 16;
    localparam int unsigned STORE_QUEUE_DEPTH = 16;

    localparam int unsigned LOG2_BTB_SIZE = 4;

    //localparam int unsigned BIG_CDB_DEPTH = 12;
    localparam int unsigned CDB_ALU_Q_DEPTH = 3;
    localparam int unsigned CDB_BRA_Q_DEPTH = 3;
    localparam int unsigned CDB_LS_Q_DEPTH = 3;
    localparam int unsigned CDB_MUL_Q_DEPTH = 2;
    localparam int unsigned CDB_DIV_Q_DEPTH = 2;

    localparam int unsigned NUM_ROB_ENTRIES = 20;
    localparam int unsigned NUM_PHYSICAL_REGISTERS = 32 + NUM_ROB_ENTRIES;
    localparam int unsigned FREE_LIST_DEPTH = NUM_PHYSICAL_REGISTERS - 32;
    
    localparam int unsigned NUM_EBR_CHECKPOINT = 3; // Should never bigger than reservation station
    localparam int unsigned EBR_MASK_SIZE = NUM_EBR_CHECKPOINT;

    localparam int unsigned PRF_WIDTH = 3;
    localparam int unsigned ISSUE_WIDTH = 1;
    localparam int unsigned CDB_WIDTH = 2;
    localparam int unsigned DISP_WIDTH = 1;

    // localparam int unsigned RSTAT_IDX_HIBIT = $clog2(NUM_RESERVATION_STATIONS) - 1;
    localparam int unsigned PRF_IDX_HIBIT = $clog2(NUM_PHYSICAL_REGISTERS) - 1;
    localparam int unsigned PRF_IDX_SIZE = $clog2(NUM_PHYSICAL_REGISTERS);
    localparam int unsigned ROB_IDX_HIBIT = $clog2(NUM_ROB_ENTRIES) - 1;
    localparam int unsigned ROB_IDX_SIZE = $clog2(NUM_ROB_ENTRIES);
    localparam int unsigned EBR_IDX_HIBIT = $clog2(NUM_EBR_CHECKPOINT) - 1;
    localparam int unsigned FREE_LIST_IDX_HIBIT = $clog2(FREE_LIST_DEPTH)-1;
    localparam int unsigned FREE_LIST_DEPTH_TOP = FREE_LIST_DEPTH-1;

    // FOR EBR GENVAR
    localparam int EBR_MASK_SIZE_SIGNED = EBR_MASK_SIZE;

    localparam int unsigned DIV_WIDTH = 3;      // Max 8
    localparam int unsigned DIV_STAGES = 20;
    localparam int unsigned MULT_STAGES = 6;

endpackage

package rv32i_types;
    import params::*;

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

    typedef enum logic [2:0] {
        rv32m_f3_mul    = 3'b000,
        rv32m_f3_mulh   = 3'b001,
        rv32m_f3_mulhsu = 3'b010,
        rv32m_f3_mulhu  = 3'b011,
        rv32m_f3_div    = 3'b100,
        rv32m_f3_divu   = 3'b101,
        rv32m_f3_rem    = 3'b110,
        rv32m_f3_remu   = 3'b111
    } rv32m_f3_t;

    // You'll need this type to randomly generate variants of certain
    // instructions that have the funct7 field.
    typedef enum logic [6:0] {
        base            = 7'b0000000,
        variant         = 7'b0100000,
        rv32m_f7        = 7'b0000001
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

    // Full instructions
    typedef enum logic [31:0] {
        full_instr_nop = 32'h00000013
    } full_instr_t;

    // Memory Controller
    typedef enum logic [2:0] {
        s_mc_bc_idle        = 3'b000,   // No request from cache
        s_mc_bc_rcmp        = 3'b001,   // Comparing with buffer controller
        s_mc_bc_write       = 3'b010,   // Sending write request to CL
        s_mc_bc_stall_bmem  = 3'b011,   // Stalling and waiting to request to BMEM
        s_mc_bc_stall_sram  = 3'b100,   // Stalling and waiting to request to SRAM
        s_mc_bc_await_bmem  = 3'b101,   // Waiting for response from BMEM
        s_mc_bc_await_sram  = 3'b110    // Data is accessed from SRAM 
    } memcontroller_t;

    // Data Request Table
    typedef struct packed {
        logic   [26:0]          tag;
        logic                   cache_type;     // 0 = icache, 1 = dcache
        logic                   sb_line;
        logic   [SB_HIBIT:0]    sb_index;       // Make this vary by PREFETCH_DEGREE
        logic                   request;
    } drt_entry_t;

    // Repeat Pattern Table
    typedef struct packed {
        logic   [RPT_TAG_HIBIT : 0]         tag;
        logic   [RPT_STRIDE-1 : 0]          base;       // Last base address 
        logic   [RPT_STRIDE-1 : 0]          stride;     // Stride distance
        logic                               direction;  
        logic   [1:0]                       count;      // Checks how many times entry has been access (0, 1, 2)
    } rpt_entry_t;
    // At count 2, we must check if base +/- stride == new base, then add to stride buffer and evict based on plru logic

    typedef enum logic [1:0] {
        s_rpt_idle  = 2'b00,
        s_rpt_cmp   = 2'b01,
        s_rpt_store = 2'b10
    } rpt_state_t;

    // D-Cache Address
    typedef union packed {
        logic [26:0] sb_tag;

        struct packed {
            logic   [RPT_TAG_HIBIT : 0]     tag;
            logic   [RPT_SETS-1 : 0]        set;
            logic   [RPT_STRIDE-1: 0]       stride;
        } rpt_type;

    } sb_tag_t;

    // Stream Buffer
    typedef struct packed {
        //logic   [255:0]         data;
        logic   [26:0]          tag;
        logic                   ready;
        logic                   request;
    } sbuffer_entry_t;

    // Decode -> Dispatcher
    typedef struct packed {
        logic   [63:0]              order;
        instr_t                     inst;
        logic                       prs2_r;         // 0 = imm, 1 = rs2
        logic   [4:0]               lrs1_s;
        logic   [4:0]               lrs2_s;
        logic   [4:0]               lrd_s;
        logic   [PRF_IDX_HIBIT:0]   prd_s;   
        logic   [31:0]              bp_target;         // Branch prediction
        logic   [31:0]              pc;
        logic   [2:0]               eu_opcode;      // How should operation for function unit be encoded?   
        // logic   [3:0]            mem_rmask;   // Is this necessary during decode/dispatch?
        // logic   [3:0]            mem_wmask;
    } id_disp_t;

    typedef struct packed {
        logic   [63:0]              order;
        instr_t                     inst;
        logic                       prs2_r;         // 0 = imm, 1 = rs2
        logic   [4:0]               lrs1_s;
        logic   [4:0]               lrs2_s;
        logic   [4:0]               lrd_s;
        logic   [PRF_IDX_HIBIT:0]   prd_s;   
        logic   [31:0]              bp_target;         // Branch prediction
        logic   [31:0]              pc;
        logic   [2:0]               eu_opcode;      // How should operation for function unit be encoded?   
        logic   [2:0]               funct3;
        logic                       is_load_store; // 1 for store, 0 for load
    } decode_t;

    // Reservation Station
    typedef struct packed {
        logic                       valid;
        instr_t                     inst;
        logic                       prs1_ready;
        logic   [PRF_IDX_HIBIT:0]   prs1_s;      
        logic                       prs2_ready;
        logic   [PRF_IDX_HIBIT:0]   prs2_s;     
        logic                       prs2_r;         // 0 = imm, 1 = rs2
        logic   [PRF_IDX_HIBIT:0]   prd_s;
        logic   [4:0]               lrd_s;
        logic   [31:0]              bp_target;
        logic   [31:0]              pc;   
        logic   [2:0]               eu_opcode;
        logic   [ROB_IDX_HIBIT:0]   rob_id; 
        logic   [EBR_MASK_SIZE-1:0] bra_id;
        logic   [EBR_MASK_SIZE-1:0] ebr_mask;
    } rstation_t;

    // Reservation Station -> Issue
    typedef struct packed {
        instr_t                     inst;
        logic   [PRF_IDX_HIBIT:0]   prs1_s;      
        logic   [PRF_IDX_HIBIT:0]   prs2_s;     // ps2 / imm
        logic                       prs2_r;     // 0 = imm, 1 = ps2
        logic   [PRF_IDX_HIBIT:0]   prd_s;
        logic   [4:0]               lrd_s;
        logic   [31:0]              bp_target;
        logic   [31:0]              pc;   
        logic   [2:0]               eu_opcode;
        logic   [ROB_IDX_HIBIT:0]   rob_id; 
        logic   [EBR_MASK_SIZE-1:0] bra_id;
        logic   [EBR_MASK_SIZE-1:0] ebr_mask;
    } rstation_issue_t;

    typedef struct packed {

        // Provide on dispatch

        logic               valid;
        logic               commit_ready;

        logic   [63:0]              order;
        instr_t                     inst;
        logic   [4:0]               rs1_s;
        logic   [4:0]               rs2_s;
        logic   [4:0]               rd_s;
        logic   [PRF_IDX_HIBIT:0]       prs1_s;
        logic   [PRF_IDX_HIBIT:0]       prs2_s;
        logic   [PRF_IDX_HIBIT:0]       prd_s;
        
        logic   [31:0]      pc;
        logic                       early_recover;

        // Provide on CDB broadcast

        logic               is_flush;

        logic   [31:0]      rs1_v;
        logic   [31:0]      rs2_v;

        logic   [31:0]      rd_v;

        logic   [31:0]      pc_next;

        logic   [31:0]      dmem_addr;
        logic   [3:0]       dmem_rmask;
        logic   [3:0]       dmem_wmask;
        logic   [31:0]      dmem_rdata;
        logic   [31:0]      dmem_wdata;

    } rob_entry_t;

    typedef struct packed {
        logic                       valid;
        logic   [ROB_IDX_HIBIT:0]   rob_id;
        logic   [31:0]              prs1_v;
        logic   [31:0]              prs2_v;
        logic   [PRF_IDX_HIBIT:0]   prd_s;
        logic   [4:0]               lrd_s;
        logic   [31:0]              prd_v;
        logic   [31:0]              dmem_addr;
        logic   [3:0]               dmem_rmask;
        logic   [3:0]               dmem_wmask;
        logic   [31:0]              dmem_rdata;
        logic   [31:0]              dmem_wdata;
        logic   [31:0]              pc_next;
        logic                       is_flush;
        logic   [EBR_MASK_SIZE-1:0] ebr_mask;
    } cdb_t;

    typedef enum logic [2:0] {
        op_eu_alu           = 3'b000,
        op_eu_mult          = 3'b001,
        op_eu_div           = 3'b011,
        op_eu_branch        = 3'b101,
        op_eu_load_store    = 3'b110
    } eu_opcode_t;

    typedef struct packed {
        logic                       valid;
        logic   [ROB_IDX_HIBIT:0]   rob_id;
        logic   [31:0]              prs1_v;      
        logic   [31:0]              prs2_v;     
        logic   [PRF_IDX_HIBIT:0]   prd_s;
        logic   [4:0]               lrd_s;
        logic   [31:0]              bp_target;
        logic   [31:0]              pc;   
        instr_t                     inst;
        logic   [EBR_MASK_SIZE-1:0] bra_id;
        logic   [EBR_MASK_SIZE-1:0] ebr_mask;
    } eu_operand_t;

    typedef struct packed {

        // Provide on dispatch
        logic                       valid;
        logic                       lsq_calculation_done;
        logic [2:0]                 funct3;
        logic   [EBR_MASK_SIZE-1:0] ebr_mask;

        // need to only know its a store or load
        // 0 = load, 1 = store
        logic                           load_store;

        logic   [PRF_IDX_HIBIT:0]       prs1_s;
        logic   [PRF_IDX_HIBIT:0]       prs2_s;

        cdb_t               cdb_data;

    } lsq_entry_t;

    typedef struct packed {

        // Provide on dispatch
        logic                                   valid;
        logic                                   lsq_calculation_done;
        logic                                   dmem_dispatched;
        logic                                   issue_ready;
        logic [2:0]                             funct3;
        logic [$clog2(STORE_QUEUE_DEPTH):0]     sq_pointer;
        logic   [EBR_MASK_SIZE-1:0] ebr_mask;

        // need to only know its a store or load
        // 0 = load, 1 = store
        logic                           load_store;

        logic   [PRF_IDX_HIBIT:0]       prs1_s;
        logic   [PRF_IDX_HIBIT:0]       prs2_s;

        cdb_t               cdb_data;

    } lq_entry_t;

    typedef struct packed {

        // Provide on dispatch
        logic                                   valid;
        logic                                   lsq_calculation_done;
        logic                                   dmem_dispatched;
        logic                                   issue_ready;
        logic [2:0]                             funct3;
        logic   [EBR_MASK_SIZE-1:0] ebr_mask;

        // need to only know its a store or load
        // 0 = load, 1 = store
        logic                           load_store;

        logic   [PRF_IDX_HIBIT:0]       prs1_s;
        logic   [PRF_IDX_HIBIT:0]       prs2_s;

        cdb_t               cdb_data;

    } sq_entry_t;

endpackage

package cache_types;

    typedef struct packed {
        logic           wr_stall;
        logic           dfp_read_complete;
        logic           dfp_write_complete;
        logic   [22:0]  tag_reg;
    } cache_reg_t;

endpackage
