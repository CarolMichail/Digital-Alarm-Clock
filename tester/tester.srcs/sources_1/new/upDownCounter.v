`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 02:39:31 PM
// Design Name: 
// Module Name: upDownCounter
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

module upDownCounter (input clk, updown, rst, output reg [1:0]count);

always @(posedge clk) begin
 if (rst == 1) count <= 2'd0; // non-blocking assignment
 // initialize flip flop here
 else if(updown == 0) count <= count + 1; // non-blocking assignment
 // normal operation
 else if(updown == 1) count <= count - 1;
 else count<=count;
end
endmodule

// always @(posedge clk, posedge reset) begin 
//if (reset == 1 ) count <= 0;
//if(count < mod && count >= 0) begin
//if (UpDown == 0) count <= count + 1;  
//else if (UpDown == 1) count <= count - 1; 
//else count <= count;
//end 
//else count <= count;
//end

//endmodule