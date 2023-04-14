`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2023 04:34:50 AM
// Design Name: 
// Module Name: MUX
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


module MUX #(parameter N = 4)(
    input [N-1:0] w,
    input [$clog2(N)-1:0] s,
    output reg f
    );
    
    integer I ;
    always @(*)
    begin
     f = 'bx;
        for(I=0;I<N;I=I+1)
                if (I == s)
                    f = w[I];
    end
endmodule
