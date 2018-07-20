--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:49:24 09/04/2017
-- Design Name:   
-- Module Name:   F:/XILINX/lab1/ringtest.vhd
-- Project Name:  lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ring
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
 
ENTITY ringtest IS
END ringtest;
 
ARCHITECTURE behavior OF ringtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ring
    PORT(
         a : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic ;

 	--Outputs
   signal y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ring PORT MAP (
          a => a,
          y => y
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		a<='1';
		wait for 100 ns;
		a<='0';
		wait for 100 ns;

      wait;
   end process;

END;
