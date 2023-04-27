library verilog;
use verilog.vl_types.all;
entity decodificador is
    port(
        opcode_i        : in     vl_logic_vector(6 downto 0);
        regwrite_o      : out    vl_logic;
        alusrc_o        : out    vl_logic
    );
end decodificador;
