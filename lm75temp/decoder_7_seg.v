module decoder_7_seg(
	input CLK,
   input [4:0] D,
	input [4:1] digit_posn,
   output reg [7:0] SEG
   );

always @(posedge CLK) 
begin
	case(D)
    4'd0: if(digit_posn==2)
	 begin
	 SEG <= 8'b01000000;				// decimal
	 end
	 else SEG <= 8'b11000000;		//0xC0
    4'd1: if(digit_posn==2)		
	 begin
	 SEG <= 8'b01111001;				//decimal
	 end
	 else SEG <=8'b11111001;			//0xF9
    4'd2: if(digit_posn==2)
	 begin
	 SEG <= 8'b00100100;				//decimal    
	 end
	 else SEG <= 8'b10100100;		// 0xA4
    4'd3: if(digit_posn==2)
	 begin
	 SEG <= 8'b00110000;				//decimal
	 end
	 else SEG <= 8'b10110000;		//0xB0
    4'd4: if(digit_posn==2)
	 begin
	 SEG <= 8'b00011001;				//decimal
	 end
	 else SEG <= 8'b10011001;		//0x99
    4'd5: if(digit_posn==2)
	 begin
	 SEG <= 8'b00010010;				//decimal
	 end
	 else SEG <= 8'b10010010;		//0x92
    4'd6: if(digit_posn==2)
	 begin
	 SEG <= 8'b00000010;				//decimal
	 end
	 else SEG <= 8'b10000010;			//0x82
    4'd7: if(digit_posn==2)		
	 begin
	 SEG <= 8'b01111000;					//decimal
	 end
	 else SEG <= 8'b11111000;		//0xF8
    4'd8: if(digit_posn==2)
	 begin
	 SEG <= 8'b00000000;				//decimal
	 end
	 else SEG <= 8'b10000000;		//0x80
    4'd9: if(digit_posn==2)
	 begin
	 SEG <= 8'b00010000;;				//decimal
	 end
	 else SEG <= 8'b10010000;		//0x90
    default: SEG <= 8'b11111111;
	endcase
end

endmodule
