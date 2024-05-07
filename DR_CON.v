module DR_CON_SIGNALS(

	input [7:0] T,D,
	output LD, INC,
	wire A
	
	);

	assign INC = D[6] & T[5];
	assign A = (D[0] | D[1] | D[2] | D[6]);
	assign LD = T[4] & A ;

endmodule
