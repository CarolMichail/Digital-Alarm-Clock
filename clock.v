`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2022 02:37:01 PM
// Design Name: 
// Module Name: clock
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


module clock(input clk, en, rst, output reg [0:6] segments, output reg [3:0] anode_active);
wire clk_out; wire [1:0] display;
reg[3:0] out;
wire [3:0] count1, count3; 
wire [2:0] count2, count4;
clockDivider #(250000)cloc(clk, rst, clk_out);
binaryCounter #(2, 4) disp(clk_out, rst, 1, display);
minutes_hours_counter clockie( en,rst, clk, count1, count3, count2, count4);
always @ (posedge clk_out) begin
case(display) 
0: begin
anode_active = 4'b1110;
out = count2;
end
1: begin
anode_active = 4'b1101;
out = count3;
end
2: begin
anode_active = 4'b1011;
out = count4;
end
3: begin 
anode_active = 4'b0111;
out = count1;
end
endcase
end 

always @ (posedge clk_out) begin
case(out)
0: segments = 7'b0000001;
1: segments = 7'b1001111;
2: segments = 7'b0010010;
3: segments = 7'b0000110;
4: segments = 7'b1001100;
5: segments = 7'b0100100;
6: segments = 7'b0100000;
7: segments = 7'b0001111;
8: segments = 7'b0000000;
9: segments = 7'b0000100;
default: segments = 7'b1001000;
endcase
end
endmodule