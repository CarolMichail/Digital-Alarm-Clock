`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2022 07:50:00 PM
// Design Name: 
// Module Name: adjust
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


module adjust #(parameter mod1 = 10, mod2 = 6, n= 4) (input clk, en, rst, up, down,
input entimemin entimehrs, enalarmmin,enalarmhrs,
input  [3:0] timeminsunits, 
input  [3:0] timeminstens, 
input  [3:0] timehrsunits, 
input  [3:0] timehrstens, 
input  [3:0] alarmminsunits,
input  [3:0] alarmminstens,
input  [3:0] alarmhrsunits,
input  [3:0] alarmhrstens,
 
output reg [3:0] c1, 
output reg [3:0] c2,
output reg [3:0] c3,
output reg [3:0] c4,
output reg [3:0] c5,
output reg [3:0] c6,
output reg [3:0] c7,
output reg [3:0] c8,

);
assign c1= timeminsunits;
assign c2=timeminstens;
assign c3=timehrsunits;
assign c4=timehrstens;
assign c5=alarmminsunits;
assign c6=alarmminstens;
assign c7=alarmhrsunits;
assign c8=alarmhrstens;


reg [3:0] initial_alarm_minunits=0;
reg [3:0] initial_alarm_hrstens=0;
reg [3:0] initial_alarm_mintens=0;
reg [3:0] initial_alarm_hrsunits=0;

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
assign reset1 = (timehrsunits==4 && timehrstens == 2) ? 1 : 0;
assign reset2 = (alarmhrsunits==4 && alarmhrstens == 2) ? 1 : 0;


always@(*)begin

if(mode[0]) entimemin=1'b1;
else if (mode[1]) entimehrs= 1'b1;
else if (mod[2]) enalarmmin=1'b1;
else if (mod[3]) enalarmhrs=1'b1;


end

//paramUpDownCounter #(n1, mod1) c1(clkin, rst, (mode[0]&&up), up, down, counter1);
//paramUpDownCounter #(n2, mod2) c2(clkin, rst, (counter1 == mod1-1 & up) || (counter1==0 & down), up, down, counter2);

paramCounter #(n, 10) c1(clkin, rst, entimemin, up, down, c1);
paramCounter #(n, 6) c2(clkin, rst, (up &&(c1==9))||(c1==0 && down), up, down, c2);

paramCounter #(n, 10) c3(clkin, (reset1||rst), entimehrs, up, down, c3);
paramCounter #(n, 3) c4(clkin, rst, (up &&(c3==9))||(c3==0 && down)|| reset1, up, down, c4);


paramCounter #(n, 10) c1(clkin, rst, enalarmmin, up, down, c5);
paramCounter #(n, 6) c2(clkin, rst, (up&&(c5==9))||(c5==0 && down), up, down, c6);

paramCounter #(n, 10) c3(clkin, (reset2||rst), enalarmhrs, up, down, c7);
paramCounter #(n, 3) c4(clkin, rst, (up &&(c7==9))||(c7==0 && down)|| reset2, up, down, c8);

assign initial_alarm_minunits= c5;
assign initial_alarm_hrstens=c8;
assign initial_alarm_mintens=c6;
assign initial_alarm_hrsunits=c7;

//module paramUpDownCounter #(parameter x=4, n=9) (output clk, reset, en, up, down,output [x:0] Count);


endmodule





// binaryCounter #(n1,mod1) cntr1(clkout, rst, en, counter1);
// binaryCounter #(n2,mod2) cntr2(clkout, rst , (counter1 == 9), counter2);

//binaryCounter #(4,10) am1(clkout, rst, mode[3], alarm_mins_units); //registers for alaram minutes units
//binaryCounter #(3,6) am2(clkout, rst , (alarm_mins_units == 9), alarm_mins_tens); //register for alarm minutes tens


// binaryCounter #(4,10) cntr3(clkout, (reset||rst) , (mins_units == 9 && mins_tens == 5), hrs_units);
// binaryCounter #(2,3) cntr4(clkout, rst, (mins_units == 9 && mins_tens == 5 && hrs_units == 9) || reset, hrs_tens);

//module clock(output clk, en, rst, output [3:0] count1, count3, output[2:0] count2, count4, output reg [0:6] segments, output reg [3:0] anode_active);
//wire [3:0] alarm_mins_units; wire [2:0] alarm_mins_tens; 
//wire [3:0] time_mins_units; wire [2:0] time_mins_tens; 

//always @ (*) begin
//case(mode)
//3: begin


//end
//1:

//endcase
//end

