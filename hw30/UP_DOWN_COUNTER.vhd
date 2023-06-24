library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--------------------------------------------------

entity UP_down_counter is
port (CLK,RST, CRT : IN STD_LOGIC;
                 AN:OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
           SEGMENT : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
                dp : out std_logic );

end UP_down_counter;

architecture Behavioral of UP_down_counter is

COMPONENT FSM_counter is
 Port ( clk : in STD_LOGIC;
 rst : in STD_LOGIC;
 crt : in STD_LOGIC;
 count : out STD_LOGIC_VECTOR (3 downto 0));
 end COMPONENT;
 
 COMPONENT seg_display is
 Port ( clk : IN STD_LOGIC;
       data : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    segment : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
         an : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
         dp : OUT STD_LOGIC);
 end COMPONENT;
 
 COMPONENT clk_div is
 Port ( clk : in STD_LOGIC;
 clk_div : out STD_LOGIC); 
 end COMPONENT;
 
 SIGNAL CLK_REF : STD_LOGIC;
 SIGNAL count_value : std_logic_vector (3 downto 0);
 signal LED_activating_counter: std_logic_vector(3 downto 0);
 signal displayed_number: STD_LOGIC_VECTOR (15 downto 0);
---- counting decimal number to be displayed on 4-digit 7-segment display
signal LED_BCD: STD_LOGIC_VECTOR (3 downto 0);

begin
-- AN <= "1000";
 dp <= '1';
 u1 : clk_div port map (CLK,CLK_REF);
 u2 : fsm_counter port map (CLK_REF,RST, CRT,LED_activating_counter);
 u3 : seg_display PORT MAP (CLK_REF, LED_activating_counter,SEGMENT,AN,dp);
process(LED_activating_counter)
begin
    case LED_activating_counter is
    when "0000" =>
        An <= "0111"; 
        -- activate LED1 and Deactivate LED2, LED3, LED4
        LED_BCD <= displayed_number(15 downto 12);
        -- the first hex digit of the 16-bit number
    when "0001" =>
        An <= "1011"; 
        -- activate LED2 and Deactivate LED1, LED3, LED4
        LED_BCD <= displayed_number(11 downto 8);
        -- the second hex digit of the 16-bit number
    when "0010" =>
        An <= "1101"; 
        -- activate LED3 and Deactivate LED2, LED1, LED4
        LED_BCD <= displayed_number(7 downto 4);
        -- the third hex digit of the 16-bit number
    when others =>
        An <= "1110"; 
        -- activate LED4 and Deactivate LED2, LED3, LED1
        LED_BCD <= displayed_number(3 downto 0);
        -- the fourth hex digit of the 16-bit number    
    end case;
end process;

end Behavioral;

