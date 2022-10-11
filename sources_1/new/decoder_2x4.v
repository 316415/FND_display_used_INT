`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/11 15:30:24
// Design Name: 
// Module Name: decoder_2x4
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


module decoder_2x4(
    input [1:0] i_digit,
    output [3:0] o_digit
    );
    reg [3:0] r_digit;
    assign o_digit = r_digit;

    always @(i_digit) begin
        r_digit = 4'b1111;
        case(i_digit)
            2'b00 : r_digit = 4'b1110;
            2'b01 : r_digit = 4'b1101;
            2'b10 : r_digit = 4'b1011;
            2'b11 : r_digit = 4'b0111;
        endcase
    end
endmodule
