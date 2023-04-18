`timescale 1ns / 1ps



module asyn_up_counter_N
    #(parameter N=4)(
    input clk,
    input reset_n,
    output [N-1:0] Q
    );
     T_FF F0(
         .T(1'b1),
        .clk(clk),
        .reset_n(reset_n),
        .Q(Q[0])
    );
    
    generate 
        genvar k;
        for (k=0; k<(N-1); k=k+1)
        begin   
            T_FF FN(
              .T(1'b1),
             .clk(~Q[k]),
             .reset_n(reset_n),
               .Q(Q[k+1])
              );
        end
    endgenerate
endmodule
