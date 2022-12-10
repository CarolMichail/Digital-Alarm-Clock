`timescale 1ns / 1ps

module FSM(input clk,en, rst, input [4:0] x, output [3:0] mode, output [3:0] anode_active, output [0:6] segments);
 //module clock(input clk, en, rst, output reg [0:6] segments, output reg [3:0] anode_active);
 wire enable;
 wire left, right, up, down, control;
 
 pushButtonDetector c(clk, rst, x[0], control); // btnc
 pushButtonDetector r(clk, rst, x[1], right); // right, in pick mode (BTNR)
 pushButtonDetector l(clk, rst, x[2], left); // left, in pick mode {BTNL)
 pushButtonDetector u(clk, rst, x[3], up); // up/incremnet, in adjust mode (BTNU)
 pushButtonDetector d(clk, rst, x[4], down); // down/decrement, in adjust mode (BTND)

 reg [4:0] state, nextState; // State register and next state
 parameter [4:0] clock = 5'b00000, adjust= 5'b00001, time_h = 5'b00010, time_min = 5'b00100, alarm_h= 5'b01000, alarm_min = 5'b10000;
 

 always @ (control, right, left, up, down, state) begin // Next-state logic
if(en) begin
 case (state)
 clock: if (control) nextState = adjust;
    else nextState = clock;

 adjust: if (right) nextState = time_h;
    else if (left) nextState = alarm_min;
    else if(control) nextState = clock;
    else nextState= adjust;
 
 time_h : if (right) nextState = time_min;
      else if (left) nextState = alarm_min;
      else if(control) nextState = clock;
      else nextState = time_h;
 
 time_min: if (right) nextState = alarm_h;
     else if (left) nextState=time_h;
     else if(control) nextState = clock;
     else nextState = time_min;
 
 alarm_h: if (right) nextState = alarm_min;
     else if (left) nextState=time_min;
     else if(control) nextState = clock;
     else nextState= alarm_h;
 
 alarm_min: if (right) nextState = time_h;
     else if (left) nextState = alarm_h;
     else if(control) nextState = clock;
    else nextState= alarm_min;

 default nextState = clock;
 endcase
 end

 end

 wire clkin;
clockDivider #(500000) cloc(clk, rst, clkin);

 always @ (posedge clkin, posedge rst) begin // Create the state memory
     if(rst) state <= clock;
     else state <= nextState;
 end
 assign mode[0] = (state == time_h);
 assign mode[1] = (state == time_min);
 assign mode[2] = (state == alarm_h);
 assign mode[3] = (state == alarm_min);
 assign enable = (state == clock)?1:0;
 
 reg [3:0] c1,c2,c3, c4,c5,c6,c7,c8;
 
  wire[3:0] timeminsunits,timeminstens,timehrsunits , timehrstens,  alarmminsunits, alarmminstens,alarmhrsunits , alarmhrstens;
 wire [3:0] adjusttimeminsunits, adjusttimeminstens, adjusthrsunits, adjusthrs;
 reg enalarmhrs, entimehrs, enalarmmin,entimemin; 
assign adjusttimeminstens=mins_tens;
assign adjusttimeminsunits=mins_units;
assign adjusthrsunits=hrs_units;
assign adjusthrs=hrs_tens;
minutes_hours_counter rr( en, rst, clk, mins_units, hrs_units, mins_tens, hrs_tens);
reg [3:0] initial_alarm_minunits=0;
reg [3:0] initial_alarm_hrstens=0;
reg [3:0] initial_alarm_mintens=0;
reg [3:0] initial_alarm_hrsunits=0;

always@(*)begin
 assign alarmminsunits = initial_alarm_minunits;
 assign alarmminstens= initial_alarm_mintens;
 assign alarmhrsunits= initial_alarm_hrstens;
 assign alarmhrstens= initial_alarm_hrstens;
 end
// always@(*)begin

//if(mode[0]) entimemin=1'b1;
//else if (mode[1]) entimehrs= 1'b1;
//else if (mod[2]) enalarmmin=1'b1;
//else if (mod[3]) enalarmhrs=1'b1;

reg [3:0] LD12, // ALARM MIN
LD13, //ALARMHRS
LD14, //TIME MIN 
LD15; // TIME HRS

//end
always@(*)begin
 if (mode[0])begin
  assign enalarmhrs= 1'b0;
  assign enalarmmin=1'b0;
  assign entimemin=1'b1;
  assign entimehrs=1'b0;
  assign LD14=4'b0001;
 
end
if (mode[1])begin
assign enalarmhrs= 1'b0;
 assign enalarmmin=1'b0;
 assign entimemin=1'b0;
 assign entimehrs=1'b1;
 assign LD15=4'b0001;
end
if (mode[2])begin
assign enalarmhrs= 1'b1;
 assign enalarmmin=1'b0;
 assign entimemin=1'b0;
 assign entimehrs=1'b0;
assign LD13=4'b0001;
end
if (mode[3]) begin
 assign enalarmhrs= 1'b0;
 assign enalarmmin=1'b1;
 assign entimemin=1'b0;
 assign entimehrs=1'b0;
 assign LD12=4'b0001;
 end 
 else 
 assign enalarmhrs= 1'b0;
 assign enalarmmin=1'b0;
 assign entimemin=1'b0;
 assign entimehrs=1'b0;
 assign LD14=4'b0001;
 end
 
 adjust #(10,6,4)ff( clk, en, rst, up, down,
 entimemin, entimehrs, enalarmmin, enalarmhrs,adjusttimeminsunits, adjusttimeminstens, adjusthrsunits,  adjusthrs, 
 alarmminsunits,alarmminstens, alarmhrsunits,alarmhrstens, c1, c2,c3, c4,c5, c6, c7,c8);
clock clklock( clk, en, rst ,count1, count3,count2, count4, segments, anode_active);

endmodule
