
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ProgramCounter is
    Port ( input : in STD_LOGIC_VECTOR (2 downto 0);
           output : out STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC);
end ProgramCounter;

architecture Behavioral of ProgramCounter is

begin

process (Clk) begin
    if (rising_edge(Clk)) then
        if Reset = '1' then
            output <= "000";
        else
            output <= input;
        end if;
    end if;
end process;


end Behavioral;
