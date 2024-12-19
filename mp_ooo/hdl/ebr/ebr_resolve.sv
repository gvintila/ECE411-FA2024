module ebr_resolve
import rv32i_types::*;
import params::*;
(
    input   logic [EBR_MASK_SIZE-1:0]   in_mask,
    input   logic [EBR_MASK_SIZE-1:0]   bra_id,
    input   logic                       bra_mispredict,
    output  logic [EBR_MASK_SIZE-1:0]   out_mask,
    output  logic                       invalid
);

    // the out mask removes the branch being resolved from the in mask
    assign out_mask = in_mask & ~bra_id;
    // invalid is high only if the in mask has overlap with branch being resolved and mispredict is high
    assign invalid  = |(in_mask & bra_id) & bra_mispredict;

endmodule