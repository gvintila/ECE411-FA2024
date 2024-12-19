
module rpt_tb (output logic done, output logic error);
import rv32i_types::*;
import params::*;

    //------------------------
    //  Declare signals
    //------------------------
    bit                             clk;
    bit                             rst;

    bit                             rpt_en;
    bit     [26:0]                  rpt_sbtag_in;

    bit                             rpt_allocate;
    bit     [26:0]                  rpt_sbtag_out;
    bit     [RPT_STRIDE-1 : 0]      rpt_stride_out;
    bit                             rpt_direction_out;

    bit     [RPT_STRIDE-1 : 0]      test_stride;

    int timeout = 10000; // in cycles, change according to your needs

    initial clk = 1'b0;
    always #2ns clk = ~clk;

    initial rst = 1'b1;

    initial done = 1'b0;
    initial error = 1'b0;

    //--------------------------
    //  Instantiate modules
    //--------------------------

    repeat_pattern_table repeat_pattern_table(.*);

    //-----------------------------------
    //  Tasks for setup and tests
    //-----------------------------------

    task gen_rst();
        rst = 1'b1;
        repeat (2) @(posedge clk);
        rst = 1'b0;
        @(posedge clk);
    endtask : gen_rst

    task randomize_addr();
        std::randomize(rpt_sbtag_in) with { (rpt_sbtag_in[RPT_STRIDE-1:0] == '0); };
        std::randomize(test_stride) with { (test_stride[RPT_STRIDE-1:3] == '0) && (test_stride[2:0] != '0); };
        repeat (2) @(posedge clk);
    endtask : randomize_addr;

    task increment_addr();
        rpt_sbtag_in    <= 27'(rpt_sbtag_in + test_stride);
        @(posedge clk);
    endtask : increment_addr;

    task send_stride();
        rpt_en  <= '1;
        @(posedge clk);
        rpt_en  <= '0;
        repeat (2) @(posedge clk);
    endtask : send_stride;

    task send_stride_exp_resp();
        rpt_en  <= '1;
        @(posedge clk iff |rpt_allocate);
        rpt_en  <= '0;
        if (rpt_stride_out != test_stride) begin
            $error("TB Error: Unexpected stride");
            error = 1'b1;
        end
    endtask : send_stride_exp_resp;


    //------------------------------
    //  Initial block with tests
    //------------------------------

    initial begin

        // Set up inputs
        rpt_en          <= '0;
        rpt_sbtag_in    <= '0;

        gen_rst();

        repeat (50) begin
            randomize_addr();
            send_stride();
            increment_addr();
            send_stride();
            increment_addr();
            send_stride_exp_resp();
        end

        // Finish up
        $display("RPT testbench finished!");
        done = 1'b1;

    end

    always @(posedge clk) begin
        if (timeout == 0) begin
            $error("RPT TB Error: Timed out");
            error = 1'b1;
        end
        timeout <= timeout - 1;
    end

endmodule