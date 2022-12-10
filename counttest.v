`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2022 08:22:51 PM
// Design Name: 
// Module Name: counttest
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


module counttestmodule #(parameter mod1 = 10, mod2 = 6, n=4) (input clk, en, rst, up, down, 
output reg [n1-1:0] minsunits, output reg [n2-1:0] minstens, output reg [n1-1:0] hrsunits, output reg [n2-1:0] hrstens);

 pushButtonDetector u(clk, rst, x[3], up); // up/incremnet, in adjust mode (BTNU)
 pushButtonDetector d(clk, rst, x[4], down);
    
 wire clkout;
clockDivider#(5000000) cloc(clk, rst, clkout);

reg[1:0] state, next_state;
parameter [1:0] n = 2'b00, u = 2'b10, d = 2'b01;


always @ (state, up, down) begin
case(state)
n: if({down,up} == 2'b01) next_state = u;
else if({down,up} == 2'b10) next_state = d;
else next_state = state;
u: if({down,up} == 2'b10) next_state = d;
else next_state = n;
d: if({down,up} == 2'b01) next_state = u;
else next_state = n;
default: next_state = n;
endcase
end

always @ (posedge clkout or posedge rst) begin
if(rst) state <= n;
else state <= next_state;
end

wire up, down;
assign up = (next_state == u) ? 1:0;
assign down = (next_state == d) ? 1:0;

assign reset = (hrsunits==4 && hrstens == 2) ? 1 : 0;

input en1, en2;

always@(*)begin
if(mod[0]||mod[2]) en1=1'b1;
else if (mod[1]||mod[3]) en2=1'b1;
end

paramCounter #(n, 10) c1(clkin, rst, en1, up, down, minsunits);
paramCounter #(n, 6) c2(clkin, rst, (up&&(minsunits==9))||(minsunits==0 && down), up, down, mintens);

paramCounter #(n, 10) c3(clkin, (reset||rst), en2, up, down, hrsunits);
paramCounter #(n, 3) c4(clkin, rst, (up &&(hrsunits==9))||(hrsunits==0 && down), up, down, hrstens);

 










endmodule
