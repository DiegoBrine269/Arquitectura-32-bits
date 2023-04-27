module deco7seg (

	input 		[3:0] hex_i,
	output reg  [6:0] num_o 


);

	always@ (*)
	begin 
		case (hex_i)	//6543210
			4'b0000: 		//0
				num_o = 7'b1000000;
			4'b0001: 		// 1
				num_o = 7'b1111001;
			4'b0010: 		// 2
				num_o = 7'b0100100;
			4'b0011: 		// 3
				num_o = 7'b0110000;
			4'b0100: 		// 4
				num_o = 7'b0011001;
			4'b0101: 		// 5
				num_o = 7'b0010010;
			4'b0110: 		// 6
				num_o = 7'b0000010;
			4'b0111: 		// 7
				num_o = 7'b1111000;
			4'b1000: 		// 8
				num_o = 7'b0000000;
			4'b1001: 		// 9
				num_o = 7'b0011000;
			4'b1010: 		// A
				num_o = 7'b0001000;
			4'b1011: 		// B
				num_o = 7'b0000011;
			4'b1100: 		// C
				num_o = 7'b1000110;
			4'b1101: 		// D
				num_o = 7'b0100001;
			4'b1110: 		// E
				num_o = 7'b0000110;
			4'b1111: 		// F
				num_o = 7'b0001110;	
			default:
				num_o = 7'b0111111;
		endcase
	end


endmodule