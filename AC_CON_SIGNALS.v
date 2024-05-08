
module AC_CON_SIGNALS(

	input[7:0] T, D,
	input[15:0] B,
	input I,
	output LD, INC, CLR,
    output AND, CMA, LDA, ADD, SUB,OR,XOR
    
   );

	wire In = ~I;
	wire r = D[7] & In & T[3]; 
	
	assign AND = D[0] & T[5];  // AC <- AC & DR 
	assign ADD = T[5] & D[1];  // AC <- AC + DR
	assign LDA = T[5] & D[2];  // AC <- DR  (LD AC) 
	assign SUB = D[3] & T[5]; 
	assign OR  = D[4] & T[5];
	assign XOR = D[5] & T[5];

	assign INC = B[5] & r;
	assign LD  =( AND | ADD | LDA  | SUB | OR | XOR );  
    assign CLR = r & B[11]; 
    
    
endmodule