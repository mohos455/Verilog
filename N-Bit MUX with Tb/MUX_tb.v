`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2023 04:45:48 AM
// Design Name: 
// Module Name: MUX_tb
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


module MUX_tb();
parameter N = 4;
reg [N-1:0] w ;
reg [$clog2(N)-1:0] s;
wire f ;

MUX #(.N(N)) DUT (
    .w(w),
    .s(s),
    .f(f)
    );
    
    initial #55 $finish;
    initial 
        begin
            w=4'd8;
            
            s=2'b00;
            #5 s=2'b01;
            #5 s=2'b10;
            #5 s=2'b11;
            
            #5 ;
            #5 w=4'd2;
            #5 w=4'd3;
            #5 w=4'd7;
            #5 w=4'd11;
        end
endmodule
