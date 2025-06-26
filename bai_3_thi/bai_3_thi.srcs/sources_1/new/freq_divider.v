`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2024 02:14:08 PM
// Design Name: 
// Module Name: freq_divider
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

module freq_divider(
    input clk_in,
    input rstn,
    output reg clk_out
    );

    reg [25:0] count; 
    parameter DIVISOR = 26'd50000000; // 50M to generate 1Hz

    always @(posedge clk_in or negedge rstn) begin
        if (!rstn) begin
            count <= 0;
            clk_out <= 0;
        end else begin
            if (count == DIVISOR - 1) begin
                count <= 0;
                clk_out <= ~clk_out;
            end else begin
                count <= count + 1;
            end
        end
    end
endmodule
