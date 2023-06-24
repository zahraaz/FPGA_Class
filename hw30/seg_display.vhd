LIBRARY ieee;
 USE ieee.std_logic_1164.all;
----------------------------------------------
 entity seg_display is
 Port ( clk : IN STD_LOGIC;
       data : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    segment : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
         an : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
         dp : OUT STD_LOGIC);
 END seg_display;
 ----------------------------------------------
 architecture Behavioral of seg_display is
--signal one_second_counter: STD_LOGIC_VECTOR (27 downto 0);
---- counter for generating 1-second clock enable
--signal one_second_enable: std_logic;
---- one second enable for counting numbers
--signal displayed_number: STD_LOGIC_VECTOR (15 downto 0);
------ counting decimal number to be displayed on 4-digit 7-segment display
--signal LED_BCD: STD_LOGIC_VECTOR (3 downto 0);
--signal refresh_counter: STD_LOGIC_VECTOR (19 downto 0);
---- creating 10.5ms refresh period

---- the other 2-bit for creating 4 LED-activating signals
 
 Begin
 -- BDC to SSD conversion -------------------------------------
 SSD: PROCESS(clk,data)
 Begin
 IF (clk'EVENT AND clk='1') THEN
 CASE data IS
 -- gfedcba ; active low
 when X"0" => segment <= b"1000000"; --x"40" (Digit 0)
 when X"1" => segment <= b"1111001"; --x"79" (Digit 1)
 when X"2" => segment <= b"0100100"; --x"24" (Digit 2)
 when X"3" => segment <= b"0110000"; --x"30" (Digit 3)
 when X"4" => segment <= b"0011001"; --x"19" (Digit 4)
 when X"5" => segment <= b"0010010"; --x"12" (Digit 5)
 when X"6" => segment <= b"0000010"; --x"02" (Digit 6)
 when X"7" => segment <= b"1111000"; --x"78" (Digit 7)
 when X"8" => segment <= b"0000000"; --x"00" (Digit 8)
 when X"9" => segment <= b"0010000"; --x"10" (Digit 9)
 when others => segment <= b"0000000"; --x"40" (Digit 0)
 END CASE;
 END IF;
 END PROCESS;
 

 
 
 END Behavioral;