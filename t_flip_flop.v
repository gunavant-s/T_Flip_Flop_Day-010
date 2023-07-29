`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 29.07.2023 07:13:32
// Design Name: 
// Module Name: t_flip_flop
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


module t_flip_flop(input clk,
                    input t,
                    input rstn,
                    output reg Q,
                    output Q_bar);
                    
     always @(posedge clk) begin
        if(rstn)
            Q <= 1'b0;
        else begin
            if (!t) begin
                Q <= Q;
            end
            
            else begin
                Q <= ~Q;
            end
          end
        end
        
     assign Q_bar = ~Q;
     
endmodule
