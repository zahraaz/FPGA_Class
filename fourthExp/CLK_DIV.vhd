
library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 use IEEE.STD_LOGIC_ARITH.ALL;
 use IEEE.STD_LOGIC_UNSIGNED.ALL;

 entity clk_div is
 Port ( clk : in STD_LOGIC;
 clk_div : out STD_LOGIC);
 end clk_div;

 architecture Behavioral of clk_div is
 signal flipping: STD_LOGIC;
 begin
 ---- clock division: ------------------------
 DIV: 
 PROCESS(clk,flipping)
 constant divisor : integer := 833333; 
 VARIABLE div : STD_LOGIC_VECTOR (24 DOWNTO 0);
 BEGIN
 IF (clk'EVENT AND clk='1') THEN
 div := div + 1;
 IF (div = divisor) then 
 flipping <= NOT (flipping);
 END IF;
 END IF;
 clk_div <= flipping;
 END PROCESS;
 END Behavioral;