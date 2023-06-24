
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
------------------------------------
entity ALU is
    Port ( A,B : in  STD_LOGIC_VECTOR (7 downto 0);
           FS1 : in  STD_LOGIC_VECTOR (2 downto 0);
           F : out  STD_LOGIC_VECTOR (7 downto 0);
           C : in  STD_LOGIC;
           Z : in STD_LOGIC);
end ALU;
------------------------------------
architecture Behavioral of ALU is

begin

F <= A WHEN FS1 ="000" ELSE
     A+1 WHEN FS1="001" ELSE
     A+B WHEN FS1="010" ELSE
     A-1 WHEN FS1="011" ELSE
     A AND B WHEN FS1="100" ELSE
     A OR B WHEN FS1="101" ELSE
     A XOR B WHEN FS1="110" ELSE 
     NOT A WHEN FS1="111";
end Behavioral;


