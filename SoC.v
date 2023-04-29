module SoC (
	input 	clk_i,
	input 	rst_ni,
	input 	output_sel,
	output	[6:0] disp0,
	output	[6:0] disp1,
	output	[6:0] disp2,
	output	[6:0] disp3,
	output	[6:0] disp4,
	output	[6:0] disp5,
	output	[6:0] disp6,
	output	[6:0] disp7	
);

	wire clk_div;
	wire [31:0] core_data_o;

	divfreq divisor(
		.clk_i 		(clk_i),
		.rst_ni		(rst_ni),
		.clk_o		(clk_div)
	);
	
	procesador core(
		.clk_i 			(clk_div),		
		.rst_ni			(rst_ni), 		
		.output_sel		(output_sel),
		.dato_monitor	(core_data_o)	
	);
	
	deco7seg deco0(
		.hex_i		(core_data_o[3:0]),
		.num_o 		(disp0)
	);
	
	deco7seg deco1(
		.hex_i		(core_data_o[7:4]),
		.num_o 		(disp1)
	);
	
	deco7seg deco2(
		.hex_i		(core_data_o[8:5]),
		.num_o 		(disp2)
	);
	
	deco7seg deco3(
		.hex_i		(core_data_o[12:9]),
		.num_o 		(disp3)
	);

	deco7seg deco4(
		.hex_i		(core_data_o[16:13]),
		.num_o 		(disp4)
	);
	
	deco7seg deco5(
		.hex_i		(core_data_o[20:17]),
		.num_o 		(disp5)
	);
	
	deco7seg deco6(
		.hex_i		(core_data_o[23:20]),
		.num_o 		(disp6)
	);
	
	deco7seg deco7(
		.hex_i		(core_data_o[26:23]),
		.num_o 		(disp7)
	);
	

endmodule