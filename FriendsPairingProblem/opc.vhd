library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity opc is
    port (i : in std_logic_vector(3 downto 0);
    a, b : in std_logic_vector(31 downto 0);
    c : out std_logic_vector(31 downto 0));
end opc;

architecture rtl of opc is
component adder is
    port (a, b : in std_logic_vector(31 downto 0);
    y : out std_logic_vector(31 downto 0));
end component;
component minus1 is
    port (a : in std_logic_vector(3 downto 0);
    y : out std_logic_vector(3 downto 0));
end component;
component multi is
    port (a : in std_logic_vector(3 downto 0);
    b : in std_logic_vector(31 downto 0);
    y : out std_logic_vector(31 downto 0));
end component;
signal iminus1 : std_logic_vector(3 downto 0);
signal ia : std_logic_vector(31 downto 0);
begin
    u1 : minus1 port map (i, iminus1);
    u2 : multi port map (iminus1, a, ia);
    u3 : adder port map (ia, b, c);
end rtl;