
module MUX(

	input d0,d1,d2,d3,d4,d5,d6,d7,
	input [2:0] selection,
	output reg out
	);

	always@(selection)
	begin
		case(selection)
			3'b000 : out = d0;
			//when selection ==> 000 -----> * out = d0 *
			3'b001 : out = d1;
			//when selection ==> 001 -----> * out = d1 * .... and so on !
			3'b010 : out = d2;
			3'b011 : out = d3;
			3'b100 : out = d4;
			3'b101 : out = d5;
			3'b110 : out = d6;
			3'b111 : out = d7;
		endcase
	end

endmodule
