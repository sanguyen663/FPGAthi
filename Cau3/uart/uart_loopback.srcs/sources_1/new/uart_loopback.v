`timescale 1ns / 1ps

module uart_loopback
(
input                           sys_clk,       //system clock 50Mhz on board
input                           rst_n,        //reset ,low active
input                           uart_rx,      //fpga receive data
output                          uart_tx      //fpga send data
);
 parameter c_CLKS_PER_BIT    = 435;
 wire [7:0] w_Rx_Byte;
 wire [7:0] w_Tx_Byte;
 wire       o_Rx_DV;
 reg        i_Tx_DV;
 wire       o_Tx_Done;
 wire       o_Tx_Active;
 
 parameter                        CLK_FRE = 50;//Mhz
 localparam                       IDLE =  0;
 localparam                       SEND =  1;   //send HELLO C4I57\r\n
 localparam                       WAIT =  2;   //wait 1 second and send uart received data
 reg[7:0]                         tx_data;      //thanh ghi ch?a d? li?u c?n chuy?n
 reg[7:0]                         tx_str;       //thanh ghi ch?a chu?i c?n chuy?n
// reg                              tx_data_valid;
// wire                             tx_data_ready;
 reg[7:0]                         tx_cnt;
 wire[7:0]                        rx_data;
// wire                             rx_data_valid;
// wire                             rx_data_ready;
 reg[31:0]                        wait_cnt;
 reg[3:0]                         state;
 
 //assign rx_data_ready = 1'b1;//always can receive data,
                             //if HELLO ALINX\r\n is being sent, the received data is discarded
 /*************************************************************************
 1 second sends a packet HELLO ALINX\r\n , FPGA has been receiving state
 ****************************************************************************/
 always@(posedge sys_clk or negedge rst_n)
 begin
     if(rst_n == 1'b0)
     begin
         wait_cnt <= 32'd0;
         tx_data <= 8'd0;
         state <= IDLE;
         tx_cnt <= 8'd0;
         i_Tx_DV <= 1'b0;
     end
     else
     case(state)
         IDLE:
             state <= SEND;
         SEND:
         begin
             wait_cnt <= 32'd0;
             tx_data <= tx_str;
             if(~o_Tx_Active)
                i_Tx_DV <= 1'b1;
             else
                i_Tx_DV <= 1'b0;
                  
             if(o_Tx_Done == 1'b1 && tx_cnt < 8'd12)//Send 12 bytes data
             begin
                 tx_cnt <= tx_cnt + 8'd1; //Send data counter
                 i_Tx_DV <= 1'b0;
             end
             else if(o_Tx_Done == 1'b1)//last byte sent is complete
             begin
                 tx_cnt <= 8'd0;
                 i_Tx_DV <= 1'b0;
                 state <= WAIT;
             end
             
         end
         WAIT:
         begin
             wait_cnt <= wait_cnt + 32'd1;
 
             if(o_Rx_DV == 1'b1)
             begin
                tx_data <= w_Rx_Byte;   // send uart received data
                i_Tx_DV <= 1'b1;
             end
             else if(wait_cnt >= CLK_FRE * 1000000) // wait for 1 second
             begin
                 state <= SEND;
                 i_Tx_DV <= 1'b0;
             end
             else
                 i_Tx_DV <= 1'b0;
         end
         default:
             state <= IDLE;
     endcase
 end
 /*************************************************************************
 combinational logic  Send "HELLO C4I57\r\n"
 ****************************************************************************/
 always@(*)
 begin
     case(tx_cnt)
         8'd0 :  tx_str <= "H";
         8'd1 :  tx_str <= "E";
         8'd2 :  tx_str <= "L";
         8'd3 :  tx_str <= "L";
         8'd4 :  tx_str <= "O";
         8'd5 :  tx_str <= " ";
         8'd6 :  tx_str <= "C";
         8'd7 :  tx_str <= "4";
         8'd8 :  tx_str <= "I";
         8'd9 :  tx_str <= "5";
         8'd10:  tx_str <= "7";
         8'd11:  tx_str <= "\r";
         8'd12:  tx_str <= "\n";
         default:tx_str <= 8'd0;
     endcase
 end
 /***************************************************************************
 calling uart_tx module and uart_rx module
 ****************************************************************************/
 
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
