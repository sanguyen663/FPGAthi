`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2024 01:46:01 PM
// Design Name: 
// Module Name: CounterTestBench
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


module CounterTestBench();
    reg sys_clk;
    reg reset;
    wire [7:0] count_out;
    initial
    begin
     sys_clk=1'b0;
     reset = 1'b0;
     # 20 reset = 1'b1;
     # 20 reset =1'b0;
 end    
     always #10 sys_clk <= ~sys_clk;
     counter8b counter_inst {
       .clk(sys_clk),
       .clk(reset),
       .count_out(count_out)
       };        
endmodule
