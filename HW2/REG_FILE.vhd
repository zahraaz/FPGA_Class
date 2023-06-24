library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
------------------------------------

entity Reg_file is
    Port ( CLK : in  STD_LOGIC;
           WR : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (7 downto 0);
           DA : in  STD_LOGIC_VECTOR (2 DOWNTO 0);
           AA : in  STD_LOGIC_VECTOR (2 DOWNTO 0);
           BA : in  STD_LOGIC_VECTOR (2 DOWNTO 0);
           A : out  STD_LOGIC_VECTOR (7 downto 0);
           B : out  STD_LOGIC_VECTOR (7 downto 0));
end Reg_file;

------------------------------------

architecture Behavioral of Reg_file is

SIGNAL Q: STD_LOGIC_VECTOR (7 DOWNTO 0);

SIGNAL R0: STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL R1: STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL R2: STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL R3: STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL R4: STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL R5: STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL R6: STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL R7: STD_LOGIC_VECTOR (7 DOWNTO 0);
begin

Q <= "00000001" WHEN (DA="000") ELSE
     "00000010" WHEN (DA="001") ELSE
	  "00000100" WHEN (DA="010") ELSE 
	  "00001000" WHEN (DA="011") ELSE
      "00010000" WHEN (DA="100") ELSE
      "00100000" WHEN (DA="101") ELSE
      "01000000" WHEN (DA="110") ELSE
      "10000000" WHEN (DA="111") ELSE
      "00000000";
	  
A <= R0 WHEN AA="000" ELSE
     R1 WHEN AA="001" ELSE
     R2 WHEN AA="010" ELSE
     R3 WHEN AA="011" ELSE
     R4 WHEN AA="100" ELSE
     R5 WHEN AA="101" ELSE
     R6 WHEN AA="110" ELSE
     R7;

B <=   R0 WHEN BA="000" ELSE
       R1 WHEN BA="001" ELSE
       R2 WHEN BA="010" ELSE
       R3 WHEN BA="011" ELSE
       R4 WHEN BA="100" ELSE
       R5 WHEN BA="101" ELSE
       R6 WHEN BA="110" ELSE
       R7; 
		 
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

             ELSIF (Q(4)='1' AND WR='1') THEN 
			R4 <=D;

             ELSIF (Q(5)='1' AND WR='1') THEN 
			R5 <=D;

             ELSIF (Q(6)='1' AND WR='1') THEN 
			R6 <=D;

             ELSIF (Q(7)='1' AND WR='1') THEN 
			R7 <=D;
			
			ELSE 
			R0<= R0;
			R1 <= R1;
			R2 <= R2;
			R3 <= R3;
             R4 <= R4;
             R5 <= R5;
             R6 <= R6;
             R7 <= R7;
			END IF;
		END IF;
		 
		 
	END PROCESS; 
end Behavioral;


