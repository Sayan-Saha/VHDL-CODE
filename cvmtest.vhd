--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:40:55 09/28/2017
-- Design Name:   
-- Module Name:   F:/XILINX/lab2/cvmtest.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CVM
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
 
ENTITY cvmtest IS
END cvmtest;
 
ARCHITECTURE behavior OF cvmtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CVM
    PORT(
         cancel : IN  std_logic;
         clk : IN  std_logic;
         cup_in : IN  std_logic;
         Five_in : IN  std_logic;
         Ten_in : IN  std_logic;
         Coffee_out : OUT  std_logic;
         Five_out : OUT  std_logic;
         Ten_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal cancel : std_logic := '0';
   signal clk : std_logic := '0';
   signal cup_in : std_logic := '0';
   signal Five_in : std_logic := '0';
   signal Ten_in : std_logic := '0';

 	--Outputs
   signal Coffee_out : std_logic;
   signal Five_out : std_logic;
   signal Ten_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CVM PORT MAP (
          cancel => cancel,
          clk => clk,
          cup_in => cup_in,
          Five_in => Five_in,
          Ten_in => Ten_in,
          Coffee_out => Coffee_out,
          Five_out => Five_out,
          Ten_out => Ten_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 30 ns;
		cup_in<='1';
		Five_in<='0';
		Ten_in<='1';
		wait for 30 ns;
		
		cup_in<='1';
		Five_in<='1';
		Ten_in<='1';
		wait for 30 ns;
		
		cup_in<='1';
		Five_in<='1';
		Ten_in<='1';
		cancel<='1';
		wait for 30 ns;
		

      -- insert stimulus here 

      wait;
   end process;

END;
