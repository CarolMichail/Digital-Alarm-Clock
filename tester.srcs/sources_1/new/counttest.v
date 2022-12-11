//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 12/09/2022 08:22:51 PM
//// Design Name: 
//// Module Name: counttest
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


//module counttestmodule #(parameter mod1 = 10, mod2 = 6, n1 = 4, n2 = 3) (input clk, en, rst, up, down, 
//output reg [n1-1:0] counter1, output reg [n2-1:0] counter2, output reg [n1-1:0] counter3, output reg [n2-1:0] counter4, 
//output reg [0:6] segments, output reg [3:0] anode_active);

// pushButtonDetector u(clk, rst, x[3], up); // up/incremnet, in adjust mode (BTNU)
// pushButtonDetector d(clk, rst, x[4], down);
    
// wire clkout;
//clockDivider#(5000000) cloc(clk, rst, clkout);

//reg[1:0] state, next_state;
//parameter [1:0] n = 2'b00, u = 2'b10, d = 2'b01;


//always @ (state, up, down) begin
//case(state)
//n: if({down,up} == 2'b01) next_state = u;
//else if({down,up} == 2'b10) next_state = d;
//else next_state = state;
//u: if({down,up} == 2'b10) next_state = d;
//else next_state = n;
//d: if({down,up} == 2'b01) next_state = u;
//else next_state = n;
//default: next_state = n;
//endcase
//end

//always @ (posedge clkout or posedge rst) begin
//if(rst) state <= n;
//else state <= next_state;
//end

//wire up, down;
//assign up = (next_state == u) ? 1:0;
//assign down = (next_state == d) ? 1:0;

//assign reset = (counter3==4 && counter4 == 2) ? 1 : 0;
////upDownCounter c(clkin, rst, add, sub, out);

//paramCounter #(n1, mod1) c1(clkin, rst, en, up, down, counter1);
//paramCounter #(n2, mod2) c2(clkin, rst, (counter1 == mod1-1 && up) || (counter1==0 && down), up, down, counter2);

//paramCounter #(n1, mod1) c3(clkin, (reset||rst), (counter2==mod1-1 && up)||(counter3==mod2-1 && down), up, down, counter3);
//paramCounter #(n2, mod2) c4(clkin, rst, (counter1 == mod1-1&& up) || (counter1==0 && down)||(counter3==mod2-1 && down)|| reset, up, down, counter4);


//FSM(clk, en, rst,  , mode,  anode_active, segments);

//always @ (posedge clk_out) begin
//case(mode) 
//0: begin
//end
//1: begin
//anode_active = 4'b1101;
//out = counter2;
//end
//2: begin
//anode_active = 4'b1011;
//out = counter3;
//end
//3: begin 
//anode_active = 4'b0111;
//out = counter4;
//end
//endcase

//end 
//always @ (posedge clk_out) begin
//case(out)
//0: segments = 7'b0000001;
//1: segments = 7'b1001111;
//2: segments = 7'b0010010;
//3: segments = 7'b0000110;
//4: segments = 7'b1001100;
//5: segments = 7'b0100100;
//6: segments = 7'b0100000;
//7: segments = 7'b0001111;
//8: segments = 7'b0000000;
//9: segments = 7'b0000100;
//default: segments = 7'b1001000;
//endcase
//end
//endmodule
