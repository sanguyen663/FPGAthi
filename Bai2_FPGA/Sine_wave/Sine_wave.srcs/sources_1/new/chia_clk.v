module Clock_divider(clk_in, rstn, up, down, clk_out);
    input clk_in;
    input rstn;
    input up;
    input down;
    output reg clk_out;

    reg [27:0] counter = 28'd0;
    reg [27:0] DIVISOR;

    // ??m v  chia t?n
    always @(posedge clk_in) begin
        counter <= counter + 28'd1;
        if (counter >= (DIVISOR - 1))
            counter <= 28'd0;
        clk_out <= (counter < DIVISOR/2) ? 1'b1 : 1'b0;
    end

    // Control UP/DOWN
    reg [25:0] counter_up;
    reg [25:0] counter_dw;

    // Up button
    always @(posedge clk_in) begin
        if (!rstn)
            counter_up <= 26'd0;
        else begin
            if (up || (up && down))
                counter_up <= 0;
            else begin
                if (counter_up == 26'h17D7840)
                    counter_up <= 0;
                else
                    counter_up <= counter_up + 1;
            end
        end
    end

    // Down button
    always @(posedge clk_in) begin
        if (!rstn)
            counter_dw <= 26'd0;
        else begin
            if (down && !up)
                counter_dw <= 0;
            else begin
                if (counter_dw == 26'h17D7840)
                    counter_dw <= 0;
                else
                    counter_dw <= counter_dw + 1;
            end
        end
    end

    // T?ng/gi?m DIVISOR up/down
    always @(posedge clk_in) begin
        if (!rstn)
            DIVISOR <= 28'd16;
        else begin
            if (counter_up == 26'h17D7840)
                DIVISOR <= DIVISOR + 1;
            else if (counter_dw == 26'h17D7840)
                DIVISOR <= DIVISOR - 1;
        end
    end
endmodule
