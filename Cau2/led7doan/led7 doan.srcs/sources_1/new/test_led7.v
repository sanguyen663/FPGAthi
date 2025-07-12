`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2024 03:26:17 PM
// Design Name: 
// Module Name: test_led7
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


module test_segment7_led(
    input clk,
    input rstn,
    input up,
    input down,
    output [6:0] seg7_out,
    output dot,
    output [5:0] dig_sel
    );
    
 reg [3:0] in_bcd;
 
 segment7 seg7_inst(
    .in_bcd (in_bcd),
    .seg7_out (seg7_out));
    
  assign dot = 1'b0;
  assign dig_sel = 6'b0;
  
  reg [25:0] counter_up;
   reg [25:0] counter_dw;
   
   always @(posedge clk) begin
    if(!rstn) begin
        counter_up <= 26'd0;
    end
    else begin
        if(up) begin
            counter_up <= 0;
            if (down)
                counter_dw <= 0;
            else begin
            if (counter_dw == 26'h7D7840)
                counter_dw <=0;
            else
                counter_dw <= counter_dw +1;
            end
        end
        else begin
            if (counter_up == 26'h7D7840)
                        counter_up <=0;
                    else
                        counter_up <= counter_up +1;
               end
           end     
        end
  always @(posedge clk) begin
           if(!rstn) 
               in_bcd <= 4'd0;
           else begin
               if (counter_up == 26'h7D7840)
                   in_bcd <= in_bcd + 1;
               else if (counter_dw == 26'h7D7840)
                   in_bcd <= in_bcd -1;
           end
    end
    
   


endmodule
