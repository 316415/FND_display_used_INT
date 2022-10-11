`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/06 11:17:32
// Design Name: 
// Module Name: FND_select_decoder
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


module FND_select_decoder(
    input [1:0] i_DigitSelect,
    input i_En,
    output [3:0] o_digit
    );

    reg [3:0] r_digit;
    
    assign o_digit = r_digit;

    always @(i_DigitSelect, i_En) begin //always @(i_DigitSelect or i_En) begin
        if(i_En) begin
            r_digit = 4'b1111;
        end
        else begin
            case (i_DigitSelect)
                2'h0 : r_digit = 4'b1110;
                2'h1 : r_digit = 4'b1101;
                2'h2 : r_digit = 4'b1011;
                2'h3 : r_digit = 4'b0111;
            endcase
        end
    end
endmodule
