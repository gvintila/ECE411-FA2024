module repeat_pattern_table
import rv32i_types::*;
import params::*;
(
    input   logic                           clk,
    input   logic                           rst,

    // DCBC sends input to RPT
    input   logic                           rpt_en,
    input   sb_tag_t                        rpt_sbtag_in,

    // RPT finds a pattern and sends to DCBC
    output  logic                           rpt_allocate,
    output  logic   [26:0]                  rpt_sbtag_out,
    output  logic   [RPT_STRIDE-1 : 0]      rpt_stride_out,
    output  logic                           rpt_direction_out
);

// logic                           csb0[4];
logic   [3:0]                   web0;
rpt_entry_t                     rpt_din0;
rpt_entry_t                     rpt_dout0[4];


logic                           valid_din0;
logic                           valid_dout0[4];


logic                           lru_web0;
logic   [2:0]                   lru_din0, lru_dout0, lru_dout1;


logic   [1:0]                   rpt_state;       
logic   [3:0]                   rpt_active_line;
logic   [3:0]                   rpt_active_line_next;
logic   [3:0]                   rpt_evict_line;


sb_tag_t                        rpt_sbtag_in_reg;
logic   [RPT_TAG_HIBIT : 0]     rpt_new_tag;
logic   [RPT_SETS-1 : 0]        rpt_new_set;
logic   [RPT_STRIDE-1 : 0]      rpt_new_stride;

rpt_entry_t                     rpt_old;
rpt_entry_t                     rpt_old_next;

logic                           rpt_send;

logic           [1:0]           rpt_old_count;

always_comb begin
    if (rpt_state == s_rpt_idle) begin
        rpt_new_tag     = rpt_sbtag_in.rpt_type.tag;
        rpt_new_set     = rpt_sbtag_in.rpt_type.set; 
        rpt_new_stride  = rpt_sbtag_in.rpt_type.stride;
    end
    else begin
        rpt_new_tag     = rpt_sbtag_in_reg.rpt_type.tag;
        rpt_new_set     = rpt_sbtag_in_reg.rpt_type.set; 
        rpt_new_stride  = rpt_sbtag_in_reg.rpt_type.stride;
    end
end

assign rpt_old_count    = rpt_old.count;

generate for (genvar i = 0; i < 4; i++) begin : rpt
    rpt_array rpt_array (
        .clk0       (clk),
        .csb0       (1'b0),
        .web0       (web0[i]),
        .addr0      (rpt_new_set),
        .din0       (rpt_din0),
        .dout0      (rpt_dout0[i])
    );
    valid_array valid_array (
        .clk0       (clk),
        .rst0       (rst),
        .csb0       (1'b0),
        .web0       (web0[i]),
        .addr0      (rpt_new_set),
        .din0       (valid_din0),
        .dout0      (valid_dout0[i])
    );
end endgenerate

lru_array lru_array (
    .clk0       (clk),
    .rst0       (rst),
    .csb0       (1'b0),
    .web0       (lru_web0),
    .addr0      (rpt_new_set),
    .din0       (lru_din0),
    .dout0      (lru_dout0),
    .csb1       (1'b0),
    .web1       (1'b1),
    .addr1      (rpt_new_set),
    .din1       ('x),
    .dout1      (lru_dout1)
);

always_ff @(posedge clk) begin
    if (rst) begin
        rpt_state           <= s_rpt_idle;

        rpt_sbtag_in_reg    <= 'x;
        rpt_old             <= 'x;

        rpt_allocate        <= '0;
        rpt_sbtag_out       <= 'x;
        rpt_stride_out      <= 'x;
        rpt_direction_out   <= 'x;
    end
    else begin
        unique case (rpt_state)
            s_rpt_idle: begin
                rpt_allocate        <= '0;
                rpt_sbtag_out       <= 'x;
                rpt_stride_out      <= 'x;
                rpt_direction_out   <= 'x;
                if (rpt_en) begin
                    rpt_sbtag_in_reg    <= rpt_sbtag_in;
                    rpt_state           <= s_rpt_cmp;
                end
            end
            s_rpt_cmp: begin
                rpt_state           <= s_rpt_store;
                rpt_active_line     <= rpt_active_line_next;
                rpt_old             <= rpt_old_next;
            end
            s_rpt_store: begin
                if (rpt_send) begin
                    if (rpt_old.direction) begin
                        if (rpt_new_stride == (rpt_old.base + rpt_old.stride)) begin
                            rpt_allocate        <= '1;
                            rpt_sbtag_out       <= rpt_sbtag_in_reg + rpt_old.stride;
                            rpt_stride_out      <= rpt_old.stride;
                            rpt_direction_out   <= '1;
                        end
                    end
                    else begin
                        if (rpt_new_stride == (rpt_old.base - rpt_old.stride)) begin
                            rpt_allocate        <= '1;
                            rpt_sbtag_out       <= rpt_sbtag_in_reg - rpt_old.stride;
                            rpt_stride_out      <= rpt_old.stride;
                            rpt_direction_out   <= '0;
                        end
                    end
                end
                rpt_state           <= s_rpt_idle;
                rpt_active_line     <= '0;
                rpt_old             <= 'x;
            end
            default: begin
            end
        endcase
    end
end

always_comb begin
    web0                    = '1;
    valid_din0              = '1;
    rpt_old_next            = 'x;
    rpt_din0                = 'x;

    rpt_active_line_next    = '0;
    rpt_send                = '0;

    // Compare incoming sbtag with stored tags and increment on state of hit or missed tag
    if (rpt_state == s_rpt_cmp) begin
        // Compare with stored values
        for (int unsigned i = 0; i < 4; i++) begin
            rpt_active_line_next[i] = (valid_dout0[i] && rpt_new_tag == rpt_dout0[i].tag) ? '1 : '0;
        end
        unique case (rpt_active_line_next)
            4'b0001: rpt_old_next   = rpt_dout0[0];
            4'b0010: rpt_old_next   = rpt_dout0[1];
            4'b0100: rpt_old_next   = rpt_dout0[2];
            4'b1000: rpt_old_next   = rpt_dout0[3];
            default: rpt_old_next   = 'x;
        endcase
    end
    if (rpt_state == s_rpt_store) begin
        // Hit
        if (rpt_active_line != '0) begin
            unique case (rpt_active_line)
                4'b0001: web0[0]    = '0;
                4'b0010: web0[1]    = '0;
                4'b0100: web0[2]    = '0;
                4'b1000: web0[3]    = '0;
                default: web0       = 'x;
            endcase
            rpt_din0 = rpt_old;
            // Check which state of entry we are in
            unique case (rpt_old_count)
                2'b00: begin
                end
                // Calculate stride and distance from last access
                2'b01: begin
                    // Discard cases where base is equal
                    if (rpt_new_stride == rpt_old.base) begin
                        rpt_din0.count      = 2'b01;
                    end
                    else begin
                        rpt_din0.base       = rpt_new_stride;
                        rpt_din0.count      = 2'b10;
                        if (rpt_new_stride > rpt_old.base) begin
                            rpt_din0.direction      = '1;
                            rpt_din0.stride         = rpt_new_stride - rpt_old.base;
                        end
                        else begin
                            rpt_din0.direction      = '0;
                            rpt_din0.stride         = rpt_old.base - rpt_new_stride;
                        end
                    end
                end
                // Check if stride and distance is predicted
                2'b10: begin
                    rpt_send        = '1;
                    // Discard line
                    rpt_din0        = 'x;
                    valid_din0      = '0;
                end
                2'b11: begin
                end
            endcase
        end
        // Miss
        else begin
            // Update evicted line with new data
            for (int unsigned i = 0; i < 4; i++) begin
                if (rpt_evict_line[i]) begin
                    web0[i]             = '0;
                    valid_din0          = '1;
                    rpt_din0.tag        = rpt_new_tag;
                    rpt_din0.base       = rpt_new_stride;
                    rpt_din0.stride     = 'x;
                    rpt_din0.direction  = 'x;
                    rpt_din0.count      = 2'b01;
                end
            end
        end
    end
end

// PLRU and eviction logic
always_comb begin
    lru_web0        = '1;
    lru_din0        = 'x;
    rpt_evict_line  = '0;

    if (rpt_state == s_rpt_store) begin
        // If hit occurs, update PLRU
        if (rpt_active_line != '0) begin
            lru_web0    = '0;

            if (rpt_active_line[0]) begin
                lru_din0 = (lru_dout1 & (3'b001)); 
            end
            else if (rpt_active_line[1]) begin
                lru_din0 = (lru_dout1 & (3'b001)) | (3'b010);
            end
            else if (rpt_active_line[2]) begin
                lru_din0 = (lru_dout1 & (3'b010)) | (3'b100);
            end
            else if (rpt_active_line[3]) begin
                lru_din0 = (lru_dout1 & (3'b010)) | (3'b101); 
            end
        end
        // If miss occurs, signal specific line for eviction
        else begin
            unique case (lru_dout1)
                3'b000: rpt_evict_line[3] = 1'b1;
                3'b001: rpt_evict_line[2] = 1'b1;
                3'b010: rpt_evict_line[3] = 1'b1;
                3'b011: rpt_evict_line[2] = 1'b1;
                3'b100: rpt_evict_line[1] = 1'b1;
                3'b101: rpt_evict_line[1] = 1'b1;
                3'b110: rpt_evict_line[0] = 1'b1;
                3'b111: rpt_evict_line[0] = 1'b1;
                default: begin
                end
            endcase
        end
    end
end

endmodule : repeat_pattern_table
