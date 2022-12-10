`timescale 1ns / 1ps

module display(input clk, en, rst, input [3:0] count1, count3, input[3:0] count2, count4, output reg [0:6] segments, output reg [3:0] anode_active);
wire clk_out;
wire [1:0] display;
reg[3:0] out;

clockDivider #(250000) cloc(clk, rst, clk_out);
binaryCounter #(2,4) disp(clk_out, rst, 1, 1'b0, 2'b00, display);
//module binaryCounter#(parameter x = 3, y = 8)(input clk, reset, en, load, [x-1:0] load_in, output reg [x-1:0] count);

//wire [3:0] count1, count3; 
//wire [2:0] count2, count4;
//module minutes_hours_counter(en, rst, clk, mins_units, hrs_units, mins_tens, hrs_tens);
//minutes_hours_counter clockie( en,rst, clk, count1, count3, count2, count4);

always @ (posedge clk_out) begin
case(display) 
0: begin
anode_active = 4'b1110;
out = count2; //mins_tens
end
1: begin
anode_active = 4'b1101;
out = count3; //hrs_units
end
2: begin
anode_active = 4'b1011;
out = count4; //hrs_tens
end
3: begin 
anode_active = 4'b0111;
out = count1; //mins_units
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