module fifo_tb (output logic done, output logic error);
    

    localparam int FTB_DATA_WIDTH   = 32;
    localparam int FTB_QUEUE_DEPTH  = 5;

    mem_fifo #(.DATA_WIDTH(FTB_DATA_WIDTH)) mem_itf(.*);

    bit clk;
    initial clk = 1'b1;
    always #2ns clk = ~clk;
    int timeout = 5000;

    initial done = 1'b0;
    initial error = 1'b0;

    bit rst;

    fifo #(.DATA_WIDTH(FTB_DATA_WIDTH), .QUEUE_DEPTH(FTB_QUEUE_DEPTH)) dut (
        .clk            (clk),
        .rst            (rst),
    
        .enqueue(mem_itf.enqueue),
        .dequeue(mem_itf.dequeue),
        .wdata(mem_itf.wdata),
        .rdata(mem_itf.rdata),
        .full(mem_itf.full),
        .empty(mem_itf.empty),
        .*
    );

    task empty_q();
        @(posedge clk);

        while (!mem_itf.empty) begin
            mem_itf.dequeue <= 1'b1;
            @(posedge clk);
        end

        mem_itf.dequeue <= 1'b0;
        @(posedge clk);
    endtask

    task check_dequeue(input bit[31:0] val);
        @(posedge clk);
        if (mem_itf.rdata != val) begin
            $error("FIFO TB Error: wrong data read");
            $display("\t->Expect:%h Got:%h", val, mem_itf.rdata);
            error = 1'b1;
        end
    endtask

    task check_empty(input bit val);
        @(posedge clk);
        if (mem_itf.empty!= val) begin
            $error("FIFO TB Error: wrong empty signal read");
            $display("\t->Expect:%h Got:%h", val, mem_itf.empty);
            error = 1'b1;
        end
    endtask

    // Testing popping immediately after pushing to
    // Empty queue
    task test_push_while_empty(input bit[31:0] wdata);
        empty_q();

        mem_itf.wdata   <= wdata;
        mem_itf.enqueue <= 1'b1;
        @(posedge clk);
        mem_itf.wdata   <= '0;
        mem_itf.enqueue <= 1'b0;
        mem_itf.dequeue <= 1'b1;
        fork check_dequeue(wdata); join_none
        @(posedge clk);
        mem_itf.dequeue <= 1'b0;
        @(posedge clk);
    endtask

    // Testing enqueue and dequeue high while
    // full signal is high and rdata matches
    // expected
    task test_push_pop_while_full();
        empty_q();

        @(posedge clk);
        while (!mem_itf.full) begin
            mem_itf.wdata   <= 32'h1;
            mem_itf.enqueue <= 1'b1;
            @(posedge clk);
        end

        @(posedge clk);
        mem_itf.wdata   <= 32'h8008135;
        mem_itf.enqueue <= 1'b1;
        mem_itf.dequeue <= 1'b1;
        @(posedge clk);
        for (int i = 0; i < FTB_QUEUE_DEPTH-1; i++) begin
            mem_itf.wdata   <= 32'h5;
            mem_itf.enqueue <= 1'b1;
            mem_itf.dequeue <= 1'b1;
            fork check_dequeue(32'h1); join_none
            @(posedge clk);
        end
        mem_itf.wdata   <= 32'h5;
        mem_itf.enqueue <= 1'b1;
        mem_itf.dequeue <= 1'b1;
        fork check_dequeue(32'h8008135); join_none
        @(posedge clk);
        mem_itf.wdata   <= 32'h5;
        mem_itf.enqueue <= 1'b1;
        mem_itf.dequeue <= 1'b1;
        fork check_dequeue(32'h5); join_none
        @(posedge clk);
        mem_itf.dequeue <= 1'b0;
        mem_itf.enqueue <= 1'b0;
        @(posedge clk);
    endtask

    // Test popping while empty
    // Expected behavior is no value gets pushed
    // if pushing and popping at same time while 
    // empty
    task test_pop_while_empty();
        @(posedge clk);
        empty_q();
        @(posedge clk);
        mem_itf.dequeue <= 1'b1;
        @(posedge clk);
        @(posedge clk);
        mem_itf.wdata   <= 32'h8008135;
        mem_itf.enqueue <= 1'b1;
        @(posedge clk);
        mem_itf.enqueue <= 1'b0;
        fork check_empty(1'b1); join_none

        @(posedge clk);
        mem_itf.dequeue <= 1'b0;
        mem_itf.enqueue <= 1'b0;
        @(posedge clk);
    endtask

    // Test pushing while full
    // Expected behavior is no new value
    // to be pushed if pushing while full
    // if not dequeueing.
    task test_push_while_full();
        @(posedge clk);
        empty_q();

        @(posedge clk);
        while (!mem_itf.full) begin
            mem_itf.wdata   <= 32'h1;
            mem_itf.enqueue <= 1'b1;
            @(posedge clk);
        end

        mem_itf.wdata   <= 32'hdead;
        mem_itf.enqueue <= 1'b1;

        @(posedge clk);
        @(posedge clk);

        mem_itf.enqueue <= 1'b0;

        @(posedge clk);

        while (!mem_itf.empty) begin
            mem_itf.dequeue <= 1'b1;
            fork check_dequeue(32'h1); join_none
            @(posedge clk);
        end

        mem_itf.dequeue <= 1'b0;

        @(posedge clk);
        mem_itf.dequeue <= 1'b0;
        mem_itf.enqueue <= 1'b0;
        @(posedge clk);
    endtask

    task push(input bit[31:0] wdata);
        @(posedge clk);
        mem_itf.wdata   <= wdata;
        mem_itf.enqueue <= 1'b1;
        @(posedge clk);
        mem_itf.wdata   <= '0;
        mem_itf.enqueue <= 1'b0;
    endtask

    task pop();
        @(posedge clk);
        mem_itf.dequeue <= 1'b1;
        @(posedge clk);
        mem_itf.dequeue <= 1'b0;
    endtask

    task push_pop(input bit[31:0] wdata);
        @(posedge clk);
        mem_itf.wdata   <= wdata;
        mem_itf.enqueue <= 1'b1;
        @(posedge clk);
        mem_itf.wdata   <= '0;
        mem_itf.enqueue <= 1'b0;
        mem_itf.dequeue <= 1'b1;
        @(posedge clk);
        mem_itf.dequeue <= 1'b0;
    endtask

    task consecutive_pop();
        @(posedge clk);
        mem_itf.dequeue <= 1'b1;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        mem_itf.dequeue <= 1'b0;
    endtask

    task simulteneous_push_pop(input bit[31:0] wdata);
        @(posedge clk);
        mem_itf.wdata   <= 'x;
        mem_itf.dequeue <= 1'b0;
        mem_itf.enqueue <= 1'b0;
        @(posedge clk);
        mem_itf.wdata   <= wdata;
        mem_itf.dequeue <= 1'b1;
        mem_itf.enqueue <= 1'b1;
        @(posedge clk);
        mem_itf.wdata   <= 'x;
        mem_itf.dequeue <= 1'b0;
        mem_itf.enqueue <= 1'b0;
    endtask

    task consecutive_push(input bit[31:0] wdata, input bit[31:0] wdata2, input bit[31:0] wdata3, input bit[31:0] wdata4);
        @(posedge clk);
        mem_itf.wdata   <= wdata;
        mem_itf.enqueue <= 1'b1;
        @(posedge clk);
        mem_itf.wdata   <= wdata2;
        @(posedge clk);
        mem_itf.wdata   <= wdata3;
        @(posedge clk);
        mem_itf.wdata   <= wdata4;
        @(posedge clk);
        mem_itf.wdata   <= '0;
        mem_itf.enqueue <= 1'b0;
    endtask

    always @(posedge clk) begin
        if (timeout == 0) begin
            $error("FIFO TB Error: Timed out");
            error = 1'b1;
        end
        timeout <= timeout - 1;
    end

    initial begin
        rst = 1'b1;
        mem_itf.enqueue <= 1'b0;
        mem_itf.dequeue <= 1'b0;
        repeat(5) @(posedge clk);
        rst <= 1'b0;

        // EDGE CASE TESTS
        test_push_while_empty(32'h8008135);
        test_push_pop_while_full();
        test_pop_while_empty();
        test_push_while_full();

        // VISUALLY INSPECT FOR CORRECTNESS
        simulteneous_push_pop(32'h0000_000f);

        push_pop(32'h0000_0001);

        push(32'h0000_0001);
        simulteneous_push_pop(32'h0000_000f);
        push(32'h0000_0002);
        push(32'h0000_0003);
        push(32'h0000_0004);
        push(32'h0000_000a);
        push(32'h0000_000b);
        simulteneous_push_pop(32'h0000_00ff);
        pop();
        pop();
        pop();
        pop();
        pop();

        consecutive_push(32'h0000_0005, 32'h0000_0006, 32'h0000_0007, 32'h0000_0008);
        consecutive_pop();
        

        // push(16'h0001);
        // push(16'h0002);
        // push(16'h0003);
        // push(16'h0004);
        // push(16'h000a);
        // push(16'h000b);
        // pop();
        // pop();
        // pop();
        // pop();
        // pop();

        // consecutive_push(16'h0005, 16'h0006, 16'h0007, 16'h0008);
        // consecutive_pop();

        $display("FIFO TB Finished!");
        done = 1'b1;


    end

endmodule : fifo_tb
