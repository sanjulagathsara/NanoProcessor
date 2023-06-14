-- Register bank of nono processor
-- Created on 2023.05.23

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegisterBank is
    Port ( RegisterIn : in STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           output0 : out STD_LOGIC_VECTOR (3 downto 0);
           output1 : out STD_LOGIC_VECTOR (3 downto 0);
           output2 : out STD_LOGIC_VECTOR (3 downto 0);
           output3 : out STD_LOGIC_VECTOR (3 downto 0);
           output4 : out STD_LOGIC_VECTOR (3 downto 0);
           output5 : out STD_LOGIC_VECTOR (3 downto 0);
           output6 : out STD_LOGIC_VECTOR (3 downto 0);
           output7 : out STD_LOGIC_VECTOR (3 downto 0);
           RegisterEn : in STD_LOGIC_VECTOR (2 downto 0);
           Reset : in STD_LOGIC := '0');
end RegisterBank;

architecture Behavioral of RegisterBank is

component Reg port(
    D : in STD_LOGIC_VECTOR (3 downto 0);
    En : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR (3 downto 0);
    Reset : in STD_LOGIC);
    
end component;

component Decoder_3_to_8 port(

    I : in STD_LOGIC_VECTOR (2 downto 0);
    EN : in STD_LOGIC;
    Y : out STD_LOGIC_VECTOR (7 downto 0));

end component;

SIGNAL Y0 : std_logic_vector(7 downto 0);
SIGNAL HC : std_logic_vector(3 downto 0);
Signal reset0 : std_logic;

begin

Decoder : Decoder_3_to_8 port map(
    I => RegisterEn,
    EN => '1',
    Y => Y0 );
    
Reg0 : Reg port map(
    D => HC,
    En => '1',
    Clk => Clk,
    Q => output0,
    Reset => reset0 );  -- Hardcoded otherwise this should be output0
    
Reg1 : Reg port map(
    D => RegisterIn,
    En => Y0(1),
    Clk => Clk,
    Q => output1,
    Reset => reset0 );
        
Reg2 : Reg port map(
    D => RegisterIn,
    En => Y0(2),
    Clk => Clk,
    Q => output2,
    Reset => reset0 );
            
Reg3 : Reg port map(
    D => RegisterIn,
    En => Y0(3),
    Clk => Clk,
    Q => output3,
    Reset => reset0 );
            
Reg4 : Reg port map(
    D => RegisterIn,
    En => Y0(4),
    Clk => Clk,
    Q => output4,
    Reset => reset0 );
    
Reg5 : Reg port map(
    D => RegisterIn,
    En => Y0(5),
    Clk => Clk,
    Q => output5,
    Reset => reset0 );
        
Reg6 : Reg port map(
    D => RegisterIn,
    En => Y0(6),
    Clk => Clk,
    Q => output6,
    Reset => reset0 );
            
Reg7 : Reg port map(
    D => RegisterIn,
    En => Y0(7),
    Clk => Clk,
    Q => output7,
    Reset => reset0 );
    
HC <= "0000";
reset0 <= Reset;

end Behavioral;
