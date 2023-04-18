`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
///Engineer: Mohamed Hesham
// Design Name: FULL Adder
// Module Name: FA
// Project Name: Ripple N-Bit Carry Adder
// 
//////////////////////////////////////////////////////////////////////////////////


module FA(
    input xi,yi,ci,
    output so,co
    );
    wire s1,c1,c2;
    HA HA1 (
    .x(xi),
    .y(yi),
    .s(s1),
    .c(c1)
    );
    HA HA2 (
    .x(ci),
    .y(s1),
    .s(so),
    .c(c2)
    );
   assign co = c2 | c1 ;
endmodule
