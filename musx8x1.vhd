----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:42:57 09/07/2017 
-- Design Name: 
-- Module Name:    musx8x1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity musx8x1 is
    Port ( a : in  STD_LOGIC_vector(7 downto 0);
           s : in  STD_LOGIC_vector(2 downto 0);
           y : out  STD_LOGIC);
end musx8x1;

architecture Behavioral of musx8x1 is

begin
with s select
y<= a(0) when "000", 
	 a(1) when "001",
	 a(2) when "010", 
	 a(3) when "011", 
	 a(4) when "100", 
	 a(5) when "101", 
	 a(6) when "110", 
	 a(7) when "111", 
	 'Z' when others;
	
end Behavioral;

