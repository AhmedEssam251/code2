

module DFF(Q, D, CLK, EN);

	output reg Q;
	input D, CLK, EN;

	initial begin 
		Q = 1'b0; 
	end

	always @(posedge CLK) begin
      if(EN)
			Q <= D;
	end	
	
endmodule



