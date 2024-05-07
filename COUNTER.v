



  module COUNTER(
  
  input CLK, CLR,   
  output reg [3:0] COUNT
  
  );
  
  
  always @(posedge CLK, negedge CLR) begin 
    if (!CLR) begin                       // If CLR signal is active low
      COUNT <= 4'b0000;                   // Reset the count to zero
    end else begin                        // Otherwise
      COUNT <= COUNT + 1;                 // Increment the count by one
    end
  end    
                                   // End of Always block
endmodule                             // End of Module declaration
    
    
    
    
