library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
------------------------------------
entity RAM is
port(
 ADRS: in std_logic_vector(7 downto 0); 
 DATA: in std_logic_vector(7 downto 0);
 WR: in std_logic; 
 CS: in std_logic; 
 CLK: in std_logic;
 OUT1: out std_logic_vector(7 downto 0));
end RAM;
------------------------------------
architecture Behavioral of RAM is
type ram_array is array (0 to 255 ) of std_logic_vector (7 downto 0);

signal ram_data: ram_array; ------no initial value 
begin
process(CLK)
begin
 If CLK'event and CLK='1' then
    if(WR='1') then
 ram_data(to_integer(unsigned(ADRS))) <= DATA; ------synchronous write
    end if;
 end if;
end process;
 OUT1 <= ram_data(to_integer(unsigned(ADRS))); ------asynchronous read
end Behaviorial;