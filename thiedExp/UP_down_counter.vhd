library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--------------------------------------------------

entity UP_down_counter is
port (CLK,RST, CRT : IN STD_LOGIC;
                 AN:OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
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
 an : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
 dp : OUT STD_LOGIC);
 end COMPONENT;
 
 COMPONENT clk_div is
 Port ( clk : in STD_LOGIC;
 clk_div : out STD_LOGIC); 
 end COMPONENT;
 
 SIGNAL CLK_REF : STD_LOGIC; 
SIGNAL count_value : std_logic_vector (3 downto 0);


begin
 an <= b"11111110";
 dp <= '1';
 u1 : clk_div port map (CLK,CLK_REF);
 u2 : fsm_counter port map (CLK_REF,RST, CRT, COUNT_VALUE);
 u3 : seg_display PORT MAP (CLK_REF, count_value,SEGMENT,AN,dp);

end Behavioral;

