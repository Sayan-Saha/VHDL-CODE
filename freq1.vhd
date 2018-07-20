----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:58:07 09/07/2017 
-- Design Name: 
-- Module Name:    freq1 - Behavioral 
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

entity freq1 is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           output : out  STD_LOGIC);
end freq1;

architecture Behavioral of freq1 is

begin
process(clk,rst)
variable count:integer;
variable temp : Std_logic:='0';
begin
if(rst='1') then
count:=0;
elsif(clk' event and clk='1') then
if(count=1251) then
temp:=not (temp);
count:=0;
else
count:=count+1;
end if;
end if;
output<=temp;
end process;
end Behavioral;

