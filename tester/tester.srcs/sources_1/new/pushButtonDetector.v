`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 02:34:56 PM
// Design Name: 
// Module Name: pushButtonDetector
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


module pushButtonDetector(input clk, rst, x, output z);
wire out1, out2, clkin;
 clockDivider #(500000) cloc(clk, rst, clkin);
 
 debouncer deb(clkin, rst, x, out1);
 synchronizer synch(clkin, rst, out1, out2);
 risingEdgeDetector rise(clkin, rst, out2, z);

endmodule