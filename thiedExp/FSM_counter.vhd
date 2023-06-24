 library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;

 entity FSM_counter is
 Port ( clk : in STD_LOGIC;
 rst : in STD_LOGIC;
 crt : in STD_LOGIC;
 count : out STD_LOGIC_VECTOR (3 downto 0));
 end FSM_counter;

 architecture state_machine of FSM_counter is
 TYPE state IS (zero, one, two, three, four, five, six, seven, eight, nine);
 SIGNAL pr_state, nx_state: state;
 begin
 ------------- Lower section: -----------------
 PROCESS (rst, clk)
 BEGIN
 IF (rst='1') THEN
 pr_state <= zero;
ELSIF (clk'EVENT AND clk='1') THEN
 pr_state <= nx_state;
 END IF;
 END PROCESS;
 ------------- Upper section: -----------------
 PROCESS (pr_state,crt)
 BEGIN
 CASE pr_state IS
 
 WHEN zero =>
 count <= "0000";
 IF (crt = '1') then 
 nx_state <= one;
 Else
 nx_state <= nine;
 END IF;

 WHEN one =>
 count <= "0001";
 IF (crt = '1') then 
 nx_state <= two;
 Else
 nx_state <= zero;
 END IF;

 WHEN two =>
 count <= "0010";
 IF (crt = '1') then 
 nx_state <= three;
 Else
nx_state <= one;
 END IF;

WHEN three =>
 count <= "0011";
IF (crt = '1') then 
 nx_state <= four;
Else
 nx_state <= two;
 END IF;

 WHEN four =>
count <= "0100";
 IF (crt = '1') then 
nx_state <= five;
 Else
 nx_state <= three;
 END IF; 

 WHEN five =>
 count <= "0101";
 IF (crt = '1') then 
 nx_state <= six;
 Else
 nx_state <= four;
 END IF;

 WHEN six =>
 count <= "0110";
 IF (crt = '1') then 
 nx_state <= seven;
 Else
 nx_state <= five;
 END IF;

WHEN seven =>
 count <= "0111";
IF (crt = '1') then 
 nx_state <= eight;
 Else
 nx_state <= six;
 END IF;
 WHEN eight =>
 count <= "1000";
 IF (crt = '1') then 
 nx_state <= nine;
 Else
 nx_state <= seven;
 END IF;

 WHEN nine =>
 count <= "1001";
 IF (crt = '1') then 
 nx_state <= zero;
 Else
 nx_state <= eight;
 END IF;
 END CASE;
 END PROCESS;
 END state_machine;

