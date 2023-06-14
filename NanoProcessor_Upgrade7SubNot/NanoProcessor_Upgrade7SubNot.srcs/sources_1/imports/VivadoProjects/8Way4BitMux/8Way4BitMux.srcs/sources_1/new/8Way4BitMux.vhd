-- 8 Way 4 Bit Multiplexer in Nanoprocessor
-- Created on 2023.05.18

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux8Way4Bit is
    Port ( In0 : in STD_LOGIC_VECTOR (3 downto 0);
           In1 : in STD_LOGIC_VECTOR (3 downto 0);
           In2 : in STD_LOGIC_VECTOR (3 downto 0);
           In3 : in STD_LOGIC_VECTOR (3 downto 0);
           In4 : in STD_LOGIC_VECTOR (3 downto 0);
           In5 : in STD_LOGIC_VECTOR (3 downto 0);
           In6 : in STD_LOGIC_VECTOR (3 downto 0);
           In7 : in STD_LOGIC_VECTOR (3 downto 0);
           OutMux : out STD_LOGIC_VECTOR (3 downto 0);
           Control : in STD_LOGIC_VECTOR (2 downto 0));
end Mux8Way4Bit;

architecture Behavioral of Mux8Way4Bit is

component Mux_8_to_1
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;

SIGNAL Control0 : std_logic_vector(2 downto 0);

begin

Mux_8_to_1_A : Mux_8_to_1
    port map(
               S => Control0,
               
               D(0) => In0(0),
               D(1) => In1(0),
               D(2) => In2(0),
               D(3) => In3(0),
               D(4) => In4(0),
               D(5) => In5(0),
               D(6) => In6(0),
               D(7) => In7(0),

               EN => '1',
               Y => OutMux(0)
               );
               
Mux_8_to_1_B : Mux_8_to_1
   port map(
              S => Control0,
              
              D(0) => In0(1),
              D(1) => In1(1),
              D(2) => In2(1),
              D(3) => In3(1),
              D(4) => In4(1),
              D(5) => In5(1),
              D(6) => In6(1),
              D(7) => In7(1),

              EN => '1',
              Y => OutMux(1)
              );

Mux_8_to_1_C : Mux_8_to_1
    port map(
               S => Control0,
               
               D(0) => In0(2),
               D(1) => In1(2),
               D(2) => In2(2),
               D(3) => In3(2),
               D(4) => In4(2),
               D(5) => In5(2),
               D(6) => In6(2),
               D(7) => In7(2),

               EN => '1',
               Y => OutMux(2)
               );
               
Mux_8_to_1_D : Mux_8_to_1
   port map(
              S => Control0,
              
              D(0) => In0(3),
              D(1) => In1(3),
              D(2) => In2(3),
              D(3) => In3(3),
              D(4) => In4(3),
              D(5) => In5(3),
              D(6) => In6(3),
              D(7) => In7(3),

              EN => '1',
              Y => OutMux(3)
              );


Control0 <= Control;

end Behavioral;
