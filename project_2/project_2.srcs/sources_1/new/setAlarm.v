`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2022 04:35:45 PM
// Design Name: 
// Module Name: setAlarm
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


module setAlarm(input clk, en, rst, Up, Down,  output [3:0]out);
wire countup; 
wire countdown; 
wire outUp;
wire outDown;
pushButtonDetector BTNR(clk, rst, Up,  outUp);
pushButtonDetector BNTL(clk, rst, Down,  outDown);
upDownCounter #(2) c1 ( clk, rst, 1,0 ,  countup);
upDownCounter #(2) c2 ( clk, rst, 0,1,  countdown);
decoder2x4 dec( {countup,countdown}, en,   out);
 
endmodule
