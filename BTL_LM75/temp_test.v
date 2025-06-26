module temp_test
(
   input sys_clk,
   input rst_n,
   output scl, 
   inout sda,   
   output[5:0] dig_sel,
   output[6:0] seg7_out,
   output dot
);
wire[15:0] data;
reg [5:0] clk_cnt;
wire clk;

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

reg [6:0] temparature;

assign data[14:8] = temparature;

reg [3:0] sign_r;
reg [3:0] decimal_r;

//assign data[15] = sign_r;
//assign data[7]  = decimal_r;

always@(posedge sys_clk or posedge rst_n) begin
        if(!rst_n)
                sign_r = 0;
        else if (data[15])
                sign_r = 10;
end

always@(posedge sys_clk or posedge rst_n) begin
        if(!rst_n)
                decimal_r = 0;
        else if (data[7])
                decimal_r = 5;
end


    wire [3:0] sign;            // d?u
    wire [3:0] hundreds;        // hàng tr?m
    wire [3:0] tens;            // ch?c
    wire [3:0] ones;            // ??n v?
    wire [3:0] decimal;         // ph?n th?p phân
   
assign sign = sign_r;
assign decimal = decimal_r;
assign hundreds = temparature / 100;
assign tens = (temparature % 100) / 10;
assign ones = temparature % 10;
    
 i2c_read_lm75 U0
(
    .sys_clk        (clk         ),
    .rst_n          (rst_n           ),
    .scl            (scl             ),
    .sda            (sda             ),
    .data           (data            )
);

wire [3:0] in_bcd; 

    scan_led U1(
        .sys_clk       (clk),
        .rst_n         (rst_n),
        .hms_in        ({sign, hundreds, tens, ones, decimal}),
        .dot           (dot),
        .bcd_out       (in_bcd),
        .led_sel       (dig_sel)
    );
    
        bcd2seg7 U2(
        .in_bcd   (in_bcd),
        .seg7_out (seg7_out) 
    ); 
    
endmodule
