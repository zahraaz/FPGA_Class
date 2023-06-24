
library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 use IEEE.STD_LOGIC_ARITH.ALL;
 use IEEE.STD_LOGIC_UNSIGNED.ALL;

 entity clk_div is
 Port ( clk : in STD_LOGIC;
 clk_div : out STD_LOGIC);
 end clk_div;

 architecture Behavioral of clk_div is
 signal flipping: STD_LOGIC;
 signal refresh_counter: STD_LOGIC_VECTOR (19 downto 0);
-- creating 10.5ms refresh period
signal LED_activating_counter: std_logic_vector(1 downto 0);
 signal one_second_counter: STD_LOGIC_VECTOR (27 downto 0);
---- counter for generating 1-second clock enable
signal one_second_enable: std_logic;
---- one second enable for counting numbers
signal displayed_number: STD_LOGIC_VECTOR (15 downto 0);
---- counting decimal number to be displayed on 4-digit 7-segment display
--signal LED_BCD: STD_LOGIC_VECTOR (3 downto 0);
--signal refresh_counter: STD_LOGIC_VECTOR (19 downto 0);
---- creating 10.5ms refresh period
--signal LED_activating_counter: std_logic_vector(1 downto 0);
 begin
 ---- clock division: ------------------------
 DIV: 
 PROCESS(clk,flipping)
constant divisor : integer := 50000000; 
 VARIABLE div : STD_LOGIC_VECTOR (24 DOWNTO 0);
 BEGIN
 IF (clk'EVENT AND clk='1') THEN
 div := div + 1;
 IF (div = divisor) then 
 flipping <= NOT (flipping);
 END IF;
 END IF;
 clk_div <= flipping;
 END PROCESS;
 
 
process(clk,flipping)
begin 
    if(flipping='1') then
        refresh_counter <= (others => '0');
    elsif(rising_edge(clk)) then
        refresh_counter <= refresh_counter + 1;
    end if;
end process;
 LED_activating_counter <= refresh_counter(19 downto 18);
-- 4-to-1 MUX to generate anode activating signals for 4 LEDs 
 
process(clk, flipping)
begin
        if(flipping='1') then
            one_second_counter <= (others => '0');
        elsif(rising_edge(clk)) then
            if(one_second_counter>=x"5F5E0FF") then
                one_second_counter <= (others => '0');
            else
                one_second_counter <= one_second_counter + "0000001";
            end if;
        end if;
end process;
one_second_enable <= '1' when one_second_counter=x"5F5E0FF" else '0';
process(clk, flipping)
begin
        if(flipping='1') then
            displayed_number <= (others => '0');
        elsif(rising_edge(clk)) then
             if(one_second_enable='1') then
                displayed_number <= displayed_number + x"0001";
             end if;
        end if;
end process; 
 
 
 
 
 END Behavioral;