---------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TCL_TOP_MODULE is
PORT (
CLK,TEST,STDY:IN STD_LOGIC;
R1Y1G1 , R2Y2G2 : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
);
end TCL_TOP_MODULE;

architecture Behavioral of TCL_TOP_MODULE is
COMPONENT TLC IS
PORT (clk, test, stby : IN STD_LOGIC;
 R1Y1G1, R2Y2G2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END component;


COMPONENT CLK_DIV IS
PORT (clk: IN STD_LOGIC;
 CLK_DIV : OUT STD_LOGIC);
END component;

signal CLK_TCL : STD_LOGIC;
begin

U1: CLK_DIV PORT MAP (CLK,CLK_TCL);
U2: TLC PORT MAP (CLK_TCL,TEST,STDY,R1Y1G1, R2Y2G2);


end Behavioral;

