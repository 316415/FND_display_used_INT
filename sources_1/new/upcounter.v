`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/11 16:17:26
// Design Name: 
// Module Name: upcounter
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


module upcounter(
    input i_clk, i_reset,
    output [7:0] o_font,
    output [3:0] o_digit
    );
    wire w_clk, w_digit_clk;
    wire [1:0] w_cnt_digit;
    wire [31:0] w_value;
    wire [3:0] w_four, w_three, w_two, w_one, w_BCD;

    clock_divider clk_div(
        .i_clk(i_clk),
        .i_reset(i_reset),
        .o_clk(w_clk)
    );

    counter_fnd clk_fnd(
        .i_clk(w_clk),
        .i_reset(i_reset),
        .o_counter(w_cnt_digit)
    );

    decoder_2x4 decoder2x4(
        .i_digit(w_cnt_digit),
        .o_digit(o_digit)
    );

    clock_digit_divider clk_digit_div(
        .i_clk(i_clk),
        .i_reset(i_reset),
        .o_clk(w_digit_clk)
    );

    counter_data cnt_data(
        .i_clk(w_digit_clk),
        .i_reset(i_reset),
        .o_counter(w_value)
    );

    digit_divider digit_data(
        .i_value(w_value),
        .o_four(w_four),
        .o_three(w_three),
        .o_two(w_two),
        .o_one(w_one)
    );

    mux_4x1 mux_1(
        .i_digit(w_cnt_digit),
        .i_four(w_four),
        .i_three(w_three),
        .i_two(w_two),
        .i_one(w_one),
        .o_value(w_BCD)
    );

    BCDtoFND_decoder BCD(
        .i_value(w_BCD),
        .i_En(i_reset),
        .o_font(o_font)
    );
endmodule
