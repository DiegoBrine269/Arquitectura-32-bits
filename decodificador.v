module decodificador (
	input 		[6:0] opcode_i,
	output reg			regwrite_o,
	output reg			alusrc_o
);

	always @(*)
	begin
		case(opcode_i) 	// Se evalúa el valor del opcode_i
			7'b0110011:		// Instrucciones tipo R
				begin
					regwrite_o 	= 1'b1;
					alusrc_o		= 1'b0;
				end
				
			7'b0010011:		// Instrucciones tipo I
				begin
					regwrite_o 	= 1'b1;
					alusrc_o		= 1'b1;
				end
				
			default:
				begin
					regwrite_o 	= 1'b0;
					alusrc_o		= 1'b0;
				end
		endcase
	end
endmodule