--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:56:27 11/02/2022
-- Design Name:   
-- Module Name:   C:/Users/Zahraa/Documents/FPGA/secondExp/TTTT.vhd
-- Project Name:  secondExp
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TOP_MODULE
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TTTT IS
END TTTT;
 
ARCHITECTURE behavior OF TTTT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TOP_MODULE
    PORT(
         CLK : IN  std_logic;
         C : IN  std_logic;
         D_data : IN  std_logic_vector(7 downto 0);
         DA : IN  std_logic_vector(1 downto 0);
         AA : IN  std_logic_vector(1 downto 0);
         BA : IN  std_logic_vector(1 downto 0);
         FS : IN  std_logic_vector(1 downto 0);
         WR : IN  std_logic;
         F : INOUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal C : std_logic := '0';
   signal D_data : std_logic_vector(7 downto 0) := (others => '0');
   signal DA : std_logic_vector(1 downto 0) := (others => '0');
   signal AA : std_logic_vector(1 downto 0) := (others => '0');
   signal BA : std_logic_vector(1 downto 0) := (others => '0');
   signal FS : std_logic_vector(1 downto 0) := (others => '0');
   signal WR : std_logic := '0';

	--BiDirs
   signal F : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TOP_MODULE PORT MAP (
          CLK => CLK,
          C => C,
          D_data => D_data,
          DA => DA,
          AA => AA,
          BA => BA,
          FS => FS,
          WR => WR,
          F => F
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
