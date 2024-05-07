


module Dff_reset(Q, D, CLK, EN, RESET);

	output reg Q;
	input D, CLK, EN,RESET;

  always @(posedge CLK or posedge RESET) begin
    if(RESET)
			Q <= 1'b0;
    else if(EN)
			Q <= D;
	end	
	
endmodule