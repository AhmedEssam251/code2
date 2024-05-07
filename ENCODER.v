
module Encoder (Sel, DN);

  input [7:0] DN;
   output [2:0] Sel;

   assign Sel =
     (DN[7] == 1'b1) ? 3'b111:
     (DN[6] == 1'b1) ? 3'b110:
     (DN[5] == 1'b1) ? 3'b101:
     (DN[4] == 1'b1) ? 3'b100:
     (DN[3] == 1'b1) ? 3'b011:
     (DN[2] == 1'b1) ? 3'b010:
     (DN[1] == 1'b1) ? 3'b001:
     (DN[0] == 1'b1) ? 3'b000: 3'bxxx;

endmodule
