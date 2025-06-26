//-----------------------------------------------------
// Design Name : rom_using_case
// File Name   : rom_using_case.v
// Function    : ROM using case
// Coder       : Deepak Kumar Tala
//-----------------------------------------------------
module sine_rom (
address , // Address input
data    , // Data output
read_en , // Read Enable 
ce        // Chip Enable
);
input [4:0] address;
output [7:0] data;
input read_en;
input ce;

reg [7:0] data ;
       
always @ (ce or read_en or address)
begin
  case (address)
      0: data = 77;
      1: data = 93;
      2: data = 108;
      3: data = 122;
      4: data = 135;
      5: data = 144;
      6: data = 151;
      7: data = 154;
      8: data = 154;
      9: data = 151;
      10: data = 144;
      11: data = 135;
      12: data = 122;
      13: data = 108;
      14: data = 93;
      15: data = 77;
      16: data = 61;
      17: data = 46;
      18: data = 32;
      19: data = 19;
      20: data = 10;
      21: data = 3;
      22: data = 0;
      23: data = 0;
      24: data = 3;
      25: data = 10;
      26: data = 19;
      27: data = 32;
      28: data = 46;
      29: data = 61;
      default: data = 77;
  endcase
end

endmodule