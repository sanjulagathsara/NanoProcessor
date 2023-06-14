
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder3Bit is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (2 downto 0);
           output : out STD_LOGIC_VECTOR (2 downto 0));
end Adder3Bit;

architecture Behavioral of Adder3Bit is

component FA port (
    A : in std_logic;
    B : in std_logic;
    C_in : in STD_LOGIC;
    S : out STD_LOGIC;
    C_out : out STD_LOGIC);
end component;

SIGNAL FA_C : std_logic_vector(2 downto 0);

begin

FA_0 : FA port map (
    A => A(0),
    B => B(0),
    S => output(0),
    C_in => '0',
    C_out => FA_C(0));
    
FA_1 : FA port map (
    A => A(1),
    B => B(1),
    S => output(1),
    C_in => FA_C(0),
    C_out => FA_C(1));
        
FA_2 : FA port map (
    A => A(2),
    B => B(2),
    S => output(2),
    C_in => FA_C(1),
    C_out => FA_C(2));





end Behavioral;
