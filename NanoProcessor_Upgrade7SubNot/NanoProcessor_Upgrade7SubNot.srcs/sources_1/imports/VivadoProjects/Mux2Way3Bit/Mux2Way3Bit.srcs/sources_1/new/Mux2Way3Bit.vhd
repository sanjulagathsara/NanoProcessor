-- 2 way 3 bit multiplexer

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux2Way3Bit is
    Port ( In0 : in STD_LOGIC_VECTOR (2 downto 0);
           In1 : in STD_LOGIC_VECTOR (2 downto 0);
           LoadSelect : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (2 downto 0));
end Mux2Way3Bit;

architecture Behavioral of Mux2Way3Bit is

signal s0,s1:std_logic_vector(2 downto 0);

begin

    s0(0) <= (NOT(LoadSelect)) AND In0(0);
    s0(1) <= (NOT(LoadSelect)) AND In0(1);
    s0(2) <= (NOT(LoadSelect)) AND In0(2);
    
    s1(0) <= (LoadSelect) AND In1(0);
    s1(1) <= (LoadSelect) AND In1(1);
    s1(2) <= (LoadSelect) AND In1(2);
    
    output <= s0 OR s1;

end Behavioral;
