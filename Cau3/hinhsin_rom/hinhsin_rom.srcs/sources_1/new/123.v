`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module sine_wave(
    input rstn,
    input clk,
    input up,
    input down,
    output [7:0] sin_out
    );
    
    wire clk_sine;
    Clock_divider clk_div_inst(
    .clk_in (clk),
    .rstn (rstn),
    .up (up),
    .down (down),
    .clk_out (clk_sine));
    
    reg [4:0]   counter;
    always @(negedge rstn or posedge clk_sine) begin
        if (!rstn)
            counter <= 0;
        else 
            if (counter == 29)
                counter <=0;
            else
                counter <= counter +1;
    end
    
    sine_rom sine_rom_inst(
        .address    (counter),
        .data   (sin_out),
        .read_en    (1'b1),
        .ce (1'b1)
    );
     
        
endmodule
