module bim #(
            parameter               S_INDEX     = 4
)(
    input   logic                   clk0,
    input   logic                   rst0,
    input   logic                   csb0,
    input   logic                   web0,
    input   logic   [S_INDEX-1:0]   addr0,
    input   logic                   din0,
    input   logic                   csb1,
    input   logic   [S_INDEX-1:0]   addr1,
    output  logic        dout1
);

            localparam              NUM_SETS    = 2**S_INDEX;

            logic                   web0_reg;
            logic   [S_INDEX-1:0]   addr0_reg;
            logic       din0_reg;

            logic   [S_INDEX-1:0]   addr1_reg;

            logic   [1:0]     internal_array [NUM_SETS];

    always_ff @(posedge clk0) begin
        if (rst0) begin
            web0_reg  <= 1'b1;
            addr0_reg <= 'x;
            din0_reg  <= 'x;
            addr1_reg <= 'x;
        end else begin
            if (!csb0) begin
                web0_reg  <= web0;
                addr0_reg <= addr0;
                din0_reg  <= din0;
            end
            if (!csb1) begin
                addr1_reg <= addr1;
            end
        end
    end

        logic [1:0] debug_internal;
    assign debug_internal = internal_array[addr0_reg];

        logic [1:0] new_value;
    always_comb begin
        if (din0_reg) begin // Increment
            if (internal_array[addr0_reg] == 2'd3) begin
                new_value = 2'd3;
            end else begin
                new_value = internal_array[addr0_reg] + 2'd1;
            end
        end else begin
            if (internal_array[addr0_reg] == 2'd0) begin
                new_value = 2'd0;
            end else begin
                new_value = internal_array[addr0_reg] - 2'd1;
            end
        end
    end

    always_ff @(posedge clk0) begin
        if (rst0) begin
            for (int i = 0; i < NUM_SETS; i++) begin
                internal_array[i] <= 2'd1;
            end
        end else begin
            if (!web0_reg) begin
                internal_array[addr0_reg] <= new_value;
            end
        end
    end

    always_comb begin
        dout1 = (internal_array[addr1_reg] >= 2'd2);
    end

endmodule : bim

