`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 10:31:11 PM
// Design Name: 
// Module Name: FSM
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
module FSM(input clk, X, Y,output reg Z );
 
 reg [2:0] state, nextState; // State register and next state
 parameter [2:0] INIT = 3'b000, // Define the states
 A = 3'b001,
 B = 3'b010,
 C = 3'b011,
 D = 3'b100;
 always @ (posedge clk) // Create the state memory
 state <= nextState;
 always @ (A, B, Sreg) begin // Next-state logic
 case (Sreg)
 INIT: if (A==0) nextState = A0;
 else Snext = A1;
 A: if (A==0) nextState = OK0;
 else Snext = A1;
 B: if (A==0) nextState = A0;
 else Snext = OK1;
 C: if (A==0) nextState = OK0;
 else if ((A==1) && (B==0)) state = A1;
 else state = OK1;
 D: if ((A==0) && (B==0)) nextState = A0;
 else if ((A==0) && (B==1)) nextState = OK0;
 else nextState = OK1;7
 default nextState = INIT;
 endcase
 end
 always @ (Sreg) // Output logic
 case (Sreg)
 INIT, A0, A1: Z = 0;
 OK0, OK1: Z = 1;
 default Z = 0;
 endcase
endmodule
