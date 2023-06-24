----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:11:50 10/19/2022 
-- Design Name: 
-- Module Name:    firstExp - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity compFunction is
    Port ( A,B,C : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end compFunction;

architecture Behavioral of compFunction is

component and_2 is 
  Port ( A,B : in  STD_LOGIC;
           Z : out  STD_LOGIC);
			  
End component;

------------------------------
component or_2 is 
  Port ( A,B : in  STD_LOGIC;
           Z : out  STD_LOGIC);
			  
End component; 
-------------------------------
component not_1 is 
  Port ( A: in  STD_LOGIC;
           Z : out  STD_LOGIC);
			  
End component; 
--------------------------------

signal p,q,r : STD_LOGIC;

begin

G1 : not_1 port map (A,p);
G2 : and_2 port map (p,B,q);
G3 :and_2 port map(A,C,r);
G4 : or_2 prt map (q,r,Z);

end Behavioral;

