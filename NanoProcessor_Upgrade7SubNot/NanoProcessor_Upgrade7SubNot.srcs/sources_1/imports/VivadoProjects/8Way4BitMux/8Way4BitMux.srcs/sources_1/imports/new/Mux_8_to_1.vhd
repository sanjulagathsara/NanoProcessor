----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/22/2023 06:35:47 PM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_8_to_1 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is

component Decoder_3_to_8 port(
    I   : in STD_LOGIC_VECTOR;
    EN  : in STD_LOGIC;
    Y   : out STD_LOGIC_VECTOR);
end component;

signal Dec_out, And_out : STD_LOGIC_VECTOR(7 downto 0);
signal Or_out : STD_LOGIC;

begin

Decoder_3_to_8_0 : Decoder_3_to_8 port map(
    I => S,
    EN => EN,
    Y => Dec_out );

    And_out <= Dec_out AND D;
    Or_out <= And_out(0) OR And_out(1) OR And_out(2) OR And_out(3) OR
         And_out(4) OR And_out(5) OR And_out(6) OR And_out(7);
    Y <= EN and Or_out;

end Behavioral;
