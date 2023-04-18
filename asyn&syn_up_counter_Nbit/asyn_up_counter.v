`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2023 05:49:29 AM
// Design Name: 
// Module Name: asyn_up_counter
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


module asyn_up_counter(
    input clk,
    input reset_n,
    output [3:0] Q
    );
    T_FF F0(
         .T(1'b1),
        .clk(clk),
        .reset_n(reset_n),
        .Q(Q[0])
    );
    T_FF F1(
         .T(1'b1),
        .clk(~Q[0]),
        .reset_n(reset_n),
        .Q(Q[1])
    );
    T_FF F2(
         .T(1'b1),
        .clk(~Q[1]),
        .reset_n(reset_n),
        .Q(Q[2])
    );
    T_FF F3(
         .T(1'b1),
        .clk(~Q[2]),
        .reset_n(reset_n),
        .Q(Q[3])
    );
endmodule
