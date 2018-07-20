----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:21:15 10/27/2017 
-- Design Name: 
-- Module Name:    seq - Behavioral 
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

entity seq is
    Port ( inseq : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           detect : out  STD_LOGIC);
end seq;

architecture Behavioral of seq is

type st is (a,b,c,d);
signal pr_state,nx_state : st;

begin

process(clk,rst)
		begin
		if(clk='1' and clk' event) then
			pr_state <= nx_state;
		elsif(rst='1') then
			pr_state <= a;
		end if;
	end process;

	process(pr_state,inseq)
		begin
		case pr_state is
		when a =>
			if(inseq = '0') then
				detect <= '0';
				nx_state <= a;
			else
				detect <= '0';
				nx_state <= b;
			end if;	
		when b =>
			if(inseq = '0') then
				detect <= '0';
				nx_state <= a;
			else
				detect <= '0';
				nx_state <= c;
			end if;	
		when c =>
			if(inseq = '0') then
				detect <= '0';
				nx_state <= d;	
			else
				detect <= '0';
				nx_state <= b;
			end if;	
		when d =>
			if(inseq = '0') then
				detect <= '0';
				nx_state <= a;
			else 
				detect <= '1';
				nx_state <= b;
			end if;
		end case;
	end process;	

end Behavioral;

