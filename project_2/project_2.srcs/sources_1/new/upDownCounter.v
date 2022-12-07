`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2022 04:26:44 PM
// Design Name: 
// Module Name: upDownCounter
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


module upDownCounter #(parameter n = 2) (input clk, reset, UpDown, output [n:0]count);
 reg [n:0] count;
 always @(posedge clk, posedge reset) begin 
if (reset == 1) count <= 3'd0;

else if (UpDown == 0) count <= count + 1; 
else if (UpDown == 1) count <= count - 1; 

end
endmodule
