module cache (
    input   logic           clk,
    input   logic           rst,

    // cpu side signals, ufp -> upward facing port
    input   logic   [31:0]  ufp_addr,
    input   logic   [3:0]   ufp_rmask,
    input   logic   [3:0]   ufp_wmask,
    output  logic   [31:0]  ufp_rdata,
    input   logic   [31:0]  ufp_wdata,
    output  logic           ufp_resp,

    // memory side signals, dfp -> downward facing port
    output  logic   [31:0]  dfp_addr,
    output  logic           dfp_read,
    output  logic           dfp_write,
    input   logic   [255:0] dfp_rdata,
    output  logic   [255:0] dfp_wdata,
    input   logic           dfp_resp
);
    // Control signals
    logic [1:0]     allocate;       // Indicates if system is currently trying to allocate new memory into cache
    logic           hit;            // Indicates if hit occurs (cache is ready for new inputs)
    logic           write_hit;      // Indicates a write hit is currently happening
    logic           write_stall;    // Indicates that request was stalled one cycle due to pending write request
    logic           dmiss;          // Indicates a dirty miss
    logic           writeback;      // Indicates if writeback from dirty miss occurred
    
    //  Way selection
    logic [3:0]     way_sel;        // Selects which way to send data from according to hit detection
    logic [3:0]     way_evict;      // Shows which way should be evicted
    logic [3:0]     way_we;         // Selects which way to write into

    // Cache signals
    logic           cache_active;   // Used to determine if cache should start comparing
    logic           cache_req;      // Used to determine if there's an incoming cache request
    
    logic [31:0]    cache_addr;
    logic [22:0]    cache_tag;
    logic [3:0]     cache_set;
    logic [4:0]     cache_offset;

    assign cache_tag = cache_addr[31:9];
    assign cache_set = cache_addr[8:5];
    assign cache_offset = cache_addr[4:0];

    // Registers to capture values
    logic [31:0]    saved_ufp_addr;   
    logic [22:0]    saved_ufp_tag;
    logic [3:0]     saved_ufp_set;
    logic [4:0]     saved_ufp_offset;

    assign saved_ufp_tag = saved_ufp_addr[31:9];
    assign saved_ufp_set = saved_ufp_addr[8:5];
    assign saved_ufp_offset = saved_ufp_addr[4:0];

    logic [3:0]     saved_ufp_rmask;
    logic [3:0]     saved_ufp_wmask;
    logic [31:0]    saved_ufp_wdata;
    logic [255:0]   saved_dfp_data; 
    
    // Data array signals
    logic [255:0]   data_in;
    logic [255:0]   data_out[4];
    logic [31:0]    data_wmask;

    // Tag array signals
    logic [22:0]    tag_out[4];
    logic [3:0]     dirty_in;
    logic [3:0]     dirty_out;

    // Valid array signals
    logic [3:0]     valid_out;

    // LRU array signals
    logic           lru_we1;
    logic [2:0]     lru_in1;
    logic [2:0]     lru_out0;
    logic [2:0]     lru_out1;

    // UFP/DFP input signal capture
    always_ff @(posedge clk) begin
        if (rst) begin
            // Reset registers
            saved_ufp_addr <= '0;
            saved_ufp_rmask <= '0;
            saved_ufp_wmask <= '0;
            saved_ufp_wdata <= '0;
            saved_dfp_data <= '0;
        end
        else begin
            // Captures requested UFP data upon new request from UFP if ready (not stalling)
            if (!cache_active || hit) begin
                saved_ufp_addr <= ufp_addr;
                saved_ufp_rmask <= ufp_rmask;
                saved_ufp_wmask <= ufp_wmask;
                saved_ufp_wdata <= ufp_wdata;
            end
            else begin
                saved_ufp_addr <= saved_ufp_addr;
                saved_ufp_rmask <= saved_ufp_rmask;
                saved_ufp_wmask <= saved_ufp_wmask;
                saved_ufp_wdata <= saved_ufp_wdata;
            end

            // If dfp response from clean miss is coming, save it
            if (dfp_resp && !dmiss)
                saved_dfp_data <= dfp_rdata;
            else
                saved_dfp_data <= saved_dfp_data;
        end
    end

    // Control signals
    always_ff @(posedge clk) begin
        if (rst) begin
            cache_active <= 1'b0;
            allocate <= '0;
            write_stall <= 1'b0;
            writeback <= 1'b0;
        end
        else begin
            // Start caching sequence when request comes in, stop when hit is produced
            if (cache_req)
                cache_active <= 1'b1;
            else if (hit)
                cache_active <= 1'b0;
            else 
                cache_active <= cache_active;
            
            // Update allocate value based on current state in allocation
            if (dfp_resp && !dmiss)
                allocate <= 2'b01;      // Making an allocation to cache
            else if (allocate[0])
                allocate <= 2'b10;      // Post-allocation state
            else
                allocate <= 2'b00;      // No allocation

            // Indicates that write stall must occur if a cache request and write hit is currently happening
            if (cache_req && write_hit)
                write_stall <= 1'b1;
            else   
                write_stall <= 1'b0;

            // Determines if writeback occurred after dirty miss
            if (allocate[0])
                writeback <= 1'b0;
            else if (dmiss && dfp_resp)
                writeback <= 1'b1;
            else
                writeback <= writeback;
        end
    end

    // Cache requesting
    always_comb begin
        // Only use incoming cache address when cache is ready and not hit writing
        if (!cache_active || (hit && !write_hit))
            cache_addr = ufp_addr;
        else
            cache_addr = saved_ufp_addr;

        // Incoming cache request is pending if rmask and wmask is high
        if (|ufp_rmask || |ufp_wmask)
            cache_req = 1'b1;
        else   
            cache_req = 1'b0;

        // Assign dirty miss signal if evicted way is dirty, turns off after writeback
        if (!hit && !allocate[0] && |(way_evict & dirty_out & valid_out) && !writeback)
            dmiss = 1'b1;
        else
            dmiss = 1'b0;
    end

    generate for (genvar i = 0; i < 4; i++) begin : arrays
        mp_cache_data_array data_array (
            .clk0       (clk),                                                      
            .csb0       (1'b0),     
            .web0       (!way_we[i]),
            .wmask0     (data_wmask),                                
            .addr0      (cache_set),
            .din0       (data_in),
            .dout0      (data_out[i])
        );
        mp_cache_tag_array tag_array (
            .clk0       (clk),
            .csb0       (1'b0),     
            .web0       (!way_we[i]),
            .addr0      (cache_set),
            .din0       ({dirty_in[i], cache_tag}),                                   
            .dout0      ({dirty_out[i], tag_out[i]})
        );
        valid_array valid_array (
            .clk0       (clk),
            .rst0       (rst),
            .csb0       (1'b0),       
            .web0       (!way_we[i]),   // We want new valid data when we're about to compare
            .addr0      (cache_set),
            .din0       (1'b1),
            .dout0      (valid_out[i])
        );
    end endgenerate

    lru_array lru_array (   // Port 0 = read, Port 1 = write
        .clk0       (clk),
        .rst0       (rst),
        .csb0       (1'b0),
        .web0       (1'b1),            
        .addr0      (cache_set),
        .din0       (3'b000),
        .dout0      (lru_out0),     
        .csb1       (!hit),
        .web1       (!lru_we1),
        .addr1      (saved_ufp_set),    // We only want to write to the PLRU from previous cache request
        .din1       (lru_in1),
        .dout1      (lru_out1)
    );

    // Check outputs of cache request and update read and write signals accordingly
    always_comb begin
        lru_we1 = '0;
        lru_in1 = 'x;

        ufp_resp = 1'b0;
        ufp_rdata = 'x;

        dfp_read = 1'b0;
        dfp_write = 1'b0;
        dfp_wdata = 'x;
        dfp_addr = 'x;

        data_in = 'x;
        data_wmask = '0;
        way_we = '0;
        dirty_in = (dirty_out & valid_out);
        write_hit = 1'b0;

        hit = 1'b0;

        // When cache is active, start caching sequence
        if (cache_active && !write_stall) begin
            // Compare tags
            for (int i = 0; i < 4; i++) // We should only have 1 way selected, otherwise something must've gone wrong
                way_sel[i] = (saved_ufp_tag == tag_out[i] && valid_out[i]) ? 1'b1 : 1'b0;
            hit = (way_sel == 4'b0000) ? 1'b0 : 1'b1;

            // If hit, update LRU and send response and data back
            if (hit) begin
                unique case (way_sel)
                    4'b0001: lru_in1 = (lru_out0 & (3'b001)); 
                    4'b0010: lru_in1 = (lru_out0 & (3'b001)) | (3'b010);
                    4'b0100: lru_in1 = (lru_out0 & (3'b010)) | (3'b100);
                    4'b1000: lru_in1 = (lru_out0 & (3'b010)) | (3'b101); 
                    default: lru_in1 = 'x;  // This shouldn't happen
                endcase
                lru_we1 = '1;
                
                // Send specific data depending on if operation was an allocate or not
                if (allocate[1]) begin
                    ufp_rdata = saved_dfp_data[8*saved_ufp_offset +: 32];
                end
                else begin
                    unique case (way_sel)
                        4'b0001: ufp_rdata = data_out[0][8*saved_ufp_offset +: 32];
                        4'b0010: ufp_rdata = data_out[1][8*saved_ufp_offset +: 32];
                        4'b0100: ufp_rdata = data_out[2][8*saved_ufp_offset +: 32];
                        4'b1000: ufp_rdata = data_out[3][8*saved_ufp_offset +: 32];
                        default: ufp_rdata = 'x;    // This shouldn't happen
                    endcase
                end
                ufp_resp = 1'b1;
                
                // Write request
                if (|saved_ufp_wmask) begin
                    write_hit = 1'b1;
                    // Write to selected way
                    way_we = way_sel;
                    data_in[8*saved_ufp_offset +: 32] = saved_ufp_wdata;
                    // Or mask dirty input with way selected
                    dirty_in = way_sel | (dirty_out & valid_out);
                    data_wmask[saved_ufp_offset +: 4] |= saved_ufp_wmask;
                end
            end
            // Clean miss (or after writeback)
            else if (!allocate[0] && !dmiss) begin
                dfp_read = 1'b1;
                dfp_addr = {saved_ufp_addr[31:5], 5'b00000};
            end
            // Dirty miss
            else if (!allocate[0] && dmiss) begin
                dfp_write = 1'b1;
                // Select data based on evicted block data
                unique case (way_evict)
                    4'b0001: dfp_wdata = data_out[0];
                    4'b0010: dfp_wdata = data_out[1];
                    4'b0100: dfp_wdata = data_out[2];
                    4'b1000: dfp_wdata = data_out[3];
                    default: dfp_wdata = 'x;    // This shouldn't happen
                endcase
                // Select address based on evicted block tag
                unique case (way_evict)
                    4'b0001: dfp_addr = {tag_out[0], saved_ufp_set, 5'b00000};
                    4'b0010: dfp_addr = {tag_out[1], saved_ufp_set, 5'b00000};
                    4'b0100: dfp_addr = {tag_out[2], saved_ufp_set, 5'b00000};
                    4'b1000: dfp_addr = {tag_out[3], saved_ufp_set, 5'b00000};
                    default: dfp_addr = 'x;     // This shouldn't happen
                endcase
            end
            
            // Allocation (two cycles)
            if ((dfp_resp && !dmiss) || allocate[0]) begin
                way_we = way_evict;
                data_in = saved_dfp_data;
                // Mask out evicted dirty bit to make clean
                dirty_in = ~way_evict & (dirty_out & valid_out);
                // Write entire line
                data_wmask = '1;
            end
        end
    end

    // Way evict selection
    always_comb begin
        way_evict = '0;
        if (!hit) begin
            unique case (lru_out0)
                3'b000: way_evict[3] = 1'b1;
                3'b001: way_evict[2] = 1'b1;
                3'b010: way_evict[3] = 1'b1;
                3'b011: way_evict[2] = 1'b1;
                3'b100: way_evict[1] = 1'b1;
                3'b101: way_evict[1] = 1'b1;
                3'b110: way_evict[0] = 1'b1;
                3'b111: way_evict[0] = 1'b1;
            endcase
        end
    end

endmodule

