module master_tb;

    /* Waveform generation */
    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, "+all");
    end


    /* Declare testbenches here */
        logic ftb_done;
        logic ftb_error;
    fifo_tb fifo_tb(.done(ftb_done), .error(ftb_error));

    // OUT OF DATE
    //     logic clatb_done;
    //     logic clatb_error;
    // cladapt_tb cladapt_tb(.done(clatb_done), .error(clatb_error));

        logic rpt_done;
        logic rpt_error;
    rpt_tb rpt_tb(.done(rpt_done), .error(rpt_error));

    // OUT OF DATE
    //     logic sb_done;
    //     logic sb_error;
    // sb_tb sb_tb(.done(sb_done), .error(sb_error));

        logic alucdbtb_done;
        logic alucdbtb_error;
    alu_cdb_tb alu_cdb_tb(.done(alucdbtb_done), .error(alucdbtb_error));

        logic issuesqtb_done;
        logic issuesqtb_error;
    issue_squeue_tb issue_squeue_tb(.done(issuesqtb_done), .error(issuesqtb_error));

    always_comb begin
        if (ftb_done && rpt_done && alucdbtb_done && issuesqtb_done) begin
            $finish;
        end
        if (ftb_error || rpt_error || alucdbtb_error || issuesqtb_error) begin
            $fatal;
        end
    end

endmodule
