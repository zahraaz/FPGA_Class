
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reg_file is
    Port ( CLK : in  STD_LOGIC;
           WR : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (7 downto 0);
           DA : in  STD_LOGIC_VECTOR (1 downto 0);
           AA : in  STD_LOGIC_VECTOR (1 downto 0);
           BA : in  STD_LOGIC_VECTOR (1 downto 0);
           A : out  STD_LOGIC_VECTOR (7 downto 0);
           B : out  STD_LOGIC_VECTOR (7 downto 0));
end Reg_file;

architecture Behavioral of Reg_file is

SIGNAL Q: STD_LOGIC_VECTOR (3 DOWNTO 0);

SIGNAL R0: STD_LOGIC_VECTOR (7 DOWNTO 0):=X"01";
SIGNAL R1: STD_LOGIC_VECTOR (7 DOWNTO 0):=X"09";
SIGNAL R2: STD_LOGIC_VECTOR (7 DOWNTO 0):=X"03";
SIGNAL R3: STD_LOGIC_VECTOR (7 DOWNTO 0):=X"05";
begin

Q <= "0001" WHEN (DA="00") ELSE
     "0010" WHEN (DA="01") ELSE
	  "0100" WHEN (DA="10") ELSE 
	  "1000" WHEN (DA="11") ELSE
	  "0000";
	  
A <= R0 WHEN AA="00" ELSE
     R1 WHEN AA="01" ELSE
     R2 WHEN AA="10" ELSE
     R3;

B <= 	 R0 WHEN BA="00" ELSE
       R1 WHEN BA="01" ELSE
       R2 WHEN BA="10" ELSE
       R3; 
		 
		 
-----------------------------------
write_back: process (CLK,WR)

  BEGIN
  
      IF (CLK'EVENT AND CLK='1') THEN
         
			IF(Q(0)='1' AND WR='1') THEN 
			R0<= D;
			
			ELSIF (Q(1)='1' AND WR='1') THEN 
			R1 <=D;
			
			ELSIF (Q(2)='1' AND WR='1') THEN 
			R2 <=D;
			
			ELSIF (Q(3)='1' AND WR='1') THEN 
			R3 <=D;
			
			ELSE 
			R0<= R0;
			R1 <= R1;
			R2 <= R2;
			R3 <= R3;
			END IF;
		END IF;
		 
		 
	END PROCESS; 
end Behavioral;

