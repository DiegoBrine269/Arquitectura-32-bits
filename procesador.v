module procesador (
	input 				clk_i,			// SeÃ±al de reloj
	input					rst_ni, 			// Reset activo en bajo
	input					output_sel,		// Selector de salida
	output[31:0]		dato_monitor	//dato de write back al banco de registros

);

	// FETCH - BÃºsqueda y emisiÃ³n de instrucciones
	wire 	[31:0]			pc_next;				// wire porque el valor lo adquiere fuera de un bloque always
	wire 	[31:0]			fetch_inst_o;
	reg  	[31:0]			pc_current;			// reg porque el valor lo adquiere fuera de un bloque always
	
	always @(posedge clk_i, negedge rst_ni)
	begin
		if(!rst_ni)
			pc_current <= 32'b0;
		else
			pc_current <= pc_next;
	end
	
	assign pc_next = pc_current + 4'h4;
	
	//Instancia de memoria
	memoria icache (
		.clk_i 				(clk_i),
		.we_i					(1'b0),
		.addwrite_i			(10'h0),
		.datowrite_i		(32'h0),
		.re_i					(1'b1),
		.addread_i			(pc_current[11:2]),
		.datoread_o			(fetch_inst_o)
	);
	
	
	// DECODE - DecodificaciÃƒÂ³n
	wire			deco_regwrite_o;
	wire			deco_alusrc_o;
	
	decodificador decode (
		.opcode_i	(fetch_inst_o[6:0]),
		.regwrite_o	(deco_regwrite_o),
		.alusrc_o	(deco_alusrc_o)
	);

	// REGISTER READ - BÃƒÂºsqueda de operandos
	wire	[31:0]	regread_datars1_o;
	wire	[31:0]	regread_datars2_o;

	registerfile regfile (
		.clk_i				(clk_i),
		.we_i					(deco_regwrite_o),
		.addwrite_i			(fetch_inst_o[11:7]),
		.datowrite_i		(dato_monitor),
		.rers1_i				(1'b1),
		.addreadrs1_i		(fetch_inst_o[19:15]),
		.datoreadrs1_o		(regread_datars1_o),
		.rers2_i				(1'b1),
		.addreadrs2_i		(fetch_inst_o[24:20]),
		.datoreadrs2_o		(regread_datars2_o)
	);
	
	wire [31:0] mux_alusrc_o;
		

	// EXTENSIÓN DE SIGNO
	wire		[31:0] se_inmed_o;

	assign mux_alusrc_o = (deco_alusrc_o) ? se_inmed_o : regread_datars2_o ;
	signextend sextend (
		.inst_i				(fetch_inst_o),
		.inmed_o				(se_inmed_o)
	); 


	// EXECUTE - EjecuciÃ³n
	wire	[31:0]		wb_data_o;
	alu execute(
		.opers1_i 		(regread_datars1_o),
		.opers2_i 		(mux_alusrc_o),
		.f7_i 			(fetch_inst_o[30]),
		.f3_i 			(fetch_inst_o[14:12]),
		.salrd_o 		(wb_data_o)
	);


	// MEMORY ACCESS - Acceso a memoria


	// WRITE BACK - Escritura de resultado al banco de registros
	assign		dato_monitor = output_sel ? wb_data_o : fetch_inst_o;

endmodule


// TESTBENCH
module procesador_tb();
	reg	 				clk_i;		
	reg					rst_ni;		
	wire		[31:0]	dato_monitor;

	initial begin
			clk_i = 1'b1;
			rst_ni = 1'b0;
		#20
			rst_ni = 1'b1;
	end

	always 
	begin
		#10 						// DespuÃ©s de 10 unidades de tiempo
			clk_i = ~ clk_i;		// Invertir la seÃ±al
	end

	procesador DUT (
		.clk_i 				(clk_i),
		.rst_ni				(rst_ni),
		.dato_monitor		(dato_monitor)

	);
	

endmodule
