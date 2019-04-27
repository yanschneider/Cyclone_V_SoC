module sev_seg_controller(
	input logic clk,reset_n,
	input logic [23:0] value,
	output logic [6:0] sev_seg_0,sev_seg_1,sev_seg_2,sev_seg_3,sev_seg_4,sev_seg_5
	);
	
	logic [6:0] sev_seg_out[5:0];
	
	always_ff@(posedge clk)
	begin
		if(reset_n == 0)
		begin
			sev_seg_out[0] = 7'b1;
			sev_seg_out[1] = 7'b1;
			sev_seg_out[2] = 7'b1;
			sev_seg_out[3] = 7'b1;
			sev_seg_out[4] = 7'b1;
			sev_seg_out[5] = 7'b1;
			
		end
		else
		begin
				case(value[3:0])
					4'b0000 : sev_seg_out[0] = 7'hC0;     	
					4'b0001 : sev_seg_out[0] = 7'hF9; 
					4'b0010 : sev_seg_out[0] = 7'hA4; 
					4'b0011 : sev_seg_out[0] = 7'hB0; 
					4'b0100 : sev_seg_out[0] = 7'h99; 
					4'b0101 : sev_seg_out[0] = 7'h92; 
					4'b0110 : sev_seg_out[0] = 7'h82; 
					4'b0111 : sev_seg_out[0] = 7'hF8; 
					4'b1000 : sev_seg_out[0] = 7'h80; 
					4'b1001 : sev_seg_out[0] = 7'h90; 
					4'b1010 : sev_seg_out[0] = 7'h88; 
					4'b1011 : sev_seg_out[0] = 7'h83; 
					4'b1100 : sev_seg_out[0] = 7'hC6; 
					4'b1101 : sev_seg_out[0] = 7'hA1; 
					4'b1110 : sev_seg_out[0] = 7'h86; 
					4'b1111 : sev_seg_out[0] = 7'h8E;
				endcase

				case(value[7:4])
					4'b0000 : sev_seg_out[1] = 7'hC0;     	
					4'b0001 : sev_seg_out[1] = 7'hF9; 
					4'b0010 : sev_seg_out[1] = 7'hA4; 
					4'b0011 : sev_seg_out[1] = 7'hB0; 
					4'b0100 : sev_seg_out[1] = 7'h99; 
					4'b0101 : sev_seg_out[1] = 7'h92; 
					4'b0110 : sev_seg_out[1] = 7'h82; 
					4'b0111 : sev_seg_out[1] = 7'hF8; 
					4'b1000 : sev_seg_out[1] = 7'h80; 
					4'b1001 : sev_seg_out[1] = 7'h90; 
					4'b1010 : sev_seg_out[1] = 7'h88; 
					4'b1011 : sev_seg_out[1] = 7'h83; 
					4'b1100 : sev_seg_out[1] = 7'hC6; 
					4'b1101 : sev_seg_out[1] = 7'hA1; 
					4'b1110 : sev_seg_out[1] = 7'h86; 
					4'b1111 : sev_seg_out[1] = 7'h8E;
				endcase

				case(value[11:8])
					4'b0000 : sev_seg_out[2] = 7'hC0;     	
					4'b0001 : sev_seg_out[2] = 7'hF9; 
					4'b0010 : sev_seg_out[2] = 7'hA4; 
					4'b0011 : sev_seg_out[2] = 7'hB0; 
					4'b0100 : sev_seg_out[2] = 7'h99; 
					4'b0101 : sev_seg_out[2] = 7'h92; 
					4'b0110 : sev_seg_out[2] = 7'h82; 
					4'b0111 : sev_seg_out[2] = 7'hF8; 
					4'b1000 : sev_seg_out[2] = 7'h80; 
					4'b1001 : sev_seg_out[2] = 7'h90; 
					4'b1010 : sev_seg_out[2] = 7'h88; 
					4'b1011 : sev_seg_out[2] = 7'h83; 
					4'b1100 : sev_seg_out[2] = 7'hC6; 
					4'b1101 : sev_seg_out[2] = 7'hA1; 
					4'b1110 : sev_seg_out[2] = 7'h86; 
					4'b1111 : sev_seg_out[2] = 7'h8E;
				endcase

				case(value[15:12])
					4'b0000 : sev_seg_out[3] = 7'hC0;     	
					4'b0001 : sev_seg_out[3] = 7'hF9; 
					4'b0010 : sev_seg_out[3] = 7'hA4; 
					4'b0011 : sev_seg_out[3] = 7'hB0; 
					4'b0100 : sev_seg_out[3] = 7'h99; 
					4'b0101 : sev_seg_out[3] = 7'h92; 
					4'b0110 : sev_seg_out[3] = 7'h82; 
					4'b0111 : sev_seg_out[3] = 7'hF8; 
					4'b1000 : sev_seg_out[3] = 7'h80; 
					4'b1001 : sev_seg_out[3] = 7'h90; 
					4'b1010 : sev_seg_out[3] = 7'h88; 
					4'b1011 : sev_seg_out[3] = 7'h83; 
					4'b1100 : sev_seg_out[3] = 7'hC6; 
					4'b1101 : sev_seg_out[3] = 7'hA1; 
					4'b1110 : sev_seg_out[3] = 7'h86; 
					4'b1111 : sev_seg_out[3] = 7'h8E;
				endcase

				case(value[19:16])
					4'b0000 : sev_seg_out[4] = 7'hC0;     	
					4'b0001 : sev_seg_out[4] = 7'hF9; 
					4'b0010 : sev_seg_out[4] = 7'hA4; 
					4'b0011 : sev_seg_out[4] = 7'hB0; 
					4'b0100 : sev_seg_out[4] = 7'h99; 
					4'b0101 : sev_seg_out[4] = 7'h92; 
					4'b0110 : sev_seg_out[4] = 7'h82; 
					4'b0111 : sev_seg_out[4] = 7'hF8; 
					4'b1000 : sev_seg_out[4] = 7'h80; 
					4'b1001 : sev_seg_out[4] = 7'h90; 
					4'b1010 : sev_seg_out[4] = 7'h88; 
					4'b1011 : sev_seg_out[4] = 7'h83; 
					4'b1100 : sev_seg_out[4] = 7'hC6; 
					4'b1101 : sev_seg_out[4] = 7'hA1; 
					4'b1110 : sev_seg_out[4] = 7'h86; 
					4'b1111 : sev_seg_out[4] = 7'h8E;
				endcase

				case(value[23:20])
					4'b0000 : sev_seg_out[5] = 7'hC0;     	
					4'b0001 : sev_seg_out[5] = 7'hF9; 
					4'b0010 : sev_seg_out[5] = 7'hA4; 
					4'b0011 : sev_seg_out[5] = 7'hB0; 
					4'b0100 : sev_seg_out[5] = 7'h99; 
					4'b0101 : sev_seg_out[5] = 7'h92; 
					4'b0110 : sev_seg_out[5] = 7'h82; 
					4'b0111 : sev_seg_out[5] = 7'hF8; 
					4'b1000 : sev_seg_out[5] = 7'h80; 
					4'b1001 : sev_seg_out[5] = 7'h90; 
					4'b1010 : sev_seg_out[5] = 7'h88; 
					4'b1011 : sev_seg_out[5] = 7'h83; 
					4'b1100 : sev_seg_out[5] = 7'hC6; 
					4'b1101 : sev_seg_out[5] = 7'hA1; 
					4'b1110 : sev_seg_out[5] = 7'h86; 
					4'b1111 : sev_seg_out[5] = 7'h8E;
				endcase
				
		end
	end
	
	//write to seven segment display
	assign sev_seg_0 = sev_seg_out[0];
	assign sev_seg_1 = sev_seg_out[1];
	assign sev_seg_2 = sev_seg_out[2];
	assign sev_seg_3 = sev_seg_out[3];
	assign sev_seg_4 = sev_seg_out[4];
	assign sev_seg_5 = sev_seg_out[5];
	
	
	
endmodule
