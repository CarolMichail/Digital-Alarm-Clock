`timescale 1ns / 1ps

module minutes_hours_counter(input en, rst, clk, load, input [3:0] load_mins_units, load_mins_tens, load_hrs_units, load_hrs_tens, 
output [3:0] mins_units, output [3:0] hrs_units, output [3:0]mins_tens, hrs_tens);

wire clkout;
wire reset;
assign reset = (hrs_units == 4 && hrs_tens == 2) ? 1 : 0;
//module binaryCounter#(parameter x = 3, y = 8)(input clk, reset, en, load, [x-1:0] load_in, output reg [x-1:0] count);

 clockDivider#(5000000) cloc(clk, rst, clkout);
 binaryCounter #(4,10) cntr1(clkout, rst, en, load, load_mins_units, mins_units);
 binaryCounter #(4,6) cntr2(clkout, rst , (mins_units == 9),load, load_mins_tens, mins_tens);
 binaryCounter #(4,10) cntr3(clkout, (reset||rst) , (mins_units == 9 && mins_tens == 5), load, load_hrs_units, hrs_units);
 binaryCounter #(4,3) cntr4(clkout, rst, (mins_units == 9 && mins_tens == 5 && hrs_units == 9) || reset, load, load_hrs_tens, hrs_tens);
 
endmodule