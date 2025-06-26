`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2024 03:26:17 PM
// Design Name: 
// Module Name: segment7
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

module segment7(
    input [3:0] in_bcd,
    output reg [6:0] seg7_out
    );

    always @(in_bcd) begin
        case (in_bcd) // case statement
            0: seg7_out = 7'b1000000;
            1: seg7_out = 7'b1111001;
            2: seg7_out = 7'b0100100;
            3: seg7_out = 7'b0110000;
            4: seg7_out = 7'b0011001;
            5: seg7_out = 7'b0010010;
            6: seg7_out = 7'b0000010;
            7: seg7_out = 7'b1111000;
            8: seg7_out = 7'b0000000;
            9: seg7_out = 7'b0010000;
            default: seg7_out = 7'b1111111; // off for invalid BCD
        endcase
    end
endmodule
