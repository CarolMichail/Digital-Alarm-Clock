`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 02:38:54 PM
// Design Name: 
// Module Name: pickMode
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

module pickMode(input clk, en, rst, up, down, output  [1:0]out);
//reg [1:0] state, next_state;

//wire up, down;

wire [1:0] count; //i unregged this
wire outup, outdown;

pushButtonDetector BTNR(clk, rst, up,  outup);
pushButtonDetector BNTL(clk, rst, down,  outdown);

reg upDown;

always @ (posedge clk) begin
case({outup,outdown})
10: upDown = 1'b0;
01: upDown = 1'b1;
default: upDown = 1'b0;  
endcase
end

upDownCounter c1 (clk, upDown, rst, count); //the counter does not return to zero once it reaches the last bit
decoder2x4 dec(count, en, out);
 
endmodule
