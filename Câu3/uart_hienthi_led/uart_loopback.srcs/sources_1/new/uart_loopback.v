`timescale 1ns / 1ps

module uart_loopback
(
input                           sys_clk,       //system clock 50Mhz on board
input                           rst_n,        //reset ,low active
input                           uart_rx,      //fpga receive data
output                          uart_tx,      //fpga send data
output                          led1,
output                          led2,
output                          led3
);
 parameter c_CLKS_PER_BIT    = 435;
 wire [7:0] w_Rx_Byte;
 wire [7:0] w_Tx_Byte;
 wire       o_Rx_DV;
 reg        i_Tx_DV;
 wire       o_Tx_Done;
 wire       o_Tx_Active;
 
 parameter                        CLK_FRE = 50;//Mhz
 reg[7:0]                         tx_data;    
 reg[7:0]                         rx_data;
 reg[3:0]                         state;
 reg                              r_led1;
 reg                              r_led2;
 reg                              r_led3;

    always@(posedge sys_clk or negedge rst_n)
    begin
        if (rst_n == 1'b0)
        begin
                r_led1 = 1;
                r_led2 = 1;
                r_led3 = 1;
        end else
        begin
        if (rx_data == "1")
                begin
                         r_led1 = 0;
                         r_led2 = 1;
                         r_led3 = 1;
                end
        else if (rx_data == "2")
                begin
                         r_led1 = 1;
                         r_led2 = 0;
                         r_led3 = 1;
                end
        else if (rx_data == "3")
                begin
                         r_led1 = 1;
                         r_led2 = 1;
                         r_led3 = 0;
                end                     
        end
    end 
    
    
 assign led1   = r_led1;
 assign led2   = r_led2;
 assign led3   = r_led3;   
 assign w_Rx_Byte = rx_data;
 uart_rx #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_RX_INST
    (.i_Clock(sys_clk),
     .i_Rx_Serial(uart_rx),
     .o_Rx_DV(o_Rx_DV),
     .o_Rx_Byte(w_Rx_Byte)
     );
   
  assign w_Tx_Byte = tx_data; 
  uart_tx #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_TX_INST
    (.i_Clock(sys_clk),
     .i_Tx_DV(i_Tx_DV),
     .i_Tx_Byte(w_Tx_Byte),
     .o_Tx_Active(o_Tx_Active),
     .o_Tx_Serial(uart_tx),
     .o_Tx_Done(o_Tx_Done)
     );
     
 

endmodule
