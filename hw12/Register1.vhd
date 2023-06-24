library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_ARITH.all;
----------------------------------
entity Register1 is
Port ( 
D,C : in STD_LOGIC;
Q: out STD_LOGIC
); 
 end entity Register1;
----------------------------------
architecture Behavioral of Register1 is 
begin 
process(C)
begin
if(C="1" and C "event")then
Q<=D;
end if;
end process;
end architecture Behavioral;

