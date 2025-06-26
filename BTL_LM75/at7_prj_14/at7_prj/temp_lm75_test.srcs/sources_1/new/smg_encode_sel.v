`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/28 10:41:23
// Design Name: 
// Module Name: smg_encode_sel
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


module smg_encode_sel
(
input [7:0] Scan_Sig,
input [7:0]  SMG_Data_1,
input [7:0]  SMG_Data_2,
output[7:0] SMG_Data
);

/***************************************/

reg [7:0]rSMG;

always @ (* )
begin
   case( Scan_Sig )
       
          8'b011_111_11 :  rSMG <=SMG_Data_1;
          8'b101_111_11 :  rSMG <=SMG_Data_2;
          8'b110_111_11:   rSMG <=SMG_Data_1;
          8'b111_011_11 :  rSMG <=SMG_Data_1;
          8'b111_101_11:   rSMG <=SMG_Data_1;
          8'b111_110_11:   rSMG <=SMG_Data_1;
          8'b111_111_01:   rSMG <=SMG_Data_1;
          8'b111_111_10:   rSMG <=SMG_Data_1;
          default:      rSMG <=rSMG;
      endcase
 end
  assign SMG_Data=rSMG;            
endmodule
