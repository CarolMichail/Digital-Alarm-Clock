`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2022 04:54:32 PM
// Design Name: 
// Module Name: minutes_hours_counter
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

//module minutes_hours_counter(input en, rst, clk, output [3:0] mins_units, output [3:0] hrs_units, output [3:0]mins_tens, hrs_tens);

//reg reset;
//wire clkout;
//clockDivider#(500000) cloc(clk, rst, clkout);

//always @ (posedge clkout) begin
//reset = (hrs_units == 3 && hrs_tens == 2 && mins_tens == 5 && mins_units == 9) ? 1 : 0;
//end

// binaryCounter #(4,10) cntr1(clkout, (reset||rst), en, mins_units);
// binaryCounter #(4,6) cntr2(clkout, (rst||reset), (mins_units == 9), mins_tens);
// binaryCounter #(4,10) cntr3(clkout, (reset||rst), (mins_units == 9 && mins_tens == 5), hrs_units);
// binaryCounter #(4,3) cntr4(clkout, (rst||reset), (mins_units == 9 && mins_tens == 5 && hrs_units == 9), hrs_tens);
//endmodule