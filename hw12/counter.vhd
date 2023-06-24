library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_UNSIGNED.all;
 
----------------------------------
Entity counter is
Port ( 
C,CLR: in STD_LOGIC;
Q: out STD_LOGIC_VECTOR (3 downto 0)
); 

 end entity counter;
----------------------------------
architecture Behavioral of counter is 
Signal tmp:STD_LOGIC_VECTOR (3 downto 0);
begin
process(C,CLR)
begin 
if(CLR ="1") then
tmp<="0000";
elsif (C'event and C="1")then
tmp<=tmp+1;
end if; 
end process;
Q<=tmp;
end architecture Behavioral;
