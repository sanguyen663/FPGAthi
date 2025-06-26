`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2024 13:25:12
// Design Name: 
// Module Name: par2ser_tb
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


module par2ser_tb();

reg clk;
reg rst_n;
reg load;
reg [7:0] data_in;
wire sdo;
reg [3:0] counter;

parallel_to_serial par2ser_inst(
    .clk    (clk),
    .rst_n  (rst_n),
    .load   (load),
    .in     (data_in),
    .sdo    (sdo));
    
initial begin
    clk = 1'b0;
    rst_n = 1'b0;
    load  = 1'b0;
    counter = 0;
    data_in      = 8'b0;
    #20;
    rst_n = 1'b1;
    #2000;
    $stop; 
end

//Create clk signal
always #10 clk <= ~clk; //clk 50 MHz


always @(negedge rst_n or posedge clk) begin
    if(!rst_n) begin
        counter <= 0;
        data_in <= 0;
    end    
    else begin
        counter <= counter + 1;
        if(counter == 15) data_in <= data_in + 1;
    end 
end

always @(counter) begin
    if(counter == 0) 
        load <= 1'b1;
    else 
        load <= 1'b0;
end



endmodule
