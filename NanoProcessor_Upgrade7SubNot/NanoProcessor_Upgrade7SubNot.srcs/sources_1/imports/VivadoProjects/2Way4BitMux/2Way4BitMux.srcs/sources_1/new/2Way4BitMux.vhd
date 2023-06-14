-- 2 way 4 bit Multiplexers
-- Created on 23/05/2023

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux2Way4Bit is
    Port ( In0 : in STD_LOGIC_VECTOR (3 downto 0);
           In1 : in STD_LOGIC_VECTOR (3 downto 0);
           LoadSelect : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (3 downto 0));
end Mux2Way4Bit;

architecture Behavioral of Mux2Way4Bit is

signal s0,s1:std_logic_vector(3 downto 0);

begin

    s0(0) <= (NOT(LoadSelect)) AND In0(0);
    s0(1) <= (NOT(LoadSelect)) AND In0(1);
    s0(2) <= (NOT(LoadSelect)) AND In0(2);
    s0(3) <= (NOT(LoadSelect)) AND In0(3);
    
    s1(0) <= (LoadSelect) AND In1(0);
    s1(1) <= (LoadSelect) AND In1(1);
    s1(2) <= (LoadSelect) AND In1(2);
    s1(3) <= (LoadSelect) AND In1(3);
    
    output <= s0 OR s1;

end Behavioral;
