`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/11 15:29:24
// Design Name: 
// Module Name: counter_fnd
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


module counter_fnd(
    input i_clk, i_reset,
    output [1:0] o_counter
    );
    reg r_clk;
    reg [1:0] r_counter;
    assign o_counter = r_counter;

    always @(posedge i_clk or posedge i_reset) begin
        if(i_reset) begin
            r_counter <= 0;
            r_clk <= 0;
        end
        else begin
            r_counter <= r_counter + 1;
        end
    end
endmodule
