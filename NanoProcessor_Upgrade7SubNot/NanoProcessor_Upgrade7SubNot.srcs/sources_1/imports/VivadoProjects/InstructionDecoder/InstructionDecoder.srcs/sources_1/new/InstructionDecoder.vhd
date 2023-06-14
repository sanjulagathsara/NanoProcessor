library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity InstructionDecoder is
    Port ( InstructionBus : in STD_LOGIC_VECTOR (11 downto 0);
           RegisterCheck : in STD_LOGIC_VECTOR (3 downto 0);
           JumpAddress : out STD_LOGIC_VECTOR (2 downto 0);
           AddSubSelect : out STD_LOGIC;
           RegisterEnable : out STD_LOGIC_VECTOR (2 downto 0);
           LoadSelect : out STD_LOGIC;
           ImmediateValue : out STD_LOGIC_VECTOR (3 downto 0);
           RegASelect : out STD_LOGIC_VECTOR (2 downto 0);
           RegBSelect : out STD_LOGIC_VECTOR (2 downto 0);
           JumpFlag : out STD_LOGIC;
           SwitchIn : in STD_LOGIC_VECTOR (3 downto 0));
end InstructionDecoder;

architecture Behavioral of InstructionDecoder is

begin
    process (InstructionBus(11 downto 0),RegisterCheck,SwitchIn)
    begin
            if (InstructionBus(11 downto 10) = "00") then -- Operations
            
                if (InstructionBus(3 downto 0) = "0000") then -- ADD
                    RegASelect <= InstructionBus(9 downto 7);
                    RegBSelect <= InstructionBus(6 downto 4);
                    AddSubSelect <= '0';
                    LoadSelect <= '1';
                    RegisterEnable <= InstructionBus(9 downto 7);
                    JumpFlag <= '0';
                    
                elsif (InstructionBus(3 downto 0) = "0001") then -- SUB
                    RegASelect <= InstructionBus(9 downto 7);
                    RegBSelect <= InstructionBus(6 downto 4);
                    AddSubSelect <= '1';
                    LoadSelect <= '1';
                    RegisterEnable <= InstructionBus(9 downto 7);
                    JumpFlag <= '0';
                    
                elsif (InstructionBus(3 downto 0) = "0010") then -- NOT
                    RegASelect <= InstructionBus(9 downto 7);
                    LoadSelect <= '0';
                    ImmediateValue <= NOT(RegisterCheck);
                    RegisterEnable <= InstructionBus(9 downto 7);
                    JumpFlag <= '0';
                    
                end if;
                
            elsif (InstructionBus(11 downto 10) = "01") then -- Negative
                RegBSelect <= InstructionBus(9 downto 7);
                RegisterEnable <= InstructionBus(9 downto 7);
                LoadSelect <= '1';
                RegASelect <= "000";
                AddSubSelect <= '1';
                JumpFlag <= '0';
            
            elsif (InstructionBus(11 downto 10) = "10") then -- Move
                RegisterEnable <= InstructionBus(9 downto 7);
                LoadSelect <= '0';
                JumpFlag <= '0';
                if (InstructionBus(5) = '0') then
                    ImmediateValue <= InstructionBus(3 downto 0);
                else
                    ImmediateValue <= SwitchIn;
                end if;
                
            else
                JumpAddress <= InstructionBus(2 downto 0); -- Jump
                RegASelect <= InstructionBus(9 downto 7);
                RegisterEnable <= "000";
                
                if RegisterCheck = "0000" then
                    JumpFlag <= '1';
                else
                    JumpFlag <= '0';
                end if;
                
            end if;
    end process;
    
 
    
end Behavioral;
