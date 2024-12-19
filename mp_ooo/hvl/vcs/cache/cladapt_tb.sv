module cladapt_tb (output logic done, output logic error);
import rv32i_types::*;
import params::*;

    //------------------------
    //  Declare signals
    //------------------------
    bit             clk;
    bit             rst;

    // cpu side signals, ufp -> upward facing port
    bit     [31:0]  ufp_addr;
    bit     [3:0]   ufp_rmask;
    bit     [3:0]   ufp_wmask;
    bit     [31:0]  ufp_rdata;
    bit     [31:0]  ufp_wdata;
    bit             ufp_resp;

    // memory side signals, dfp -> downward facing port
    bit     [31:0]  dfp_addr;
    bit             dfp_read;
    bit             dfp_write;
    bit     [255:0] dfp_rdata;
    bit     [255:0] dfp_wdata;
    bit             dfp_resp;

    // testing signals
    bit     [255:0] buffer;

    int burst = 0;
    int timeout = 100000; // in cycles, change according to your needs

    initial clk = 1'b0;
    always #2ns clk = ~clk;

    initial rst = 1'b1;

    initial done = 1'b0;
    initial error = 1'b0;

    //--------------------------
    //  Instantiate modules
    //--------------------------

    mem_itf_banked bmem_itf(.*);
    dram_w_burst_frfcfs_controller banked_memory(.itf(bmem_itf));

    cacheline_adapter cladapt(
        .clk(clk),
        .rst(rst),

        .b_ready(bmem_itf.ready),
        .b_raddr(bmem_itf.raddr),
        .b_rdata(bmem_itf.rdata),
        .b_rvalid(bmem_itf.rvalid),

        .b_addr(bmem_itf.addr),
        .b_read(bmem_itf.read),
        .b_write(bmem_itf.write),
        .b_wdata(bmem_itf.wdata),

        .c_addr(dfp_addr),
        .c_read(dfp_read),
        .c_write(dfp_write),
        .c_wdata(dfp_wdata),

        .c_rdata(dfp_rdata),
        .c_resp(dfp_resp)
    );

    cache cache(.*);

    //-----------------------------------
    //  Tasks for setup and tests
    //-----------------------------------

    task gen_rst();
        rst = 1'b1;
        repeat (2) @(posedge clk);
        rst = 1'b0;
        @(posedge clk);
    endtask : gen_rst

    // Sending a random address to read (miss)
    task random_read_miss();
        // Send random address with aligned bits
        std::randomize(ufp_addr) with { (ufp_addr[8:5] <= 4'd2) && (ufp_addr[31:9] <= 23'd4) && (ufp_addr[1:0] == 2'b0); };
        burst <= '0;
        buffer <= '0;

        // Send read request
        ufp_rmask <= '1;
        @(posedge clk);
        ufp_rmask <= '0;

        // If address is already in cache, ignore request
        @(posedge clk);
        if (!ufp_resp) begin
            // Check if buffer is properly compiling data
            @(posedge clk iff |bmem_itf.rvalid);
            while (burst != 4) begin
                if (|bmem_itf.rvalid) begin
                    burst <= burst + 1;
                    buffer[burst * 64 +: 64] <= bmem_itf.rdata;
                end
                @(posedge clk);
            end

            // If dfp doesn't respond or right data isn't being sent, throw error
            if (!dfp_resp || buffer != dfp_rdata) begin
                $error("TB Error: Bad data");
                error = 1'b1;
            end

            @(posedge clk iff |ufp_resp);
        end
    endtask : random_read_miss;

    // Sending a random address to read (hit)
    task random_read_hit();
        // Send random address with aligned bits
        std::randomize(ufp_addr) with { (ufp_addr[8:5] <= 4'd2) && (ufp_addr[31:9] <= 23'd4) && (ufp_addr[1:0] == 2'b0); };
        
        // Send read request
        ufp_rmask <= '1;
        @(posedge clk iff |ufp_resp);

        // Send second read request to same address
        ufp_rmask <= '0;
        @(posedge clk iff |ufp_resp);

    endtask : random_read_hit;

    //------------------------------
    //  Initial block with tests
    //------------------------------

    initial begin

        // Set up inputs
        ufp_addr <= '0;
        ufp_rmask <= '0;
        ufp_wmask <= '0;
        ufp_wdata <= '0;

        gen_rst();

        // Reads
        repeat (20)
            random_read_miss();

        repeat (10)
            random_read_hit();

        // Finish up
        $display("Cache line adapter testbench finished!");
        done = 1'b1;

    end

    always @(posedge clk) begin
        if (timeout == 0) begin
            $error("Cache line adapter TB Error: Timed out");
            error = 1'b1;
        end
        timeout <= timeout - 1;
    end

endmodule