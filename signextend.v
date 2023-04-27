module signextend (
	input 			[31:0] 	inst_i,
	output	reg 	[31:0]	inmed_o	
	
);
	always@(*)
	begin
		case(inst_i[6:0]) 		// Evaluamos el OPCODE	
			7'b0010011:
				inmed_o = {{20{inst_i[31]}}, inst_i[31:20]};
			default:
				inmed_o = 32'b0;
		
		endcase
	end
endmodule