`timescale 1ns / 1ps

module FSM(input clk, en, rst, input [4:0] x, output [3:0] mode, output [3:0] anode_active, output [0:6] segments);
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
     //load=1'b0;end //send a really fast signal m the states elly fel main l adjust
 
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
     //if(state == nextState)
 end
 
 assign mode[0] = (state == time_h);
 assign mode[1] = (state == time_min);
 assign mode[2] = (state == alarm_h);
 assign mode[3] = (state == alarm_min);
 
 assign enable = (state == clock)?1:0;
 
 
 wire [3:0] adj_clkmins_units, adj_clkmins_tens, adj_clkhrs_units, adj_clkhrs_tens, 
 adj_alarmmins_units, adj_alarmmins_tens, adj_alarmhrs_units, adj_alarmhrs_tens;
 
 reg [3:0] clkmins_units, clkmins_tens, clkhrs_units, clkhrs_tens;
 
 reg [3:0] minsUnits, minsTens, hrsUnits, hrsTens;
 
 reg [3:0] alarmmins_units, alarmmins_tens, alarmhrs_units, alarmhrs_tens;
 
always @ (*) begin
 clkmins_units = minsUnits;
 clkmins_tens = minsTens;
 clkhrs_units = hrsUnits;
 clkhrs_tens = hrsTens;
end

 wire load;
 adjust a(clk, (~enable), rst, up, down, clkmins_units, clkmins_tens, clkhrs_units, clkhrs_tens,
 alarmmins_units, alarmmins_tens, alarmhrs_units, alarmhrs_tens, mode, load, adj_clkmins_units, 
 adj_clkmins_tens, adj_clkhrs_units, adj_clkhrs_tens, adj_alarmmins_units, adj_alarmmins_tens, 
 adj_alarmhrs_units, adj_alarmhrs_tens);
 
 reg toLoad; assign toLoad = (load)?1:0;
 minutes_hours_counter clockie((en&&enable), rst, clk, toLoad, adj_clkmins_units, adj_clkmins_tens, adj_clkhrs_units, adj_clkhrs_tens, minsUnits, hrsUnits, minsTens, hrsTens);

 
always @ (posedge clkin) begin
if(toLoad) begin
alarmmins_units = adj_alarmmins_units;
alarmmins_tens = adj_alarmmins_tens;
alarmhrs_units = adj_alarmhrs_units;
alarmhrs_tens = adj_alarmhrs_tens;
end
end
 
// always @ (*) begin
// case(load)
// 4'b0001: begin
// minsUnits = adj_clkmins_units;
// minsTens = adj_clkmins_tens;
// end
// 4'b0010: begin
// hrsUnits = adj_clkhrs_units;
// hrsTens = adj_clkhrs_tens;
// end
// 4'b0100: begin
// alarmmins_units = adj_alarmmins_units;
// alarmmins_tens = adj_alarmmins_tens;
// end
// 4'b1000: begin
// alarmhrs_units = adj_alarmhrs_units;
// alarmhrs_tens = adj_alarmhrs_tens;
// end
// endcase
// end


 reg[3:0] disp_mins1, disp_mins2, disp_hrs1, disp_hrs2;
 
// always @ (posedge clkin) begin
// if(state == clock) begin
// disp_mins1 = minsUnits;
// disp_mins2 = minsTens;
// disp_hrs1 = hrsUnits;
// disp_hrs2 = hrsTens;
// end
 
// else if(state == time_h) begin
// disp_mins1 = minsUnits;
// disp_mins2 = minsTens;
// disp_hrs1 = adj_clkhrs_units;
// disp_hrs2 = hrsTens;
// end 
 
// else if(state == time_min) begin
// disp_mins1 = adj_clkmins_units;
// disp_mins2 = adj_clkmins_tens;
// disp_hrs1 = hrsUnits;
// disp_hrs2 = hrsTens;
// end 
 
// else if(state == alarm_h) begin
// disp_mins1 = alarmmins_units;
// disp_mins2 = alarmmins_tens;
// disp_hrs1 = adj_alarmhrs_units;
// disp_hrs2 = adj_alarmhrs_tens;
// end
 
// else if(state == alarm_min) begin
// disp_mins1 = adj_alarmmins_units;
// disp_mins2 = adj_alarmmins_tens;
// disp_hrs1 = alarmhrs_units;
// disp_hrs2 = alarmhrs_tens;
// end
// end

//display(clk, en, rst, disp_mins1, disp_mins2, disp_hrs1, disp_hrs2, segments, anode_active);

endmodule