library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
------------------------------------
entity TOP_MODULE is
    Port ( CLK ,MW , WR: in  STD_LOGIC;
           C,Z ,CS: in  STD_LOGIC;
           D_data : in  STD_LOGIC_VECTOR (7 downto 0);
           DA : in  STD_LOGIC_VECTOR (3 downto 0);
           AA : in  STD_LOGIC_VECTOR (3 downto 0);
           BA : in  STD_LOGIC_VECTOR (3 downto 0);
           FS1 : in  STD_LOGIC_VECTOR (3 downto 0);
           MD : in  STD_LOGIC;
           F : inout  STD_LOGIC_VECTOR (7 downto 0));
end TOP_MODULE;

architecture Behavioral of TOP_MODULE is

---------------ALU COMPONENT-----------------

COMPONENT ALU is
    Port ( A,B : in  STD_LOGIC_VECTOR (7 downto 0);
           FS1 : in  STD_LOGIC_VECTOR (2 downto 0);
           F : out  STD_LOGIC_VECTOR (7 downto 0);
           C : in  STD_LOGIC;
           Z : in STD_LOGIC));
END COMPONENT;

--------------REGISTER COMPONENT-----------------

COMPONENT Reg_file is
    Port ( CLK : in  STD_LOGIC;
           WR : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (7 downto 0);
           DA : in  STD_LOGIC_VECTOR (2 DOWNTO 0);
           AA : in  STD_LOGIC_VECTOR (2 DOWNTO 0);
           BA : in  STD_LOGIC_VECTOR (2 DOWNTO 0);
           A : out  STD_LOGIC_VECTOR (7 downto 0);
           B : out  STD_LOGIC_VECTOR (7 downto 0));

end component;
--------------RAM COMPONENT-----------------
COMPONENT RAM is
port(
 ADRS: in std_logic_vector(7 downto 0); 
 DATA: in std_logic_vector(7 downto 0);
 WR: in std_logic; 
 CS: in std_logic; 
 CLK: in std_logic;
 OUT1: out std_logic_vector(7 downto 0));

end component;
--------------MUX COMPONENT-----------------
COMPONENT MUX is
    Port ( Q : out STD_LOGIC_VECTOR (7 DOWNTO 0);
           D0: in STD_LOGIC_VECTOR (7 DOWNTO 0);
           D1: in STD_LOGIC_VECTOR (7 DOWNTO 0)
           S : in STD_LOGIC));

end component;
------------------------------------------------
SIGNAL operandA : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL operandB : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL operandS : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL operandU : STD_LOGIC_VECTOR (7 DOWNTO 0);

begin
UNIT1 : Reg_file PORT MAP (CLK,WR,F,DA,AA,BA,operandA,operandB);


UNIT2 : ALU PORT MAP (operandA,operandB,FS1,C,Z,operandS);
 
UNIT3 : RAM PORT MAP (operandA , operandB,CS,MW,operandU);

UNIT4 : MUX PORT MAP (operandS,operandU,MD,F);


end Behavioral;

---------------------------------

