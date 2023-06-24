
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A,B : in  STD_LOGIC_VECTOR (7 downto 0);
           FS : in  STD_LOGIC_VECTOR (1 downto 0);
           F : out  STD_LOGIC_VECTOR (7 downto 0);
           C : in  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

begin

F <= A + B WHEN FS ="00" ELSE
     A-1 WHEN FS="01" ELSE
     A AND B WHEN FS="10" ELSE
     A OR B WHEN FS="11";
end Behavioral;

