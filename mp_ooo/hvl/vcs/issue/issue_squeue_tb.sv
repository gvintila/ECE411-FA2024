module issue_squeue_tb (output logic done, output logic error);
import rv32i_types::*;
import params::*;

    //------------------------
    //  Declare signals
    //------------------------
    bit                             clk;
    bit                             rst;

    bit                             enqueue;
    bit                             dequeue;
    rstation_t                      wdata;
    rstation_issue_t                rdata;
    bit                             ready_out;
    bit                             ready_in;

    cdb_t                           cdb_out[CDB_WIDTH];
    bit                             cdb_bc[CDB_WIDTH];

    bit                             late_flush;

    bit                             bra_done;
    bit                             bra_mispredict;
    bit   [EBR_MASK_SIZE-1:0]       bra_id;

    int timeout = 10000; // in cycles, change according to your needs

    initial clk = 1'b0;
    always #2ns clk = ~clk;

    initial rst = 1'b1;

    initial done = 1'b0;
    initial error = 1'b0;

    // Not testing EBR / late_flush
    initial late_flush           = '0;
    initial bra_done        = '0;
    initial bra_mispredict  = '0;
    initial bra_id          = '0;

    //--------------------------
    //  Instantiate modules
    //--------------------------

    issue_shift_queue issue_shift_queue(.*);

    //-----------------------------------
    //  Tasks for setup and tests
    //-----------------------------------

    task gen_rst();
        rst = 1'b1;
        repeat (2) @(posedge clk);
        rst = 1'b0;
        @(posedge clk);
    endtask : gen_rst;

    task gen_nop();
        wdata.valid             = '1;
        wdata.inst              = full_instr_nop;
        wdata.prs1_ready        = '1;
        wdata.prs1_s            = '0;      
        wdata.prs2_ready        = '0;
        wdata.prs2_s            = (PRF_IDX_HIBIT+1)'(5);
        wdata.prs2_r            = '1;       // 0 = imm, 1 = ps2
        wdata.prd_s             = (PRF_IDX_HIBIT+1)'(9);
        wdata.lrd_s             = (PRF_IDX_HIBIT+1)'(3);
        wdata.bp_target         = '0;
        wdata.pc                = '0;   
        wdata.eu_opcode         = '0;
        wdata.rob_id            = '0; 
        wdata.bra_id            = '0;
        wdata.ebr_mask          = '0;

        enqueue                 <= '1;
        @(posedge clk);
        enqueue                 <= '0;
        @(posedge clk);
    endtask : gen_nop;

    task gen_cdb();
        cdb_out[0].valid        = '1;
        cdb_out[0].rob_id       = '0;
        cdb_out[0].prs1_v       = '0;
        cdb_out[0].prs2_v       = '0;
        cdb_out[0].prd_s        = (PRF_IDX_HIBIT+1)'(5);
        cdb_out[0].lrd_s        = (PRF_IDX_HIBIT+1)'(2);
        cdb_out[0].prd_v        = '0;
        cdb_out[0].dmem_addr    = '0;
        cdb_out[0].dmem_rmask   = '0;
        cdb_out[0].dmem_wmask   = '0;
        cdb_out[0].dmem_rdata   = '0;
        cdb_out[0].dmem_wdata   = '0;
        cdb_out[0].pc_next      = '0;
        cdb_out[0].is_flush     = '0;
        cdb_out[0].ebr_mask     = '0;

        cdb_bc[0]               <= '1;
        @(posedge clk);
        cdb_bc[0]               <= '0;
        @(posedge clk);
    endtask : gen_cdb;

    task sq_dequeue();
        dequeue                 <= '1;
        @(posedge clk);
        dequeue                 <= '0;
        @(posedge clk);
    endtask : sq_dequeue;

    //------------------------------
    //  Initial block with tests
    //------------------------------

    initial begin
        // Set up inputs
        enqueue                 <= '0;
        dequeue                 <= '0;
        cdb_bc[0]               <= '0;
        cdb_out[0]              <= 'x;

        gen_rst();

        gen_nop();

        repeat (3)
            @(posedge clk);

        gen_nop();

        gen_cdb();

        repeat (3)
            gen_nop();

        repeat (1)
            @(posedge clk);
        
        sq_dequeue();

        repeat (2)
            @(posedge clk);

        // Finish up
        $display("Issue squeue testbench finished!");
        done = 1'b1;
    end

    always @(posedge clk) begin
        if (timeout == 0) begin
            $error("Issue squeue TB Error: Timed out");
            error = 1'b1;
        end
        timeout <= timeout - 1;
    end

endmodule