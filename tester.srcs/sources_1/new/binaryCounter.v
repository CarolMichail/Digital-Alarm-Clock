`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2022 04:53:45 PM
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

module binaryCounter#(parameter x = 4, y = 10)(input clk, reset, en, load, up, down, load4, output reg [x-1:0] count);
//reg [x-1:0] count = 0;
always @(posedge clk or posedge reset) begin
if (reset == 1) count <= 0; 
else if(load == 1) begin
    if(up == 1 && count < y-1) count <= count + 1; //up
    else if(down == 1 && count > 0) count <= count - 1; //down
    else if(count == 0 && down) count <= (y-1);
    else if(count == y-1 && up) count <= 0;
    else count <= count;
    if(load4) count <= 3;
    end 
else if(en == 1) begin
    if(count == y-1) count <= 0;
    else count <= count + 1;
end 
else count <= count;
end
endmodule
