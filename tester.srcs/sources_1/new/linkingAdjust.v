`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2022 02:11:38 PM
// Design Name: 
// Module Name: linkingAdjust
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


module linkingAdjust(input clk, en, rst, up, down,output reg Z  );
wire [3:0] mode;
pickMode pick( clk, en, rst, up, down,  mode);
FSM machine( clk, mode,Z );
upDownCounter co( clk, rst, up, down,Count);
endmodule
