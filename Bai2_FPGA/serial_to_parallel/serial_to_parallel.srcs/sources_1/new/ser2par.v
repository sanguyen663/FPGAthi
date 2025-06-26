`timescale 1ns/1ps
module serial2paralel(
    input wire clk,
    input wire rst_n,
    input wire start,
    input wire sdi,
    output reg [7:0] shift_reg,
    output reg finish
);
    reg [2:0] counter;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            shift_reg <= 8'b0;
            counter <= 0;
            finish <= 0;
        end else if (start) begin
            shift_reg <= {shift_reg[6:0], sdi};
            counter <= 0;
            finish <= 0;
        end else if (counter < 7) begin
            shift_reg <= {shift_reg[6:0], sdi};
            counter <= counter + 1;
            finish <= 0;
        end else begin
            shift_reg <= {shift_reg[6:0], sdi};
            finish <= 1;
        end
    end
endmodule