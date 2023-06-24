library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity FSM is 
Port ( 
inp,clk,rst : in STD_LOGIC;
 outp : out STD_LOGIC_VECTOR (1 downto 0)); 
end FSM;
 
architecture Behavioral of FSM is
 type state is  (state1,state2,state3,state4); 
signal pr_state,nx_state: state;

 Begin
 PROCESS (rst, clk) 
BEGIN IF (rst='1')  THEN
 pr_state <= state1; 
ELSIF (clk'EVENT AND clk='1') THEN 
pr_state <= nx_state; 
END IF; 
END PROCESS;
 PROCESS (inp,pr_state)
 BEGIN 
CASE pr_state IS 
WHEN state1 => 
outp<= "00"; 
IF (inp = '1') then 
nx_state <= state2; 
Else nx_state <= state1;
 END IF; 
WHEN state2 => 
outp<= "01"; 
IF (inp = '1') then 
nx_state <= state4; 
Else
 nx_state <= state3; 
END IF; 

WHEN state3 => 
outp<= "10"; 
IF (inp = '1') then
 nx_state <= state4; 
Else
 nx_state <= state3; 
END IF; 
WHEN state4 =>
 outp<= "11"; 
IF (inp = '1') then 
nx_state <= state1; 
Else 
nx_state <= state2;
 END IF; 
END CASE; 
END PROCESS; 
end Behavioral; 
