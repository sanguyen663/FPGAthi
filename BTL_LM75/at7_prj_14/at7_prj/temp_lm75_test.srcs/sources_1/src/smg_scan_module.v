module smg_scan_module
(
     input sys_clk, 
	 input rst_n, 
	 output [7:0]Scan_Sig
);
	 
	 /*****************************/
	 
	 parameter T1MS = 16'd49999;
	 
	 /*****************************/
	 
	 reg [15:0]C1;
	 
	 always @ ( posedge sys_clk or negedge rst_n )
	     if( !rst_n )
		      C1 <= 16'd0;
		  else if( C1 == T1MS )
		      C1 <= 16'd0;
		  else
		      C1 <= C1 + 1'b1;
	
	 /*******************************/
	 
	 reg [3:0]i;
	 reg [7:0]rScan;
	 
	 always @ ( posedge sys_clk or negedge rst_n )
	     if( !rst_n )
		      begin
		          i <= 4'd0;
		          rScan <= 8'b100_000;
			   end
		  else 
		      case( i )
				    
					 0:
		          if( C1 == T1MS ) i <= i + 1'b1;
					 else rScan <= 8'b011_111_11;                      //��һ������ѡͨ
					 
					 1:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else rScan <= 8'b101_111_11;                      //�ڶ�������ѡͨ
					 
					 2:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else rScan <= 8'b110_111_11;                      //����������ѡͨ
					 
					 3:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else rScan <= 8'b111_011_11;                      //���ĸ�����ѡͨ
					 
					 4:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else rScan <= 8'b111_101_11;                      //���������ѡͨ
					 
					 5:
					 if( C1 == T1MS ) i <= i + 1'b1;
					 else rScan <= 8'b111_110_11;                      //����������ѡͨ
					 
					 6:
					 if( C1 == T1MS ) i <= i + 1'b1;                  //���߸�����ѡͨ
					 else rScan <= 8'b111_111_01;
					 
					 7:
					 if( C1 == T1MS ) i <= 4'd0;                     //�ڰ˸�����ѡͨ
					 else rScan <= 8'b111_111_10;
				endcase
				
	 /******************************/
	 
	 assign Scan_Sig = rScan;
	 
	 /******************************/
		      

endmodule
