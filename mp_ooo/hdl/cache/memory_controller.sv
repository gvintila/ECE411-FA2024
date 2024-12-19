/*
 *  The memory controller module will take data requests from icache/dcache and
 *  match them with the current tags in the buffer controllers for prefetching.
 *  If data is not found within buffers, eviction will occur and new data requests will be
 *  made to DRAM. New data requests should always be occuring from SBs.
 *  The MC will route these data requests to the data request table (DRT) which will
 *  keep track of pending requests that were sent to DRAM.
 */
module memory_controller    // MC
import rv32i_types::*;
import params::*;
(
    input   logic                               clk,
    input   logic                               rst,

    // Memory Controller <- I-Cache
    input   logic   [31:0]                      icache_dfp_addr,
    input   logic                               icache_dfp_read,
    input   logic                               icache_dfp_write,   // No writes will happen from I-Cache
    input   logic   [255:0]                     icache_dfp_wdata,  

    // Memory Controller -> I-Cache
    output  logic   [255:0]                     icache_dfp_rdata,
    output  logic                               icache_dfp_resp,

    // Memory Controller <- D-Cache
    input   logic   [31:0]                      dcache_dfp_addr,
    input   logic                               dcache_dfp_read,
    input   logic                               dcache_dfp_write,
    input   logic   [255:0]                     dcache_dfp_wdata,  

    // Memory Controller -> D-Cache
    output  logic   [255:0]                     dcache_dfp_rdata,
    output  logic                               dcache_dfp_resp,

    // Memory Controller <- Adapter
    input   logic                               cl_ready, 
    input   logic   [31:0]                      cl_raddr,
    input   logic   [255:0]                     cl_rdata,   // mc_rdata
    input   logic                               cl_resp,    // mc_resp

    // Memory Controller -> Adapter
    output  logic   [31:0]                      mc_addr,
    output  logic                               mc_read,
    output  logic                               mc_write,
    output  logic   [255:0]                     mc_wdata
);

    /*** LINT ERROR BEGONE **********/
        logic foo;
    assign foo = |icache_dfp_wdata || |icache_dfp_write;
    /*** LINT ERROR BEGONE **********/


/*
 *  After reset, no SBs should be making any requests.
 *  After first request from cache comes in, one of SBs will be evicted
 *  and new request will be sent to DRAM according to address
 *  (missed tags aren't sent to DRT because they're always held high by cache)
 *  Eviction will cause new SB to spawn prefetching new addresses based on missed tag.
 */

// Control
memcontroller_t                 icbc_state;   
memcontroller_t                 dcbc_state;
logic                           icache_busy; 
logic                           dcache_busy;  
logic                           sram_busy;
// logic                           bc_rr; // round robin
logic                           icbc_drt_req_real;
logic                           dcbc_drt_req_real;

// CL
logic                           cl_resp_reg;
logic   [26:0]                  cl_raddr_reg;
logic   [255:0]                 cl_rdata_reg;

// ICBC
logic   [26:0]                  icbc_tag_in;
logic                           icbc_read;
logic                           icbc_hit;
logic                           icbc_sram_data_ready;
logic                           icbc_mc_data_ready;
logic   [SB_HIBIT : 0]          icbc_hit_index, icbc_hit_index_reg;
logic                           icbc_hit_line, icbc_hit_line_reg;

logic                           icbc_drt_req;
logic                           icbc_line_out;
logic   [26:0]                  icbc_tag_out;
logic   [SB_HIBIT : 0]          icbc_index_out;
logic   [1:0]                   drt_icbc_req_resp;

logic   [1:0]                   icbc_evict_line;

logic   [1:0]                   drt_icbc_data_resp;
logic   [26:0]                  drt_icbc_tag_in;
logic   [255:0]                 icbc_data_in;
logic   [SB_HIBIT : 0]          icbc_index_in;

// DCBC
logic   [26:0]                  dcbc_tag_in;
logic                           dcbc_read;
logic                           dcbc_write;
logic                           dcbc_hit;
logic                           dcbc_sram_data_ready;
logic                           dcbc_mc_data_ready;
logic   [SB_HIBIT : 0]          dcbc_hit_index, dcbc_hit_index_reg;
logic                           dcbc_hit_line, dcbc_hit_line_reg;

logic                           dcbc_drt_req;
logic                           dcbc_line_out;
logic   [26:0]                  dcbc_tag_out;
logic   [SB_HIBIT : 0]          dcbc_index_out;
logic   [1:0]                   drt_dcbc_req_resp;

logic   [1:0]                   dcbc_evict_line;

logic   [1:0]                   drt_dcbc_data_resp;
logic   [26:0]                  drt_dcbc_tag_in;
logic   [255:0]                 dcbc_data_in;
logic   [SB_HIBIT : 0]          dcbc_index_in;

// DRT
logic                           drt_request;
logic   [26:0]                  drt_tag_in;
logic                           drt_cache_in;  
logic                           drt_line_in;
logic   [SB_HIBIT : 0]          drt_index_in;
logic                           drt_ready;

logic   [26:0]                  drt_tag_out;
logic                           drt_cache_out;
logic                           drt_line_out;
logic   [SB_HIBIT : 0]          drt_index_out;
logic                           drt_valid_req;

// Data Buffer
logic                           dbuf_web0;
logic   [3:0]                   dbuf_addr0;
logic   [255:0]                 dbuf_head_data;


icache_buffer_controller icache_buffer_controller(.*);

dcache_buffer_controller dcache_buffer_controller(.*);

data_request_table data_request_table(.*);

cache_buffer_data_array cache_buffer_data_array(
    .clk0(clk),
    .csb0(1'b0),
    .web0(dbuf_web0),
    .addr0(dbuf_addr0),
    .din0(cl_rdata_reg),
    .dout0(dbuf_head_data)
);

// Control
always_ff @(posedge clk) begin
    if (rst) begin
        icbc_state              <= s_mc_bc_idle;
        icbc_tag_in             <= 'x;

        dcbc_state              <= s_mc_bc_idle;
        dcbc_tag_in             <= 'x;
    end
    else begin
        unique case (icbc_state)
            s_mc_bc_idle: begin
                if (icache_dfp_read) begin
                    icbc_state  <= s_mc_bc_rcmp;
                    icbc_tag_in <= icache_dfp_addr[31:5];  
                end
                else begin
                    icbc_tag_in <= 'x;
                end
            end
            s_mc_bc_rcmp: begin
                if (icache_dfp_resp)
                    icbc_state  <= s_mc_bc_idle;
                else if (icbc_hit && icbc_sram_data_ready && !sram_busy)
                    icbc_state  <= s_mc_bc_await_sram;
                else if (icbc_hit && icbc_sram_data_ready && sram_busy)
                    icbc_state  <= s_mc_bc_stall_sram;
                else if ((icbc_hit && !icbc_sram_data_ready) || cl_ready)
                    icbc_state  <= s_mc_bc_await_bmem;
                else
                    icbc_state  <= s_mc_bc_stall_bmem;
            end
            // SRAM was busy by MC and stalled response, gonna be available next cycle
            s_mc_bc_stall_sram: begin
                icbc_state  <= s_mc_bc_await_sram;
            end
            // BMEM is stalling and not ready for new requests
            s_mc_bc_stall_bmem: begin
                if (cl_ready)
                    icbc_state  <= s_mc_bc_await_bmem;
            end
            // Sent request and awaiting response from BMEM
            s_mc_bc_await_bmem: begin
                if (icache_dfp_resp)
                    icbc_state  <= s_mc_bc_idle;
            end
            default: begin
                icbc_state      <= s_mc_bc_idle;
            end
        endcase

        unique case (dcbc_state)
            // Always prioritize icache over dcache
            s_mc_bc_idle: begin
                if (dcache_dfp_read) begin
                    dcbc_state  <= s_mc_bc_rcmp;
                    dcbc_tag_in <= dcache_dfp_addr[31:5];  
                end
                else if (dcache_dfp_write) begin
                    dcbc_state  <= s_mc_bc_write;
                    dcbc_tag_in <= dcache_dfp_addr[31:5];  
                end
                else
                    dcbc_tag_in <= 'x;
            end
            s_mc_bc_rcmp: begin
                if (dcache_dfp_resp)
                    dcbc_state  <= s_mc_bc_idle;
                else if (dcbc_hit && dcbc_sram_data_ready && !sram_busy && !icache_busy)
                    dcbc_state  <= s_mc_bc_await_sram;
                else if (dcbc_hit && dcbc_sram_data_ready)
                    dcbc_state  <= s_mc_bc_stall_sram;
                else if ((dcbc_hit && !dcbc_sram_data_ready) || (!icache_busy && cl_ready))
                    dcbc_state  <= s_mc_bc_await_bmem;
                else
                    dcbc_state  <= s_mc_bc_stall_bmem;
            end
            s_mc_bc_write: begin
                if (!icache_busy && cl_ready)
                    dcbc_state  <= s_mc_bc_idle;
            end
            s_mc_bc_stall_sram: begin
                if (!icache_busy && !sram_busy)
                    dcbc_state  <= s_mc_bc_await_sram;
            end
            // BMEM is stalling and not ready for new requests
            s_mc_bc_stall_bmem: begin
                if (!icache_busy && cl_ready)
                    dcbc_state  <= s_mc_bc_await_bmem;
            end
            // Sent request and awaiting response from BMEM
            s_mc_bc_await_bmem: begin
                if (dcache_dfp_resp)
                    dcbc_state  <= s_mc_bc_idle;
            end
            default: begin
                dcbc_state      <= s_mc_bc_idle;
            end
        endcase
    end
end

// Registering responses from CL
always_ff @(posedge clk) begin
    if (rst) begin
        cl_resp_reg     <= '0;
        cl_raddr_reg    <= 'x;
        cl_rdata_reg    <= 'x;
    end
    else begin
        if (cl_resp) begin
            cl_resp_reg     <= '1;
            cl_raddr_reg    <= cl_raddr[31:5];
            cl_rdata_reg    <= cl_rdata;
        end
        else begin
            cl_resp_reg     <= '0;
            cl_raddr_reg    <= 'x;
            cl_rdata_reg    <= 'x;
        end
    end
end

// Registering hit signals from both caches
always_ff @(posedge clk) begin
    if (rst) begin
        icbc_hit_index_reg  <= '0;
        icbc_hit_line_reg   <= '0;
        dcbc_hit_index_reg  <= '0;
        dcbc_hit_line_reg   <= '0;
    end
    else begin
        if (icbc_hit) begin
            icbc_hit_index_reg  <= icbc_hit_index;
            icbc_hit_line_reg   <= icbc_hit_line;
        end
        if (dcbc_hit) begin
            dcbc_hit_index_reg  <= dcbc_hit_index;
            dcbc_hit_line_reg   <= dcbc_hit_line;
        end
    end
end

// Round robin logic???
// always_ff @(posedge clk) begin
//     if (rst) begin
//         bc_rr   <= '0;
//     end
//     else begin
//         if ()
//     end
// end

// Main logic
always_comb begin
    /********** SENDING DATA REQUEST TO DRAM/SRAM **********/

    mc_addr             = 'x;
    mc_read             = '0;
    mc_write            = '0;
    mc_wdata            = 'x;

    icbc_read           = '0;
    dcbc_read           = '0;
    dcbc_write          = '0;

    // Data Buffer
    dbuf_web0           = '1;
    dbuf_addr0          = 'x;

    // Let other modules know when caches are using MC/SRAM or SRAM is being used by MC
    icache_busy         = (icbc_state == s_mc_bc_rcmp || icbc_state == s_mc_bc_stall_bmem || icbc_state == s_mc_bc_stall_sram);
    dcache_busy         = (dcbc_state == s_mc_bc_rcmp || dcbc_state == s_mc_bc_write || dcbc_state == s_mc_bc_stall_bmem);
    sram_busy           = cl_resp_reg;



    // Upon new icache request, compare SB tags for request
    if (icbc_state == s_mc_bc_rcmp) begin
        icbc_read       = '1;

        // If hit occurs, grab data from respective SB
        if (icbc_hit) begin
            // Check if data is available to get from SRAM
            if (icbc_sram_data_ready && !sram_busy) begin
                dbuf_addr0  = 4'((4*icbc_hit_line) + icbc_hit_index);
            end
        end
        // If miss and ready, request data from DRAM (await_bmem)
        else if (cl_ready) begin
            mc_addr     = icache_dfp_addr;
            mc_read     = '1; 
        end
    end
    // Attend to SRAM with saved hit signals
    if (icbc_state == s_mc_bc_stall_sram) begin
        dbuf_addr0      = 4'((4*icbc_hit_line_reg) + icbc_hit_index_reg);
    end
    // Attend to cache if pending request is still active
    if (icbc_state == s_mc_bc_stall_bmem && cl_ready) begin
        mc_addr         = icache_dfp_addr;
        mc_read         = '1; 
    end
    

    
    // Upon new dcache request, compare SB tags for request
    if (dcbc_state == s_mc_bc_rcmp) begin
        dcbc_read       = '1;

        // If hit occurs, grab data from respective SB
        if (dcbc_hit) begin
            // Check if data is available and icache is not processing request
            if (dcbc_sram_data_ready && !sram_busy && !icache_busy) begin
                dbuf_addr0  = 4'(8 + (4*dcbc_hit_line) + dcbc_hit_index);
            end
        end
        // If miss and ready, request data from DRAM
        else if (!icache_busy && cl_ready) begin
            mc_addr     = dcache_dfp_addr;
            mc_read     = '1; 
        end
    end
    // Attend to SRAM with saved hit signals
    if (dcbc_state == s_mc_bc_stall_sram && !icache_busy && !sram_busy) begin
        dbuf_addr0      = 4'(8 + (4*dcbc_hit_line_reg) + dcbc_hit_index_reg);
    end
    // Attend to cache if pending request is still active
    if (!icache_busy && dcbc_state == s_mc_bc_stall_bmem && cl_ready) begin
        mc_addr     = dcache_dfp_addr;
        mc_read     = '1; 
    end
    // Write
    if (!icache_busy && dcbc_state == s_mc_bc_write && cl_ready) begin
        mc_addr             = dcache_dfp_addr;
        mc_write            = '1; 
        mc_wdata            = dcache_dfp_wdata;
        dcbc_write          = '1;
    end




    // Driving data response logic using DRT signals //
    drt_icbc_data_resp  = '0;
    drt_dcbc_data_resp  = '0;

    // Check if DRT detects a valid response and send data to respective SB index and SRAM data (also check if eviction is not being made)
    if (drt_valid_req && !drt_cache_out) begin
        drt_icbc_data_resp[drt_line_out]    = '1;
        drt_icbc_tag_in                     = drt_tag_out;
        icbc_index_in                       = drt_index_out;

        dbuf_web0                           = '0;
        dbuf_addr0                          = 4'((4*drt_line_out) + drt_index_out);
    end
    else begin
        drt_icbc_data_resp                  = '0;
        drt_icbc_tag_in                     = 'x;
        icbc_index_in                       = 'x;
    end
    
    if (drt_valid_req && drt_cache_out) begin
        drt_dcbc_data_resp[drt_line_out]    = '1;
        drt_dcbc_tag_in                     = drt_tag_out;
        dcbc_index_in                       = drt_index_out;

        dbuf_web0                           = '0;
        dbuf_addr0                          = 4'(8 + (4*drt_line_out) + drt_index_out);
    end
    else begin
        drt_dcbc_data_resp                  = '0;
        drt_dcbc_tag_in                     = 'x;
        dcbc_index_in                       = 'x;
    end



    // DRT responding to requests made by prefetch buffers //

    drt_icbc_req_resp   = '0;
    drt_dcbc_req_resp   = '0;

    drt_cache_in        = 'x;
    drt_tag_in          = 'x;
    drt_line_in         = 'x;
    drt_index_in        = 'x;
    drt_request         = '0;

    // Attend to SBs if request is ready and caches aren't busy
    icbc_drt_req_real   = (icbc_evict_line == '0 && icbc_drt_req && drt_ready && cl_ready);
    dcbc_drt_req_real   = (dcbc_evict_line == '0 && dcbc_drt_req && drt_ready && cl_ready);
    if (!icache_busy && !dcache_busy) begin
        // Check round robin for priority
        if (icbc_drt_req_real) begin
            mc_addr                             = {icbc_tag_out, 5'b00000};
            mc_read                             = '1;
            drt_cache_in                        = '0;
            drt_tag_in                          = icbc_tag_out;
            drt_line_in                         = icbc_line_out;
            drt_index_in                        = icbc_index_out;
            drt_request                         = '1;
            drt_icbc_req_resp[icbc_line_out]    = '1;
        end
        else if (dcbc_drt_req_real) begin
            mc_addr                             = {dcbc_tag_out, 5'b00000};
            mc_read                             = '1;
            drt_cache_in                        = '1;
            drt_tag_in                          = dcbc_tag_out;
            drt_line_in                         = dcbc_line_out;
            drt_index_in                        = dcbc_index_out;
            drt_request                         = '1;
            drt_dcbc_req_resp[dcbc_line_out]    = '1;
        end
    end
end

always_comb begin
    /********** RECEIVING DATA REQUEST FROM DRAM/SRAM **********/

    icache_dfp_rdata    = 'x;
    icache_dfp_resp     = '0;
    dcache_dfp_rdata    = 'x;
    dcache_dfp_resp     = '0;


    // Check if icache is receiving correct response based on state //

    // Only resolve on compare when ICBC confirms data is in MC reg
    if (icbc_state == s_mc_bc_rcmp && icbc_mc_data_ready) begin
        icache_dfp_rdata    = cl_rdata_reg;
        icache_dfp_resp     = '1;
    end
    // When waiting for BMEM, resolve once received response is matched by address in registered CL signals
    if (icbc_state == s_mc_bc_await_bmem && cl_resp_reg && icbc_tag_in == cl_raddr_reg) begin
        icache_dfp_rdata    = cl_rdata_reg;
        icache_dfp_resp     = '1;
    end
    // icache receiving data from data buffer
    if (icbc_state == s_mc_bc_await_sram) begin
        icache_dfp_rdata    = dbuf_head_data;
        icache_dfp_resp     = '1;
    end

    
    // Check if dcache is receiving correct response based on state //

    // Only resolve on compare when DCBC confirms data is in MC reg
    if (dcbc_state == s_mc_bc_rcmp && dcbc_mc_data_ready) begin
        dcache_dfp_rdata    = cl_rdata_reg;
        dcache_dfp_resp     = '1;
    end
    // When waiting for BMEM, resolve once received response is matched by address in registered CL signals
    if (dcbc_state == s_mc_bc_await_bmem && cl_resp_reg && dcbc_tag_in == cl_raddr_reg) begin
        dcache_dfp_rdata    = cl_rdata_reg;
        dcache_dfp_resp     = '1;
    end
    // dcache receiving data from data buffer
    if (dcbc_state == s_mc_bc_await_sram) begin
        dcache_dfp_rdata    = dbuf_head_data;
        dcache_dfp_resp     = '1;
    end
    // Write
    if (!icache_busy && dcbc_state == s_mc_bc_write && cl_ready) begin
        dcache_dfp_resp     = '1;
    end
end

endmodule : memory_controller
