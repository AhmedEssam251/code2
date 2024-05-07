module DR_REG(
    input LD,CLK,INC,CLR,
    input [15:0] inDR ,     //   "inDR" is the input of DR
    output [15:0] outDR ,   //   "outDR" is the output of DR 
    wire [15:0] inc16,sum,  // inc16 is 0000000000000001 that's used to be added to DR when increment 
    wire cout,
    reg [15:0] out
    );
    
    assign inc16=INC?16'b0000000000000001:16'b0;
    /*If the value of the variable "INC" is true (equal to 1),
     then the value 16 bits with all bits set to 1 on the right side will be assigned, 
     i.e., "16'b0000000000000001".
    If the value of "INC" is false (equal to 0),
     then the value 16 bits with all bits set to 0 will be assigned, 
     i.e., "16'b0".*/
    
    assign {cout,sum}= inc16+out;
    
    
   always @(posedge CLK or posedge CLR)
		begin
			if(CLR)
			begin
				out<=16'b0;
			end
				
			else if(LD)
			begin
		    	out<=inDR;
		    end	
					
			else if(INC)
            begin
			   out<=sum;
			end										  
		end	
	assign outDR =out ;
	
endmodule
