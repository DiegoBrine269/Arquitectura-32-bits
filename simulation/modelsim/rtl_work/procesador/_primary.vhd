library verilog;
use verilog.vl_types.all;
entity procesador is
    port(
        clk_i           : in     vl_logic;
        rst_ni          : in     vl_logic;
        wb_dato_o       : out    vl_logic_vector(31 downto 0)
    );
end procesador;
