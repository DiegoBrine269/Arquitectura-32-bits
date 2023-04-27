library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        opers1_i        : in     vl_logic_vector(31 downto 0);
        opers2_i        : in     vl_logic_vector(31 downto 0);
        f7_i            : in     vl_logic;
        f3_i            : in     vl_logic_vector(2 downto 0);
        salrd_o         : out    vl_logic_vector(31 downto 0)
    );
end alu;
