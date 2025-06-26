module scan_led
(
 input sys_clk,
 input rst_n,
 input [19:0] hms_in,
 output [3:0] bcd_out,
 output reg dot,
 output reg [5:0] led_sel
);

parameter T1MS          = 16'd49999;            //1ms count
parameter T1MS2         = 24'd10000000;          //0.2s count   
reg [15:0]              time_cnt;               //time count
reg [2:0]               counter;
reg [3:0]               rNumber;
assign bcd_out = rNumber; 

//time count
always @ ( posedge sys_clk or negedge rst_n ) begin
    if( !rst_n ) begin
        time_cnt <= 16'd0;
        counter  <= 0;
       end else if( time_cnt == T1MS ) begin
            time_cnt <= 16'd0;
            if(counter == 4)
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
                 rNumber <= hms_in[19:16];          
                 led_sel <= 6'b101_111; 
                 dot <= 1'b1;
               end  
             1:
                begin
                  rNumber <= hms_in[15:12];          
                  led_sel <= 6'b110_111; 
                  dot <= 1'b1;
                end  
             2:
               begin
                  rNumber <= hms_in[11:8];      
                  led_sel <= 6'b111_011; 
                  dot <= 1'b1;
               end  
             3:
               begin
                  rNumber <= hms_in[7:4];         
                  led_sel <= 6'b111_101;
                  dot <= 1'b0;
                end
             4:
               begin
                  rNumber <= hms_in[3:0];         
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

