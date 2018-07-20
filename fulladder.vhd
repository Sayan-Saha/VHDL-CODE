----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:29:26 11/01/2017 
-- Design Name: 
-- Module Name:    fulladder - Behavioral 
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

entity fulladder is
    Port ( a : in  STD_LOGIC:='0';
           b : in  STD_LOGIC:='0';
           ci : in  STD_LOGIC:='0';
           s : out  STD_LOGIC;
           co : out  STD_LOGIC);
end fulladder;

architecture Behavioral of fulladder is

component xorgate 
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

component orgate
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

component andgate 
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

signal s1,s2,s3: std_logic;

begin

x1: xorgate port map(a,b,s1);
x2: xorgate port map(s1,ci,s);
a1: andgate port map(a,b,s2);
a2: andgate port map(s1,ci,s3);
o1: orgate port map(s2,s3,co);
end Behavioral;

