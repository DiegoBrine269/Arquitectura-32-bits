library verilog;
use verilog.vl_types.all;
entity signextend is
    port(
        inst_i          : in     vl_logic_vector(31 downto 0);
        inmed_o         : out    vl_logic_vector(31 downto 0)
    );
end signextend;
