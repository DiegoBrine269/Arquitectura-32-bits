library verilog;
use verilog.vl_types.all;
entity memoria is
    generic(
        WIDTH           : integer := 32;
        DEPTH           : integer := 10
    );
    port(
        clk_i           : in     vl_logic;
        we_i            : in     vl_logic;
        addwrite_i      : in     vl_logic_vector;
        datowrite_i     : in     vl_logic_vector;
        re_i            : in     vl_logic;
        addread_i       : in     vl_logic_vector;
        datoread_o      : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
end memoria;
