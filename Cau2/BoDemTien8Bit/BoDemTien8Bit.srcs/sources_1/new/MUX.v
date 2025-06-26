`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2024 07:54:30 AM
// Design Name: 
// Module Name: MUX
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


module mux_4to1 (
  input wire [3:0] data_inputs, // 4-bit ??u vào
  input wire [1:0] select,      // 2-bit ??u ch?n
  output reg output_data        // ??u ra
);

  always @* begin
    case (select)
      2'b00: output_data = data_inputs[0];
      2'b01: output_data = data_inputs[1];
      2'b10: output_data = data_inputs[2];
      2'b11: output_data = data_inputs[3];
      default: output_data = 4'b0000; // Tr??ng h?p m?c ??nh n?u có l?i
    endcase
  end

endmodule
