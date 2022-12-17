`timescale 1ns / 1ps

module clock(input clk, en, rst, load, up, down, hrsORmins, output [3:0] count1, count3, count2, count4, sec1, sec2); //if hrsORmins == 0, adjust mins, else adjust hrs
wire clkin;

clockDivider #(500000) clocki(clk, rst, clkin);

//beginning of counter minutes hours

reg reset, rest;
always @ (posedge clkin) begin
reset = (count3 == 4 && count4 == 2 && count2 == 0 && count1 == 0);
rest = (count3 == 4 &&count4 == 2 && load && hrsORmins && up); //i added up
//for reseting the clock, if we are in enable mode, it waits for 23:59 
//if in load mode, we wait for the hours to hit 24 to reset
end
//

//wire [3:0] sec1, sec2;

binaryCounter #(4,10) secCntr(clkin, (rst||reset), en, 0, 0, 0, 0, sec1); //seconds counters
binaryCounter #(4,6) secCntr2(clkin, (rst||reset), ((sec1 == 9)&&en), 0, 0, 0, 0, sec2);

binaryCounter #(4,10) cntr1(clkin, (rst||reset), ((sec2 == 5) && (sec1 == 9) && en), (load&&~hrsORmins), up, down, 0, count1); //minutes counters
binaryCounter #(4,6) cntr2(clkin, (rst||reset), ((sec2 == 5) && (sec1 == 9) && (count1 == 9) && en), (load&&~hrsORmins), (up&&count1==9), (down&&count1==0), 0, count2);

binaryCounter #(4,10) cntr3(clkin, (reset||rst||rest), (sec2 == 5 && sec1 == 9&&en&&(count1 == 9) && (count2 == 5)), (load&&hrsORmins), (up), (down),(down&&count3==0&&count4==0) ,count3); //hours counters
binaryCounter #(4,3) cntr4(clkin, (rst||reset||rest), ((sec2 == 5 && sec1 == 9 && count1 == 9 && count2 == 5 && count3 == 9)&&en), (load&&hrsORmins), (up&&count3 == 9), (down&&count3 == 0), 0,count4);

//ending of the clock


endmodule