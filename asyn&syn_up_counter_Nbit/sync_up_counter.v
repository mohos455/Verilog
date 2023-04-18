`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2023 06:40:20 AM
// Design Name: 
// Module Name: sync_up_counter
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


module sync_up_counter(
    input clk,
    input reset_n,
    output [3:0]Q
    );
    wire Q0_next ,Q1_next,Q2_next,Q3_next;
    assign Q0_next = 1'b1;
    T_FF F0(
         .T(Q0_next),
        .clk(clk),
        .reset_n(reset_n),
        .Q(Q[0])
    );
   assign Q1_next = Q[0] & Q0_next;

   T_FF F1(
         .T(Q1_next),
        .clk(clk),
        .reset_n(reset_n),
        .Q(Q[1])
    );
    assign Q2_next = Q[1] & Q1_next;
     T_FF F2(
         .T(Q2_next),
        .clk(clk),
        .reset_n(reset_n),
        .Q(Q[2])
    );
    assign Q3_next = Q[2] & Q2_next;
     T_FF F3(
         .T(Q3_next),
        .clk(clk),
        .reset_n(reset_n),
        .Q(Q[3])
    );
endmodule
