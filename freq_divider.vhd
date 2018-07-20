----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:52:07 09/06/2017 
-- Design Name: 
-- Module Name:    freq_divider - Behavioral 
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

entity freq_divider is
    Port ( clk_in : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk_out : out  STD_LOGIC);
end freq_divider;

architecture Behavioral of freq_divider is

begin

process(clk_in,rst)
variable temp: STD_LOGIC:='0';
variable count:integer:=0;
begin
if(rst='1') then
temp:='0';
count:=0;
elsif (clk_in' event and clk_in='1') then
if(count=125000) then
temp:= not temp;
count:=0;
else
count:=count+1;
end if;
end if;
clk_out<=temp;
end process;
end Behavioral;
