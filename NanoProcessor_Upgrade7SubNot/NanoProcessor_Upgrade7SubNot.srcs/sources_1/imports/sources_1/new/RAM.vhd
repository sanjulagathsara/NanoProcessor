library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAM is
    Port ( Clk : in STD_LOGIC;
           ProgrammingSelect : in STD_LOGIC;
           MemoryIn : in STD_LOGIC_VECTOR (2 downto 0);
           InstructionIn : in STD_LOGIC_VECTOR (11 downto 0);
           InstructionBus : out STD_LOGIC_VECTOR (11 downto 0);
           LEDout : out STD_LOGIC_VECTOR (11 downto 0);
           MemorySelect : in STD_LOGIC_VECTOR (2 downto 0));
end RAM;

architecture Behavioral of RAM is

component RegRam port(
    D : in STD_LOGIC_VECTOR (11 downto 0);
    En : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR (11 downto 0);
    Reset : in STD_LOGIC);
    
end component;

component Decoder_3_to_8 port(

    I : in STD_LOGIC_VECTOR (2 downto 0);
    EN : in STD_LOGIC;
    Y : out STD_LOGIC_VECTOR (7 downto 0));

end component;

component Mux8Way12Bit Port (
           In0 : in STD_LOGIC_VECTOR (11 downto 0);
           In1 : in STD_LOGIC_VECTOR (11 downto 0);
           In2 : in STD_LOGIC_VECTOR (11 downto 0);
           In3 : in STD_LOGIC_VECTOR (11 downto 0);
           In4 : in STD_LOGIC_VECTOR (11 downto 0);
           In5 : in STD_LOGIC_VECTOR (11 downto 0);
           In6 : in STD_LOGIC_VECTOR (11 downto 0);
           In7 : in STD_LOGIC_VECTOR (11 downto 0);
           OutMux : out STD_LOGIC_VECTOR (11 downto 0);
           Control : in STD_LOGIC_VECTOR (2 downto 0));
end component;

SIGNAL Y0,Y1 : std_logic_vector(7 downto 0);
Signal reset0 : std_logic;
SIGNAL output0,output1,output2,output3,output4,output5,output6,output7 : std_logic_vector(11 downto 0);
SIGNAL MemoryInWire : std_logic_vector(2 downto 0);
SIGNAL InstructionIn0,InstructionIn1,InstructionIn2,InstructionIn3,InstructionIn4,InstructionIn5,InstructionIn6,InstructionIn7 : std_logic_vector(11 downto 0);

signal startCounter : integer := 1;

begin

Decoder : Decoder_3_to_8 port map(
    I => MemoryIn,
    EN => ProgrammingSelect,
    Y => Y1 );
    
Reg0 : RegRam port map(
    D => InstructionIn0,
    En => Y0(0),
    Clk => Clk,
    Q => output0,
    Reset => reset0 ); 
    
Reg1 : RegRam port map(
    D => InstructionIn1,
    En => Y0(1),
    Clk => Clk,
    Q => output1,
    Reset => reset0 );
        
Reg2 : RegRam port map(
    D => InstructionIn2,
    En => Y0(2),
    Clk => Clk,
    Q => output2,
    Reset => reset0 );
            
Reg3 : RegRam port map(
    D => InstructionIn3,
    En => Y0(3),
    Clk => Clk,
    Q => output3,
    Reset => reset0 );
            
Reg4 : RegRam port map(
    D => InstructionIn4,
    En => Y0(4),
    Clk => Clk,
    Q => output4,
    Reset => reset0 );
    
Reg5 : RegRam port map(
    D => InstructionIn5,
    En => Y0(5),
    Clk => Clk,
    Q => output5,
    Reset => reset0 );
        
Reg6 : RegRam port map(
    D => InstructionIn6,
    En => Y0(6),
    Clk => Clk,
    Q => output6,
    Reset => reset0 );
            
Reg7 : RegRam port map(
    D => InstructionIn7,
    En => Y0(7),
    Clk => Clk,
    Q => output7,
    Reset => reset0 );

muxOut : Mux8Way12Bit port map(
    In0 => output0,
    In1 => output1,
    In2 => output2,
    In3 => output3,
    In4 => output4,
    In5 => output5,
    In6 => output6,
    In7 => output7,
    OutMux => InstructionBus,
    Control => MemorySelect);

muxLED : Mux8Way12Bit port map(
    In0 => output0,
    In1 => output1,
    In2 => output2,
    In3 => output3,
    In4 => output4,
    In5 => output5,
    In6 => output6,
    In7 => output7,
    OutMux => LEDout,
    Control => MemoryIn);

reset0 <= '0';

process
begin

if(rising_edge(Clk)) then
    if(startCounter = 1) then
        InstructionIn0 <= "101110000000"; -- 0 MOVI R7,0
        InstructionIn1 <= "100010000001"; -- 1 MOVI R1,1
        InstructionIn2 <= "100100000010"; -- 2 MOVI R2,2
        InstructionIn3 <= "100110000011"; -- 3 MOVI R3,3
        InstructionIn4 <= "001110010000"; -- 4 ADD R7,R1
        InstructionIn5 <= "001110100000"; -- 5 ADD R7,R2
        InstructionIn6 <= "001110110000"; -- 6 ADD R7,R3
        InstructionIn7 <= "110000000111"; -- 7 JZR R0,7
        startCounter <= 2;
        Y0 <= "11111111";
    elsif(startCounter = 2) then
    
        InstructionIn0 <= InstructionIn;
        InstructionIn1 <= InstructionIn;
        InstructionIn2 <= InstructionIn;
        InstructionIn3 <= InstructionIn;
        InstructionIn4 <= InstructionIn;
        InstructionIn5 <= InstructionIn;
        InstructionIn6 <= InstructionIn;
        InstructionIn7 <= InstructionIn;
        Y0 <= Y1;
    end if;
  end if;

end process;


end Behavioral;
