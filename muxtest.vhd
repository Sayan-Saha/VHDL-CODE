--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:47:18 09/07/2017
-- Design Name:   
-- Module Name:   F:/XILINX/lab2/muxtest.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: musx8x1
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
 
ENTITY muxtest IS
END muxtest;
 
ARCHITECTURE behavior OF muxtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT musx8x1
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         s : IN  std_logic_vector(2 downto 0);
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal s : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: musx8x1 PORT MAP (
          a => a,
          s => s,
          y => y
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		a<="10101100";
      s<="000";
		wait for 50 ns;
		s<="001";
		wait for 50 ns;
		s<="010";
		wait for 50 ns;
		s<="011";
		wait for 50 ns;
		s<="100";
		wait for 50 ns;
		s<="101";
		wait for 50 ns;
		s<="110";
		wait for 50 ns;
		s<="111";
		wait for 50 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
