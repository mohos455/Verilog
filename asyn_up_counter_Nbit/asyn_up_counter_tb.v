`timescale 1ns / 1ps



module asyn_up_counter_tb();
parameter N=8;
reg clk,reset_n;
wire [N-1:0] Q;
asyn_up_counter_N #(.N(N))  DUT(
    .clk(clk),
    .reset_n(reset_n),
    .Q(Q)
    );
    
   initial #1000 $stop;
   
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
