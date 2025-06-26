module smg_control_module
(
    input sys_clk,
	 input rst_n,
	 input [24:0]Number_Sig,
	 output [3:0]Number_Data
);

    /******************************************/    
	 
	 parameter T1MS = 16'd49999;            //1ms����
	 
	 /******************************************/  
	 
	  reg [15:0]C1;
	 
	 always @ ( posedge sys_clk or negedge rst_n )
	     if( !rst_n )
		      C1 <= 16'd0;
		  else if( C1 == T1MS )
		      C1 <= 16'd0;
		  else
		      C1 <= C1 + 1'b1;
	 
	 /******************************************/ 
	 
	 reg [3:0]i;
	 reg [3:0]rNumber;
	 
	 always @ ( posedge sys_clk or negedge rst_n )
	     if( !rst_n )
		      begin
		          i <= 4'd0;
			    	 rNumber <= 4'd0;
				end
		  else 
		      case( i )
				
				    0:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else if(Number_Sig[24])
					      rNumber <= 4'hf; 
					 else rNumber <= Number_Sig[3:0];          //ʮ��λ�������ʾ           
	
					 1:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else rNumber <= Number_Sig[7:4];          //��λ�������ʾ
					 
					 2:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else rNumber <= Number_Sig[11:8];          //ǧλ�������ʾ
					 
					 3:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else rNumber <= Number_Sig[15:12];           //��λ�������ʾ
					 
					 4:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else rNumber <= Number_Sig[19:16];            //ʮλ�������ʾ
					 
					 5:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else rNumber <= Number_Sig[23:20];            //��λ�������ʾ
					 
					 6:
					 if( C1 == T1MS ) i <= i + 1'b1; 
					 else rNumber <= Number_Sig[23:20];            //ʮλ�������ʾ
					 
					 7:
					 if( C1 == T1MS ) i <= 4'd0;
					 else rNumber <= Number_Sig[23:20];            //ʮλ�������ʾ 
				
				endcase
				
    /******************************************/ 
	 
	 assign Number_Data = rNumber;
	 
	 /******************************************/
	 
endmodule
