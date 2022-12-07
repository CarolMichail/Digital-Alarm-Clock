`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2022 02:33:31 PM
// Design Name: 
// Module Name: binaryCounter
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


module binaryCounter#(parameter x = 3, y = 8)(input clk, reset, en, output reg [x-1:0] count);
always @(posedge clk) begin
if (reset == 1) count <= 0; 
if(en == 1) begin
 if(count == y-1) count <= 0;
 else count <= count + 1;
end
end
endmodule
