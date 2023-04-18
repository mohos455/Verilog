`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Mohamed Hesham
// Design Name: Ripple N-Bit Carry Adder
// Module Name: RippleCarryAdder
// Project Name: Ripple N-Bit Carry Adder
//////////////////////////////////////////////////////////////////////////////////


module RippleCarryAdder
#(parameter N = 4 )
(
    input [N-1:0] x ,y ,
    input cin,
    output [N-1 : 0 ] s,
    output cout 
    );
    wire [N:0] c;
    assign c[0] = cin;
    assign cout = c[N];
    generate
        genvar I ;
        for( I = 0 ; I<N ; I = I+1 )
            begin
                FA FULL_ADDER(
                 .xi(x[I]),
                 .yi(y[I]),
                 .ci(c[I]),
                 .so(s[I]),
                 .co(c[I+1])
                 );         
            end
    endgenerate   
endmodule
