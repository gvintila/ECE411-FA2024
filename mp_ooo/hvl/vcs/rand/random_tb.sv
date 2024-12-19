//-----------------------------------------------------------------------------
// Title                 : random_tb
// Project               : ECE 411 mp_verif
//-----------------------------------------------------------------------------
// File                  : random_tb.sv
// Author                : ECE 411 Course Staff
//-----------------------------------------------------------------------------
// IMPORTANT: If you don't change the random seed, every time you do a `make run`
// you will run the /same/ random test. SystemVerilog calls this "random stability",
// and it's to ensure you can reproduce errors as you try to fix the DUT. Make sure
// to change the random seed or run more instructions if you want more extensive
// coverage.
//------------------------------------------------------------------------------
module random_tb
import rv32i_types::*;
(
    mem_itf_banked.mem itf
);

    `include "../../hvl/vcs/rand/randinst.svh"

    RandInst gen = new();
    int burst = 0;          // Indicates whether burst is occurring
    int burst_instr = 0;    // Send two instructions per burst

    // raddr doesn't matter
    assign itf.raddr = '0;
    // itf should always be ready
    assign itf.ready = '1;


    // Do a bunch of LUIs to get useful register state.
    task init_register_state();
        burst = 0;
        burst_instr = 0;
        for (int i = 0; i < 32; ++i) begin
            // If no burst is happening, wait for read signal
            if (burst == 0 && burst_instr == 0)
                @(posedge itf.clk iff |itf.read);

            gen.randomize() with {
                instr.j_type.opcode == op_b_lui;
                instr.j_type.rd == i[4:0];
            };

            // Your code here: package these memory interactions into a task.
            itf.rdata[burst_instr*32 +: 32] <= gen.instr.word;
            itf.rvalid <= 1'b1;

            // Once full burst is sent, clock and iterate to next burst
            if (burst_instr == 1) begin
                @(posedge itf.clk); 
                burst_instr = 0;
                burst = (burst + 1) % 4;
            end
            else begin
                burst_instr = 1;
            end
        end
    endtask : init_register_state

    // Note that this memory model is not consistent! It ignores
    // writes and always reads out a random, valid instruction.
    task run_random_instrs();
        burst = 0;
        burst_instr = 0;
        repeat (5000) begin
            // If no burst is happening, wait for read signal
            if (burst == 0 && burst_instr == 0)
                @(posedge itf.clk iff |itf.read);

            // Always read out a valid instruction.
            gen.randomize();
            itf.rdata[burst_instr*32 +: 32] <= gen.instr.word;
            itf.rvalid <= 1'b1;

            // Once full burst is sent, clock and iterate to next burst
            if (burst_instr == 1) begin
                @(posedge itf.clk); 
                burst_instr = 0;
                burst = (burst + 1) % 4;
            end
            else begin
                burst_instr = 1;
            end
        end
    endtask : run_random_instrs

    always @(posedge itf.clk iff !itf.rst) begin
        if ((|itf.read) || (|itf.write)) begin
            if ($isunknown(itf.addr)) begin
                $error("Memory Error: Address contained 'x");
                itf.error <= 1'b1;
            end
            // Only check for 16-bit alignment since instructions are
            // allowed to be at 16-bit boundaries due to JALR.
            if (itf.addr[0] != 1'b0) begin
                $error("Memory Error: Address is not 16-bit aligned");
                itf.error <= 1'b1;
            end
        end
    end

    // A single initial block ensures random stability.
    initial begin

        // Wait for reset.
        @(posedge itf.clk iff itf.rst == 1'b0);

        // Get some useful state into the processor by loading in a bunch of state.
        init_register_state();

        // Run!
        run_random_instrs();

        // Finish up
        $display("Random testbench finished!");
        $finish;
    end

endmodule : random_tb
