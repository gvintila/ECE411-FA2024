/*
 *  The buffer module will hold the data relating to a prefetched cacheline(s).
 *  Each buffer will hold a tag relating to the head cacheline it's holding.
 *  Tags will be used for the MC to check if a buffer holds the requested value from DFP.
 *  The tag will update upon every overwrite to the head cacheline.
 *  Upon an eviction, the buffer will prefetch PREFETCH_DEGREE.
 *  Each outgoing request has to be responded to by the DRT to confirm the outgoing request is made.
 *  When data is received from DRAM, the DRT will respond with the respective meta-data.
 */
module dcache_buffer    // SB
import rv32i_types::*;
import params::*;
#(
    localparam int unsigned QUEUE_DEPTH         = DC_PREFETCH_DEGREE + 1,
    localparam [31:0]       QUEUE_DEPTH_TOP     = QUEUE_DEPTH - 1
)
(
    input   logic                           clk,
    input   logic                           rst,

    // DCBC signals for eviction with new tag and stride
    input   logic                           sb_evict,

    // Receiving data from RPT
    input   logic   [26:0]                  sb_tag_in,
    input   logic   [RPT_STRIDE-1 : 0]      sb_stride_in,
    input   logic                           sb_direction_in,

    // Making requests to DRT
    output  logic                           sb_drt_req,
    output  logic   [26:0]                  sb_tag_out,
    output  logic   [SB_HIBIT : 0]          sb_index_out,
    input   logic                           drt_sb_req_resp,

    // Receiving requests from DRT
    input   logic                           drt_sb_data_resp,
    input   logic   [26:0]                  drt_sb_tag_in,
    input   logic   [SB_HIBIT : 0]          sb_index_in,

    // Receiving write data from MC
    input   logic                           sb_write,
    input   logic   [26:0]                  sb_wtag_in,
    output  logic                           sb_dirty,

    // MC checks head for valid and relevant data to grab
    input   logic                           sb_dequeue,
    output  logic                           sb_valid,
    output  logic   [SB_HIBIT : 0]          sb_head_index,
    output  logic   [26:0]                  sb_head_tag,
    output  logic                           sb_head_ready
);

/*
 *  If no tags match, evict LRU then fill with newly prefetched tag.
 *  On evict, tag gets inserted at start of queue.
 *  The first prefetch request gets requested by SB and waits for a response from DRT.
 *  Once drt_sb_req_resp goes high, enqueue to next prefetch request if not full.
 *  Whenever data is ready, drt_sb_data_resp goes high and new data gets filled at associated index.
 */

sbuffer_entry_t                 buffer[QUEUE_DEPTH];
logic   [26:0]                  next_tag;
logic   [SB_HIBIT : 0]          head, tail;
logic   [SB_HIBIT : 0]          count;
logic                           empty, full;

logic   [RPT_STRIDE-1 : 0]      stride;
logic                           direction;

logic                           drt_sb_req_resp_reg;
logic                           sb_dequeue_reg;

// Receive registered response from DRT and MC
always_ff @(posedge clk) begin
    if (rst || sb_dirty || sb_evict) begin
        drt_sb_req_resp_reg     <= '0;
        sb_dequeue_reg          <= '0;
    end
    else begin
        drt_sb_req_resp_reg     <= (drt_sb_req_resp) ? '1 : '0;
        sb_dequeue_reg          <= (sb_dequeue) ? '1 : '0;
    end
end

always_ff @(posedge clk) begin
    // Upon reset, we don't want any bad requests to be made so we're waiting for eviction
    if (rst || sb_dirty) begin
        for (int unsigned i = 0; i < QUEUE_DEPTH; i++) begin
            buffer[i]               <= 'x;
            buffer[i].ready         <= '0;
            buffer[i].request       <= '1;
        end
        sb_valid                    <= '0;
        count                       <= '0;
        head                        <= '0;
        tail                        <= '0;

        stride                      <= '0;
        direction                   <= '0;
    end
    // Upon eviction, data is now valid and data can start being requested to DRT
    else if (sb_evict) begin
        for (int unsigned i = 0; i < QUEUE_DEPTH; i++) begin
            buffer[i]               <= 'x;
            buffer[i].ready         <= '0;
            buffer[i].request       <= '0;
        end
        sb_valid                    <= '1;
        count                       <= '0;
        buffer[head].tag            <= sb_tag_in;
        tail                        <= head;

        stride                      <= sb_stride_in;
        direction                   <= sb_direction_in;
    end
    else begin
        // Insert received data request from DRT into buffer
        if (drt_sb_data_resp) begin
            buffer[sb_index_in]     <= {drt_sb_tag_in, 1'b1, 1'b1}; 
        end

        // After DRT accepts request, stop sending requests for current tag
        if (drt_sb_req_resp_reg) begin
            buffer[tail].request    <= 1'b1;
        end

        // If DRT accepts request, enqueue and move tail to next available pending memory location
        // If MC dequeues a value from SB, reset head data and move to next available memory slot
        if (drt_sb_req_resp_reg && sb_dequeue_reg && !empty) begin
            buffer[head].ready              <= '0;
            buffer[head].request            <= '0;
            head                            <= (head == QUEUE_DEPTH_TOP[SB_HIBIT:0]) ? '0 : (head + 1'b1);
            if (tail == QUEUE_DEPTH_TOP[SB_HIBIT:0]) begin
                buffer[0].ready             <= '0;
                buffer[0].request           <= '0;
                buffer[0].tag               <= next_tag;
                tail                        <= '0; 
            end
            else begin
                buffer[tail + 1'b1].ready   <= '0;
                buffer[tail + 1'b1].request <= '0;
                buffer[tail + 1'b1].tag     <= next_tag;
                tail                        <= tail + 1'b1;
            end
        end
        else if (drt_sb_req_resp_reg && !sb_dequeue_reg && !full) begin
            count                           <= count + 1'b1;
            if (tail == QUEUE_DEPTH_TOP[SB_HIBIT:0]) begin
                buffer[0].ready             <= '0;
                buffer[0].request           <= '0;
                buffer[0].tag               <= next_tag;
                tail                        <= '0; 
            end
            else begin
                buffer[tail + 1'b1].ready   <= '0;
                buffer[tail + 1'b1].request <= '0;
                buffer[tail + 1'b1].tag     <= next_tag;
                tail                        <= tail + 1'b1;
            end
        end
        else if (!drt_sb_req_resp_reg && sb_dequeue_reg) begin
            buffer[head].ready      <= '0;
            buffer[head].request    <= '0;
            head                    <= (head == QUEUE_DEPTH_TOP[SB_HIBIT:0]) ? '0 : (head + 1'b1);
            
            // Overwrite dequeued memory slot with new tag
            if ( (full && buffer[tail].request) || empty) begin
                if (tail == QUEUE_DEPTH_TOP[SB_HIBIT:0]) begin
                    buffer[0].ready             <= '0;
                    buffer[0].request           <= '0;
                    buffer[0].tag               <= next_tag;
                    tail                        <= '0; 
                end
                else begin
                    buffer[tail + 1'b1].ready   <= '0;
                    buffer[tail + 1'b1].request <= '0;
                    buffer[tail + 1'b1].tag     <= next_tag;
                    tail                        <= tail + 1'b1;
                end
            end
            else begin
                count               <= count - 1'b1;
            end
        end
    end
end

// Check if prefetched data is being written to
always_ff @(posedge clk) begin
    if (rst || sb_dirty || sb_evict) begin
        sb_dirty    <= '0;
    end
    else begin
        if (sb_valid && sb_write) begin
            for (int unsigned i = 0; i < QUEUE_DEPTH; i++) begin
                if (buffer[i].request && buffer[i].tag == sb_wtag_in)
                    sb_dirty        <= '1;
            end
        end
    end
end

always_comb begin
    next_tag        =   (direction) ? buffer[tail].tag + stride : buffer[tail].tag - stride;
    empty           =   (count == 0);  
    full            =   (count >= QUEUE_DEPTH_TOP[SB_HIBIT:0]); 

    sb_head_index   =   head;
    sb_head_tag     =   buffer[head].tag;
    sb_head_ready   =   buffer[head].ready;

    sb_drt_req      =   (!drt_sb_req_resp_reg && !sb_evict && !sb_dirty && !buffer[tail].request) ? '1 : '0; 
    sb_tag_out      =   buffer[tail].tag;
    sb_index_out    =   tail;
end

endmodule