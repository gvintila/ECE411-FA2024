module top_tb
import rv32i_types::*;
import params::*;
(
    input   logic   clk,
    input   logic   rst
);

    longint timeout;
    initial begin
        $value$plusargs("TIMEOUT_ECE411=%d", timeout);
    end

    mem_itf_banked mem_itf(.*);
    dram_w_burst_frfcfs_controller mem(.itf(mem_itf));

    mon_itf #(.CHANNELS(8)) mon_itf(.*);
    monitor #(.CHANNELS(8)) monitor(.itf(mon_itf));

    cpu dut(
        .clk            (clk),
        .rst            (rst),

        .bmem_addr  (mem_itf.addr  ),
        .bmem_read  (mem_itf.read  ),
        .bmem_write (mem_itf.write ),
        .bmem_wdata (mem_itf.wdata ),
        .bmem_ready (mem_itf.ready ),
        .bmem_raddr (mem_itf.raddr ),
        .bmem_rdata (mem_itf.rdata ),
        .bmem_rvalid(mem_itf.rvalid)
    );

    `include "rvfi_reference.svh"

    /************************* PERFORMANCE COUNTERS *************************/
    bit enable_performance_counters     = 1'b1;
    real total_cycles                   = 0.0;
    real total_stalls                   = 0.0;

    // MC
    real icache_dfp_rstall_count        = 0.0;
    real icache_dfp_resp_count          = 0.0;
    real dcache_dfp_rstall_count        = 0.0;
    bit exp_dc_read                     = 1'b0;
    real dcache_dfp_rresp_count         = 0.0;
    real dcache_dfp_wstall_count        = 0.0;
    bit exp_dc_write                    = 1'b0;
    real dcache_dfp_dwrite_count        = 0.0;
    real dcache_dfp_wresp_count         = 0.0;

    real icbc_hit_count                 = 0.0;
    real dcbc_hit_count                 = 0.0;
    real dcbc_rpt_alloc_count           = 0.0;
    real dcbc_stride_distance           = 0.0;
    real drt_stall_count                = 0.0;
    real cl_stall_count                 = 0.0;

    real mc_mixed_prefetch_count        = 0.0;

    // Cache
    bit exp_ic_hit                      = 1'b0;
    real icache_ufp_reads               = 0.0;
    real icache_ufp_hits                = 0.0;
    bit exp_dc_hit                      = 1'b0;
    real dcache_ufp_reads               = 0.0;
    real dcache_ufp_hits                = 0.0; 

    // Fetch
    real fetch_empty_count              = 0.0;

    // Dispatcher
    real disp_stall_count               = 0.0;
    real temp                           = 0.0;
    real free_empty_count               = 0.0;
    real lq_stall_count                 = 0.0;
    real sq_stall_count                 = 0.0;
    real flush_count                    = 0.0;

    // Branch
    real total_branch_count             = 0.0;
    real total_mispredict_count         = 0.0;

    // Reservation Stations
    bit enable_perfc_rstation           = 1'b1;
    real rstation_full_count            = 0.0;
    real isq_alu_stall_count            = 0.0;
    real isq_bmd_stall_count            = 0.0;
    real isq_ls_stall_count             = 0.0;
    // real rstation_issue_count           = 0.0;
    // real rstation_utilization           = 0.0;

    // ROB
    bit enable_perfc_rob                = 1'b1;
    real rob_full_count                 = 0.0;

    // CDB
    bit enable_perfc_cdb                = 1'b1;
    real cdb_bc_count[CDB_WIDTH];

    function void set_cdb_count();
        for (int unsigned i = 0; i < CDB_WIDTH; i++)
            cdb_bc_count[i]             = 0.0;
    endfunction : set_cdb_count

    initial begin
        set_cdb_count();
    end

    real cdb_alu_done_count             = 0.0;
    real cdb_alu_stall_count            = 0.0;
    real cdb_bra_done_count             = 0.0;
    real cdb_bra_stall_count            = 0.0;
    real cdb_ls_done_count              = 0.0;
    real cdb_ls_stall_count             = 0.0;
    real cdb_mult_done_count            = 0.0;
    real cdb_mult_stall_count           = 0.0;
    real cdb_big_stall_count            = 0.0;

    // LSQ
    bit enable_perfc_lsq                = 1'b1;
    real lsq_full_count                 = 0.0;
    real lq_utilization                 = 0.0;
    real sq_utilization                 = 0.0;
    real lq_full_count                  = 0.0;
    real sq_full_count                  = 0.0;
    real lsq_done_count                 = 0.0;
    real lsq_forward_count              = 0.0;

    // M Extension
    bit enable_perfc_mext               = 1'b1;
    real total_div_count                = 0.0;
    real total_mult_count               = 0.0;

    task count_cache_stalls();

        // MC
        // Cache requests

        if (dut.icache_dfp_read)
            icache_dfp_rstall_count += 1.0;

        if (dut.dcache_dfp_read) begin
            dcache_dfp_rstall_count += 1.0;
            exp_dc_read             <= '1;
        end

        if (dut.dcache_dfp_write) begin
            dcache_dfp_wstall_count += 1.0;
            exp_dc_write            <= '1;
        end

        // Cache responses

        if (dut.icache_dfp_resp) begin
            icache_dfp_resp_count  += 1.0;
        end

        if (exp_dc_read && dut.dcache_dfp_resp) begin
            dcache_dfp_rresp_count   += 1.0;
            exp_dc_read             <= '0;
        end

        if (exp_dc_write && dut.dcache_dfp_resp) begin
            dcache_dfp_wresp_count  += 1.0;
            exp_dc_write            <= '0;
            dcache_dfp_dwrite_count += 1.0;
        end


        // Prefetching

        if (dut.memory_controller.icbc_hit)
            icbc_hit_count += 1.0;
        if (dut.memory_controller.dcbc_hit)
            dcbc_hit_count += 1.0;

        if (!dut.memory_controller.drt_ready)
            drt_stall_count += 1.0;
        if (!dut.cladapt.bmem_ready)
            cl_stall_count += 1.0;

        if (dut.memory_controller.icbc_drt_req_real && dut.memory_controller.dcbc_drt_req_real)
            mc_mixed_prefetch_count += 1.0;


        // RPT

        if (dut.memory_controller.dcache_buffer_controller.rpt_allocate) begin
            dcbc_rpt_alloc_count += 1.0;
            dcbc_stride_distance += 1.0 * dut.memory_controller.dcache_buffer_controller.rpt_stride_out;
        end

        // Cache UFP

        if (dut.icache_ufp_rmask) begin
            icache_ufp_reads += 1.0;
            exp_ic_hit <= '1;
        end
        else begin
            exp_ic_hit <= '0;
        end

        if (exp_ic_hit && dut.icache_ufp_resp)
            icache_ufp_hits += 1.0;

        if (dut.dcache_ufp_rmask) begin
            dcache_ufp_reads += 1.0;
            exp_dc_hit <= '1;
        end
        else begin
            exp_dc_hit <= '0;
        end

        if (exp_dc_hit && dut.dcache_ufp_resp)
            dcache_ufp_hits += 1.0;

    endtask : count_cache_stalls

    task count_fetch_stalls();
        if (dut.ft_iq_empty)
            fetch_empty_count += 1.0;
    endtask : count_fetch_stalls

    task count_disp_stalls();
        if (dut.dispatcher.disp_stall)
            disp_stall_count += 1.0;
        if (dut.dispatcher.late_flush)
            flush_count += 1.0;
        if (dut.dispatcher.lq_stall)
            lq_stall_count += 1.0;
        if (dut.dispatcher.sq_stall)
            sq_stall_count += 1.0;
        if (dut.dispatcher.free_empty)
            free_empty_count += 1.0;
        
    endtask : count_disp_stalls

    task count_rstation_perfc();
        // temp = 0.0;
        // for (int unsigned i = 0; i < NUM_RESERVATION_STATIONS; i++) begin
        //     if (dut.reservation_station.rstation[i].valid)
        //         temp += 1.0;
        // end
        // rstation_utilization += (temp / real'(NUM_RESERVATION_STATIONS));
        if (dut.dispatcher.rstation_full)
            rstation_full_count += 1.0;
        if (!dut.rs_issue.isq_alu_ready_in)
            isq_alu_stall_count += 1.0;
        if (!dut.rs_issue.isq_bmd_ready_in)
            isq_bmd_stall_count += 1.0;
        if (!dut.rs_issue.isq_ls_ready_in)
            isq_ls_stall_count += 1.0;
    endtask : count_rstation_perfc

    task count_rob_perfc();
        if (dut.rob_full)
            rob_full_count += 1.0;
    endtask : count_rob_perfc

    task count_cdb_perfc();
        for (int unsigned i = 0; i < CDB_WIDTH; i++) begin
            if (dut.cdb_bc[i])
                cdb_bc_count[i] += 1.0;
        end

        // if (dut.alu_done)
        // if (dut.bra_done)
        // if (dut.ls_done)
        // if (dut.mult_done)

        if (dut.cdb.alu_bc_stall)
            cdb_alu_stall_count += 1.0;
        if (dut.cdb.bra_bc_stall)
            cdb_bra_stall_count += 1.0;
        if (dut.cdb.ls_bc_stall)
            cdb_ls_stall_count += 1.0;
        if (dut.cdb.mult_bc_stall)
            cdb_mult_stall_count += 1.0;
        // if (dut.cdb.big_cdb_bc_fifo.queue_state[0])
        //     cdb_big_stall_count += 1.0;

    endtask : count_cdb_perfc

    task count_branch_perfc();
        if (dut.bra_done)
            total_branch_count += 1.0;
        if (dut.bra_mispredict)
            total_mispredict_count += 1.0;
    endtask : count_branch_perfc

    task count_lsq_perfc();
        temp = 0.0;
        for (int unsigned i = 0; i < LOAD_QUEUE_DEPTH; i++) begin
            if (dut.lsq.lq[i].valid)
                temp += 1.0;
        end
        lq_utilization += (temp / real'(LOAD_QUEUE_DEPTH));
        if (dut.lq_full && !dut.dispatcher.decode.is_load_store)
            lq_full_count += 1.0;

        temp = 0.0;
        for (int unsigned i = 0; i < STORE_QUEUE_DEPTH; i++) begin
            if (dut.lsq.sq[i].valid)
                temp += 1.0;
        end
        sq_utilization += (temp / real'(STORE_QUEUE_DEPTH));
        if (dut.sq_full && dut.dispatcher.decode.is_load_store)
            sq_full_count += 1.0;

        if (!dut.lsq_controller.lsq_dmem_necessary_split_reg)
            lsq_forward_count += 1.0;
        if (dut.ls_done)
            lsq_done_count += 1.0;
    endtask : count_lsq_perfc

    task count_mext_perfc();
        if (dut.div_start)
            total_div_count += 1.0;
        if (dut.mult_start)
            total_mult_count += 1.0;
    endtask : count_mext_perfc


    task finish_tb();
        if (enable_performance_counters) begin
            $display("-----------------------------------");
            $display("Performance Counters:");
            $display("Memory Controller:");
            $display("Ratio of stalled dfp_icache cycles to responses: %f", (icache_dfp_rstall_count / icache_dfp_resp_count));
            $display("Ratio of stalled dfp_dcache read cycles to responses: %f", (dcache_dfp_rstall_count / dcache_dfp_rresp_count));
            $display("Ratio of stalled dfp_dcache write cycles to responses: %f", (dcache_dfp_wstall_count / dcache_dfp_wresp_count));
            $display("Number of dirty writes made by dfp_dcache: %f", dcache_dfp_dwrite_count);
            $display("I-Cache prefetcher hit rate: %f", (100.0 * icbc_hit_count / icache_dfp_resp_count));
            $display("D-Cache prefetcher hit rate: %f", (100.0 * dcbc_hit_count / dcache_dfp_rresp_count));
            $display("Number of times I-Cache prefetcher request took priority over D-Cache: %f", mc_mixed_prefetch_count);
            $display("Number of strides predicted: %f", dcbc_rpt_alloc_count);
            $display("Average stride length: %f", (dcbc_stride_distance / dcbc_rpt_alloc_count));
            $display("Percent of cycles DRT is not ready to take requests: %f", (100.0 * drt_stall_count / total_cycles));
            $display("-----------------------------------");

            $display("Cache:");
            $display("I-Cache UFP read hit rate: %f", (100.0 * icache_ufp_hits / icache_ufp_reads));
            $display("D-Cache UFP read hit rate: %f", (100.0 * dcache_ufp_hits / dcache_ufp_reads));
            $display("-----------------------------------");

            $display("Fetch:");
            $display("Percent of total cycles fetch queue is empty: %f", (100.0 * fetch_empty_count / total_cycles));
            $display("-----------------------------------");

            $display("Branches:");
            $display("Total number of branches: %f", total_branch_count);
            $display("Percent of total branches mispredicted: %f", (100.0 * total_mispredict_count / total_branch_count));
            $display("-----------------------------------");

            $display("Dispatcher:");
            $display("Percent of total cycles dispatcher stalls: %f", (100.0 * disp_stall_count / total_cycles));
            $display("Percent of dispatcher stalls due to rstation_full: %f", (100.0 * rstation_full_count / disp_stall_count));
            $display("Percent of dispatcher stalls due to rob_full: %f", (100.0 * rob_full_count / disp_stall_count));
            $display("Percent of dispatcher stalls due to lq: %f", (100.0 * lq_stall_count / disp_stall_count));
            $display("Percent of dispatcher stalls due to sq: %f", (100.0 * sq_stall_count / disp_stall_count));
            $display("Percent of dispatcher stalls due to flush: %f", (100.0 * flush_count / disp_stall_count));
            $display("Percent of dispatcher stalls due to free_empty: %f", (100.0 * free_empty_count / disp_stall_count));
            $display("-----------------------------------");

            if (enable_perfc_rstation) begin
                $display("Reservation Stations:");
                $display("Percent of total cycles rstation is full: %f", (100.0 * rstation_full_count / total_cycles));
                $display("Percent of total cycles ISQ_ALU not ready to take dispatcher: %f", (100.0 * isq_alu_stall_count / total_cycles));
                $display("Percent of total cycles ISQ_BMD not ready to take dispatcher: %f", (100.0 * isq_bmd_stall_count / total_cycles));
                $display("Percent of total cycles ISQ_LS not ready to take dispatcher: %f", (100.0 * isq_ls_stall_count / total_cycles));
                $display("-----------------------------------");
            end

            if (enable_perfc_cdb) begin
                $display("CDB:");
                for (int unsigned i = 0; i < CDB_WIDTH; i++)
                    $display("Percent of total cycles CDB (%d) broadcasts: %f", i, (100.0 * cdb_bc_count[i] / total_cycles));
                $display("Percent of total cycles ALU CDB stalls: %f", (100.0 * cdb_alu_stall_count / total_cycles));
                $display("Percent of total cycles BRA CDB stalls: %f", (100.0 * cdb_bra_stall_count / total_cycles));
                $display("Percent of total cycles LS CDB stalls: %f", (100.0 * cdb_ls_stall_count / total_cycles));
                $display("Percent of total cycles MULT CDB stalls: %f", (100.0 * cdb_mult_stall_count / total_cycles));
                $display("Percent of total cycles BIG CDB stalls: %f", (100.0 * cdb_big_stall_count / total_cycles));
                $display("-----------------------------------");
            end

            if (enable_perfc_lsq) begin
                $display("Load Store Queue:");
                $display("LQ Utilization: %f", (100.0 * lq_utilization / total_cycles));
                $display("SQ Utilization: %f", (100.0 * sq_utilization / total_cycles));
                $display("Number of stall due to lq full: %f", lq_full_count);
                $display("Number of stall due to sq full: %f", sq_full_count);
                $display("Number of Load Fully Forwarded: %f", lsq_forward_count);
                $display("-----------------------------------");
            end

            if (enable_perfc_mext) begin
                $display("M Extension");
                $display("Total Division Instructions: %f", total_div_count);
                $display("Total Multiplication Instructions: %f", total_mult_count);
                $display("-----------------------------------");
            end
        end
        $finish;
    endtask : finish_tb

    initial begin
        `ifdef ECE411_FST_DUMP
            $dumpfile("dump.fst");
        `endif
        `ifdef ECE411_VCD_DUMP
            $dumpfile("dump.vcd");
        `endif
        $dumpvars();
        if ($test$plusargs("NO_DUMP_ALL_ECE411")) begin
            $dumpvars(0, dut);
            $dumpoff();
        end else begin
            $dumpvars();
        end
    end

    final begin
        $dumpflush;
    end

    always @(posedge clk) begin
        for (int unsigned i = 0; i < 8; ++i) begin
            if (mon_itf.halt[i]) begin
                finish_tb();
            end
        end
        if (timeout == 0) begin
            $error("TB Error: Timed out");
            $fatal;
        end
        if (mon_itf.error != 0) begin
            $fatal;
        end
        if (mem_itf.error != 0) begin
            $fatal;
        end
        timeout <= timeout - 1;

        /* Performance counters */
        if (enable_performance_counters) begin
            total_cycles += 1.0;
            count_cache_stalls();
            count_fetch_stalls();
            count_branch_perfc();
            count_disp_stalls();
            count_rstation_perfc();
            count_rob_perfc();
            count_cdb_perfc();
            count_lsq_perfc();
            count_mext_perfc();
        end
    end

endmodule
