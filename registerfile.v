module registerfile # (
	parameter	WIDTH = 32,
	parameter 	DEPTH = 5 
)
(
	input								clk_i,
	
	// Puerto de escritura
	input 							we_i,
	input 	[DEPTH-1 : 0]		addwrite_i,
	input 	[WIDTH-1 : 0]		datowrite_i,
	
	// Puerto de lectura rs1
	input 							rers1_i,
	input 	[DEPTH-1 : 0]		addreadrs1_i,
	output 	[WIDTH-1 : 0]		datoreadrs1_o,

   // Puerto de lectura rs2
	input 							rers2_i,
	input 	[DEPTH-1 : 0]		addreadrs2_i,
	output 	[WIDTH-1 : 0]		datoreadrs2_o
);

	// Definición de una memoria
	reg [WIDTH-1 : 0] memoria [2**DEPTH-1 : 0];
	
	// Permite definir valores desde el tiempo 0
	initial begin
		memoria[0] = 32'b0;
		//memoria[5] = 32'd5;
		//memoria[6] = 32'd30;
	end
	
	//Puerto de escritura
	always @ (posedge clk_i)
	begin
		if(we_i)
			memoria[addwrite_i] <= datowrite_i;
	end
	
	//Puerto de lectura rs1
	assign datoreadrs1_o = (rers1_i) ? memoria[addreadrs1_i] : {WIDTH{1'b0}};

   	//Puerto de lectura rs2
	assign datoreadrs2_o = (rers2_i) ? memoria[addreadrs2_i] : {WIDTH{1'b0}};

endmodule