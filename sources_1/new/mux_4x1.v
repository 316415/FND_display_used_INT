`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/11 15:31:09
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
    input [1:0] i_digit,
    input [3:0] i_four, i_three, i_two, i_one,
    output [3:0] o_value
    );

    reg [3:0] r_value;
    assign o_value = r_value;

    always @(i_digit) begin
        case (i_digit)
            2'b00 : r_value = i_one;
            2'b01 : r_value = i_two;
            2'b10 : r_value = i_three;
            2'b11 : r_value = i_four;
        endcase
    end
endmodule
