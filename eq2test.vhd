--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:59:33 08/28/2017
-- Design Name:   
-- Module Name:   F:/XILINX/lab1/eq2test.vhd
-- Project Name:  lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: eq2
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
 
ENTITY eq2test IS
END eq2test;
 
ARCHITECTURE behavior OF eq2test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eq2
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         e : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal e : std_logic := '0';

 	--Outputs
   signal y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eq2 PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          e => e,
          y => y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      a<='0';
		b<='0' ;
		c<='0';
		d<='0';
		e<='0';
		wait for 100 ns;	

      a<='0';
		b<='1' ;
		
		c<='0';
		d<='0';
		e<='0';wait for 100 ns;	

      a<='1';
		b<='0' ;
		c<='0';
		d<='0';
		e<='0';wait for 100 ns;	

      a<='1';
		b<='1' ;
		c<='0';
		d<='0';
		e<='0';wait for 100 ns;	

      a<='1';
		b<='1' ;
		c<='1';
		d<='0';
		e<='0';wait for 100 ns;	

		a<='1';
		b<='1' ;
		c<='1';
		d<='1';
		e<='0';wait for 100 ns;	

		a<='1';
		b<='1' ;
		c<='1';
		d<='1';
		e<='1';wait for 100 ns;	

		-- insert stimulus here 

      wait;
   end process;

END;
