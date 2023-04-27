library verilog;
use verilog.vl_types.all;
entity registerfile is
    generic(
        WIDTH           : integer := 32;
        DEPTH           : integer := 5
    );
    port(
        clk_i           : in     vl_logic;
        we_i            : in     vl_logic;
        addwrite_i      : in     vl_logic_vector;
        datowrite_i     : in     vl_logic_vector;
        rers1_i         : in     vl_logic;
        addreadrs1_i    : in     vl_logic_vector;
        datoreadrs1_o   : out    vl_logic_vector;
        rers2_i         : in     vl_logic;
        addreadrs2_i    : in     vl_logic_vector;
        datoreadrs2_o   : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
end registerfile;
