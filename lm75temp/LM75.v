`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ACCESS Inc.
// Engineer: Noel A. Rios
// 
// Create Date:    11:07:50 07/04/2022 
// Design Name: 	LM75 using I2C master 
// Module Name:    LM75 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LM75(

    input CLK,
	// output [7:0] data,
    output reg LED1,
    output reg LED2,
    output reg LED3,
    output reg LED4,
    output [7:0] SEG,
	 inout SCL,
	 inout  SDA,
	 output [3:0] DIGIT,
	 input rst_n
    	 );

reg LED_status=0;
reg [4:0] LED_pos=0;
reg [8:0] units=0;
reg [8:0] tens=0;
reg [8:0] hundreds=0;
reg [8:0] thousands=0;
reg [8:0] decimal=0;
reg [8:0] number1;
reg [8:0] number2;
reg [8:0] remainder;
wire [ 7:0] data;		//15:0
wire [7:0] data_lo;

reg [8:0] result; //15:0
reg timer2_flag;
reg [26:0] timer2_reg;

display_7_seg display(.CLK (CLK), 
		.units (units), .tens (tens), .hundreds (hundreds),.thousands(thousands),
		.SEG (SEG), .DIGIT (DIGIT));

I2C_master I2C(.CLK(CLK),.SDA(SDA),.SCL(SCL),.data(data),.data_lo(data_lo),.rst_n(rst_n)); 


task timer2;
 begin
 timer2_flag<=0;
 timer2_reg=timer2_reg+26'd1;
 if(timer2_reg==26'd500000000)
 begin
 timer2_reg=0;
 timer2_flag<=1;
 end

 end
 endtask


always@(posedge CLK) 
begin


	
	result=data;
	
	if(data_lo[7]) decimal=5;
	else decimal=0;


	thousands=(result/100)%10;;			
	hundreds=(result/10)%10; 
	tens=(result%10);
	units=decimal;


		timer2();
		if(timer2_flag==1)
		begin
			case(LED_pos)
			4'd0:	
			begin
				//LED_status=~LED_status;
				LED1<=LED_status;
				LED_pos<=1;
				end
			4'd1:	
			begin
				//LED_status=~LED_status;
				LED2<=LED_status;
				LED_pos<=2;
				end
			4'd2:	
			begin
				//LED_status=~LED_status;
				LED3<=LED_status;
				LED_pos<=3;
				end
			4'd3:	
			begin
				//LED_status=~LED_status;
				LED4<=LED_status;
				LED_pos<=4;
				end
			4'd4:
				begin
				LED_status=~LED_status;
				LED_pos<=0;
				end
			
			endcase 
			
			end
			
end

endmodule
