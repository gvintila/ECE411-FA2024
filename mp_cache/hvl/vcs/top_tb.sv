module top_tb;
    //---------------------------------------------------------------------------------
    // Waveform generation.
    //---------------------------------------------------------------------------------
    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, "+all");
    end

    //---------------------------------------------------------------------------------
    // TODO: Declare cache port signals:
    //---------------------------------------------------------------------------------
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
    bit             gen_mem;            // Let memory know when it has to update a memory entry
    bit     [31:0]  mem_addr;
    bit     [31:0]  wb_addr;
    bit     [255:0] mem_data;           // To send to simple memory to update into memory
    bit     [31:0]  mem_data_check;     // Data to check for correctness with memory read
    bit     [255:0] wb_data_check;
    bit     [255:0] wb_internal_data_check;

    // used for certain tests
    bit     [31:0]  start_ufp_addr;

    // setting timeout for cache response
    int time_start = 20;
    int timeout = time_start;
    int refresh = 0;
    int pause = 1;
    int await_wb = 1;

    // bit     [31:0]  dfp_addr,
    // bit             dfp_read,
    // bit             dfp_write,
    // bit     [255:0] dfp_rdata,
    // bit     [255:0] dfp_wdata,
    // bit             dfp_resp

    //---------------------------------------------------------------------------------
    // TODO: Generate a clock:
    //---------------------------------------------------------------------------------
    initial clk = 1'b0;
    always #2ns clk = ~clk;

    //---------------------------------------------------------------------------------
    // TODO: Write a task to generate reset:
    //---------------------------------------------------------------------------------
    initial rst = 1'b1;
    
    task gen_rst();
        rst = 1'b1;
        repeat (2) @(posedge clk);
        rst = 1'b0;
        @(posedge clk);
    endtask : gen_rst

    //---------------------------------------------------------------------------------
    // TODO: Instantiate the DUT and physical memory:
    //---------------------------------------------------------------------------------
    mem_itf_wo_mask #(.DWIDTH(256)) mem_itf(.*);

    simple_memory_256_wo_mask phys_mem(
        .itf        (   mem_itf     ),
        .gen_mem    (   gen_mem     ),
        .mem_addr   (   mem_addr    ),
        .mem_data   (   mem_data    )
    );

    cache dut(
        .clk        (   clk                 ),
        .rst        (   rst                 ),
        .ufp_addr   (   ufp_addr            ),
        .ufp_rmask  (   ufp_rmask           ),
        .ufp_wmask  (   ufp_wmask           ),
        .ufp_rdata  (   ufp_rdata           ),
        .ufp_wdata  (   ufp_wdata           ),
        .ufp_resp   (   ufp_resp            ),
        .dfp_addr   (   mem_itf.addr    [0] ),
        .dfp_read   (   mem_itf.read    [0] ),
        .dfp_write  (   mem_itf.write   [0] ),
        .dfp_rdata  (   mem_itf.rdata   [0] ),
        .dfp_wdata  (   mem_itf.wdata   [0] ),
        .dfp_resp   (   mem_itf.resp    [0] )
    );

    //---------------------------------------------------------------------------------
    // TODO: Write tasks to test various functionalities:
    //---------------------------------------------------------------------------------
    
    // Refresh timeout after a task with new time
    task refresh_time(int set_time);
        time_start <= set_time;
        refresh <= 1;
        @(posedge clk);
        refresh <= 0;
        @(posedge clk);
    endtask : refresh_time

    // Allocate memory to specified address in physical memory
    task allocate_memory();
        gen_mem <= 1'b1;
        mem_addr <= ufp_addr;
        std::randomize(mem_data);
        mem_data_check <= mem_data[(8*ufp_addr[4:0]) +: 32];
        repeat (2) @(posedge clk);
        gen_mem <= 1'b0;
        @(posedge clk);
    endtask : allocate_memory
    
    // Sending a random address to read (miss)
    task random_read_miss();
        // Send random address with aligned bits
        std::randomize(ufp_addr) with {ufp_addr[1:0] == 2'b00;};
        allocate_memory();

        refresh_time(15);
        
        // Send read request
        pause <= 0;
        ufp_rmask <= '1;
        @(posedge clk iff |ufp_resp);
        ufp_rmask <= '0;

        // Check for correctness of data
        if (ufp_rdata != mem_data_check) begin
            $error("TB Error: Data read mismatch");
            $fatal;
        end

        // Refresh time
        pause <= 1;
        refresh_time(200);
    endtask : random_read_miss;

    // Sending a random address to read (hit)
    task random_read_hit();
        // Send random address with aligned bits
        std::randomize(ufp_addr) with {ufp_addr[1:0] == 2'b00;};
        allocate_memory();

        refresh_time(15);
        
        // Send read request
        pause <= 0;
        ufp_rmask <= '1;
        @(posedge clk iff |ufp_resp);
        ufp_rmask <= '0;

        // Check for correctness of data
        if (ufp_rdata != mem_data_check) begin
            $error("TB Error: Data read mismatch");
            $fatal;
        end

        pause <= 1;

        repeat (2) @(posedge clk);

        refresh_time(3);

        // Send second read request to same address
        pause <= 0;
        ufp_rmask <= '1;
        @(posedge clk iff |ufp_resp);
        ufp_rmask <= '0;

        // Check for correctness of data
        if (ufp_rdata != mem_data_check) begin
            $error("TB Error: Data read mismatch");
            $fatal;
        end

        // Refresh time
        pause <= 1;
        refresh_time(200);
    endtask : random_read_hit;

    // Sending addresses incrementing in memory then loops back
    task inc_read();
        // Send random starting address with aligned bits
        std::randomize(ufp_addr) with {ufp_addr[1:0] == 2'b00;};

        start_ufp_addr <= ufp_addr;
        @(posedge clk);

        // Populate next 20 lines with random data
        for (int i = 0; i < 20; i++) begin
            allocate_memory();
            ufp_addr <= ufp_addr + 32'd32;
        end

        for (int i = 0; i < 10; i++) begin
            ufp_rmask <= '0;
            repeat (15) @(posedge clk);
            ufp_addr <= start_ufp_addr;
            @(posedge clk);
            // Send read request
            ufp_rmask <= '1;

            for (int j = 0; j < 150; j++) begin
                // Get data from physical memory to check
                mem_data_check <= phys_mem.internal_memory_array[ufp_addr[31:5]][(8*ufp_addr[4:0]) +: 32];

                @(posedge clk);

                // Increment address to next section
                ufp_addr <= ufp_addr + 32'd4;

                // Get response
                if (!ufp_resp)
                    @(posedge clk iff |ufp_resp);

                // Check for correctness of data
                if (ufp_rdata != mem_data_check) begin
                    $error("TB Error: Data read mismatch");
                    $fatal;
                end
            end
        end

        ufp_rmask <= '0;

    endtask : inc_read;

    // Sending a random address to write (miss)
    task random_write_miss();
        // Send random address with aligned bits
        std::randomize(ufp_addr) with {ufp_addr[1:0] == 2'b00;};
        allocate_memory();

        refresh_time(50);
        
        // Send write request
        pause <= 0;
        ufp_wmask <= '1;
        std::randomize(ufp_wdata);
        mem_data_check <= ufp_wdata;
        @(posedge clk iff |ufp_resp);
        ufp_wmask <= '0;

        // Read and check if memory matches
        pause <= 1;
        refresh_time(5);
        pause <= 0;
        ufp_rmask <= '1;

        @(posedge clk iff |ufp_resp);
        ufp_rmask <= '0;
        // Check for correctness of data
        if (ufp_rdata != mem_data_check) begin
            $error("TB Error: Data read mismatch");
            $fatal;
        end

        // Refresh time
        pause <= 1;
        refresh_time(200);
    endtask : random_write_miss;

    // Sending a random address to write with halves
    task random_write_half_miss();
        // Send random address with aligned bits
        std::randomize(ufp_addr) with {ufp_addr[1:0] == 2'b00;};
        allocate_memory();

        refresh_time(50);
        
        // Send write request
        pause <= 0;
        ufp_wmask <= 4'b0011;
        std::randomize(ufp_wdata);
        mem_data_check[15:0] <= ufp_wdata[15:0];
        @(posedge clk iff |ufp_resp);
        ufp_wmask <= '0;

        // Read and check if memory matches
        pause <= 1;
        refresh_time(5);
        pause <= 0;
        ufp_rmask <= '1;

        @(posedge clk iff |ufp_resp);
        ufp_rmask <= '0;
        // Check for correctness of data
        if (ufp_rdata != mem_data_check) begin
            $error("TB Error: Data read mismatch");
            $fatal;
        end

        // Refresh time
        pause <= 1;
        refresh_time(200);
    endtask : random_write_half_miss;

    // Sending a random address to write multiple times and test writeback correctness
    task random_writeback();
        // Reset is important for this
        gen_rst();

        // Send random address with aligned bits
        std::randomize(ufp_addr) with {ufp_addr[4:0] == 5'b00000;};
        wb_addr <= ufp_addr;
        allocate_memory();
        wb_data_check <= mem_data;
        @(posedge clk);

        // Write every part of the cacheline
        ufp_wmask <= '1;
        for (int i = 0; i < 7; i++) begin
            std::randomize(ufp_wdata);
            wb_data_check[(8*ufp_addr[4:0]) +: 32] <= ufp_wdata;
            @(posedge clk iff |ufp_resp);
            ufp_addr <= ufp_addr + 32'd4;
            @(posedge clk);
        end

        ufp_wmask <= '0;
        await_wb = 1;
        ufp_rmask <= '1;
        // Make random read request until old data is written back
        while (await_wb) begin
            std::randomize(ufp_addr) with {ufp_addr[1:0] == 2'b00;};
            allocate_memory();
            @(posedge clk iff (|ufp_resp || |dut.dfp_write));
            if (dut.dfp_write)
                await_wb = 0;
        end

        ufp_rmask <= '0;
        // Wait for instruction to finish
        @(posedge clk iff |ufp_resp);
        wb_internal_data_check <= phys_mem.internal_memory_array[wb_addr[31:5]];
        @(posedge clk);

        // Compare new cache line data with writeback data
        if (wb_data_check != wb_internal_data_check) begin
            $error("TB Error: Data read mismatch");
            $fatal;
        end

    endtask : random_writeback;

    // Sending addresses incrementing in memory then loops back
    task inc_write();
        // Send random starting address with aligned bits
        std::randomize(ufp_addr) with {ufp_addr[1:0] == 2'b00;};

        start_ufp_addr <= ufp_addr;
        @(posedge clk);

        // Populate next 20 lines with random data
        for (int i = 0; i < 20; i++) begin
            allocate_memory();
            ufp_addr <= ufp_addr + 32'd32;
        end

        for (int i = 0; i < 10; i++) begin
            ufp_wmask <= '0;
            repeat (15) @(posedge clk);
            ufp_addr <= start_ufp_addr;
            @(posedge clk);
            // Send write request
            ufp_wmask <= '1;

            for (int j = 0; j < 150; j++) begin
                @(posedge clk);

                // Increment address to next section
                ufp_addr <= ufp_addr + 32'd4;

                // Get response
                if (!ufp_resp)
                    @(posedge clk iff |ufp_resp);
            end
        end

        ufp_wmask <= '0;

    endtask : inc_write;

    //---------------------------------------------------------------------------------
    // TODO: Main initial block that calls your tasks, then calls $finish
    //---------------------------------------------------------------------------------

    initial begin
        // Set up inputs
        ufp_addr <= '0;
        ufp_rmask <= '0;
        ufp_wmask <= '0;
        ufp_wdata <= '0;
        gen_mem <= '0;

        gen_rst();

        // Reads
        repeat (200) 
            random_read_miss();

        gen_rst();

        repeat (200)
            random_read_hit();

        inc_read();

        gen_rst();

        // Writes

        repeat (200)
            random_write_miss();

        inc_write();

        repeat (200)
            random_write_half_miss();

        random_writeback();


        // Finish up
        $display("Testbench finished!");
        $finish;
    end

    always_ff @(posedge clk) begin
        if (refresh) timeout <= time_start;
        else if (pause) timeout <= timeout;
        else timeout <= timeout - 1;

        if (timeout == 0) begin
            $error("TB Error: Timed out");
            $fatal;
        end
    end

endmodule : top_tb
