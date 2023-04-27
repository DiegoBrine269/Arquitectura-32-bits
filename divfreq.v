module divfreq (
		input				clk_i,
		input				rst_ni,
		output reg		clk_o
);

	reg [23:0] ctr_r;

	always@(posedge clk_i, negedge rst_ni)
	begin
		// El reset siempre tiene la mayor prioridad
		if(!rst_ni)
			begin
				ctr_r <= 24'b0;
				clk_o <= 1'b1;
			end
		else
			begin
				ctr_r <= ctr_r + 1'b1;
				if (ctr_r == 24'd50000000)
					begin
						ctr_r <= 24'b0;
						clk_o = ~clk_o;
					end
			end
	end


endmodule
