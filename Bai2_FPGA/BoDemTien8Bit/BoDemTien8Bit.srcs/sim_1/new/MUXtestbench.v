`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2024 07:59:22 AM
// Design Name: 
// Module Name: MUXtestbench
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


`timescale 1ns/1ps

module tb_mux_4to1;

  // Parameters
  parameter WIDTH = 4;  // Kích th??c ??u vào MUX

  // Inputs
  reg [WIDTH-1:0] data_inputs;
  reg [1:0] select;

  // Outputs
  wire output_data;

  // Instantiate MUX module
  mux_4to1 uut (
    .data_inputs(data_inputs),
    .select(select),
    .output_data(output_data)
  );

  // Stimulus
  initial begin
    // Initialize inputs
    data_inputs = 4'b0000;
    select = 2'b00;

    // Apply stimulus
    #10 data_inputs = 4'b1010;
    #10 select = 2'b01;
    #10 select = 2'b10;
    #10 select = 2'b11;

    // Add more test cases as needed

    #10 $finish;  // Finish simulation after 10 time units
  end

  // Display results
  always @(posedge output_data) begin
    $display("Output: %b", output_data);
  end

endmodule

