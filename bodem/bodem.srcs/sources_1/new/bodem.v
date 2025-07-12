`timescale 1ns / 1ps

module random_counter(
    input clk,
    input reset,
    output reg clk_out,
    output [9:0] o_count
    );
    
    reg [9:0] count; // Dùng 10-bit ?? ?? ??m ??n 100

    // B? ??m t? 5 ??n 100
    always @(posedge clk or negedge reset) begin
        if (!reset)
            count <= 5;           // Reset v? 5
        else if (count == 100)
            count <= 5;           // Quay v? 5 khi ??t 100
        else
            count <= count + 1;   // T?ng bình th??ng
    end

    // X? lı clk_out (ví d?: phát xung m?i khi ??m ??t 100)
    always @(posedge clk or negedge reset) begin
        if (!reset)
            clk_out <= 0;
        else if (count == 100)
            clk_out <= 1;
        else
            clk_out <= 0;
    end

    assign o_count = count;

endmodule
