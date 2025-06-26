`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2024 09:06:40 AM
// Design Name: 
// Module Name: bodem
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


module random_counter(
    input clk,
    input reset,
    output reg clk_out,
    output [9:0] o_count
    );
    
    reg [9:0] count; // 20-bit counter
    always @(posedge clk or negedge reset) begin
    if (!reset)
        count <= 0;
    else begin if (count == 1023)
        count <= 0;
        else 
            count <= count +1;
        end
    end
    
    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            count <= 0; // Reset counter to 0
            clk_out <= 0; // Reset clock output
        end else begin
            if (count == 500) begin // 2^20 - 
                clk_out <= 1;
            end else if (count == 750) 
                clk_out <= 0;
        end
    end
    
    assign o_count = count;
    
endmodule