`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2023 05:54:49 AM
// Design Name: 
// Module Name: asyn_up_counter_tb
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


module sync_up_counter_tb();
reg clk,reset_n;
wire [3:0] Q;
sync_up_counter   DUT(
    .clk(clk),
    .reset_n(reset_n),
    .Q(Q)
    );
    
   initial #200 $stop;
   
   localparam T = 10;
   always 
   begin
    clk =1'b0;
    # (T/2);
    clk = 1'b1;
    # (T/2);
    end
    
    initial
    begin
        reset_n = 1'b0;
    #2  reset_n = 1'b1;
    end
endmodule
