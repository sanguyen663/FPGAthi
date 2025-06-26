`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2024 21:44:41
// Design Name: 
// Module Name: ser2par_tb
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


module ser2par_tb;
reg clk;
reg rst_n;
reg start;
wire sdi;
wire [7:0] shift_reg;
wire finish;

//instantiate
serial2paralel ser2par_inst(
    .clk        (clk),
    .rst_n      (rst_n),
    .start      (start),
    .sdi        (sdi),
    .shift_reg  (shift_reg),
    .finish     (finish)
);
reg [3:0] counter;
reg [7:0] par_data;
initial begin
    clk = 1'b0;
    rst_n = 1'b0;
    start  = 1'b0;
    counter = 0;
    sdi     = 8'b0;
    #20;
    rst_n = 1'b1;
end
//Create clk signal
always #10 clk <= ~clk; //clk 50 MHz

always @(negedge rst_n or posedge clk) begin
    if(!rst_n) begin
        counter <= 0;
        par_data <= 0;
    end    
    else begin
        counter <= counter + 1;
        if(counter == 15) par_data <= par_data + 1;
    end 
end

always @(counter) begin
    if(counter == 0) 
        start <= 1'b1;
    else 
        start <= 1'b0;
end

parallel_to_serial par2ser_inst(
    .clk    (clk),
    .rst_n  (rst_n),
    .load   (start),
    .in     (par_data),
    .sdo    (sdi)
 );
    
endmodule
