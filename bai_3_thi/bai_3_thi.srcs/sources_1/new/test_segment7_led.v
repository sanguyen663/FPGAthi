`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2024 03:26:17 PM
// Design Name: 
// Module Name: test_segment7_led
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

module test_segment7_led(
    input clk,
    input rstn,
    output [6:0] seg7_out,
    output dot,
    output [5:0] dig_sel
    );

    reg [25:0] count; // 26-bit counter for generating 1 second interval
    reg [16:0] display_count; // 17-bit counter for counting up to 99999
    reg clk_1Hz;
    reg [3:0] bcd_digit;
    reg [2:0] digit_select;
    reg [5:0] dig_sel_reg;

    // Generate 1Hz clock from the input clock
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            count <= 0;
            clk_1Hz <= 0;
        end else if (count == 49999999) begin
            count <= 0;
            clk_1Hz <= ~clk_1Hz;
        end else begin
            count <= count + 1;
        end
    end

    // Counting the display count at 1Hz
    always @(posedge clk_1Hz or negedge rstn) begin
        if (!rstn) begin
            display_count <= 0;
        end else if (display_count == 99999) begin
            display_count <= 0;
        end else begin
            display_count <= display_count + 1;
        end
    end

    // Digit selection logic
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            digit_select <= 0;
        end else begin
            digit_select <= digit_select + 1;
        end
    end

    // Multiplexing digits to be displayed
    always @(*) begin
        case(digit_select)
            3'd0: bcd_digit = display_count % 10;
            3'd1: bcd_digit = (display_count / 10) % 10;
            3'd2: bcd_digit = (display_count / 100) % 10;
            3'd3: bcd_digit = (display_count / 1000) % 10;
            3'd4: bcd_digit = (display_count / 10000) % 10;
            default: bcd_digit = 4'b1111; // Off
        endcase
    end

    // Select the appropriate digit to display
    always @(*) begin
        case(digit_select)
            3'd0: dig_sel_reg = 6'b111110;
            3'd1: dig_sel_reg = 6'b111101;
            3'd2: dig_sel_reg = 6'b111011;
            3'd3: dig_sel_reg = 6'b110111;
            3'd4: dig_sel_reg = 6'b101111;
            default: dig_sel_reg = 6'b111111;
        endcase
    end

    // Output assignments
    assign dig_sel = dig_sel_reg;
    assign dot = 1'b0; // Dot point is always off

    // Instance of segment7 to display BCD value on 7-segment
    segment7 seg7_inst(
        .in_bcd(bcd_digit),
        .seg7_out(seg7_out)
    );

endmodule
