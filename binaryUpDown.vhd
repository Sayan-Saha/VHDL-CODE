----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:32:26 09/07/2017 
-- Design Name: 
-- Module Name:    binaryUpDown - Behavioral 
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity binaryUpDown is
    Port ( sel : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR(3 downto 0));
end binaryUpDown;

architecture Behavioral of binaryUpDown is

begin

process(sel,clk,rst)
variable temp: std_logic_vector(3 downto 0):="0000";
begin
if(rst='1') then
temp:="0000";
elsif(clk' event and clk='1') then
if(sel='1') then
temp := temp+1;
else
temp:=temp-1;
end if;
end if;
count<= temp;
end process;
end Behavioral;

