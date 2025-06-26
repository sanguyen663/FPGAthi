module parallel_to_serial(clk, rst_n, load, in, sdo);
input clk;
input rst_n;
input load;
input [7:0] in;
output sdo;

reg [7:0] shift_reg;
reg tx_en;
reg [2:0] counter;
//serial output
assign sdo = shift_reg[0];
//tx_en
always @ (posedge clk) begin
    if (!rst_n) tx_en <= 1'b0;
    else if (load) tx_en <= 1'b1;
    else if (counter[2:0] == 3'd7) tx_en <= 1'b0;
end
//counter
always @ (posedge clk) begin
    if (!rst_n) counter[2:0] <= 3'd0;
    else if (load) counter[2:0] <= 3'd0;
    else if (tx_en) counter[2:0] <= counter[2:0] + 1'b1;
end
//transmit & shift data
always @ (posedge clk) begin
    if (!rst_n) shift_reg[7:0] <= 8'b0;
    else if (load) shift_reg[7:0] <= in[7:0];
    else if (tx_en) shift_reg[7:0] <= {1'b0,shift_reg[7:1]};
end

endmodule