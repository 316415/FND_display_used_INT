`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/11 15:29:53
// Design Name: 
// Module Name: counter_data
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


module counter_data(
    input i_clk, i_reset,
    output [31:0] o_counter
    );

    reg r_clk = 0;
    reg [31:0] r_counter = 0;
    assign o_counter = r_counter;
    
    always @(posedge i_clk or posedge i_reset) begin
        if (i_reset) begin
            r_clk <= 0;
            r_counter <= 0;
        end
        else begin
            if(r_counter == 10_000 - 1) begin
                r_counter <= 0;
                r_clk <= ~r_clk;
            end
            else begin
                r_counter <= r_counter + 1;
            end
        end
    end
endmodule
