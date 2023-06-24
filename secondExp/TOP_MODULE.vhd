
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TOP_MODULE is
    Port ( CLK : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D_data : in  STD_LOGIC_VECTOR (7 downto 0);
           DA : inU  STD_LOGIC_VECTOR (1 downto 0);
           AA : in  STD_LOGIC_VECTOR (1 downto 0);
           BA : in  STD_LOGIC_VECTOR (1 downto 0);
           FS : in  STD_LOGIC_VECTOR (1 downto 0);
           WR : in  STD_LOGIC;
           F : inout  STD_LOGIC_VECTOR (7 downto 0));
end TOP_MODULE;

architecture Behavioral of TOP_MODULE is

SIGNAL operandA : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL operandB : STD_LOGIC_VECTOR (7 DOWNTO 0);
-------------------------ALU COMPONENT---------------------

COMPONENT ALU IS
 Port ( A,B : in  STD_LOGIC_VECTOR (7 downto 0);
           FS : in  STD_LOGIC_VECTOR (1 downto 0);
           F : out  STD_LOGIC_VECTOR (7 downto 0);
           C : in  STD_LOGIC);
END COMPONENT;

-------------------------REGISTER COMPONENT-----------------

COMPONENT Reg_file is
Port ( CLK : in  STD_LOGIC;
           WR : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (7 downto 0);
           DA : in  STD_LOGIC_VECTOR (1 downto 0);
           AA : in  STD_LOGIC_VECTOR (1 downto 0);
           BA : in  STD_LOGIC_VECTOR (1 downto 0);
           A : out  STD_LOGIC_VECTOR (7 downto 0);
           B : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

-------------------------------------------------------------

begin



UNIT1 : ALU PORT MAP (operandA , operandB,FS,F,C);
UNIT2 : Reg_file PORT MAP (CLK,WR,F,DA,AA,BA,operandA,operandB);


end Behavioral;


