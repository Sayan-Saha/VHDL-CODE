--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:46:22 11/01/2017
-- Design Name:   
-- Module Name:   C:/Documents and Settings/student/Desktop/fa/fulltest.vhd
-- Project Name:  fa
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fulladder
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
 
ENTITY fulltest IS
END fulltest;
 
ARCHITECTURE behavior OF fulltest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladder
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         ci : IN  std_logic;
         s : OUT  std_logic;
         co : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal ci : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal co : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladder PORT MAP (
          a => a,
          b => b,
          ci => ci,
          s => s,
          co => co
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      a<='0';
		b<='0';
		ci<='0';
		wait for 20 ns;
		
		a<='0';
		b<='0';
		ci<='1';
		wait for 20 ns;
		a<='0';
		b<='1';
		ci<='0';
		wait for 20 ns;
		
		a<='0';
		b<='1';
		ci<='1';
		wait for 20 ns;
		a<='1';
		b<='0';
		ci<='0';
		wait for 20 ns;
		
		a<='1';
		b<='0';
		ci<='1';
		wait for 20 ns;
		a<='1';
		b<='1';
		ci<='0';
		wait for 20 ns;
		
		a<='1';
		b<='1';
		ci<='1';
		wait for 20 ns;
		

      

      -- insert stimulus here 

      wait;
   end process;

END;
