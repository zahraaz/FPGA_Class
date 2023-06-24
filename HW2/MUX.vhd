library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
------------------------------------
entity MUX is
    Port ( Q : out STD_LOGIC_VECTOR (7 DOWNTO 0);
           D0: in STD_LOGIC_VECTOR (7 DOWNTO 0);
           D1: in STD_LOGIC_VECTOR (7 DOWNTO 0);
           S : in STD_LOGIC);
end MUX;
------------------------------------
architecture Behavioral of MUX is

begin
Q <= D0 WHEN S='0' ELSE
     D1;
end Behavioral;

