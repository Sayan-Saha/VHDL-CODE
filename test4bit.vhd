--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:14:17 11/01/2017
-- Design Name:   
-- Module Name:   C:/Documents and Settings/student/Desktop/fa/test4bit.vhd
-- Project Name:  fa
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bit4adder
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
 
ENTITY test4bit IS
END test4bit;
 
ARCHITECTURE behavior OF test4bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bit4adder
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         ci : IN  std_logic;
         s : OUT  std_logic_vector(3 downto 0);
         co : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal ci : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(3 downto 0);
   signal co : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bit4adder PORT MAP (
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
      wait for 50 ns;
a <= "0001";
b<="0001";
ci<='0';
wait for 50 ns;		

a <= "1011";
b<="0110";
ci<='0';
wait for 50 ns;		


a <= "1111";
b<="0110";
ci<='0';
wait for 50 ns;

a <= "1101";
b<="0110";
ci<='0';
wait for 50 ns;		

a <= "1011";

b<="1110";
ci<='0';
wait for 50 ns;		


a <= "1011";
b<="0110";
ci<='0';
wait for 50 ns;	

a <= "1001";
b<="0010";
ci<='0';
wait for 50 ns;		

a <= "1011";

b<="0101";
ci<='0';
wait for 50 ns;		


a <= "1101";
b<="0110";
ci<='0';
wait for 50 ns;	

a <= "1001";
b<="0100";
ci<='0';
wait for 50 ns;		

a <= "1011";

b<="0110";
ci<='0';
wait for 50 ns;		


a <= "0110";
b<="0110";
ci<='0';
wait for 50 ns;	

a <= "1001";
b<="1111";
ci<='0';
wait for 50 ns;		

a <= "1001";

b<="1110";
ci<='0';
wait for 50 ns;		


a <= "0001";
b<="0010";
ci<='1';
wait for 50 ns;	

a <= "1011";
b<="1110";
ci<='1';
wait for 50 ns;				
      -- insert stimulus here 

      wait;
   end process;

END;
