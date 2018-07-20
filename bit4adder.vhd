----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:58:36 11/01/2017 
-- Design Name: 
-- Module Name:    bit4adder - Behavioral 
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

entity bit4adder is
    Port ( a : in  STD_LOGIC_vector (3 downto 0) ;
           b : in  STD_LOGIC_vector (3 downto 0);
           ci : in  STD_LOGIC;
           s : out  STD_LOGIC_vector (3 downto 0);
           co : out  STD_LOGIC);
end bit4adder;

architecture Behavioral of bit4adder is

component fulladder
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           s : out  STD_LOGIC;
           co : out  STD_LOGIC);
end component;

signal c0,c1,c2: std_logic;

begin

f1: fulladder port map (a(0),b(0),ci,s(0),c0);
f2: fulladder port map (a(1),b(1),c0,s(1),c1);
f3: fulladder port map (a(2),b(2),c1,s(2),c2);
f4: fulladder port map (a(3),b(3),c2,s(3),co);



end Behavioral;

