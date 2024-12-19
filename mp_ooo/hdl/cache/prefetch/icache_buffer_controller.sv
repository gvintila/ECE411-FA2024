/*
 *  The buffer controller (BC) will keep track of prefetch requests to it's respective cache.
 *  New cache requests will compare tags with the buffer controllers to see if prefetch is available.
 *  If the data is not available, data will be evicted with PLRU logic.
 *  New prefetch requests will direct from the BC to the DRT inside the MC.
 */
module icache_buffer_controller // ICBC
import rv32i_types::*;
import params::*;
(
    input   logic                               clk,
    input   logic                               rst,
    
    // New I-Cache request gets made
    input   logic   [26:0]                      icbc_tag_in,
    input   logic                               icbc_read,
    output  logic                               icbc_hit,
    output  logic                               icbc_sram_data_ready,
    output  logic                               icbc_mc_data_ready,
    output  logic   [SB_HIBIT : 0]              icbc_hit_index,
    output  logic                               icbc_hit_line,

    // ICBC makes request to DRT
    output  logic                               icbc_drt_req,
    output  logic                               icbc_line_out,
    output  logic   [26:0]                      icbc_tag_out,
    output  logic   [SB_HIBIT : 0]              icbc_index_out,
    input   logic   [1:0]                       drt_icbc_req_resp,

    // ICBC requests eviction
    output  logic   [1:0]                       icbc_evict_line,

    // DRT responds with request metadata
    input   logic   [1:0]                       drt_icbc_data_resp,
    input   logic   [26:0]                      drt_icbc_tag_in,
    input   logic   [SB_HIBIT : 0]              icbc_index_in
);

/*
 *  After reset, no SBs should be making any requests.
 *  After first request from cache comes in, one of SBs will be evicted
 *  and new request will be sent to DRAM according to address
 *  (missed tags aren't sent to DRT because they're always held high by cache)
 *  Eviction will cause new SB to spawn prefetching new addresses based on missed tag.
 */

// PLRU
logic                           plru;
logic                           next_plru;

logic   [1:0]                   next_evict_line;
logic   [1:0]                   sb_active_line;

// SB
logic   [1:0]                   sb_drt_line_req;
logic   [26:0]                  sb_tag_out[2];
logic   [SB_HIBIT : 0]          sb_index_out[2];

logic   [1:0]                   sb_dequeue;
logic                           sb_valid[2];
logic   [SB_HIBIT : 0]          sb_head_index[2];
logic   [26:0]                  sb_head_tag[2];
logic                           sb_head_ready[2];


generate for (genvar i = 0; i < 2; i++) begin : nlp_buffers
    icache_buffer icache_buffer (
        .clk(clk),
        .rst(rst),

        .sb_evict(icbc_evict_line[i]),
        .sb_tag_in(icbc_tag_in),

        .sb_drt_req(sb_drt_line_req[i]),
        .sb_tag_out(sb_tag_out[i]),
        .sb_index_out(sb_index_out[i]),
        .drt_sb_req_resp(drt_icbc_req_resp[i]),

        .drt_sb_data_resp(drt_icbc_data_resp[i]),
        .drt_sb_tag_in(drt_icbc_tag_in),
        .sb_index_in(icbc_index_in),

        .sb_dequeue(sb_dequeue[i]),
        .sb_valid(sb_valid[i]),
        .sb_head_index(sb_head_index[i]),
        .sb_head_tag(sb_head_tag[i]),
        .sb_head_ready(sb_head_ready[i])
    );
end endgenerate

// Main logic
always_comb begin
    icbc_hit                = '0;
    icbc_sram_data_ready    = '0;
    icbc_mc_data_ready      = '0;

    sb_active_line          = '0;
    sb_dequeue              = '0;

    icbc_drt_req            = '0;
    icbc_line_out           = 'x;
    icbc_tag_out            = 'x;
    icbc_index_out          = 'x;

    icbc_hit_index          = 'x;
    icbc_hit_line           = 'x;

    // Upon new icache request, compare SB tags for request
    if (icbc_read) begin
        for (int unsigned i = 0; i < 2; i++) begin
            sb_active_line[i] = (sb_valid[i] && sb_head_tag[i] == icbc_tag_in) ? '1 : '0;
        end

        // If hit occurs, update information in SBs and let MC know
        if (sb_active_line != '0) begin
            icbc_hit        = '1;
            // Use for loop since multiple tags can be hit
            for (int unsigned i = 0; i < 2; i++) begin
                if (sb_active_line[i]) begin
                    icbc_hit_index  = sb_head_index[i];
                    icbc_hit_line   = 1'(i);
                    // Check if data is available to be requested from SRAM
                    if (sb_head_ready[i]) begin
                        icbc_sram_data_ready    = '1;
                    end
                    // Data is received from MC
                    else if (drt_icbc_data_resp[i] && icbc_tag_in == drt_icbc_tag_in) begin
                        icbc_mc_data_ready      = '1;
                    end
                    sb_dequeue[i]           = '1;
                    // Waiting on data to be received from MC
                    break;
                end
            end
        end
    end
    // Attend to SBs if request is pending
    else if (sb_drt_line_req != '0) begin
        // If both are pending choose the SB that's most recently used
        if (sb_drt_line_req == '1) begin
            if (!plru) begin
                icbc_drt_req    = '1;
                icbc_line_out   = 1'b0;
                icbc_tag_out    = sb_tag_out[0];
                icbc_index_out  = sb_index_out[0];
            end
            else begin
                icbc_drt_req    = '1;
                icbc_line_out   = 1'b1;
                icbc_tag_out    = sb_tag_out[1];
                icbc_index_out  = sb_index_out[1];
            end
        end
        // Otherwise, choose one
        else begin
            for (int unsigned i = 0; i < 2; i++) begin
                if (sb_drt_line_req[i]) begin
                    icbc_drt_req    = '1;
                    icbc_line_out   = 1'(i);
                    icbc_tag_out    = sb_tag_out[i];
                    icbc_index_out  = sb_index_out[i];
                end
            end
        end
    end
end

// PLRU and eviction logic
always_ff @(posedge clk) begin
    if (rst) begin
        plru                <= '0;
        icbc_evict_line     <= '0;
    end
    else begin
        // If read occurs, update PLRU
        if (icbc_read) begin
            plru                <= next_plru;
        end
        icbc_evict_line     <= next_evict_line;
    end
end

always_comb begin
    next_plru       = 'x;
    next_evict_line = '0;

    if (icbc_read) begin
        // If hit occurs, update PLRU
        if (sb_active_line != '0) begin
            next_plru = !sb_active_line[0];
        end
        // If miss occurs, signal specific line for eviction and update PLRU to newest evicted line
        else begin
            next_plru = !plru;
            if (plru)
                next_evict_line[0] = 1'b1;
            else
                next_evict_line[1] = 1'b1;
        end
    end
end

endmodule : icache_buffer_controller
