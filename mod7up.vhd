----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:22:02 09/07/2017 
-- Design Name: 
-- Module Name:    mod7up - Behavioral 
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

entity mod7up is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           count : out  STD_LOGIC_vector(2 downto 0));
end mod7up;

architecture Behavioral of mod7up is

begin
process(clk,rst)
variable temp: std_logic_vector(2 downto 0):="000";
begin
if(rst='1') then
temp:="000";
elsif(clk' event and clk='1') then
if(temp="110") then
temp:="000";
else
temp:=temp+1;
end if;
end if;
count<=temp;
end process;
end Behavioral;

