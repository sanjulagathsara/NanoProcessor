-- Add Sub Unit in Nanoprocessor
-- Created on 2023.05.18

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AddSubUnit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           AddSubSelect : in STD_LOGIC;
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end AddSubUnit;

architecture Behavioral of AddSubUnit is

component FA
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);
end component;

SIGNAL B2,S2 : std_logic_vector(3 downto 0);
SIGNAL C2 : std_logic_vector(2 downto 0);

begin



FA_0 : FA port map(
    A => A(0),
    B => B2(0),
    C_in => AddSubSelect,
    S => S2(0),
    C_out => C2(0)
);

FA_1 : FA port map(
    A => A(1),
    B => B2(1),
    C_in => C2(0),
    S => S2(1),
    C_out => C2(1)
);

FA_2 : FA port map(
    A => A(2),
    B => B2(2),
    C_in => C2(1),
    S => S2(2),
    C_out => C2(2)
);

FA_3 : FA port map(
    A => A(3),
    B => B2(3),
    C_in => C2(2),
    S => S2(3),
    C_out => Overflow
);

B2(0) <= AddSubSelect XOR B(0);
B2(1) <= AddSubSelect XOR B(1);
B2(2) <= AddSubSelect XOR B(2);
B2(3) <= AddSubSelect XOR B(3);

S <= S2;

Zero <= NOT(S2(0) OR S2(1) OR S2(2) OR S2(3));

end Behavioral;
