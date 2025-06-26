module serial2paralel(clk, rst_n, start, sdi, shift_reg, finish);

input clk;
input rst_n;
input start;
input sdi;
output [7:0] shift_reg;
output finish;
reg [7:0] shift_reg;
reg rx_en;
reg [2:0] counter;
reg finish;

//rx_en
always @ (posedge clk) begin
    if (!rst_n) rx_en <= 1'b0;
    else if (start) rx_en <= 1'b1;
    else if (counter == 3'd7) rx_en <= 1'b0;
end

//counter
always @ (posedge clk) begin
    if (!rst_n) counter[2:0] <= 3'd0;
    else if (start) counter[2:0] <= 3'd0;
    else if (rx_en) counter[2:0] <= counter[2:0] + 1'b1;
end

//finish
always @ (posedge clk) begin
    if (!rst_n) finish <= 1'b0;
    else if (counter == 3'd7) finish <= 1'b1;
    else finish <= 1'b0;
end

endmodule