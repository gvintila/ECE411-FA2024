/*
 *  The data request table (DRT) module will contain all outgoing requests from SBs to DRAM.
 *  Whenever the DRT is ready, the MC can signal a new request to DRAM which will be mapped in the DRT.
 *  Whenever a request is received from the DRAM, the DRT will provide the respective SB data associated
 *  with the received tag, cache type, and if the request is valid.
 *  When an SB is evicted, the DRT will purge all data associated with the evicted line.
 *  The DRT doesn't hold requests from the caches directly since those addresses are constantly held high.
 */
module data_request_table
import rv32i_types::*;
import params::*;
#(
    localparam int unsigned DRT_HIBIT = $clog2(DATA_REQUEST_TABLE_SIZE) - 1
)
(
    input   logic                           clk,
    input   logic                           rst,

    // Eviction
    input   logic   [1:0]                   icbc_evict_line,
    input   logic   [1:0]                   dcbc_evict_line,

    // Making new requests to DRAM
    input   logic                           drt_request,   
    input   logic   [26:0]                  drt_tag_in,
    input   logic                           drt_cache_in, 
    input   logic                           drt_line_in,
    input   logic   [SB_HIBIT : 0]          drt_index_in,
    output  logic                           drt_ready,

    // Receiving requests from DRAM
    input   logic   [31:0]                  cl_raddr,
    input   logic                           cl_resp,
    output  logic   [26:0]                  drt_tag_out,
    output  logic                           drt_cache_out,
    output  logic                           drt_line_out,
    output  logic   [SB_HIBIT : 0]          drt_index_out,
    output  logic                           drt_valid_req
);

    drt_entry_t             drt[DATA_REQUEST_TABLE_SIZE];
    logic   [DRT_HIBIT:0]   drt_idx_in;
    logic   [DRT_HIBIT:0]   drt_idx_out;
    logic                   drt_clear_req;

    // Modifying the DRT based on incoming requests or
    always_ff @(posedge clk) begin
        if (rst) begin
            for (int unsigned i = 0; i < DATA_REQUEST_TABLE_SIZE; i++) begin
                drt[i]          <= 'x;
                drt[i].request  <= '0;
            end
        end
        else begin
            if (icbc_evict_line != '0) begin
                // Evict all entries associated with evicted line
                for (int unsigned i = 0; i < DATA_REQUEST_TABLE_SIZE; i++) begin
                    for (int unsigned j = 0; j < 2; j++) begin
                        if (drt[i].request && icbc_evict_line[j] && !drt[i].cache_type && drt[i].sb_line == 1'(j)) begin
                            drt[i]          <= 'x;
                            drt[i].request  <= '0;
                        end
                    end
                end
            end
            if (dcbc_evict_line != '0) begin
                // Evict all entries associated with evicted line
                for (int unsigned i = 0; i < DATA_REQUEST_TABLE_SIZE; i++) begin
                    for (int unsigned j = 0; j < 2; j++) begin
                        if (drt[i].request && dcbc_evict_line[j] && drt[i].cache_type && drt[i].sb_line == 1'(j)) begin
                            drt[i]          <= 'x;
                            drt[i].request  <= '0;
                        end
                    end
                end
            end

            // Got response from DRAM and matching with DRT
            if (drt_clear_req) begin
                drt[drt_idx_out].request <= '0;
            end

            // Inserting new request into DRT
            if (drt_request) begin
                drt[drt_idx_in] <= {drt_tag_in, drt_cache_in, drt_line_in, drt_index_in, 1'b1};
            end
        end
    end

    // If a CL response comes in, check if it connects to a valid data request made by prefetchers
    always_ff @(posedge clk) begin
        if (rst) begin
            drt_valid_req       <= '0;
            drt_clear_req       <= '0;
            drt_idx_out         <= 'x;
            drt_tag_out         <= 'x;
            drt_cache_out       <= 'x;
            drt_line_out        <= 'x;
            drt_index_out       <= 'x;
        end
        else begin
            for (int unsigned i = 0; i < DATA_REQUEST_TABLE_SIZE; i++) begin
                // Output DRAM response with respective DRT entry
                if (cl_resp && drt[i].request && cl_raddr[31:5] == drt[i].tag) begin
                    drt_clear_req       <= '1;
                    drt_idx_out         <= (DRT_HIBIT+1'b1)'(i);
                    // Check if request is not getting evicted
                    if ((!drt[i].cache_type && !icbc_evict_line[drt[i].sb_line]) 
                        || (drt[i].cache_type && !dcbc_evict_line[drt[i].sb_line])) begin
                        drt_valid_req       <= '1;
                        drt_tag_out         <= drt[i].tag;
                        drt_cache_out       <= drt[i].cache_type;
                        drt_line_out        <= drt[i].sb_line;
                        drt_index_out       <= drt[i].sb_index;
                    end
                    break;
                end
                else begin
                    drt_valid_req       <= '0;
                    drt_clear_req       <= '0;
                    drt_idx_out         <= 'x;
                    drt_tag_out         <= 'x;
                    drt_cache_out       <= 'x;
                    drt_line_out        <= 'x;
                    drt_index_out       <= 'x;
                end
            end
        end
    end

    always_comb begin
        drt_ready       = '0;
        drt_idx_in      = 'x;

        for (int unsigned i = 0; i < DATA_REQUEST_TABLE_SIZE; i++) begin
            // Find available DRT entry for insertion
            if (!drt[i].request) begin
                drt_ready       = '1;
                drt_idx_in      = (DRT_HIBIT+1'b1)'(i);
            end
        end
    end

endmodule : data_request_table
