`timescale 1ns / 1ps


module minutes_hours_counter(input en, rst, clk, output [3:0] mins_units, output [3:0] hrs_units, output [2:0]mins_tens, hrs_tens);

wire clkout;
wire reset;
assign reset = (hrs_units == 4 && hrs_tens == 2) ? 1 : 0;

 clockDivider#(5000000) cloc(clk, rst, clkout);
 binaryCounter #(4,10) cntr1(clkout, rst, en, mins_units);
 binaryCounter #(3,6) cntr2(clkout, rst , (mins_units == 9), mins_tens);
 binaryCounter #(4,10) cntr3(clkout, (reset||rst) , (mins_units == 9 && mins_tens == 5), hrs_units);
 binaryCounter #(2,3) cntr4(clkout, rst, (mins_units == 9 && mins_tens == 5 && hrs_units == 9) || reset, hrs_tens);
 
endmodule