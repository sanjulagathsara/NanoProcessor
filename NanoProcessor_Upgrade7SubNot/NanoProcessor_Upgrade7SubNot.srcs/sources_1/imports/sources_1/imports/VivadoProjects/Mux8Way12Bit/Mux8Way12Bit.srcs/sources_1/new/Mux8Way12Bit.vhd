
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux8Way12Bit is
    Port ( In0 : in STD_LOGIC_VECTOR (11 downto 0);
           In1 : in STD_LOGIC_VECTOR (11 downto 0);
           In2 : in STD_LOGIC_VECTOR (11 downto 0);
           In3 : in STD_LOGIC_VECTOR (11 downto 0);
           In4 : in STD_LOGIC_VECTOR (11 downto 0);
           In5 : in STD_LOGIC_VECTOR (11 downto 0);
           In6 : in STD_LOGIC_VECTOR (11 downto 0);
           In7 : in STD_LOGIC_VECTOR (11 downto 0);
           OutMux : out STD_LOGIC_VECTOR (11 downto 0);
           Control : in STD_LOGIC_VECTOR (2 downto 0));
end Mux8Way12Bit;

architecture Behavioral of Mux8Way12Bit is

component Mux_8_to_1
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;

SIGNAL Control0 : std_logic_vector(2 downto 0);

begin

Mux_8_to_1_0 : Mux_8_to_1
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
               
Mux_8_to_1_1 : Mux_8_to_1
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

Mux_8_to_1_2 : Mux_8_to_1
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
               
Mux_8_to_1_3 : Mux_8_to_1
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

Mux_8_to_1_4 : Mux_8_to_1
   port map(
              S => Control0,
              
              D(0) => In0(4),
              D(1) => In1(4),
              D(2) => In2(4),
              D(3) => In3(4),
              D(4) => In4(4),
              D(5) => In5(4),
              D(6) => In6(4),
              D(7) => In7(4),

              EN => '1',
              Y => OutMux(4)
              );
              
  Mux_8_to_1_5 : Mux_8_to_1
  port map(
             S => Control0,
             
             D(0) => In0(5),
             D(1) => In1(5),
             D(2) => In2(5),
             D(3) => In3(5),
             D(4) => In4(5),
             D(5) => In5(5),
             D(6) => In6(5),
             D(7) => In7(5),

             EN => '1',
             Y => OutMux(5)
             );
             
Mux_8_to_1_6 : Mux_8_to_1
 port map(
            S => Control0,
            
            D(0) => In0(6),
            D(1) => In1(6),
            D(2) => In2(6),
            D(3) => In3(6),
            D(4) => In4(6),
            D(5) => In5(6),
            D(6) => In6(6),
            D(7) => In7(6),

            EN => '1',
            Y => OutMux(6)
            );

Mux_8_to_1_7 : Mux_8_to_1
  port map(
             S => Control0,
             
             D(0) => In0(7),
             D(1) => In1(7),
             D(2) => In2(7),
             D(3) => In3(7),
             D(4) => In4(7),
             D(5) => In5(7),
             D(6) => In6(7),
             D(7) => In7(7),

             EN => '1',
             Y => OutMux(7)
             );
             
Mux_8_to_1_8 : Mux_8_to_1
 port map(
            S => Control0,
            
            D(0) => In0(8),
            D(1) => In1(8),
            D(2) => In2(8),
            D(3) => In3(8),
            D(4) => In4(8),
            D(5) => In5(8),
            D(6) => In6(8),
            D(7) => In7(8),

            EN => '1',
            Y => OutMux(8)
            );
              
 Mux_8_to_1_9 : Mux_8_to_1
  port map(
             S => Control0,
             
             D(0) => In0(9),
             D(1) => In1(9),
             D(2) => In2(9),
             D(3) => In3(9),
             D(4) => In4(9),
             D(5) => In5(9),
             D(6) => In6(9),
             D(7) => In7(9),

             EN => '1',
             Y => OutMux(9)
             );
             
Mux_8_to_1_10 : Mux_8_to_1
 port map(
            S => Control0,
            
            D(0) => In0(10),
            D(1) => In1(10),
            D(2) => In2(10),
            D(3) => In3(10),
            D(4) => In4(10),
            D(5) => In5(10),
            D(6) => In6(10),
            D(7) => In7(10),

            EN => '1',
            Y => OutMux(10)
            );

Mux_8_to_1_11 : Mux_8_to_1
  port map(
             S => Control0,
             
             D(0) => In0(11),
             D(1) => In1(11),
             D(2) => In2(11),
             D(3) => In3(11),
             D(4) => In4(11),
             D(5) => In5(11),
             D(6) => In6(11),
             D(7) => In7(11),

             EN => '1',
             Y => OutMux(11)
             );
                         

Control0 <= Control;

end Behavioral;
