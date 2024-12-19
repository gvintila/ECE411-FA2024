/*
 *  The buffer controller (BC) will keep track of prefetch requests to it's respective cache.
 *  New cache requests will compare tags with the buffer controllers to see if prefetch is available.
 *  If the data is not available, data will be evicted with PLRU logic.
 *  New prefetch requests will direct from the BC to the DRT inside the MC.
 */
module dcache_buffer_controller // DCBC
import rv32i_types::*;
import params::*;
(
    input   logic                               clk,
    input   logic                               rst,
    
    // New D-Cache request gets made
    input   logic   [26:0]                      dcbc_tag_in,
    input   logic                               dcbc_read,
    input   logic                               dcbc_write,
    output  logic                               dcbc_hit,
    output  logic                               dcbc_sram_data_ready,
    output  logic                               dcbc_mc_data_ready,
    output  logic   [SB_HIBIT : 0]              dcbc_hit_index,
    output  logic                               dcbc_hit_line,

    // DCBC makes request to DRT
    output  logic                               dcbc_drt_req,
    output  logic                               dcbc_line_out,
    output  logic   [26:0]                      dcbc_tag_out,
    output  logic   [SB_HIBIT : 0]              dcbc_index_out,
    input   logic   [1:0]                       drt_dcbc_req_resp,

    // DCBC requests eviction
    output  logic   [1:0]                       dcbc_evict_line,

    // DRT responds with data from DRAM
    input   logic   [1:0]                       drt_dcbc_data_resp,
    input   logic   [26:0]                      drt_dcbc_tag_in,
    input   logic   [SB_HIBIT : 0]              dcbc_index_in
);

/*
 *  After reset, no SBs should be making any requests.
 *  After first request from cache comes in, one of SBs will be evicted
 *  and new request will be sent to DRAM according to address
 *  (missed tags aren't sent to DRT because they're always held high by cache)
 *  Eviction will cause new SB to spawn prefetching new addresses based on missed tag.
 */

// PLRU
logic                       plru;
logic                       next_plru;

logic   [1:0]               sb_active_line;

// RPT
logic                       rpt_en;
sb_tag_t                    rpt_sbtag_in;

logic                       rpt_allocate;
logic   [26:0]              rpt_sbtag_out;
logic   [RPT_STRIDE-1 : 0]  rpt_stride_out;
logic                       rpt_direction_out;

// SB
logic   [1:0]               sb_drt_line_req;
logic   [26:0]              sb_tag_out[2];
logic   [SB_HIBIT : 0]      sb_index_out[2];

logic   [1:0]               sb_dequeue;
logic                       sb_valid[2];
logic   [1:0]               sb_dirty;
logic   [SB_HIBIT : 0]      sb_head_index[2];
logic   [26:0]              sb_head_tag[2];
logic                       sb_head_ready[2];


generate for (genvar i = 0; i < 2; i++) begin : stride_buffers
    dcache_buffer dcache_buffer (
        .clk(clk),
        .rst(rst),

        .sb_evict(dcbc_evict_line[i]),

        .sb_tag_in(rpt_sbtag_out),
        .sb_stride_in(rpt_stride_out),
        .sb_direction_in(rpt_direction_out),

        .sb_drt_req(sb_drt_line_req[i]),
        .sb_tag_out(sb_tag_out[i]),
        .sb_index_out(sb_index_out[i]),
        .drt_sb_req_resp(drt_dcbc_req_resp[i]),

        .drt_sb_data_resp(drt_dcbc_data_resp[i]),
        .drt_sb_tag_in(drt_dcbc_tag_in),
        .sb_index_in(dcbc_index_in),

        .sb_write(dcbc_write),
        .sb_wtag_in(dcbc_tag_in),
        .sb_dirty(sb_dirty[i]),

        .sb_dequeue(sb_dequeue[i]),
        .sb_valid(sb_valid[i]),
        .sb_head_index(sb_head_index[i]),
        .sb_head_tag(sb_head_tag[i]),
        .sb_head_ready(sb_head_ready[i])
    );
end endgenerate

repeat_pattern_table repeat_pattern_table(.*);

// Main logic
always_comb begin
    dcbc_hit                = '0;
    dcbc_sram_data_ready    = '0;
    dcbc_mc_data_ready      = '0;

    rpt_en                  = '0;
    rpt_sbtag_in            = 'x;

    sb_active_line          = '0;
    sb_dequeue              = '0;

    dcbc_drt_req            = '0;
    dcbc_line_out           = 'x;
    dcbc_tag_out            = 'x;
    dcbc_index_out          = 'x;

    dcbc_hit_index          = 'x;
    dcbc_hit_line           = 'x;

    // Upon new dcache request, compare SB tags for request
    if (dcbc_read) begin
        for (int unsigned i = 0; i < 2; i++) begin
            sb_active_line[i] = (sb_valid[i] && sb_head_tag[i] == dcbc_tag_in) ? '1 : '0;
        end

        // If hit occurs, grab data from respective SB (if not dirty)
        if (sb_active_line != '0 && sb_dirty == '0) begin
            dcbc_hit    = '1;
            // Use for loop since multiple tags can be hit (should we evict unused tag in this case?)
            for (int unsigned i = 0; i < 2; i++) begin
                if (sb_active_line[i]) begin
                    dcbc_hit_index  = sb_head_index[i];
                    dcbc_hit_line   = 1'(i);
                    // Check if data is available to be requested from SRAM
                    if (sb_head_ready[i]) begin
                        dcbc_sram_data_ready    = '1;
                    end
                    // Data is received from MC
                    else if (drt_dcbc_data_resp[i] && dcbc_tag_in == drt_dcbc_tag_in) begin
                        dcbc_mc_data_ready      = '1;
                    end
                    sb_dequeue[i]       = '1;
                    // Waiting on data to be received from MC
                    break;
                end
            end
        end
        // If miss occurs, send tag to RPT
        else begin
            rpt_sbtag_in    = dcbc_tag_in;
            rpt_en          = '1;
        end
    end
    // Attend to SBs if request is pending
    else if (sb_drt_line_req != '0) begin
        // If both are pending choose the SB that's most recently used
        if (sb_drt_line_req == '1) begin
            if (!plru) begin
                dcbc_drt_req    = '1;
                dcbc_line_out   = 1'b0;
                dcbc_tag_out    = sb_tag_out[0];
                dcbc_index_out  = sb_index_out[0];
            end
            else begin
                dcbc_drt_req    = '1;
                dcbc_line_out   = 1'b1;
                dcbc_tag_out    = sb_tag_out[1];
                dcbc_index_out  = sb_index_out[1];
            end
        end
        // Otherwise, choose one 
        else begin
            for (int unsigned i = 0; i < 2; i++) begin
                if (sb_drt_line_req[i]) begin
                    dcbc_drt_req    = '1;
                    dcbc_line_out   = 1'(i);
                    dcbc_tag_out    = sb_tag_out[i];
                    dcbc_index_out  = sb_index_out[i];
                end
            end
        end
    end
end

// PLRU and eviction logic
always_ff @(posedge clk) begin
    if (rst) begin
        plru                <= '0;
    end
    else begin
        // If hit or allocate occur, update PLRU
        if ((dcbc_read && sb_active_line != '0) || rpt_allocate) begin
            plru                <= next_plru;
        end
    end
end

always_comb begin
    next_plru       = 'x;
    dcbc_evict_line = '0;

    if (dcbc_read) begin
        // If hit occurs, update PLRU
        if (sb_active_line != '0) begin
            next_plru   = !sb_active_line[0];
        end
    end

    // If RPT_allocate occurs, signal specific line for eviction and update PLRU to evicted line
    if (rpt_allocate) begin
        next_plru = !plru;
        if (plru)
            dcbc_evict_line[0]  = 1'b1;
        else
            dcbc_evict_line[1]  = 1'b1;
    end
    // Evict line if write matches prefetched data
    if (sb_dirty != '0) begin
        dcbc_evict_line |= sb_dirty;
    end
end

endmodule : dcache_buffer_controller
