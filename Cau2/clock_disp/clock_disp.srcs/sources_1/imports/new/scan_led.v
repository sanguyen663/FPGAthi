module scan_led
(
 input sys_clk,
 input rst_n,
 input mod,
 input [23:0] hms_in,
 output [3:0] bcd_out,
 output reg dot,
 output reg [5:0] led_sel
);

parameter T1MS          = 16'd49999;            //1ms count
parameter T1MS2         = 24'd10000000;          //0.2s count   
reg [15:0]              time_cnt;               //time count
reg [24:0]              time_cnt2;
reg [2:0]               counter;
reg [2:0]               counter2;
reg [2:0]               counter3 = 0;
reg [3:0]               rNumber;
assign bcd_out = rNumber; 

always @ ( posedge sys_clk or negedge rst_n ) begin
    if( !rst_n ) begin
        time_cnt2 <= 24'd0;
        counter2  <= 0;
       end else if( time_cnt2 == T1MS2 ) begin
            time_cnt2 <= 24'd0;
            if(counter2 == 1)
                counter2 <= 0;
            else
                counter2 <= counter2 + 1;
        end else
        time_cnt2 <= time_cnt2 + 1'b1;
end

always @ ( posedge sys_clk or negedge rst_n or negedge mod) begin
    if (!rst_n)
        counter3 <= 0;
    else if (!mod) begin
        if (counter3 == 2)
            counter3 <= 0;
        else 
            counter3 <= counter3 + 1;
    end
end

//time count
always @ ( posedge sys_clk or negedge rst_n ) begin
    if( !rst_n ) begin
        time_cnt <= 16'd0;
        counter  <= 0;
       end else if( time_cnt == T1MS ) begin
            time_cnt <= 16'd0;
            if(counter == 5)
                counter <= 0;
            else
                counter <= counter + 1;
        end else
        time_cnt <= time_cnt + 1'b1;
end
 
always @ ( posedge sys_clk or negedge rst_n )
  begin
    if( !rst_n )
      begin
          rNumber <= 4'd0;
        end
    else 
      case(counter)
           0:
              begin
                 rNumber <= hms_in[23:20]; //sixth digital tube display
                 led_sel <= 6'b011_111;          
                 dot <= 1'b1;    
               end      
             1:
               begin
                 rNumber <= hms_in[19:16];          //fifth digital tube display
                 led_sel <= 6'b101_111; 
                 dot <= 1'b0;
               end  
             2:
                begin
                    rNumber <= hms_in[15:12];           //fourth digital tube display
                    if (counter3 == 2) begin
                        if (counter2 == 0)
                            led_sel <= 6'b110_111;
                        else
                            led_sel <= 6'b111_111;
                        end
                    else 
                        led_sel <= 6'b110_111;
                    dot <= 1'b1;
                end  
             3:
               begin
                    rNumber <= hms_in[11:8];           //third digital tube display
                    if (counter3 == 2) begin
                        if (counter2 == 0)
                            led_sel <= 6'b111_011;
                        else
                            led_sel <= 6'b111_111;
                        end
                    else 
                       led_sel <= 6'b111_011;
                    dot <= 1'b0;
               end  
             4:
               begin
                  rNumber <= hms_in[7:4];           //second digital tube display
                  if (counter3 == 1) begin
                      if (counter2 == 0)
                            led_sel <=6'b111_101;
                      else
                          led_sel <= 6'b111_111;
                      end
                  else 
                     led_sel <= 6'b111_101;
                  dot <= 1'b1;
                end
             5:
               begin
                rNumber <= hms_in[3:0];           //first digital tube display
                if (counter3 == 1) begin
                    if (counter2 == 0)
                        led_sel <=6'b111_110;
                    else                    
                        led_sel <= 6'b111_111;
                    end
                else 
                   led_sel <= 6'b111_110;
                dot <= 1'b1;
              end
             default: 
                begin
                 rNumber <= 4'd0;      
                 led_sel <= 6'b111_111;
                 dot <= 1'b1;
               end                  
        endcase
  end  	 
endmodule
