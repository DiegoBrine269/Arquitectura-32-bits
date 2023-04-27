module alu(
    input       [31:0]  opers1_i,
    input       [31:0]  opers2_i,
    input               f7_i,
    input       [2:0]   f3_i,
    output reg  [31:0]  salrd_o
);

    always @(*) begin
        case ({f7_i, f3_i})
            4'b0_000:
                salrd_o = opers1_i + opers2_i;
            4'b1_000:
                salrd_o = opers1_i - opers2_i;
            4'b0_001:
                salrd_o = opers1_i << opers2_i;
            4'b1_010: 
                if(opers1_i < opers2_i)
						salrd_o = 32'b1;
					 else
						salrd_o = 32'b0;
            default:
                salrd_o = 32'b0;
        endcase
            
    end

endmodule