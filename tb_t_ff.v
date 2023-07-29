`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 29.07.2023 07:29:21
// Design Name: 
// Module Name: tb_t_ff
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


module tb_t_ff;
    reg clk;
    reg t;
    reg rstn;   
    wire q;
    wire q_bar;
    
    t_flip_flop DUT(.clk(clk),
                    .t(t),
                    .rstn(rstn),
                    .Q(q),
                    .Q_bar(q_bar)
                    );
     
     initial begin
        clk = 0;
        rstn = 1;
        t = 0;
     end 
     
     always #2 clk = ~clk;
     always #4 t = ~t;
     always #10 rstn = ~rstn; 
     
endmodule
