`timescale 1ns / 1ps

module pickMode(input clk, en, rst, up, down, output  [3:0]out);
wire [1:0] count; //i unregged this
wire outup;
wire outdown;
wire upDown;
pushButtonDetector BTNR(clk, rst, up,  outup);
pushButtonDetector BNTL(clk, rst, down,  outdown);

assigupdown a(clk, outdown, outup,  upDown);


upDownCounter #(4) c1 (clk, rst, upDown, count); //the counter does not return to zero once it reaches the last bit
decoder2x4 dec(count, en, out);

 
endmodule


//reg upDown2;
//wire [1:0] updownpos;
//assign updownpos=2'b01;

//always @ (posedge clk) begin
//case(outup)
//1'b1: upDown = 1'b0;
//1'b0: upDown = 1'b1;
//default: upDown = 1'b0;  
//endcase
//end
/*
always @ (posedge clk) begin
case({outup,outdown})
2'b10: upDown = 1'b0;
2'b01: upDown = 1'b1;
default: upDown = 1'b0;  
endcase
end
*/