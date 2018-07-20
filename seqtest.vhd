--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:09:23 10/27/2017
-- Design Name:   
-- Module Name:   F:/XILINX/seqdet/seqtest.vhd
-- Project Name:  seqdet
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: seq
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
 
ENTITY seqtest IS
END seqtest;
 
ARCHITECTURE behavior OF seqtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seq
    PORT(
         inseq : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         detect : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal inseq : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal detect : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seq PORT MAP (
          inseq => inseq,
          clk => clk,
          rst => rst,
          detect => detect
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      inseq<='1';
		wait for 20 ns;	
		inseq<='0';
		wait for 10 ns;
		inseq<='1';
		wait for 20 ns;
		inseq<='0';
		wait for 10 ns;
		inseq<='1';
		wait for 20 ns;
	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
