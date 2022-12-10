`timescale 1ns / 1ps

module adjust(input clk, en, rst, up, down, 
input[3:0] clkin_mins_units, clkin_mins_tens, clkin_hrs_units, clkin_hrs_tens,
alarmin_mins_units, alarmin_mins_tens, alarmin_hrs_units, alarmin_hrs_tens, 
input[3:0] mode, output reg load, 
output [3:0] counter1, counter2, counter3, counter4,
counter11, counter12, counter13, counter14);

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

assign up = (next_state == u) ? 1:0;
assign down = (next_state == d) ? 1:0;

reg[3:0] state_, next_state_;
//parameter [3:0] m0 = 4'b0001, m1 = 4'b0010, m2 = 4'b0100, m3 = 4'b1000;
parameter m0 = 1'b0, m1 = 1'b1; 
always @ (state_, mode) begin
case(state)
m0: if(mode==m0) state_ <= m0;
else next_state_ = mode;

endcase
end

//always @ (posedge clk)
//if(

//end

wire reset, reset2;
reg en1, en2, en3, en4;


always @ (*) begin
if(mode[0]) begin en1 = 1'b1; end//mins clock
else if(mode[1]) begin en2 = 1'b1; end //hrs clock
else if(mode[3]) begin en3 = 1'b1; end //mins alarm
else if(mode[4]) begin en4 = 1'b1; end //hrs alarm
//load = 1'b1;
end

assign reset = (clkin_hrs_units==4 && clkin_hrs_tens==2)? 1 : 0;
assign reset2 = (alarmin_hrs_units==4 && alarmin_hrs_tens==2)? 1 : 0;

upDownCounter #(4, 10) timemins(clkout, rst, en1, up, down, clkin_mins_units); //mins clock
upDownCounter #(4, 6) timeminsTens(clkout, rst, (clkin_mins_units==9&&up)||(clkin_mins_units==0&&down), up, down, clkin_mins_tens); 

//module upDownCounter #(parameter n = 2, mod = 4) (input clk, reset, en, load, up, down, input [n-1:0] load_in, output [n-1: 0] Count);

 
upDownCounter #(4, 10) timehrs(clkout, (reset||rst), en2, up, down, clkin_hrs_units); //hrs clock
upDownCounter #(4, 3) timehrsTens(clkout, rst, (clkin_hrs_units==9&&up)||(clkin_hrs_units==0&&down)||reset, up, down, clkin_hrs_tens);

upDownCounter #(4, 10) mins(clkout, rst, en3, up, down, alarmin_mins_units); //mins alarm
upDownCounter #(4, 6) minsTens(clkout, rst, (alarmin_mins_units==9&&up)||(alarmin_mins_units==0&&down), up, down, alarmin_mins_tens); 
 
upDownCounter #(4, 10) hrs(clkout, (reset2||rst), en4, up, down, alarmin_hrs_units); //hrs alarm
upDownCounter #(4, 3) hrsTens(clkout, rst, (alarmin_hrs_units==9&&up)||(alarmin_hrs_units==0&&down)||reset2, up, down, alarmin_hrs_tens);


assign counter1 = clkin_mins_units;
assign counter2 = clkin_mins_tens;
assign counter3 = clkin_hrs_units;
assign counter4 = clkin_hrs_tens;

assign counter11 = alarmin_mins_units;
assign counter12 = alarmin_mins_tens;
assign counter13 = alarmin_hrs_units;
assign counter14 = alarmin_hrs_tens;

endmodule
