module cache 
import cache_types::*;
(
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

    /* SIGNAL ***************************************************************************/

        // cache pipeline registers
        cache_reg_t     cpr;
        cache_reg_t     cpr_next;

        logic           block; 
        logic           ready;
        logic   [31:0]  ufp_addr_trim;
        logic   [3:0]   ufp_rmask_reg;
        logic   [3:0]   ufp_wmask_reg;
        logic   [31:0]  ufp_addr_reg;
        logic   [31:0]  ufp_wdata_reg;
        logic   [3:0]   ufp_rmask_sel;
        logic   [3:0]   ufp_wmask_sel;
        logic   [31:0]  ufp_addr_sel;
        logic   [31:0]  ufp_wdata_sel;

        logic   [22:0]  ufp_tag;
        logic   [3:0]   next_ufp_set;
        logic   [3:0]   ufp_set;
        logic   [4:0]   ufp_offset;
        logic   [31:0]  ufp_align_addr;
        logic           ufp_active;

        logic           web0[4];
        logic   [31:0]  data_wmask0;
        logic   [255:0] data_din0;
        logic   [23:0]  tag_din0;
        logic           valid_din0;

        logic   [255:0] data_dout0[4];
        logic   [23:0]  tag_dout0[4];
        logic           valid_dout0[4];

        logic   [2:0]   lru_din0;
        logic   [2:0]   lru_din1;
        logic   [2:0]   lru_dout0;
        logic   [2:0]   lru_dout1;
        logic           lru_csb0;
        logic           lru_csb1;
        logic           lru_web0;
        logic           lru_web1;
        logic   [3:0]   lru_addr0;
        logic   [3:0]   lru_addr1;

        logic   [1:0]   evict_line_id;

        logic   [1:0]   hit_line_id;
        logic   [255:0] valid_line;

        logic           evict_is_dirty;
        logic   [31:0]  evict_wb_addr;

        logic           is_miss;

        logic   [255:0] shift_line;
        logic   [31:0]  line_data;
        logic   [255:0] ufp_line_wdata;
        logic   [31:0]  ufp_line_wmask;

    /* MODULE ***************************************************************************/

    generate for (genvar i = 0; i < 4; i++) begin : arrays
        mp_cache_data_array data_array (
            .clk0       (clk),
            .csb0       (1'b0),
            .web0       (web0[i]),
            .wmask0     (data_wmask0),
            .addr0      (next_ufp_set),
            .din0       (data_din0),
            .dout0      (data_dout0[i])
        );
        mp_cache_tag_array tag_array (
            .clk0       (clk),
            .csb0       (1'b0),
            .web0       (web0[i]),
            .addr0      (next_ufp_set),
            .din0       (tag_din0),
            .dout0      (tag_dout0[i])
        );
        valid_array valid_array (
            .clk0       (clk),
            .rst0       (rst),
            .csb0       (1'b0),
            .web0       (web0[i]),
            .addr0      (next_ufp_set),
            .din0       (valid_din0),
            .dout0      (valid_dout0[i])
        );
    end endgenerate

    lru_array lru_array (
        .clk0       (clk),
        .rst0       (rst),
        .csb0       (lru_csb0),
        .web0       (lru_web0),
        .addr0      (ufp_set),
        .din0       (lru_din0),
        .dout0      (lru_dout0),
        .csb1       (lru_csb1),
        .web1       (lru_web1),
        .addr1      (next_ufp_set),
        .din1       (lru_din1),
        .dout1      (lru_dout1)
    );

    next_plru_table npt(.plru(lru_dout1), .line(hit_line_id), .next_plru(lru_din0));

    /* FF *******************************************************************************/

    always_ff @(posedge clk) begin
        if (rst) begin
            cpr             <= '0;
            ufp_rmask_reg   <= '0;
            ufp_wmask_reg   <= '0;
            ufp_addr_reg    <= '0;
            ufp_wdata_reg   <= '0;
        end else begin
            cpr     <= cpr_next;
            if (ready) begin
                ufp_rmask_reg   <= ufp_rmask;
                ufp_wmask_reg   <= ufp_wmask;
                ufp_addr_reg    <= ufp_addr_trim;
                ufp_wdata_reg   <= ufp_wdata;
            end
        end
    end

    /* COMBINATIONAL ********************************************************************/

    assign ufp_addr_trim    = { ufp_addr[31:2], 2'b00 };
    assign ufp_active       = |ufp_rmask_reg || |ufp_wmask_reg;
    assign ready            = !ufp_active || ufp_resp;
    assign ufp_tag          = ufp_addr_reg[31:9];
    assign next_ufp_set     = ufp_addr_sel[8:5];
    assign ufp_set          = ufp_addr_reg[8:5];
    assign ufp_offset       = ufp_addr_reg[4:0];
    assign ufp_align_addr   = { ufp_addr_reg[31:5], 5'b00000 };

    // Hardwire LRU Array 
    // Port 0 always write
    // Port 1 always read
    assign lru_din1 = 'x;
    assign lru_csb1 = 1'b0;
    assign lru_web0 = 1'b0;
    assign lru_web1 = 1'b1;

    // "sel" refers to "select"
    // assign sel signals to registers if block is high
    // otherwise assign to ufp input ports
    // sel signals fed into cache arrays
    always_comb begin
        if (block) begin
            ufp_rmask_sel = ufp_rmask_reg;
            ufp_wmask_sel = ufp_wmask_reg;
            ufp_addr_sel  = ufp_addr_reg;
            ufp_wdata_sel = ufp_wdata_reg;
        end else begin
            ufp_rmask_sel = ufp_rmask;
            ufp_wmask_sel = ufp_wmask;
            ufp_addr_sel  = ufp_addr_trim;
            ufp_wdata_sel = ufp_wdata;
        end
    end

    // calculate eviction line and if dirty
    always_comb begin
        if (lru_dout1[2]) begin
            if (lru_dout1[1])
                evict_line_id = 2'd0;
            else
                evict_line_id = 2'd1;
        end else begin
            if (lru_dout1[0])
                evict_line_id = 2'd2;
            else
                evict_line_id = 2'd3;
        end
        evict_is_dirty  = (tag_dout0[evict_line_id][23] && valid_dout0[evict_line_id]);
        evict_wb_addr   = { tag_dout0[evict_line_id][22:0], ufp_set, 5'b0 };
    end

    // calculate if hit and which line is hit
    always_comb begin
        is_miss     = 1'b1;
        hit_line_id = 'x;
        valid_line  = 'x;
        if (valid_dout0[0] && (cpr.tag_reg == tag_dout0[0][22:0])) begin
            is_miss     = 1'b0;
            hit_line_id = 2'd0;
            valid_line  = data_dout0[0];
        end
        if (valid_dout0[1] && (cpr.tag_reg == tag_dout0[1][22:0])) begin
            is_miss     = 1'b0;
            hit_line_id = 2'd1;
            valid_line  = data_dout0[1];
        end
        if (valid_dout0[2] && (cpr.tag_reg == tag_dout0[2][22:0])) begin
            is_miss     = 1'b0;
            hit_line_id = 2'd2;
            valid_line  = data_dout0[2];
        end
        if (valid_dout0[3] && (cpr.tag_reg == tag_dout0[3][22:0])) begin
            is_miss     = 1'b0;
            hit_line_id = 2'd3;
            valid_line  = data_dout0[3];
        end
    end

    // bit shifting for use w/ dfp
    always_comb begin
        shift_line      = valid_line >> (ufp_offset*8);
        line_data       = shift_line[31:0];

        ufp_line_wdata  = { 224'b0, ufp_wdata_reg };
        ufp_line_wdata  = ufp_line_wdata << (ufp_offset*8);
        ufp_line_wmask  = { 28'b0, ufp_wmask_reg };
        ufp_line_wmask  = ufp_line_wmask << (ufp_offset);
    end

    // core cache logic
    always_comb begin

        block = 1'b0;

        cpr_next.wr_stall           = 1'b0;
        cpr_next.dfp_write_complete = 1'b0;
        cpr_next.dfp_read_complete  = 1'b0;
        cpr_next.tag_reg            = ufp_addr_sel[31:9];

        data_din0   = 'x;
        data_wmask0 = '0;
        tag_din0    = 'x;
        valid_din0  = 'x;
        lru_csb0    = 1'b1;
        for (int i  = 0; i < 4; i++) begin
            web0[i] = 1'b1;
        end

        ufp_rdata   = 'x;
        ufp_resp    = '0;

        dfp_addr    = 'x;
        dfp_wdata   = 'x;
        dfp_write   = '0;
        dfp_read    = '0;


        if (ufp_active) begin
            if (is_miss) begin
                block   = 1'b1;
                if (!cpr.dfp_read_complete) begin
                    if (evict_is_dirty && !cpr.dfp_write_complete) begin
                        dfp_addr    = evict_wb_addr;
                        dfp_wdata   = data_dout0[evict_line_id];
                        dfp_write   = 1'b1;
                        if (dfp_resp) begin
                            data_wmask0         = '0;
                            tag_din0            = { 1'b0, tag_dout0[evict_line_id][22:0] };
                            valid_din0          = 1'b1;
                            web0[evict_line_id] = 1'b0;
                            cpr_next.dfp_write_complete = 1'b1;
                        end
                    end else begin
                        dfp_addr    = ufp_align_addr;
                        dfp_read    = 1'b1;
                        if (dfp_resp) begin
                            data_wmask0         = '1;
                            data_din0           = dfp_rdata;
                            tag_din0            = { 1'b0, ufp_tag };
                            valid_din0          = 1'b1;
                            web0[evict_line_id] = 1'b0;
                            cpr_next.dfp_read_complete = 1'b1;
                        end
                    end
                end
            end else if (cpr.wr_stall) begin
                block               = 1'b1;
                cpr_next.wr_stall   = 1'b0;
            end else begin 
                ufp_resp    = 1'b1; // Raise resp
                lru_csb0    = 1'b0; // Write LRU array
                if (|ufp_rmask_reg) begin
                    ufp_rdata           = line_data;
                end else if (|ufp_wmask_reg) begin
                    block               = 1'b1;
                    data_wmask0         = ufp_line_wmask;
                    data_din0           = ufp_line_wdata;
                    tag_din0            = { 1'b1, tag_dout0[hit_line_id][22:0] };
                    valid_din0          = 1'b1;
                    web0[hit_line_id]   = 1'b0;
                    cpr_next.wr_stall   = 1'b1;
                end
            end
        end
    end

    /* MONITOR **************************************************************************/

        logic [22:0] monitor_tag;
        logic [3:0]  monitor_set;
        logic [2:0]  monitor_new_plru;
        logic [2:0]  monitor_old_plru;
        logic [1:0]  monitor_hit_line_id;
        logic        monitor_is_miss;
        logic        monitor_is_dirty;

    assign monitor_tag = ufp_addr_reg[31:9];
    assign monitor_set = ufp_addr_reg[8:5];
    assign monitor_old_plru = lru_dout1;
    assign monitor_new_plru = lru_din0;
    assign monitor_hit_line_id = hit_line_id;
    assign monitor_is_miss = is_miss;
    assign monitor_is_dirty = evict_is_dirty;


endmodule
