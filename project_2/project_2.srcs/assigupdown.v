`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 06:10:54 PM
// Design Name: 
// Module Name: assigupdown
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


module assigupdown( input clk, upout,downout, output reg updown);
always @ (posedge clk) begin
if (upout ==1'b1 && downout ==1'b0)
begin updown=1'b0; end
else if (upout ==1'b0&& downout ==1'b1)
begin  updown=1'b1; end
else updown=1'b0;
end
endmodule
