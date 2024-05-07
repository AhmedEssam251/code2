
module DECODER (
	input [2:0] I,
	output reg [7:0] O
	);
	
	
	
	always@(*)
		case (I)
			3'b000 : O <=8'b00000001; 
		    //If the input I is 000, the output O is assigned the value 00000001
			3'b001 : O <=8'b00000010;  
			//If the input I is 001, the output O is assigned the value 00000010 
			3'b010 : O <=8'b00000100;  
			//If the input I is 010, the output O is assigned the value 00000100
			3'b011 : O <=8'b00001000; 
			//If the input I is 011, the output O is assigned the value 00001000
			3'b100 : O <=8'b00010000;  
			//If the input I is 100, the output O is assigned the value 00010000
			3'b101 : O <=8'b00100000; 
		    //If the input I is 101, the output O is assigned the value 00100000
			3'b110 : O <=8'b01000000; 
		    //If the input I is 110, the output O is assigned the value 01000000
			3'b111 : O <=8'b10000000; 
		    //If the input I is 111, the output O is assigned the value 10000000
		endcase

endmodule




