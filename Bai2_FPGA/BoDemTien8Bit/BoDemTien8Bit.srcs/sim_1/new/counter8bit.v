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
    forever #5 clk = ~clk; // Generate a clock with a period of 10 time units
  end

  // Stimulus
  initial begin
    // Initialize Inputs
    rst = 1;
    
    // Wait for global reset
    #20;
    
    // Deassert reset
    rst = 0;
    
    // Let the counter run for a while
    #200;
    
    // Assert reset again
    //rst = 1;
    
    // Wait for a short period
    #20;
    
    // Deassert reset
    //rst = 0;
    
    // Let the counter run for a while
    #200;
    
    // Finish simulation
    $stop;
  end
      
endmodule
