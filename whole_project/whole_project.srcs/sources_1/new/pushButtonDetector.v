`timescale 1ns / 1ps

module pushButtonDetector(input clk, rst, x, output z);
wire out1, out2, clkin;
clockDivider #(500000) cloc(clk, rst, clkin);
 
debouncer deb(clkin, rst, x, out1);
synchronizer synch(clkin, rst, out1, out2);
risingEdgeDetector rise(clkin, rst, out2, z);

endmodule
