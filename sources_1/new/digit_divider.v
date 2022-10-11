`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/11 15:31:35
// Design Name: 
// Module Name: digit_divider
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


module digit_divider(
    input [31:0] i_value,
    output [3:0] o_four, o_three, o_two, o_one
);

    assign o_four = i_value/1000%10;
    assign o_three = i_value/100%10;
    assign o_two = i_value/10%10;
    assign o_one = i_value%10;
    
endmodule
