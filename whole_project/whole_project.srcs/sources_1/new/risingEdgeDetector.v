`timescale 1ns / 1ps

module risingEdgeDetector(input clk, rst, x, output z);

reg[1:0] state, next_state;
parameter [1:0] a = 2'b00;
parameter [1:0] b = 2'b01;
parameter [1:0] c = 2'b10;

always @ (state, x) begin
case(state)
a: if(x==0) next_state = a;
else next_state = b;
b: if(x==0) next_state = a;
else next_state = c;
c: if(x==0) next_state = a;
else next_state = c;
default: next_state = a;
endcase
end

always @ (posedge clk) begin
if(rst == 1) state <= a;
else state <= next_state;
end

assign z = (state == b);

endmodule