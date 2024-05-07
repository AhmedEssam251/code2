`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 01:34:47 PM
// Design Name: 
// Module Name: DR_CON_SIGNALS
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DR_CON_SIGNALS(

	input [7:0] T,D,
	output LD, INC,
	wire A
	
	);

	assign INC = D[6] & T[5];
	assign A = (D[0] | D[1] | D[2] | D[6]);
	assign LD = T[4] & A ;

endmodule
