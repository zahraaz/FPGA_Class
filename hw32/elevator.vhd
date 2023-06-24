library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 

-----------------------------------

entity elevator is
 Port (
           clk : in STD_LOGIC;
           reset : in STD_LOGIC; 
           stop : in STD_LOGIC; 
           up_down : in STD_LOGIC; 
          digit1, digit2 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0); 
           floor : out STD_LOGIC_VECTOR (4 downto 0));
 end elevator; 

-----------------------------------------

architecture Behavioral of elevator is


 type floor_state_type is (
floor1, floor2, floor3, floor4,floor5,floor6,floor7,floor8,floor9,floor10,floor11,floor12,floor13,floor14,floor15,floor16); 

signal floor_state : floor_state_type; 

begin 

floor_state_machine: process(clk) 
begin 
if RISING_EDGE(CLK) then
 if reset='1' then 
floor_state <= floor1; 
Else
 case floor_state is
           when floor1 => 
                  if (up_down='1' and stop='0') then 
                      floor_state <= floor2; 
                  else 
                      floor_state <= floor1; 
                  end if; 
           when floor2 =>
                    if (up_down='1' and stop='0') then 
                         floor_state <= floor3; 
                          elsif (up_down='0' and stop='0') then 
                      floor_state <= floor1; 
                   else floor_state <= floor2; 
                 end if; 
         when floor3 => 
              if (up_down='0' and stop='0') then
                    floor_state <= floor2; 
               elsif (up_down='1' and stop='0') then
                     floor_state <= floor4; 
              else floor_state <= floor3; 
               end if; 
         when floor4 => 
              if (up_down='0' and stop='0') then 
                    floor_state <= floor3; 
               else 
                   floor_state <= floor4; 
                  end if; 
          when floor5 => 
                if (up_down='0' and stop='0') then 
                      floor_state <= floor6; 
                else 
                       floor_state <= floor4; 
               end if; 
       when floor6 => 
                  if (up_down='0' and stop='0') then 
                         floor_state <= floor7; 
                   else 
                          floor_state <= floor5;   
                   end if; 
        when floor7 =>
                   if (up_down='0' and stop='0') then 
                         floor_state <= floor8; 
                   else 
                    floor_state <= floor6; 
                  end if;
        when floor8 => 
                if (up_down='0' and stop='0') then 
                     floor_state <= floor9; 
                else floor_state <= floor7; 
                 end if; 
       when floor9 => 
                  if (up_down='0' and stop='0') then 
                           floor_state <= floor10; 
                   else
                            floor_state <= floor8;  
                   end if;
         when floor10 =>
                   if (up_down='0' and stop='0') then 
                         floor_state <= floor11;
                    else 
                           floor_state <= floor9; 
                     end if; 
           when floor11 =>
                    if (up_down='0' and stop='0') then 
                            floor_state <= floor12; 
                     Else
                             floor_state <= floor10; 
                     end if; 
          when floor12 => 
                     if (up_down='0' and stop='0') then 
                            floor_state <= floor13; 
                      else 
                            floor_state <= floor11;
                      end if; 
            when floor13 =>
                           if (up_down='0' and stop='0') then 
                                floor_state <= floor14;
                            else 
                              floor_state <= floor12; 
                             end if; 
when floor14 =>
 if (up_down='0' and stop='0') then 
floor_state <= floor15; 
else 
floor_state <= floor13; 
end if; 
when floor15 =>
 if (up_down='0' and stop='0') then 
floor_state <= floor16;
 else 
floor_state <= floor14; 
end if; 
when floor16 =>
 if (up_down='0' and 
stop='0') then 
floor_state <= floor1; 
else 
floor_state <= floor15; 
end if;
 when others =>
 floor_state <= floor1;
 end case; 
end if; 
end if; 
end process; 
floor <= "00001" 
when (floor_state = floor1) 
else "00010" when
 (floor_state = floor2) else 
"00011" when (floor_state = floor3) 
else "00100" when (floor_state = floor4) 
else "00101" when (floor_state = floor5) 
else "00110" when (floor_state = floor6) 
else "00111" when (floor_state = floor7) 
else "01000" when (floor_state = floor8) 
 else "01001" when (floor_state = floor9) 
else "01010" when (floor_state = floor10) 
 else "01011" when (floor_state = floor11) 
else "01100" when (floor_state = floor12) 
else "01101" when (floor_state = floor13) 
else "01110" when (floor_state = floor14) 
else "01111" when (floor_state = floor15) 
else "10000" when (floor_state = floor16)
 else 
"00001"; 

PROCESS(clk, reset)
 VARIABLE temp1: INTEGER RANGE 0 TO 10; 
VARIABLE temp2: INTEGER RANGE 0 TO 10;
 BEGIN

        IF (reset='1') THEN
 temp1 := 0; 
temp2 := 0; 
ELSIF (clk'EVENT AND clk='1') THEN 
temp1 := temp1 + 1; 
IF (temp1=10) THEN 
temp1 := 0;
 temp2 := temp2 + 1;
 IF (temp2=10) THEN 
temp2 := 0; 
END IF; 
END IF;
 END IF; 
CASE temp1 IS 
WHEN 0 => digit1 <= "0000001"; 
WHEN 1 => digit1 <= "0011111";
 WHEN 2 => digit1 <= "0010010"; 
WHEN 3 => digit1 <= "0000110"; 
WHEN 4 => digit1 <= "1001100"; 
WHEN 5 => digit1 <= "0100100"; 
WHEN 6 => digit1 <= "0100000"; 
WHEN 7 => digit1 <= "0001111"; 
WHEN 8 => digit1 <= "0000000"; 
WHEN OTHERS => digit1 <= "0000100"; 
END CASE;

 CASE temp2 IS
 WHEN 0 => digit2 <= "0000001"; 
WHEN 1 => digit2 <= "0011111";
WHEN 2 => digit2 <= "0010010"; 
WHEN 3 => digit2 <= "0000110"; 
WHEN 4 => digit2 <= "1001100"; 
WHEN 5 => digit2 <= "0100100"; 
WHEN 6 => digit2 <= "0100000";
 WHEN 7 => digit2 <= "1111111"; 
WHEN 8 => digit2 <= "1111111";
 WHEN OTHERS => digit2 <= "0000100"; 
END CASE; 
END PROCESS; 
end Behavioral;
