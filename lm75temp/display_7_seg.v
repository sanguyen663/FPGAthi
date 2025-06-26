module display_7_seg(
    input CLK,
    input [4:0] units, tens, hundreds, thousands,
    output [7:0] SEG,
    output reg [3:0] DIGIT		//take note of size
    );
	 
reg [4:0] digit_data;
reg [4:0] digit_posn=0;
reg [23:0] prescaler;
	 
decoder_7_seg decoder(.CLK (CLK), .SEG	(SEG), .D (digit_data),.digit_posn(digit_posn));   

always @(posedge CLK)
begin
  prescaler <= prescaler + 24'd1;
  if (prescaler == 24'd50000) // 1 kHz
  begin
    prescaler <= 0;
	 //digit_posn <= digit_posn + 2'd1;
    
	 case(digit_posn)
	 4'd0:
    begin
      digit_data <= units;
      DIGIT <= 4'b0111;
		digit_posn <=1;
    end
    4'd1:
    begin
      digit_data <= tens;
      DIGIT <= 4'b1011;
		digit_posn <=2;
    end
    4'd2:
    begin
      digit_data <= hundreds;
      DIGIT <= 4'b1101;
		digit_posn <=3;
		end	
	4'd3:
    begin
      digit_data <= thousands;
      DIGIT <= 4'b1110;
		digit_posn<=0;
		end	
  endcase
  
  end
end

endmodule
