module test_segment7_led(
    input clk,
    input rstn,
    output [6:0] seg7_out,
    output dot,
    output [5:0] dig_sel
    );

    reg [3:0] in_bcd;
    wire clk_div;

    // Instance of freq_divider to generate 1Hz clock signal
    freq_divider U1(
        .clk_in(clk),
        .rstn(rstn),
        .clk_out(clk_div)
    );

    // Instance of segment7 to display BCD value on 7-segment
    segment7 seg7_inst(
        .in_bcd(in_bcd),
        .seg7_out(seg7_out)
    );

    assign dot = 1'b0;
    assign dig_sel = 6'b000001;

    always @(posedge clk_div or negedge rstn) begin
        if (!rstn)
            in_bcd <= 4'd0;
        else if (in_bcd == 4'd9)
            in_bcd <= 4'd0;
        else
            in_bcd <= in_bcd + 1;
    end
endmodule