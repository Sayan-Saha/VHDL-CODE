--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:11:44 09/08/2017
-- Design Name:   
-- Module Name:   F:/XILINX/lab2/decodertest.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder3x8
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
 
ENTITY decodertest IS
END decodertest;
 
ARCHITECTURE behavior OF decodertest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder3x8
    PORT(
         sel : IN  std_logic_vector(2 downto 0);
         y : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder3x8 PORT MAP (
          sel => sel,
          y => y
        );

   
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;
			sel<="000";
			wait for 20 ns;
			sel<="001";
			wait for 20 ns;
			sel<="010";
			wait for 20 ns;
			sel<="011";
			wait for 20 ns;
			sel<="100";
			wait for 20 ns;
			sel<="101";
			wait for 20 ns;
			sel<="110";
			wait for 20 ns;
			sel<="111";
			wait for 20 ns;
			


      -- insert stimulus here 

      wait;
   end process;

END;
