`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 05:30:56 PM
// Design Name: 
// Module Name: testingUD
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


module testingUD();
reg reset, up, down;
wire [1:0] out;
//module upDownCounter #(parameter n = 2, y = 4) (input clk, en, reset, upDown, output reg [n-1:0] count);
upDownCounter w(reset, up, down, out);

//initial begin
//clk = 0 ;
//forever #50 clk=~clk;
//end

initial begin
reset=1;
up = 0; down = 0;
#100
reset=0; up = 1; down = 0;
#100
reset=0; up = 1; down = 0;
#100
reset=0; up = 1; down = 0;
#100
reset=0; up = 0; down = 1;
end
endmodule
