`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2024 09:12:40 AM
// Design Name: 
// Module Name: tb_random_counter
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


module tb_random_counter;

    // Testbench signals
    reg clk;
    reg reset;
    wire clk_out;
    wire [9:0] o_count;

    // Instantiate the random_counter module
    random_counter uut (
        .clk(clk),
        .reset(reset),
        .clk_out(clk_out),
        .o_count(o_count)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end

    // Test sequence
    initial begin
        // Initialize signals
        reset = 1;

        // Apply reset
        #10;
        reset = 0;
        
        #20
        reset = 1;

        // Run for a sufficient time to observe clk_out toggling
        #1050000; // Slightly more than 2^20 cycles (1048576 clock cycles)

        // Finish simulation
        $stop;
    end

    // Monitor the counter value
    initial begin
        $monitor("At time %0t: clk_out = %b", $time, clk_out);
    end

endmodule

