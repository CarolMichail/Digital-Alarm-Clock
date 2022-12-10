`timescale 1ns / 1ps

module upDownCounter #(parameter n = 2, mod = 4) (input clk, reset, en, load, up, down, input [n-1:0] load_in, output [n-1: 0] Count);
//    input reset,up, down, clk, en;
//    output [n-1 : 0] Count;
 reg [n-1 : 0] Count = 0; 

 always @(posedge clk)
 begin
    if(reset == 1) Count <= 0;
    if(load) Count <= load_in;
    if(en) begin
    if(up == 1 && Count < mod) Count <= Count + 1; //up
    else if(down == 1 && Count >= 0) Count <= Count - 1; //down
    else Count <= Count;
    end
    else Count <= Count;
 end    
 
endmodule
