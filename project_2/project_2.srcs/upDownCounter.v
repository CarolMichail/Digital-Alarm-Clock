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


module upDownCounter #(parameter n = 2) (input /*up, down,*/ clk, reset, UpDown, output reg[n-1:0] count);
 //reg [n-1:0] count;
always @(posedge clk or posedge reset) begin 
//always @(posedge up or posedge down) begin 
if (reset == 1 ) count <= 0;
else if (UpDown == 0) count <= count + 1;  
else if (UpDown == 1) count <= count - 1; 
else count <= count;
end 
endmodule
