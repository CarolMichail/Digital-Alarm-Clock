`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2022 04:29:01 PM
// Design Name: 
// Module Name: decoder2x4
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


module decoder2x4(input [1:0]in, input en, output reg [3:0] out);

always @ (*) begin
if(en) begin
 case(in)
0: out = 2'b00;
1: out = 2'b01;
2: out = 2'b10;
3: out = 2'b11;
 endcase
 end
 end
endmodule

