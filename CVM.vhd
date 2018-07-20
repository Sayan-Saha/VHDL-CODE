----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:21:13 09/28/2017 
-- Design Name: 
-- Module Name:    CVM - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CVM is
    Port ( cancel : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           cup_in : in  STD_LOGIC;
           Five_in : in  STD_LOGIC;
           Ten_in : in  STD_LOGIC;
           Coffee_out : out  STD_LOGIC;
           Five_out : out  STD_LOGIC;
           Ten_out : out  STD_LOGIC);
end CVM;

architecture Behavioral of CVM is
type state is(st0,st5,st10,st15,st20);
signal pr_state,nxt_state: state;
begin
PROCESS(clk)
BEGIN	
IF(clk'EVENT AND clk ='1') THEN
 pr_state <= nxt_state;
END IF;
END PROCESS;

process(cancel,pr_state,cup_in,Five_in,Ten_in)
begin
case pr_state is

when st0 =>
Coffee_out<='0';
Ten_out<='0';
five_out<='0';
if(cup_in='1') then
if( five_in='1') then nxt_state<=st5;
elsif( Ten_in='1') then nxt_state<=st10;
else nxt_state<= st0;
end if;
end if;

when st5 =>
if(cancel='1') then 
Five_out<='1';
nxt_state<= st0;
elsif( five_in='1') then nxt_state<=st10;
elsif( Ten_in='1') then nxt_state<=st15;
else nxt_state<= st5;
end if;

when st10 =>
if(cancel='1') then 
Ten_out<='1';
nxt_state<= st0;
elsif( five_in='1') then nxt_state<=st15;
elsif( Ten_in='1') then nxt_state<=st20;
else nxt_state<= st10;
end if;

when st15 =>
if(cancel='1') then 
Five_out<='1';
Ten_out<='1';
nxt_state<= st0;
else 
Coffee_out<='1';
nxt_state<= st0;
end if;

when st20 =>
if(cancel='1') then 
Ten_out<='1';
nxt_state<=st10;
else 
Coffee_out<='1';
Five_out<='1';
nxt_state<= st0;
end if;
end case;
end Process;
end Behavioral;