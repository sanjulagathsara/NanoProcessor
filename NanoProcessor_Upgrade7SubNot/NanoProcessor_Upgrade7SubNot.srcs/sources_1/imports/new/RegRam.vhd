
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegRam is
    Port ( D : in STD_LOGIC_VECTOR (11 downto 0);
           En : in STD_LOGIC := '1';
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
           Reset : in STD_LOGIC := '0');
end RegRam;

architecture Behavioral of RegRam is

begin
process (Clk) begin
    if (rising_edge(Clk)) then
        if Reset = '1' then
            Q <= "000000000000";
        elsif En = '1' then
            Q <= D;
        end if;
    end if;
end process;

end Behavioral;
