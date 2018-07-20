----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:00:07 09/08/2017 
-- Design Name: 
-- Module Name:    decoder3x8 - Behavioral 
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

entity decoder3x8 is
    Port ( sel : in  STD_LOGIC_vector(2 downto 0);
           y : out  STD_LOGIC_vector(7 downto 0));
end decoder3x8;

architecture Behavioral of decoder3x8 is

begin
process(sel)
begin
if(sel="000") then
y<="00000001"; 
elsif(sel="001") then
y<="00000010"; 
elsif(sel="010") then
y<="00000100"; 
elsif(sel="011") then
y<="00001000"; 
elsif(sel="100") then
y<="00010000"; 
elsif(sel="101") then
y<="00100000"; 
elsif(sel="110") then
y<="01000000"; 
else
y<="10000000";
end if;
end process; 
end Behavioral;

