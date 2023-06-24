library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------
entity digital_counter is
Port ( 
clk : in STD_LOGIC; 
reset : in STD_LOGIC; 
crt : in STD_LOGIC; 
count : out STD_LOGIC_VECTOR (3 downto 0));
end digital_counter; 
----------------------------------
architecture Behavioral of digital_counter is 
TYPE state IS (zero, one, two, three, four, five, six, seven, eight, nine);
SIGNAL present_state, next_state: state; 
begin 


------------ Lower section: ----------------- 
PROCESS (reset, clk) 
BEGIN 
IF (reset='1') THEN 
present_state <= zero; 
ELSIF (clk'EVENT AND clk='1') THEN 
present_state <= next_state; 
END IF; 
END PROCESS;

------- Upper section: --------- 

PROCESS (present_state,crt) 
BEGIN 
CASE present_state IS 
WHEN zero => 
count <= "0000"; 
IF (crt = '1') 
then next_state <= one; 
Else 
next_state <= nine; 
END IF; 
WHEN one => 
count <= "0001"; 
IF (crt = '1') 
then next_state <= two; 
Else 
next_state <= zero; 
END IF; 
WHEN two => 
count <= "0010"; 
IF (crt = '1') 
then next_state <= three; 
Else 
next_state <= one; 
END IF; 
WHEN three => 
count <= "0011"; 
IF (crt = '1') 
then next_state <= four; 
Else 
next_state <= two; 
END IF; 
WHEN four => 
count <= "0100";
 IF (crt = '1') 
then next_state <= five; 
Else next_state <= three;
 END IF; 
WHEN five => 
count <= "0101"; 
IF (crt = '1') 
then next_state <= six; 
Else next_state <= four; 
END IF;

WHEN six => 
count <= "0110"; 
IF (crt = '1') 
then next_state <= seven; 
Else next_state <= five; 
END IF; 
WHEN seven => 
count <= "0111"; 
IF (crt = '1') 
then next_state <= eight; 
Else next_state <= six; 
END IF;
WHEN eight => 
count <= "1000"; 
IF (crt = '1') 
then next_state <= nine; 
Else next_state <= seven; 
END IF; 
WHEN nine => 
count <= "1001"; 
IF (crt = '1') 
then next_state <= zero; 
Else next_state <= eight; 
END IF; 
END CASE; 
END PROCESS; 
END architecture Behavioral;


