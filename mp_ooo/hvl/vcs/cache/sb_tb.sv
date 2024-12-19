
module sb_tb (output logic done, output logic error);
import rv32i_types::*;
import params::*;

    //------------------------
    //  Declare signals
    //------------------------
    bit                         clk;
    bit                         rst;

    bit                         sb_evict;

    bit                         drt_resp;
    bit                         sb_drt_request;
    bit     [26:0]              sb_tag_out;
    bit     [SB_HIBIT : 0]      sb_index_out;

    bit                         drt_sb_request;
    bit     [255:0]             sb_data_in;
    bit     [26:0]              sb_tag_in;
    bit     [SB_HIBIT : 0]      sb_index_in;

    bit                         sb_dequeue;
    bit                         sb_valid;
    bit     [255:0]             sb_head_data;
    bit     [26:0]              sb_head_tag;
    bit                         sb_head_ready;

    bit     [26:0]              saved_tag;
    bit     [SB_HIBIT : 0]      saved_index;

    int timeout = 10000; // in cycles, change according to your needs

    initial clk = 1'b0;
    always #2ns clk = ~clk;

    initial rst = 1'b1;

    initial done = 1'b0;
    initial error = 1'b0;

    //--------------------------
    //  Instantiate modules
    //--------------------------

    stream_buffer stream_buffer(.*);

    //-----------------------------------
    //  Tasks for setup and tests
    //-----------------------------------

    task gen_rst();
        rst = 1'b1;
        repeat (2) @(posedge clk);
        rst = 1'b0;
        @(posedge clk);
    endtask : gen_rst

    // Evicting SB then sending a new tag
    task evict();
        sb_evict            <= '1;
        sb_tag_in           <= '0;
        sb_tag_in[26:11]    <= 16'heceb;
        @(posedge clk);
        sb_evict            <= '0;
        sb_tag_in           <= 'x;
        @(posedge clk);
    endtask : evict;

    task drt_receive();
        @(posedge clk iff |sb_drt_request);
        drt_resp    <= '1;
        saved_tag   <= sb_tag_out;
        saved_index <= sb_index_out;
        @(posedge clk);
        drt_resp    <= '0;
        @(posedge clk);
    endtask : drt_receive;

    task drt_send();
        std::randomize(sb_data_in);
        drt_sb_request  <= '1;
        sb_tag_in       <= saved_tag;
        sb_index_in     <= saved_index;
        @(posedge clk);
        drt_sb_request  <= '0;
        @(posedge clk);
    endtask : drt_send;

    task dequeue_drt_send();
        std::randomize(sb_data_in);
        sb_dequeue      <= '1;
        drt_sb_request  <= '1;
        sb_tag_in       <= saved_tag;
        sb_index_in     <= saved_index;
        @(posedge clk);
        sb_dequeue      <= '0;
        drt_sb_request  <= '0;
        @(posedge clk);
    endtask : dequeue_drt_send;

    task dequeue();
        sb_dequeue      <= '1;
        @(posedge clk);
        sb_dequeue      <= '0;
        @(posedge clk);
    endtask : dequeue;

    task dequeue_drt_receive();
        @(posedge clk iff |sb_drt_request);
        sb_dequeue  <= '1;
        drt_resp    <= '1;
        saved_tag   <= sb_tag_out;
        saved_index <= sb_index_out;
        @(posedge clk);
        sb_dequeue  <= '0;
        drt_resp    <= '0;
        @(posedge clk);
    endtask : dequeue_drt_receive;

    //------------------------------
    //  Initial block with tests
    //------------------------------

    initial begin

        // Set up inputs
        sb_evict        <= '0;
        
        drt_resp        <= '0;

        drt_sb_request  <= '0;
        sb_data_in      <= 'x;
        sb_tag_in       <= 'x;
        sb_index_in     <= 'x;

        sb_dequeue      <= '0;

        gen_rst();

        evict();

        repeat (3) begin
            drt_receive();
            drt_send();
        end

        dequeue();

        repeat (3) begin
            dequeue_drt_receive();
            drt_send();
        end

        drt_receive();
        drt_send();

        // Finish up
        $display("Stream buffer testbench finished!");
        done = 1'b1;

    end

    always @(posedge clk) begin
        if (timeout == 0) begin
            $error("Stream buffer TB Error: Timed out");
            error = 1'b1;
        end
        timeout <= timeout - 1;
    end

endmodule