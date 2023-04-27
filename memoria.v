module memoria # (
	parameter	WIDTH = 32,
	parameter 	DEPTH = 10 //2^10 = 1024 (0 - 1023) localidades de memoria
)
(
	input								clk_i,
	
	// Puerto de escritura
	input 							we_i,
	input 	[DEPTH-1 : 0]		addwrite_i,
	input 	[WIDTH-1 : 0]		datowrite_i,
	
	// Puerto de lectura
	input 							re_i,
	input 	[DEPTH-1 : 0]		addread_i,
	output 	[WIDTH-1 : 0]		datoread_o
);

	// Definición de una memoria
	reg [WIDTH-1 : 0] memoria [2**DEPTH-1 : 0];
	
	initial
	begin
		memoria[0] = 32'b000000000101_00000_000_00101_0010011; //Cargar 5 a t0
		memoria[1] = 32'b000000011110_00000_000_00110_0010011; // Cargar 30 a t1
		memoria[2] = 32'b0000000_00110_00101_000_00111_0110011;
	end
	
	//Puerto de escritura
	always @ (posedge clk_i)
	begin
		if(we_i)
			memoria[addwrite_i] <= datowrite_i;
	end
	
	//Puerto de lectura
	assign datoread_o = (re_i) ? memoria[addread_i] : {WIDTH{1'b0}};

endmodule