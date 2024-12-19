/*
 *  The cacheline adapter module will translate data requests from the MC to the BMEM and vice versa.
 *  Data requests from MC to BMEM can be initiated whenever the BMEM is ready and CL is not write bursting.
 *  Pending data requests can come back OOO which will be sent with the respective addresses
 */
module cacheline_adapter    // CL
import rv32i_types::*;
import params::*;
(
    input   logic                               clk,
    input   logic                               rst,

    // Adapter <- Burst Memory
    input   logic                               bmem_ready,
    input   logic   [31:0]                      bmem_raddr,
    input   logic   [63:0]                      bmem_rdata,
    input   logic                               bmem_rvalid,

    // Adapter -> Burst Memory
    output  logic   [31:0]                      bmem_addr,
    output  logic                               bmem_read,
    output  logic                               bmem_write,
    output  logic   [63:0]                      bmem_wdata,

    // Memory Controller -> Adapter
    input   logic   [31:0]                      mc_addr,
    input   logic                               mc_read,
    input   logic                               mc_write,
    input   logic   [255:0]                     mc_wdata,  

    // Memory Controller <- Adapter
    output  logic                               cl_ready, 
    output  logic   [31:0]                      cl_raddr,
    output  logic   [255:0]                     cl_rdata,
    output  logic                               cl_resp
);

logic   [255:0]     rbuffer, wbuffer; 
logic   [1:0]       rburst, wburst;
logic               rsend, wsend;
logic   [31:0]      cl_waddr;

always_ff @(posedge clk) begin
    if (rst) begin
        rbuffer             <= 'x;
        wbuffer             <= 'x;
        rburst              <= '0;
        wburst              <= '0;
        rsend               <= '0;
        wsend               <= '0;
        cl_raddr            <= 'x;
        cl_waddr            <= 'x;
    end
    else begin
        // Send cacheline to MC
        if (rsend) begin
            rsend           <= '0;
            cl_raddr        <= 'x;
        end

        // Receive read bursts from BMEM
        if (bmem_rvalid) begin
            if (rburst == '1) begin
                rburst      <= '0;
                rsend       <= '1;
                cl_raddr    <= bmem_raddr;
            end
            else begin
                rburst      <= rburst + 1'b1;
            end

            rbuffer[rburst * 64 +: 64]  <= bmem_rdata;
        end

        // Send write bursts to BMEM
        if (bmem_ready && wsend) begin
            if (wburst == '1) begin
                wburst      <= '0;
                wsend       <= '0;
                cl_waddr    <= 'x;
            end
            else begin
                wburst      <= wburst + 1'b1;
            end
        end
        else if (bmem_ready && mc_write && !wsend) begin
            wburst          <= wburst + 1'b1;
            wsend           <= '1;
            wbuffer         <= mc_wdata;
            cl_waddr        <= mc_addr;
        end
    end
end

always_comb begin
    bmem_addr       = 'x;
    bmem_read       = '0;
    bmem_write      = '0;
    bmem_wdata      = 'x;

    cl_ready        = '0;
    cl_rdata        = 'x;
    cl_resp         = '0;

    // Cladapt is ready to take data from MC whenever BMEM is ready and not sending write bursts
    if (bmem_ready && !wsend) begin
        cl_ready    = '1;
    end

    // Send cacheline to MC
    if (rsend) begin
        cl_rdata    = rbuffer;
        cl_resp     = '1;
    end

    // Send read request to BMEM
    if (bmem_ready && mc_read) begin
        bmem_addr   = mc_addr;
        bmem_read   = '1;
    end

    // Send write bursts to BMEM
    if (bmem_ready && wsend) begin
        bmem_wdata  = wbuffer[wburst * 64 +: 64];
        bmem_addr   = cl_waddr;
        bmem_write  = '1;
    end
    else if (bmem_ready && mc_write) begin
        bmem_wdata  = mc_wdata[wburst * 64 +: 64];
        bmem_addr   = mc_addr;
        bmem_write  = '1;
    end
end

endmodule : cacheline_adapter
