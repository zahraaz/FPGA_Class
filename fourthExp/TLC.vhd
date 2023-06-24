-------------------------------------------
library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 use IEEE.STD_LOGIC_ARITH.ALL;
 use IEEE.STD_LOGIC_UNSIGNED.ALL;
-------------------------------------------
ENTITY TLC IS 
PORT (CLK, TEST, STBY: IN STD_LOGIC;
 R1Y1G1, R2Y2G2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END TLC;
-------------------------------------------
Architecture Behavioral OF TLC IS
 CONSTANT timeMAX : INTEGER := 2700;
 CONSTANT timeG2R1 : INTEGER := 1800;
 CONSTANT timeY2R1 : INTEGER := 300;
 CONSTANT timeR2G1 : INTEGER := 2700;
 CONSTANT timeR2Y1 : INTEGER := 300; 
 CONSTANT timeTEST : INTEGER := 60;
 TYPE state IS (G2R1, Y2R1, R2G1, R2Y1, Y2Y1);
 SIGNAL pr_state, nx_state: state;
 SIGNAL count : INTEGER RANGE 0 TO timeMAX;
BEGIN
-------- Lower section of state machine: ----
 PROCESS (clk, stby)
 VARIABLE timer : INTEGER RANGE 0 TO timeMAX;
 BEGIN
 IF (stby='1') THEN
 pr_state <= Y2Y1;
 timer := 0;
 ELSIF (clk'EVENT AND clk='1') THEN
 timer := timer + 1;
 IF (timer = count) THEN
 pr_state <= nx_state;
 timer := 0;
 END IF;
 END IF;
 END PROCESS;
-------- Upper section of state machine: ----
 PROCESS (pr_state, test)
 BEGIN 
 CASE pr_state IS
 When G2R1 =>
 R1Y1G1 <= "100"; 
 R2Y2G2 <= "001";
 nx_state <= Y2R1;
 IF (test = '0' ) THEN 
 count <= timeG2R1;
 ELSE 
 count <= timeTEST;
 END IF;
 -------------------------------------------------
 When Y2R1 =>
 R1Y1G1 <= "100"; 
 R2Y2G2 <= "010";
 nx_state <= R2G1;
 IF (test = '0' ) THEN 
 count <= timeY2R1;
 ELSE 
 count <= timeTEST;
 END IF;
 --------------------------------------------------
 When R2G1 =>
 R1Y1G1 <= "001"; 
 R2Y2G2 <= "100";
 nx_state <= R2Y1;
 IF (test = '0' ) THEN 
 count <= timeR2G1;
 ELSE 
 count <= timeTEST;
 END IF;
 --------------------------------------------------
 When R2Y1 =>
 R1Y1G1 <= "010"; 
 R2Y2G2 <= "100";
 nx_state <= G2R1;
 IF (test = '0' ) THEN 
 count <= timeR2Y1;
 ELSE 
 count <= timeTEST;
 END IF;
 --------------------------------------------------
 When Y2Y1 =>
 R1Y1G1 <= "010"; 
 R2Y2G2 <= "010";
 -------------------------------------------------- 
 
 end case;
 end process;
 end behavioral;