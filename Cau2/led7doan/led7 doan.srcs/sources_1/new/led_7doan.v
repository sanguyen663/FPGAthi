module segment7(in_bcd, seg7_out);
   
     //Declare inputs,outputs and internal variables.
     input [3:0] in_bcd;
     output [6:0] seg7_out;
     reg [6:0] seg7_out;

//always block for converting bcd digit into 7 segment format
    always @(in_bcd)
    begin
        case (in_bcd) //case statement
            0 : seg7_out = 7'b1000000;
            1 : seg7_out = 7'b1111001;
            2 : seg7_out = 7'b0100100;
            3 : seg7_out = 7'b0110000;
            4 : seg7_out = 7'b0011001;
            5 : seg7_out = 7'b0010010;
            6 : seg7_out = 7'b0000010;
            7 : seg7_out = 7'b1111000;
            8 : seg7_out = 7'b0000000;
            9 : seg7_out = 7'b0010000;
            10: seg7_out = 7'b0001000;
            11: seg7_out = 7'b0000011;
            12: seg7_out = 7'b1000110;
            13: seg7_out = 7'b0100001;
            14: seg7_out = 7'b0000110;
            15: seg7_out = 7'b0001110;
            //switch off 7 segment character when the bcd digit is not a decimal number.
            default : seg7_out = 7'b1111111; 
        endcase
    end
    
endmodule