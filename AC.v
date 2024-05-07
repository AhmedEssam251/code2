`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2024 12:25:05 PM
// Design Name: 
// Module Name: AC_REG
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


module AC_REG(

  output reg [15:0] Q,
  input      [15:0] Data,
  input      INC, LD, CLK, CLR
  );
  
  always @(posedge CLK or posedge CLR)
    begin
      if (CLR)
        Q = 16'b0;
      else if (LD)
        Q = Data;
    end  
    

endmodule
