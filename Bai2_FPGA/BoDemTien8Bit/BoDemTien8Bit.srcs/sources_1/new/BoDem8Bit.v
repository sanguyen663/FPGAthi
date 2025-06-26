`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2024 01:15:12 PM
// Design Name: 
// Module Name: BoDem8Bit
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


module Counter8bit (
  input wire clk,    // Clock input
  input wire rst,    // Reset input
  output reg [7:0] count  
);


reg [7:0] next_count;
always @(posedge clk or posedge rst) begin
  if (rst) begin
    count <= 8'b00000000;
  end else begin
    count <= next_count;
  end
end
always @* begin
  if (rst) begin
    next_count = 8'b00000000;
  end else begin
    next_count = count + 1;
  end
end

endmodule

