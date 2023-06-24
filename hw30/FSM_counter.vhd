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

 
 

--entity seven_segment_display_VHDL is
--    Port ( clock_100Mhz : in STD_LOGIC;-- 100Mhz clock on Basys 3 FPGA board
--           reset : in STD_LOGIC; -- reset
--           Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);-- 4 Anode signals
--           LED_out : out STD_LOGIC_VECTOR (6 downto 0));-- Cathode patterns of 7-segment display
--end seven_segment_display_VHDL;
--
--architecture Behavioral of seven_segment_display_VHDL is
--signal one_second_counter: STD_LOGIC_VECTOR (27 downto 0);
------ counter for generating 1-second clock enable
--signal one_second_enable: std_logic;
------ one second enable for counting numbers
--signal displayed_number: STD_LOGIC_VECTOR (15 downto 0);
---- counting decimal number to be displayed on 4-digit 7-segment display
--signal LED_BCD: STD_LOGIC_VECTOR (3 downto 0);
--signal refresh_counter: STD_LOGIC_VECTOR (19 downto 0);
---- creating 10.5ms refresh period
--signal LED_activating_counter: std_logic_vector(1 downto 0);
---- the other 2-bit for creating 4 LED-activating signals
---- count         0    ->  1  ->  2  ->  3
---- activates    LED1    LED2   LED3   LED4
---- and repeat
--begin
---- VHDL code for BCD to 7-segment decoder
---- Cathode patterns of the 7-segment LED display 
--process(LED_BCD)
--begin
--    case LED_BCD is
--    when "0000" => LED_out <= "0000001"; -- "0"     
--    when "0001" => LED_out <= "1001111"; -- "1" 
--    when "0010" => LED_out <= "0010010"; -- "2" 
--    when "0011" => LED_out <= "0000110"; -- "3" 
--    when "0100" => LED_out <= "1001100"; -- "4" 
--    when "0101" => LED_out <= "0100100"; -- "5" 
--    when "0110" => LED_out <= "0100000"; -- "6" 
--    when "0111" => LED_out <= "0001111"; -- "7" 
--    when "1000" => LED_out <= "0000000"; -- "8"     
--    when "1001" => LED_out <= "0000100"; -- "9" 
--    when others => LED_out <= "0000000";
--    end case;
--end process;
---- 7-segment display controller
---- generate refresh period of 10.5ms


--process(clock_100Mhz,reset)
--begin 
--    if(reset='1') then
--        refresh_counter <= (others => '0');
--    elsif(rising_edge(clock_100Mhz)) then
--        refresh_counter <= refresh_counter + 1;
--    end if;
--end process;
-- LED_activating_counter <= refresh_counter(19 downto 18);
---- 4-to-1 MUX to generate anode activating signals for 4 LEDs 



--process(LED_activating_counter)
--begin
--    case LED_activating_counter is
--    when "00" =>
--        Anode_Activate <= "0111"; 
--        -- activate LED1 and Deactivate LED2, LED3, LED4
--        LED_BCD <= displayed_number(15 downto 12);
--        -- the first hex digit of the 16-bit number
--    when "01" =>
--        Anode_Activate <= "1011"; 
--        -- activate LED2 and Deactivate LED1, LED3, LED4
--        LED_BCD <= displayed_number(11 downto 8);
--        -- the second hex digit of the 16-bit number
--    when "10" =>
--        Anode_Activate <= "1101"; 
--        -- activate LED3 and Deactivate LED2, LED1, LED4
--        LED_BCD <= displayed_number(7 downto 4);
--        -- the third hex digit of the 16-bit number
--    when others =>
--        Anode_Activate <= "1110"; 
--        -- activate LED4 and Deactivate LED2, LED3, LED1
--        LED_BCD <= displayed_number(3 downto 0);
--        -- the fourth hex digit of the 16-bit number    
--    end case;
--end process;


---- Counting the number to be displayed on 4-digit 7-segment Display 
---- on Basys 3 FPGA board


--process(clk, rst)
--begin
--        if(rst='1') then
--            one_second_counter <= (others => '0');
--        elsif(rising_edge(clk)) then
--            if(one_second_counter>=x"5F5E0FF") then
--                one_second_counter <= (others => '0');
--            else
--                one_second_counter <= one_second_counter + "0000001";
--            end if;
--        end if;
--end process;
--one_second_enable <= '1' when one_second_counter=x"5F5E0FF" else '0';
--process(clk, rst)
--begin
--        if(rst='1') then
--            displayed_number <= (others => '0');
--        elsif(rising_edge(clk)) then
--             if(one_second_enable='1') then
--                displayed_number <= displayed_number + x"0001";
--             end if;
--        end if;
--end process;
--end Behavioral

 END state_machine;