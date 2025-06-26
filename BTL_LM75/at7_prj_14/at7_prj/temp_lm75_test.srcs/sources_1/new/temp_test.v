`timescale 1ns / 1ps

module temp_test
(
   input sys_clk,
   input rst_n,
   output scl, 
   inout sda,   
   output[7:0] Scan_Sig,
   output[7:0] SMG_Data
);
wire done;
wire[16:0] data;
reg [5:0] clk_cnt;
(*mark_debug="TRUE"*)wire clk;
/*
assign Scan_Sig = 6'h1;
assign SMG_Data = 8'hff;
*/
always@(posedge sys_clk or posedge rst_n)
begin
	if(rst_n == 1'b0)
	begin
	  clk_cnt <=  5'd0;
	end
	else
        begin
          clk_cnt <= clk_cnt + 5'd1;
        end
end
assign clk =  clk_cnt[1];       
i2c_read_lm75 U0
(
    .sys_clk        (clk         ),
    .rst_n          (rst_n           ),
    .scl            (scl             ),
    .sda            (sda             ),
    .data           (data            )
);
wire[31:0]Data_Temp1;
wire[31:0]Data_Temp2;
wire[31:0]Data_Temp3;
wire[16:0]Data_Temp;
wire[19:0] bcd_Temp;

hextobcd U1
(//temp converse
    .clk                (clk     ),
    .hex                (data        ),
    .dec                (bcd_Temp    )
);
 smg_interface U2
(
    .sys_clk            (clk     ),
    .rst_n              (rst_n       ),
    .sign               (data[16]    ),
    .Number_Sig         (bcd_Temp    ), // input - from U1
    .SMG_Data           (SMG_Data    ),     // output - to top
    .Scan_Sig           (Scan_Sig    )      // output - to top
);
endmodule 
