library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NanoProcessor is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC; -- Reset button
           led : out STD_LOGIC_VECTOR (11 downto 0); -- To Reg7 LED
           Zero : out STD_LOGIC; -- To zero LED
           Overflow : out STD_LOGIC; -- To overflow led
           SevenSegment : out STD_LOGIC_VECTOR(6 downto 0); -- To seven Segment
           AnodeSelect : out STD_LOGIC_VECTOR (3 downto 0); -- To Anode Select Bus
           SwitchIn : in STD_LOGIC_VECTOR(11 downto 0);
           RegDisplay : in STD_LOGIC_VECTOR(2 downto 0);
           ProgrammingSwitch : in STD_LOGIC);
end NanoProcessor;

architecture Behavioral of NanoProcessor is

Component InstructionDecoder port(
           InstructionBus : in STD_LOGIC_VECTOR (11 downto 0);
           RegisterCheck : in STD_LOGIC_VECTOR (3 downto 0);
           JumpAddress : out STD_LOGIC_VECTOR (2 downto 0);
           AddSubSelect : out STD_LOGIC;
           RegisterEnable : out STD_LOGIC_VECTOR (2 downto 0);
           LoadSelect : out STD_LOGIC;
           ImmediateValue : out STD_LOGIC_VECTOR (3 downto 0);
           RegASelect : out STD_LOGIC_VECTOR (2 downto 0);
           RegBSelect : out STD_LOGIC_VECTOR (2 downto 0);
           JumpFlag : out STD_LOGIC;
           SwitchIn : in STD_LOGIC_VECTOR(3 downto 0));
end component;

--component ProgramROM port(
--           MemorySelect : in STD_LOGIC_VECTOR (2 downto 0);
--           InstructionBus : out STD_LOGIC_VECTOR (11 downto 0));
--end component;

component RegisterBank port(
           RegisterIn : in STD_LOGIC_VECTOR (3 downto 0);
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
 end component;
 
 component AddSubUnit port(
            A : in STD_LOGIC_VECTOR (3 downto 0);
            B : in STD_LOGIC_VECTOR (3 downto 0);
            S : out STD_LOGIC_VECTOR (3 downto 0);
            AddSubSelect : in STD_LOGIC;
            Overflow : out STD_LOGIC;
            Zero : out STD_LOGIC);
end component;

component Mux8Way4Bit port(
           In0 : in STD_LOGIC_VECTOR (3 downto 0);
           In1 : in STD_LOGIC_VECTOR (3 downto 0);
           In2 : in STD_LOGIC_VECTOR (3 downto 0);
           In3 : in STD_LOGIC_VECTOR (3 downto 0);
           In4 : in STD_LOGIC_VECTOR (3 downto 0);
           In5 : in STD_LOGIC_VECTOR (3 downto 0);
           In6 : in STD_LOGIC_VECTOR (3 downto 0);
           In7 : in STD_LOGIC_VECTOR (3 downto 0);
           OutMux : out STD_LOGIC_VECTOR (3 downto 0);
           Control : in STD_LOGIC_VECTOR (2 downto 0));
end component;

component Adder3Bit port(
           A : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (2 downto 0);
           output : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component Mux2Way3Bit port(
           In0 : in STD_LOGIC_VECTOR (2 downto 0);
           In1 : in STD_LOGIC_VECTOR (2 downto 0);
           LoadSelect : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component Mux2Way4Bit port(
           In0 : in STD_LOGIC_VECTOR (3 downto 0);
           In1 : in STD_LOGIC_VECTOR (3 downto 0);
           LoadSelect : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component ProgramCounter port(
           input : in STD_LOGIC_VECTOR (2 downto 0);
           output : out STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC);
end component;

component Slow_Clk port(
           Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end component;

Component LUT_16_7 port (
    address : in STD_LOGIC_VECTOR (4 downto 0);
    data : out STD_LOGIC_VECTOR (6 downto 0));
End component;

Component RAM Port (
           Clk : in STD_LOGIC;
           ProgrammingSelect : in STD_LOGIC;
           MemoryIn : in STD_LOGIC_VECTOR (2 downto 0);
           InstructionIn : in STD_LOGIC_VECTOR (11 downto 0);
           InstructionBus : out STD_LOGIC_VECTOR (11 downto 0);
           LEDout : out STD_LOGIC_VECTOR (11 downto 0);
           MemorySelect : in STD_LOGIC_VECTOR (2 downto 0));
end component;

SIGNAL InstructionBus : std_logic_vector(11 downto 0);
SIGNAL Mux8Way4BitOut0, Mux8Way4BitOut1, ImmediateValue, RegisterIn, AddSubOut : std_logic_vector(3 downto 0);
SIGNAL JumpAddress, RegisterEnable, RegASelect, RegBSelect, ROMMemorySelect, Adder3BitOut, ProgramCounterIn : std_logic_vector(2 downto 0);
SIGNAL AddSubSelect, LoadSelect, JumpFlag, SlowClock, ProgrammingSelectWire: std_logic;

SIGNAL DataBus0, DataBus1, DataBus2, DataBus3, DataBus4, DataBus5, DataBus6, DataBus7 : std_logic_vector(3 downto 0);

Signal S_temp : std_logic_vector(4 downto 0);

Signal lookupTableIn: std_logic_vector(4 downto 0);

signal count2 : integer := 1;


begin

InstructionDecoder0 : InstructionDecoder port map(
           InstructionBus => InstructionBus,
           RegisterCheck => Mux8Way4BitOut0,
           JumpAddress => JumpAddress,
           AddSubSelect => AddSubSelect,
           RegisterEnable => RegisterEnable,
           LoadSelect => LoadSelect,
           ImmediateValue => ImmediateValue,
           RegASelect => RegASelect,
           RegBSelect => RegBSelect,
           JumpFlag => JumpFlag,
           SwitchIn => SwitchIn(3 downto 0)
);

--ProgramROM0 : ProgramROM port map(
--           MemorySelect => ROMMemorySelect,
--           InstructionBus => InstructionBus
--);

RegisterBank0 : RegisterBank port map(
           RegisterIn => RegisterIn,
           Clk => SlowClock,
           output0 => DataBus0,
           output1 => DataBus1,
           output2 => DataBus2,
           output3 => DataBus3,
           output4 => DataBus4,
           output5 => DataBus5,
           output6 => DataBus6,
           output7 => DataBus7,
           RegisterEn => RegisterEnable,
           Reset => Reset
);

AddSubUnit0 : AddSubUnit port map(
           A => Mux8Way4BitOut0,
           B => Mux8Way4BitOut1,
           S => AddSubOut,
           AddSubSelect => AddSubSelect,
           Overflow => Overflow,
           Zero => Zero
);

Mux8Way4Bit0 : Mux8Way4Bit port map(
           In0 => DataBus0,
           In1 => DataBus1,
           In2 => DataBus2,
           In3 => DataBus3,
           In4 => DataBus4,
           In5 => DataBus5,
           In6 => DataBus6,
           In7 => DataBus7,
           OutMux => Mux8Way4BitOut0,
           Control => RegASelect
);

Mux8Way4Bit1 : Mux8Way4Bit port map(
           In0 => DataBus0,
           In1 => DataBus1,
           In2 => DataBus2,
           In3 => DataBus3,
           In4 => DataBus4,
           In5 => DataBus5,
           In6 => DataBus6,
           In7 => DataBus7,
           OutMux => Mux8Way4BitOut1,
           Control => RegBSelect
);

Adder3Bit0 : Adder3Bit port map(
           A => ROMMemorySelect,
           B => "001",
           output => Adder3BitOut
);

Mux2Way3Bit0 : Mux2Way3Bit port map(
           In0 => Adder3BitOut,
           In1 => JumpAddress,
           LoadSelect => JumpFlag,
           output => ProgramCounterIn
);

Mux2Way4Bit0 : Mux2Way4Bit port map(
           In0 => ImmediateValue,
           In1 => AddSubOut,
           LoadSelect => LoadSelect,
           output => RegisterIn
);

ProgramCounter0 : ProgramCounter port map(
           input => ProgramCounterIn,
           output => ROMMemorySelect,
           Clk => SlowClock,
           Reset => Reset
);

Slow_Clk0 : Slow_Clk port map(
           Clk_in => Clk,
           Clk_out => SlowClock
);

LUT_16_7_0 : LUT_16_7 port map(
        address => S_temp,
        data => SevenSegment
);

RAM0 : RAM Port map (
           Clk => SlowClock,
           ProgrammingSelect => ProgrammingSelectWire,
           MemoryIn => RegDisplay,
           InstructionIn => SwitchIn,
           InstructionBus => InstructionBus,
           LEDout => led,
           MemorySelect => ROMMemorySelect
           );


process(Clk)
begin 

    if(rising_edge(Clk)) then
        if(ProgrammingSelectWire = '0') then 
            count2 <= count2 + 1;
            if (count2 = 10000) then -- Register Value Display
                AnodeSelect <= "1110"; 
                S_temp(4) <= '0';
                case RegDisplay is
                when "000" =>
                    S_temp(3 downto 0) <= DataBus0;
                when "001" =>
                    S_temp(3 downto 0) <= DataBus1;
                when "010" =>
                    S_temp(3 downto 0) <= DataBus2;
                when "011" =>
                    S_temp(3 downto 0) <= DataBus3;
                when "100" =>
                    S_temp(3 downto 0) <= DataBus4;
                when "101" =>
                    S_temp(3 downto 0) <= DataBus5;
                when "110" =>
                    S_temp(3 downto 0) <= DataBus6;
                when "111" =>
                    S_temp(3 downto 0) <= DataBus7;
                end case;
                
            elsif (count2 = 20000) then -- RegisterDisplay number display
                AnodeSelect <= "0111"; 
                lookupTableIn(4) <= '0';
                lookupTableIn(3) <= '0';
                lookupTableIn(2 downto 0) <= RegDisplay;
                S_temp <= lookupTableIn;
            elsif (count2 = 30000) then -- Counter
                   AnodeSelect <= "1101"; 
                   lookupTableIn(4) <= '0';
                   lookupTableIn(3) <= '0';
                   lookupTableIn(2 downto 0) <= ROMMemorySelect;
                   S_temp(4) <= '0';
                   S_temp(3 downto 0) <= lookupTableIn(3 downto 0);
            elsif (count2 = 40000) then -- -
                   AnodeSelect <= "1011"; 
                   S_temp <= "10001";
                   count2 <= 0; 
            end if;
        elsif(ProgrammingSelectWire = '1') then -- Programming select 1 - Programming mode
        
            count2 <= count2 + 1;
            if (count2 = 20000) then -- Register Value Display
                AnodeSelect <= "0111"; 
                S_temp <= "10000";
            elsif (count2 = 40000) then -- Register Value Display
                AnodeSelect <= "1000"; 
                S_temp <= "10001";
                count2 <= 0;
            end if;
        
        end if;
    end if;
end process;

ProgrammingSelectWire <= ProgrammingSwitch; 

end Behavioral;
