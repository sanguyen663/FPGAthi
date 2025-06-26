module led_ctr(
    input       clk,
    input       rst_n,
    input [7:0] ledctr,
    output      led1, 
    output      led2,
    output      led3
    );
    
    reg [7:0] r_ledctr;
    reg       r_led1;
    reg       r_led2;
    reg       r_led3;
    
    always@(posedge clk or negedge rst_n)
    begin
        if (rst_n == 1'b0)
        begin
                r_led1 = 0;
                r_led2 = 0;
                r_led3 = 0;
        end else
        begin
        if (r_ledctr == "1")
                begin
                         r_led1 = 1;
                         r_led2 = 0;
                         r_led3 = 0;
                end
        else if (r_ledctr == "2")
                begin
                         r_led1 = 0;
                         r_led2 = 1;
                         r_led3 = 0;
                end
        else if (r_ledctr == "2")
                begin
                         r_led1 = 0;
                         r_led2 = 0;
                         r_led3 = 1;
                end                     
        end
    end
    
assign ledctr = r_ledctr;
assign led1   = r_led1;
assign led1   = r_led1;
assign led1   = r_led1;

endmodule

