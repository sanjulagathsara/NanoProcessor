library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NanoProcessorSimulation is
--  Port ( );
end NanoProcessorSimulation;

architecture Behavioral of NanoProcessorSimulation is

component NanoProcessor port(
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Reg7 : out STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           Overflow : out STD_LOGIC;
           SevenSegment : out STD_LOGIC_VECTOR(6 downto 0);
           AnodeSelect : out STD_LOGIC_VECTOR(3 downto 0);
           SwitchIn : in STD_LOGIC_VECTOR(3 downto 0));
end component;

SIGNAL Clk,Reset,Zero,Overflow : std_logic;
SIGNAL Reg7,AnodeSelect,SwitchIn : std_logic_vector(3 downto 0);
SIGNAL SevenSegment : std_logic_vector(6 downto 0);

begin

UUT : NanoProcessor port map(
           Clk => Clk,
           Reset => Reset,
           Reg7 => Reg7,
           Zero => Zero,
           Overflow => Overflow,
           SevenSegment => SevenSegment,
           AnodeSelect => AnodeSelect,
           SwitchIn => SwitchIn
);

process
begin

    Clk <= '0';
    wait for 5ns;
    
    Clk <= '1';
    wait for 5ns;

end process;

process
begin
    SwitchIn <= "0110";
    
    Reset <= '1';
    wait for 100ns;
    
    Reset <= '0';
    wait for 800ns;
    
    Reset <= '1';
    wait for 50ns;  
    Reset <= '0';
    wait;

end process;

end Behavioral;
