----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:28:09 09/28/2017 
-- Design Name: 
-- Module Name:    TVM - Behavioral 
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

entity TVM is
    Port ( clk : in  STD_LOGIC;
           cancel : in  STD_LOGIC;
           Five_in : in  STD_LOGIC;
           Ten_in : in  STD_LOGIC;
           Twenty_in : in  STD_LOGIC;
           Five_out : out  STD_LOGIC;
           Ten_out : out  STD_LOGIC;
           Twenty_out : out  STD_LOGIC;
           Ticket_Issue : out  STD_LOGIC);
end TVM;

architecture Behavioral of TVM is
TYPE state IS (st0, st5, st10, st15, st20, st25);
	SIGNAL present_state, next_state: STATE;
	
begin
	PROCESS(clk)
	BEGIN
		
		IF(clk' EVENT AND clk ='1') THEN
			present_state <= next_state;
		END IF;
	END PROCESS;
	
	PROCESS(cancel, present_state,Five_in,Ten_in,Twenty_in)
	BEGIN
		CASE present_state IS
			WHEN st0 =>
				Ticket_Issue <= '0';
				Five_out <='0';
				Ten_out <= '0';
Twenty_out <= '0';
								
				IF (Five_in='1') THEN next_state <= st5;
				ELSIF (Ten_in='1') THEN next_state <= st10;
				ELSIF (Twenty_in='1') THEN next_state <= st20;
				ELSE next_state <=st0;
				END IF;
				
			
			WHEN st5 =>
				IF(cancel='1') THEN	
				Five_out <='1';
				next_state <=st0;
				
				
				
				ELSIF (Five_in= '1') THEN next_state <= st10;
				ELSIF (Ten_in = '1') THEN next_state <= st15;
				ELSIF (Twenty_in ='1') THEN next_state <= st25;
				ELSE next_state <=st5;
				END IF;
			
			WHEN st10 =>
				IF(cancel='1') THEN	
				next_state <=st0;
				Ten_out <= '1';
				
				ELSE 
				 Ticket_Issue<= '1';
				 next_state <= st0;
				END IF;
			
			WHEN st15 =>
				
				IF(cancel='1') THEN	
				Ten_out <= '1';
				Five_out <= '1';
				next_state <=st0;
				
				ELSE 
				Five_Out <= '1';
				next_state <=st10;
				END IF;
				
				
			WHEN st20 =>
				IF(cancel='1') THEN	
				Twenty_out <= '1';
				next_state <=st0;
				
				ELSE 
				Ten_Out <= '1';
				next_state <=st10;
				END IF;
				
			WHEN st25 =>
				IF(cancel='1') THEN	
				Twenty_out <= '1';
				Five_out <= '1';
				next_state <=st0;
				
				ELSE 
				Five_out <='1';
				Ten_Out <= '1';
				next_state <=st10;
				END IF;
			
		END CASE;
		END PROCESS;
		end Behavioral;

