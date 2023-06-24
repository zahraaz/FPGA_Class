library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
----------------------------------
Entity stop_watch is
Port (stop, CLK: in STD_LOGIC;
Reg: out STD_LOGIC);
end stop_watch;

----------------------------------
architecture Behavioral of stop_watch is

Component register1
port(
D,C : in STD_LOGIC;
Q: out STD_LOGIC
); 
end component;

----------------------------------
Component counter
port(
C,CLR: in STD_LOGIC;
Q: out STD_LOGIC_VECTOR (3 downto 0)
); 
end component;
----------------------------------
Signal s: STD_LOGIC_VECTOR (3 downto 0)
begin
P1:counter port map (stop,CLK,s);
P2:register1 port map(stop,s,reg);


end architecture Behavioral;
