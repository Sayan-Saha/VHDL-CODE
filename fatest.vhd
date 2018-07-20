--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:35:13 11/01/2017
-- Design Name:   
-- Module Name:   F:/XILINX/fa/fatest.vhd
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
 
ENTITY fatest IS
END fatest;
 
ARCHITECTURE behavior OF fatest IS 
 
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
   signal a : std_logic ;
   signal b : std_logic ;
   signal ci : std_logic ;

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
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      a<='0';
		b<='0';
		ci<='0';
		wait for 10 ns;
		
		a<='0';
		b<='0';
		ci<='1';
		wait for 10 ns;
		
		a<='0';
		b<='1';
		ci<='0';
		wait for 10 ns;
		
		a<='0';
		b<='1';
		ci<='1';
		wait for 10 ns;
		a<='1';
		b<='0';
		ci<='0';
		wait for 10 ns;
		
		a<='1';
		b<='0';
		ci<='1';
		wait for 10 ns;
		
		a<='1';
		b<='1';
		ci<='0';
		wait for 10 ns;
		
		a<='1';
		b<='1';
		ci<='1';
		wait for 10 ns;
		
      -- insert stimulus here 

      wait;
   end process;

END;
