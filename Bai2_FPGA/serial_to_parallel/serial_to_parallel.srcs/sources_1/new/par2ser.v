`timescale 1ns/1ps
module parallel_to_serial(
    input wire clk,
    input wire rst_n,
    input wire load,
    input wire [7:0] in,
    output reg sdo
);
    reg [7:0] shift_reg;
    reg [2:0] counter;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            shift_reg <= 8'b0;
            counter <= 0;
            sdo <= 0;
        end else if (load) begin
            shift_reg <= in;
            counter <= 0;
            sdo <= shift_reg[7];
        end else if (counter < 7) begin
            shift_reg <= shift_reg << 1;
            counter <= counter + 1;
            sdo <= shift_reg[7];
        end
    end
endmodule
