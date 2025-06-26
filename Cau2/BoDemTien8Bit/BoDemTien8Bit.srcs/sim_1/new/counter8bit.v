`timescale 1ns / 1ps

module Counter8bit_tb;

  // Inputs
  reg clk;
  reg rst;

  // Outputs
  wire [7:0] count;

  // Instantiate the Unit Under Test (UUT)
  Counter8bit uut (
    .clk(clk),
    .rst(rst),
    .count(count)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #50000000 clk = ~clk; // Generate a clock with a period of 1 second (1e9 ns)
  end

  // Stimulus
  initial begin
    // Initialize Inputs
    rst = 1;
    
    // Wait for global reset
    #100;
    
    // Deassert reset
    rst = 0;
    
    // Let the counter run for a while
    #2000;
    
    // Assert reset again
    rst = 1;
    
    // Wait for a short period
    #100;
    
    // Deassert reset
    rst = 0;
    
    // Let the counter run for a while
    #2000;
    
    // Finish simulation
    $stop;
  end
      
endmodule
