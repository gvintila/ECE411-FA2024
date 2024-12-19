import "DPI-C" function string getenv(input string env_name);

module simple_memory_256_wo_mask #(
    parameter DELAY = 10
)(
    // Memory interface
    mem_itf_wo_mask.mem itf,

    // Address to generate memory for
    input logic         gen_mem,
    input logic [31:0]  mem_addr,
    input logic [255:0] mem_data
);

    logic [255:0]   internal_memory_array [logic [31:5]];

    enum int {
        MEMORY_STATE_IDLE,
        MEMORY_STATE_READ,
        MEMORY_STATE_WRITE
    } state;

    int delay_counter;

    always_ff @(posedge itf.clk) begin
        if (itf.rst) begin
            state <= MEMORY_STATE_IDLE;
            delay_counter <= '0;
            itf.resp[0] <= 1'b0;
            itf.rdata[0] <= 'x;
        end else begin
            itf.resp[0] <= 1'b0;
            itf.rdata[0] <= 'x;
            unique case (state)
            MEMORY_STATE_IDLE: begin
                if (itf.read[0]) begin
                    state <= MEMORY_STATE_READ;
                    delay_counter <= DELAY;
                end
                if (itf.write[0]) begin
                    state <= MEMORY_STATE_WRITE;
                    delay_counter <= DELAY;
                end
            end
            MEMORY_STATE_READ: begin
                delay_counter <= delay_counter - 1;
                if (delay_counter == 2) begin
                    itf.resp[0] <= 1'b1;
                    itf.rdata[0] <= internal_memory_array[itf.addr[0][31:5]];
                end
                if (delay_counter == 1) begin
                    state <= MEMORY_STATE_IDLE;
                end
            end
            MEMORY_STATE_WRITE: begin
                delay_counter <= delay_counter - 1;
                if (delay_counter == 2) begin
                    itf.resp[0] <= 1'b1;
                end
                if (delay_counter == 1) begin
                    internal_memory_array[itf.addr[0][31:5]] = itf.wdata[0];
                    state <= MEMORY_STATE_IDLE;
                end
            end
            endcase
        end
    end

    logic [31:0] cached_addr;

    always_ff @(posedge itf.clk) begin
        if (itf.read[0] || itf.write[0]) begin
            cached_addr <= itf.addr[0];
        end
    end

    always @(posedge itf.clk iff !itf.rst) begin
        if ($isunknown(itf.read[0]) || $isunknown(itf.write[0])) begin
            $error("Memory Error: control containes 'x");
            itf.error <= 1'b1;
        end
        if ((itf.read[0]) && (itf.write[0])) begin
            $error("Memory Error: simultaneous memory read and write");
            itf.error <= 1'b1;
        end
        if ((itf.read[0]) || (itf.write[0])) begin
            if ($isunknown(itf.addr[0])) begin
                $error("Memory Error: address contained 'x");
                itf.error <= 1'b1;
            end
            if (itf.addr[0][4:0] != 5'b00000) begin
                $error("Memory Error: address is not 256-bit aligned");
                itf.error <= 1'b1;
            end
        end

        case (state)
        MEMORY_STATE_READ: begin
            if (itf.addr[0] != cached_addr) begin
                $error("Memory Error: address changed");
                itf.error <= 1'b1;
            end
            if (!itf.read[0]) begin
                $error("Memory Error: control changed");
                itf.error <= 1'b1;
            end
        end
        MEMORY_STATE_WRITE: begin
            if (itf.addr[0] != cached_addr) begin
                $error("Memory Error: address changed");
                itf.error <= 1'b1;
            end
            if (!itf.write[0]) begin
                $error("Memory Error: control changed");
                itf.error <= 1'b1;
            end
        end
        endcase
    end

    always @(posedge itf.clk iff itf.rst) begin
        // Read from mem file
        automatic string memfile = getenv("ECE411_MEMFILE");
        internal_memory_array.delete();
        $readmemh(memfile, internal_memory_array);
    end

    always @(posedge itf.clk iff gen_mem) begin
        // Input random data into specified memory address
        internal_memory_array[mem_addr[31:5]] <= mem_data;
    end

endmodule
