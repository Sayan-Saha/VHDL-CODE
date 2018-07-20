--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:39:54 09/28/2017
-- Design Name:   
-- Module Name:   F:/XILINX/lab2/vmtest.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TVM
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
 
ENTITY vmtest IS
END vmtest;
 
ARCHITECTURE behavior OF vmtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TVM
    PORT(
         clk : IN  std_logic;
         cancel : IN  std_logic;
         Five_in : IN  std_logic;
         Ten_in : IN  std_logic;
         Twenty_in : IN  std_logic;
         Five_out : OUT  std_logic;
         Ten_out : OUT  std_logic;
         Twenty_out : OUT  std_logic;
         Ticket_Issue : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal cancel : std_logic := '0';
   signal Five_in : std_logic := '0';
   signal Ten_in : std_logic := '0';
   signal Twenty_in : std_logic := '0';

 	--Outputs
   signal Five_out : std_logic;
   signal Ten_out : std_logic;
   signal Twenty_out : std_logic;
   signal Ticket_Issue : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TVM PORT MAP (
          clk => clk,
          cancel => cancel,
          Five_in => Five_in,
          Ten_in => Ten_in,
          Twenty_in => Twenty_in,
          Five_out => Five_out,
          Ten_out => Ten_out,
          Twenty_out => Twenty_out,
          Ticket_Issue => Ticket_Issue
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
		
		wait for 50 ns;
		Twenty_in<='1';
      wait for 50 ns;
		
		Twenty_in<='0';
      wait for 50 ns;
		-- insert stimulus here 

      wait;
   end process;

END;
