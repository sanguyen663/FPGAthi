module test_7seg(
    input clk,
    input rstn,
    input up,
    input down,
    input sw0,
    input sw1,
    output [6:0] seg7_out,
    output dot,
    output [5:0] dig_sel
    );
    
    wire div_clk; //frequency 1 Hz
  
    Clock_divider U1(
        .clk_in   (clk),
        .rstn     (rstn),
        .clk_out  (div_clk)
    );

    //Calculate hour, minute, second
    reg [4:0] hours;
    reg [6:0] minutes;
    reg [6:0] seconds;

    reg [2:0] mode = 0;

always @ ( posedge clk or negedge rstn or negedge sw0) begin
    if (!rstn) begin
        mode <= 0;
    end else if (!sw0) begin
        if (mode == 2)
            mode <= 0;
            else 
                mode <= mode + 1;
    end
end

always @(posedge div_clk or negedge rstn or negedge sw1) begin
    if (!rstn) begin
        seconds <= 0;
        minutes <= 0;
        hours <= 0;
    end 
    else
        case(mode)
            0: begin // Ch? ?? không hi?u ch?nh
                seconds <= seconds + 1;
                if (seconds == 59) begin
                    seconds <= 0;
                    minutes <= minutes + 1;
                    if (minutes == 59) begin
                        minutes <= 0;
                        hours <= hours + 1;
                        if (hours == 23)
                            hours <= 0;
                    end
                end
            end
            1: begin // Ch? ?? hi?u ch?nh giây
                seconds <= seconds + 1;
                if (seconds == 59) begin
                    seconds <= 0;
                    minutes <= minutes + 1;
                    if (minutes == 59) begin
                        minutes <= 0;
                        hours <= hours + 1;
                        if (hours == 23)
                            hours <= 0;
                    end
                end
                if (!sw1) // N?u ?n sw1, reset giây
                    seconds <= 0;
                end
            2: begin // Ch? ?? hi?u ch?nh phút
                if (!sw1) // N?u ?n sw1, t?ng phút
                    minutes <= minutes + 1;
                seconds <= seconds + 1; // ??ng h? v?n ch?y bình th??ng
                end
        endcase
    end    

    // BCD to 7-segment conversion
    wire [3:0] tens_s;
    wire [3:0] ones_s;
    wire [3:0] tens_m;
    wire [3:0] ones_m;
    wire [3:0] tens_h;
    wire [3:0] ones_h;

    assign tens_s = seconds / 10;
    assign ones_s = seconds % 10;
    assign tens_m = minutes / 10;
    assign ones_m = minutes % 10;
    assign tens_h = hours / 10;
    assign ones_h = hours % 10;

    wire [3:0] in_bcd;  
    scan_led U3(
        .mod           (sw0),
        .sys_clk       (clk),
        .rst_n         (rstn),
        .hms_in        ({tens_h, ones_h, tens_m, ones_m, tens_s, ones_s}),
        .dot           (dot),
        .bcd_out       (in_bcd),
        .led_sel       (dig_sel)
    );
    
    bcd2seg7 U2(
        .in_bcd   (in_bcd),
        .seg7_out (seg7_out) 
    ); 
       
endmodule

module Clock_divider(clk_in, rstn, clk_out);
    input clk_in; 
    input rstn;
    output reg clk_out; 

    reg [27:0] counter = 28'd0;
    parameter [27:0] DIVISOR = 28'h2FAF080; // 1 second

    //Count and divide
   always @(posedge clk_in or negedge rstn) begin
    if (!rstn) 
        counter <= 0;
    else begin 
        counter <= counter + 28'd1;
        if(counter>=(DIVISOR-1))
            counter <= 28'd0;
            clk_out <= (counter<DIVISOR/2)? 1'b1 : 1'b0;
    end
end

endmodule