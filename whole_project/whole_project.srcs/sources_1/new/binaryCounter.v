`timescale 1ns / 1ps

module binaryCounter#(parameter x = 3, y = 8)(input clk, reset, en, load, [x-1:0] load_in, output reg [x-1:0] count);
always @(posedge clk) begin
if (reset == 1) count <= 0; 
if(load) count <= load_in;
if(en == 1) begin
 if(count == y-1) count <= 0;
 else count <= count + 1;
end
end
endmodule
