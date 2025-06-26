// I2C Master
//Author: Noel A. Rios
//FPGA Intel Altera EP4CE6E22C7
//Clock 50Mhz

module I2C_master(
		CLK,
		SDA,
		SCL,
		data,  //10:0
		data_lo,
		rst_n
		);

input CLK;
inout reg SDA;
inout reg SCL;
output reg [7:0] data;		
output reg [7:0] data_lo;
input rst_n;
		
		
reg [7:0] counter=0;
reg [7:0] rbuffer=0;
reg [7:0] wbuffer=0;

reg [8:0] state=0;
reg [8:0] state_start=0;
reg [8:0] state_stop=0;
reg [8:0] state_ack=0;
reg [8:0] state_no_ack=0;
reg [8:0] state_clock=0;
reg [8:0] state_read=0;
reg [8:0] state_write=0;
reg [8:0] state_shift=0;
reg [8:0] shift_var=1;
reg [8:0] shift_var_r=0;


reg [8:0] wstate=0;
reg wdone=0;
reg start_done=0;
reg stop_done=0;
reg ack_done=0;
reg no_ack_done=0;
reg read=0;
reg write_done=0;

//reg [8:0] address_r=8'h91;
//reg [8:0] address_w=8'h90;
//reg [8:0] address_reg=8'h00;
reg [8:0] address=0;

parameter address_r=8'h91;
parameter address_w=8'h90;
parameter address_reg=8'h00;



reg [7:0] ring_buffer=0;



reg done=0;
reg shift_bit_flag=0;

reg [8:0] ADDR_LO;
reg [8:0] ADDR_HI;

reg [26:0]timer1_reg=0;
reg [26:0]timer2_reg=0;
reg [26:0]timer3_reg=0;
reg [28:0]timer4_reg=0;
reg [26:0]timer5_reg=0;
reg [28:0]timer6_reg=0;
reg [26:0]timer7_reg=0;
reg [26:0]timer8_reg=0;
reg [26:0]timer9_reg=0;
reg [26:0] delay_reg=0;


reg timer1_flag=0;
reg timer2_flag=0;
reg timer3_flag=0;
reg timer4_flag=0;
reg timer5_flag=0;
reg timer6_flag=0;
reg timer7_flag=0;
reg timer8_flag=0;
reg timer9_flag=0;
reg delay_flag=0;

reg [1:0] timer1_loop=0;
reg [8:0] DATA;

//reg [8:0] data;


task timer1;
 begin
 timer1_flag<=0;
 timer1_reg=timer1_reg+26'd1;
 if(timer1_reg>=26'd10000)
 begin
 timer1_reg=0;
 timer1_flag<=1;
 end

 end
 endtask
 

 
task timer4;							//used by EEPROM READ
 begin
 timer4_flag<=0;
 timer4_reg=timer4_reg+28'd1;
 if(timer4_reg>=28'd500)
 begin
 timer4_reg=0;
 timer4_flag<=1;
 end

 end
 endtask

 
 
task timer3;					//used by I/O
 begin
 timer3_flag<=0;
 timer3_reg=timer3_reg+26'd1;
 if(timer3_reg>=26'd1)
 begin
 timer3_reg=0;
 timer3_flag<=1;
 end
 end
 endtask
 
 task timer5;						//used by I/O
 begin
 timer5_flag<=0;
 timer5_reg=timer5_reg+26'd1;
 if(timer5_reg>=26'd1)
 begin
 timer5_reg=0;
 timer5_flag<=1;
 end
 end
 endtask
 
 
 task timer6;						//used by I2C write
 begin
 timer6_flag<=0;
 timer6_reg=timer6_reg+28'd1;
 if(timer6_reg>=28'd1)
 begin
 timer6_reg=0;
 timer6_flag<=1;
 end
 end
 endtask


 task timer7;						//delay for LM75 Read
 begin								//delay for conversion time
 timer7_flag<=0;
 timer7_reg=timer7_reg+26'd1;
 if(timer7_reg>=26'd500)
 begin
 timer7_reg=0;
 timer7_flag<=1;
 end
 end
 endtask
 
 
task timer8;							//used by clock
 begin
 timer8_flag<=0;
 timer8_reg=timer8_reg+26'd1;
 if(timer8_reg>=26'd1)
 begin
 timer8_reg=0;
 timer8_flag<=1;
 end
 end
 endtask
 
 
task timer9;
 begin
 timer9_flag<=0;
 timer9_reg=timer9_reg+26'd1;
 if(timer9_reg>=26'd1)
 begin
 timer9_reg=0;
 timer9_flag<=1;
 end
 end
 endtask
 

 
 
 
 task I2C_READ;						//never nest same timer
begin
		
		if(done==0)
		begin
			//read=0;				//does not work with done at start causing bit shifting
			case(state)
			8'd0:	
			begin						//1st shift bit does not work due initialisation
			counter=0;
			ring_buffer=0;
			rbuffer=0;
			done=0;
			state=1;
			end
			8'd1:
			begin
			shift_bit();
			if(read==1)
			begin
			state=2;
			read=0;
			end
			end
			8'd2:	
			begin
			shift_bit();
			if(read==1)
			begin
			state=3;
			read=0;
			end
			end
			8'd3:	
			begin
			shift_bit();
			if(read==1)
			begin
			state=4;
			read=0;
			end
			end
			8'd4:	
			begin
			shift_bit();
			if(read==1)
			begin
			state=5;
			read=0;
			end
			end
			8'd5:	
			begin
			shift_bit();
			if(read==1)
			begin
			state=6;
			read=0;
			end
			end
			8'd6:	
			begin
			shift_bit();
			if(read==1)
			begin
			state=7;
			read=0;
			end
			end
			8'd7:	
			begin
			shift_bit();
			if(read==1)
			begin
			state=8;
			read=0;
			end
			end
			8'd8:	
			begin
			shift_bit();
			if(read==1)
			begin
			state=9;
			read=0;
			end
			end
			8'd9:	
			begin
			state=0;
			done=1;
			shift_var_r=0;
			counter=0;
			read=0;
			end
			endcase
			end
	end		

endtask



task shift_bit;
begin
	
		if(read==0)
		begin
			case(state_shift)
			8'd0:	
				begin
				SCL<=0;
				state_shift=1;
				end
			8'd1:	
				begin
				SDA<=1'bZ;
				state_shift=2;
				end
			8'd2:	
				begin
				SCL<=1;
				state_shift=3;
				end
			8'd3:	
				begin
				
				case (counter)
				8'd0:
				begin
				ring_buffer[7]=SDA;
				end
				8'd1:
				begin
				ring_buffer[6]=SDA;
				end
				8'd2:
				begin
				ring_buffer[5]=SDA;
				end
				8'd3:
				begin
				ring_buffer[4]=SDA;
				end
				8'd4:
				begin
				ring_buffer[3]=SDA;
				end
				8'd5:
				begin
				ring_buffer[2]=SDA;
				end
				8'd6:
				begin
				ring_buffer[1]=SDA;
				end
				8'd7:
				begin
				ring_buffer[0]=SDA;
				end
				endcase
				
				counter=counter+1;
				state_shift=4;
				end
				8'd4:	
				begin
				SCL<=0;
				state_shift=0;
				read=1;
				end
				endcase
				end
				end
endtask
 
 
task clock;
begin
timer3();
if(timer3_flag==1)
begin
case(state_clock)
8'd0:
begin
SCL<=1;
state_clock=1;
end
8'd1:
begin
SCL<=0;
state_clock=0;
end


endcase
end
end
endtask


task write;
begin
	if(wdone==0)
	begin
	case(wstate)
	8'd0:
	begin
	//wdone=0;
	
	
	if(wbuffer[7])SDA<=1'b1;
	if(!wbuffer[7]) SDA<=1'b0;
	
	wbuffer=address<<shift_var;
	shift_var=shift_var+1;
	if(shift_var>8)					//8 for 91
	begin
	shift_var=1;
	wbuffer=0;
	end
	
	wstate=1;
	end
	8'd1:
	begin
	//wdone=0;
	SCL<=1;
	wstate=2;
	end
	8'd2:
	begin
	SCL<=0;
	wdone=1;
	wstate=0;
	end
	endcase
//end
end
end
endtask



task I2C_WRITE;   /* Put data in buffer */
begin

	
	if(write_done==0)
	begin
	case(state_write)
	8'd0:
	begin
	write_done=0;
	//wbuffer=0;
	wstate=0;
	wdone=0;
	state_write=1;
	end
	8'd1:
	begin
	write();
	if(wdone==1)
	begin
	state_write=2;
	wstate=0;
	wdone=0;
	end
	end
	8'd2:
	begin
	write();
	if(wdone==1)
	begin
	state_write=3;
	wstate=0;
	wdone=0;
	end
	end
	8'd3:
	begin
	write();
	if(wdone==1)
	begin
	wstate=0;
	state_write=4;
	end
	end
	8'd4:
	begin
	write();
	if(wdone==1)
	begin
	wstate=0;
	state_write=5;
	wdone=0;
	end
	end
	8'd5:
	begin
	write();
	if(wdone==1)
	begin
	wstate=0;
	state_write=6;
	wdone=0;
	end
	end
	8'd6:
	begin
	write();
	if(wdone==1)
	begin
	wstate=0;
	state_write=7;
	wdone=0;
	end
	end
	8'd7:
	begin
	write();
	if(wdone==1)
	begin
	wstate=0;
	state_write=8;
	wdone=0;
	end
	end
	8'd8:
	begin
	write();
	if(wdone==1)
	begin
	wstate=0;
	state_write=9;
	wdone=0;
	end
	end
	8'd9:
	begin
	write();
	if(wdone==1)
	begin
	write_done=1;
	state_write=0;
	wstate=0;
	wdone=0;
	shift_var=1;
	//wbuffer=0;
	end
	end

	endcase
	//end
	end	
	end

endtask

task I2C_START;
begin
 						 	//SCL=1;
							//SDA=1;
							//SDA=0;
	if(start_done==0)	//SCL=0;
  begin
  case(state_start)
  8'd0:
	begin
	start_done=0;
  SCL<=1;
  state_start=1;
  end
  8'd1:
  begin
  SDA<=1;
  state_start=2;
  end
  8'd2:
  begin
  SDA<=0;
  state_start=3;
  end
  8'd3:
  begin
  SCL<=0;
  state_start=0;
  start_done=1;
  end		
 
  endcase
end
  end

endtask


task I2C_STOP;								//SCL=1;
												//SDA=0;
												//SDA=1;
												//SCL=0;
begin
  
  if(stop_done==0)
  begin
  case(state_stop)
  8'd0:
	begin
  stop_done=0;
  SCL<=1;
  state_stop<=1;
  end
  8'd1:
  begin
  SDA<=0;
  state_stop<=2;
  end
  8'd2:
  begin
  SDA<=1;
  state_stop<=3;
  end
  8'd3:
  begin
  SCL<=0;
  state_stop<=0;
  stop_done=1;
  end	
  
endcase
end
end

endtask

task ACK;
begin
  if(ack_done==0)
  begin
  case(state_ack)
  8'd0:												//SDA=0;
														//SCL=1;
														//SCL=0;
  begin
 SDA<=0;
 state_ack<=1;
 end
  8'd1:
  begin
  SCL<=1;
  state_ack<=2;
  end
  8'd2:
  begin
  SCL<=0;
  state_ack<=0;
  ack_done=1;
  end
  
  
  endcase
  end 
  end
  endtask

task NO_ACK;								//SDA=1;
												//SCL=1;
												//SCL=0;

begin
  
  if(no_ack_done==0)
  begin
  case(state_no_ack)
  8'd0:
	begin
  no_ack_done=0;
  SDA<=1;
  state_no_ack<=1;
  end
  8'd1:
  begin
  SCL<=1;
  state_no_ack<=2;
  end
  8'd2:
  begin
  SCL<=0;
  state_no_ack<=0;
  no_ack_done=1;
  end
  endcase
  end
  end
  endtask





task EEPROM_READ_ADDR;
begin

//wbuffer=8'h91;
//state_write=0;				state_write will always be 0
write_done=0;				//assigning a flag to a task will also not work
I2C_WRITE();			//might work in a state machine

end
endtask

task EEPROM_WRITE_ADDR;
begin
//wbuffer=8'h90;
//state_write=0;
write_done=0;				//assigning a flag to a task will also not work
I2C_WRITE();				//might work in a state machine

end
endtask


task DELAY_STOP;
begin
timer1();
case(timer1_loop)
	8'd0:
	begin
	if(timer1_flag==1)
	begin
	timer1_loop=1;
	end
	end
	8'd1:
	begin
	timer1_loop=0;
	timer1_flag=0;
	end
	endcase
	end
	endtask

task LM75_WRITE;
begin
I2C_START();
EEPROM_WRITE_ADDR();	  /*Put address in ADDR_LOW */
ACK();
wbuffer<=ADDR_LO;
counter<=0;
I2C_WRITE();
ACK();
wbuffer<=ADDR_HI;
counter<=0;
I2C_WRITE();
ACK();
wbuffer<=DATA;			//put number to write in DATA
counter<=0;
I2C_WRITE();
ACK();
I2C_STOP();
DELAY_STOP();
end
endtask

task LM75_READ;					//Do not Nest same timer task
begin									//state machine case must be sequential, no jumps
timer4();
if(timer4_flag==1)
begin
	start_done=0;
	case(state_read)
8'd0:										//Take note of ordering of states
	begin
	I2C_START();
	if(start_done==1)
	begin
	wbuffer=address_r;
	write_done=0;
	state_read=1;
	
	//address=address_r;
	end
	end
8'd1:
	begin
	address=address_r;
	I2C_WRITE();
	if(write_done==1)
	begin
	ack_done=0;
	state_read=2;
	//done=0;
	end
	end
	8'd2:
	begin
	
	ACK();				//ACK by LM75
	
	if(ack_done==1)
	begin
	done=0;
	state_read=3;
	end
	end
	8'd3:
	begin
	I2C_READ();
	if(done==1)
	begin
	data=ring_buffer;
	ack_done=0;
	state_read=4;
	end
	end
8'd4:
	begin
	ACK();					//ACK by master
	if(ack_done==1)
	begin
	done=0;
	state_read=5;
	end
	end
8'd5:
	begin
	I2C_READ();
	if(done==1)
	begin
	data_lo=ring_buffer;
	no_ack_done=0;
	state_read=6;
	end
	end
8'd6:
	begin
	NO_ACK();
	if(no_ack_done==1)
	begin
	stop_done=0;
	state_read=7;
	end
	end
8'd7:
	begin
	I2C_STOP();
	if(stop_done==1)
	begin
	state_read=8;
	end
	end
8'd8:
	begin
	delay_reg=delay_reg+8'd1;
	if(delay_reg<=100000)
	begin
	SDA<=0;
	SCL<=0; //SCL=~SCL;
	state_read=8'd8;
	end
	else
	begin
	delay_reg=0;
	start_done=0;
	state_read=0;
	end
	end
	
	
		
	endcase
end
	end
endtask

task timer2;
 begin
 timer2_flag<=0;
 timer2_reg=timer2_reg+26'd1;
 if(timer2_reg>=26'd1)
 begin
 timer2_reg=0;
 timer2_flag<=1;
 end
end
 endtask
 
 

always@(posedge CLK or negedge rst_n)
if(rst_n==0)
begin
state=0;
state_start=0;
state_stop=0;
state_ack=0;
state_no_ack=0;
state_clock=0;
state_read=0;
state_write=0;
state_shift=0;
shift_var=1;
shift_var_r=0;


wstate=0;
wdone=0;
start_done=0;
stop_done=0;
ack_done=0;
no_ack_done=0;
read=0;
write_done=0;
ring_buffer=0;
done=0;
data=0;


end

else

begin

ADDR_LO=0;
ADDR_HI=0;


LM75_READ();
end

endmodule