-- FA.vhd : full adder component
 library ieee;
 use ieee.std_logic_1164.all;
----------------------------------
entity FAU is
Port ( 
A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
Cout : out STD_LOGIC); 

 end entity FAU;
----------------------------------
architecture Behavioral of FAU is 
begin 
S <= A XOR B XOR Cin;
Cout<= (A AND B) OR (Cin AND A) OR (Cin AND B) ; 

end architecture Behavioral;

