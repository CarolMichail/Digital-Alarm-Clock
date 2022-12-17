`timescale 1ns / 1ps

module FSM(input clk, en, rst, input [4:0] x, output [3:0] mode, output reg [3:0] anode_active, output reg [0:6] segments, output enable, output reg dp, output alarmBuzz);
 wire left, right, up, down, control; //these are the wires on which we will recive the more stable signal from each button
 
 pushButtonDetector c(clk, rst, x[0], control); // btnc
 pushButtonDetector r(clk, rst, x[1], right); // right, in pick mode (BTNR)
 pushButtonDetector l(clk, rst, x[2], left); // left, in pick mode {BTNL)
 pushButtonDetector upie(clk, rst, x[3], up); // up/incremnet, in adjust mode (BTNU)
 pushButtonDetector downie(clk, rst, x[4], down); // down/decrement, in adjust mode (BTND)

 reg [4:0] state, nextState; // State register and next state
 parameter[4:0] clock = 5'b00000, adjust= 5'b00001, time_h = 5'b00010, time_min = 5'b00100, alarm_h= 5'b01000, alarm_min = 5'b10000; //these are the states in our FSM
//we opted for hot encoding as a more effective method

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
clockDivider #(500000) cloc(clk, rst, clkin); //clkin is used in the FSM for modes and for turning the alarm on or off

always @ (posedge clkin, posedge rst) begin // Create the state memory
     if(rst) state <= clock;
     else state <= nextState;
end
 
 assign mode[0] = (state == time_h); //mode when adjusting the clock's hours
 assign mode[1] = (state == time_min); //mode when adjusting the clock's minutes
 assign mode[2] = (state == alarm_h); //mode when setting the alarm's hours 
 assign mode[3] = (state == alarm_min); //mode when setting the alarm's hours 

reg [1:0] stateBlink, next_stateBlink;
parameter [1:0] node = 2'b01, alarm = 2'b10;

always @ (stateBlink, acount1, count1, acount2, count2, acount3, count3, acount4, count4, control, left, right, up, down) begin //FSM  to turn the alarm on or off
case(stateBlink) 
node: if((acount1==count1)&&(acount2==count2)&&(acount3==count3)&&(acount4==count4)&&(sec1==asec1)&&(sec2==asec2)) next_stateBlink = alarm; //compares alarm and clock, if they are we get the signal to alarm
else next_stateBlink = node;
alarm: if(control || left|| right|| up|| down) next_stateBlink = node; //if any button is pressed when in alarm mode, we exit it
else next_stateBlink = alarm; 

default: next_stateBlink = node;
endcase
end

always @ (posedge clkin or posedge rst) begin
if(rst) stateBlink <= node;
else stateBlink <= next_stateBlink; 
end


wire alarmNclock, blinkClk; //the blinkCLK is bc we want the led to blink when it's the alarm, and alarmNclock checks when it is the alatm time

clockDivider #(50000000) blink(clk, rst, blinkClk);
assign alarmNclock = (stateBlink == alarm)? blinkClk : 0;
assign alarmBuzz = (stateBlink == alarm)? 1 : 0; //this sends out the buzzer signal
assign enable = (state != clock) || (alarmNclock)? 1 : 0; //enable checks if we are in adjust mode or if it is alarm, it's the output connected to the far right LED
wire enclock; assign enclock = (state != clock) ?1:0; //enclock, enables the counters that act as the clock to work


reg[1:0] state_, next_state_; //states for up and down counter
parameter [1:0] n = 2'b00, u = 2'b10, d = 2'b01;

always @ (state_, up, down) begin // a FSM to send signals for the up/down signals we recieve in adjust mode
case(state_)
n: if(up&&~down) next_state_ = u;
else if(down&&~up) next_state_ = d;
else next_state_= state_;
u: if(down&&~up) next_state_ = d;
else next_state_ = n;
d: if(up&&~down) next_state_ = u;
else next_state_ = n;
default: next_state_ = n;
endcase
end


always @ (posedge clkin or posedge rst) begin
if(rst) state_ <= n;
else state_ <= next_state_;
end

wire add, sub;
assign add = (next_state_ == u) ? 1:0; //add are signals we send to the counters
assign sub = (next_state_ == d) ? 1:0; //subtract signal or down
 
 wire hrsormins;
 assign hrsormins = (mode[0]||mode[2])?1:0; //if we are editing minutes, this is true
 
 wire [3:0] count1, count3, count2, count4, sec1, sec2; //counters saving the clock's value
 wire [3:0] acount1, acount3, acount2, acount4, asec1, asec2; //counters saving the alarm's value
 
clock clk(clk, (en&&~enclock), rst, (enclock&&~mode[3]&&~mode[2]), add, sub, hrsormins, count1, count3, count2, count4, sec1, sec2); //clock counters
alarm alarmie(clk, 0, rst, (enclock&&~mode[1]&&~mode[0]), add, sub, hrsormins, acount1, acount3, acount2, acount4, asec1, asec2); //alarm counter

wire displayAlarm; //this is what we use to decide which counters we are outputting on the 7seg
assign displayAlarm = (mode[2]||mode[3])?1:0; //it is true only if we are adjusting the alarm

//start of display
reg[3:0] out;
wire [1:0] display;
wire clk_out;
clockDivider #(250000)clo(clk, rst, clk_out);

binaryCounter #(2, 4) disp(clk_out, rst, 1, 0, 0, 0, 0, display); //a rapidly shifting counter to ouput the 7seg fast enough for our eyes not to see the anodes shifting
 
wire dpclk; //connected to the decimal point
clockDivider #(50000000) decimalPnt(clk, rst, dpclk); //gives off the blinking effect

always @ (posedge clk_out) begin
case(display) 
0: begin
anode_active = 4'b1110;
out = (displayAlarm)? acount2:count2; //the counter for minutes tens
dp = 1;
end
1: begin
anode_active = 4'b1101;
out = (displayAlarm)? acount3:count3; //the counter for hours units
dp = 1; // where dp should be working
end
2: begin
anode_active = 4'b1011;
out = (displayAlarm)? acount4:count4; //counter for hour's tens
dp = (enclock) ? 0 : dpclk;
end
3: begin 
anode_active = 4'b0111;
out = (displayAlarm)?acount1:count1; //counter for minutes units 
dp = 1;
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
//end of display
 
endmodule
