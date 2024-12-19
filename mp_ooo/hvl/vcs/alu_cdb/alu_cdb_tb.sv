module alu_cdb_tb(output logic done, output logic error);
import rv32i_types::*;

    bit             clk;
    bit             rst;

    int timeout = 1000; // in cycles, change according to your needs

    initial clk = 1'b0;
    always #2ns clk = ~clk;

    initial rst = 1'b1;

    initial done = 1'b0;
    initial error = 1'b0;

    //------------------------
    //  Hook up module
    //------------------------

        // ALU Execution Unit
        eu_operand_t    alu_in;         // Controlled by RS
        logic           alu_start;      // Controlled by RS
        logic           alu_ready;      // Sent to RS
        logic           alu_done;
        cdb_t           alu_out;

        logic           alu_bc_stall;

        // Multiplication Execution Units
        eu_operand_t    mult_in;         // Controlled by RS
        logic           mult_start;      // Controlled by RS
        logic           mult_ready;      // Sent to RS
        logic           mult_done;
        cdb_t           mult_out;

        logic           mult_bc_stall;

        // Division Execution Units
        logic           div_bc_stall;

        // CDB OUTPUTS
        logic           cdb_bc;
        cdb_t           cdb_out;

    alu_eu alu_eu (
        .clk(clk),
        .rst(rst),
        .alu_start(alu_start),
        .alu_bc_stall(alu_bc_stall),
        .alu_in(alu_in),
        .alu_ready(alu_ready),
        .alu_done(alu_done),
        .alu_out(alu_out)
    );


    mult_eu mults_eu (
        .clk(clk),
        .rst(rst),

        .mult_start(mult_start),
        .mult_bc_stall(mult_bc_stall),

        .mult_in(mult_in),

        .mult_ready(mult_ready),
        .mult_done(mult_done),
        .mult_out(mult_out)
    );

    cdb cdb(
        .clk(clk),
        .rst(rst),
        .alu_done(alu_done),
        .alu_out(alu_out),
        .mult_done(mult_done),
        .mult_out(mult_out),
        .div_done('0),
        .div_out('0),
        .alu_bc_stall(alu_bc_stall),
        .mult_bc_stall(mult_bc_stall),
        .div_bc_stall(div_bc_stall),
        .cdb_bc(cdb_bc),
        .cdb_out(cdb_out)
    );


    //-----------------------------------
    //  Tasks for setup and tests
    //-----------------------------------

    task gen_rst();
        rst       = 1'b1;

        repeat (2) @(posedge clk);
        rst = 1'b0;
        @(posedge clk);
    endtask : gen_rst

    always_comb begin
        mult_start = 1'b0;
        mult_in = '0;
        mult_in.prs1_v = 32'd5;
        mult_in.prs2_v = 32'd3;
        if (mult_ready) begin
            mult_start = 1'b1;
        end
    end

    initial begin
        alu_start <= 1'b0;

        gen_rst();

        repeat (100) @(posedge clk);


        // Finish up
        $display("Exec Unit CDB  testbench finished!");
        done = 1'b1;

    end

    always @(posedge clk) begin
        if (timeout == 0) begin
            $error("Exec Unit CDB TB Error: Timed out");
            error = 1'b1;
        end
        timeout <= timeout - 1;
    end

endmodule
