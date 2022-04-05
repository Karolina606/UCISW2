----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:39:50 04/01/2022 
-- Design Name: 
-- Module Name:    state_machine - Behavioral 
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
use ieee.std_logic_arith;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity state_machine is
    Port ( Clk 		: in  STD_LOGIC;
           Reset 		: in  STD_LOGIC;
			  
			  SD_DO 		: in  STD_LOGIC_VECTOR (7 downto 0);
           SD_Busy 	: in  STD_LOGIC;
           SD_DO_Rdy : in  STD_LOGIC;
			  
           PS2_DO_Rdy: in  STD_LOGIC;
           PS2_DO 	: in  STD_LOGIC_VECTOR (7 downto 0);
			  
           Char_DI 	: out STD_LOGIC_VECTOR (7 downto 0);
           Char_WE 	: out STD_LOGIC;
			  NewlineOut: out STD_LOGIC;
			  SD_Pop 	: out  STD_LOGIC);
			  
end state_machine;

architecture Behavioral of state_machine is

	type state_type is ( sReadFromSD, sReadFromSDRdy, sReadFromSDEndByte, sReadFromSDEnd, sReadFromKbd );
	signal State, NextState : state_type;
	signal CharNumber 		: positive;
	signal Text					: string(1 to 40);

begin
	process1 : process( Clk )
	begin
		if rising_edge( Clk ) then
			if Reset = '1' then
				State <= sReadFromSD;
			else
				State <= NextState;
			end if;
		end if;
	end process process1;
		
		
	process2 : process( State, SD_Busy, SD_DO_Rdy )
	begin
		NextState <= State; -- by default
		case State is
			when sReadFromSD =>
				if SD_DO_Rdy = '1' then
					NextState <= sReadFromSDRdy;
				end if;
			----------------------------- JE�LI KONIEC OCZYTU Z KARTY -----------------------------
--				if SD_Busy = '0' and SD_DO_Rdy = '0' then
--					NextState <= sReadFromKbd;
--				end if;
			
			----------------------------- TO MO�NA BY POMIN�� -----------------------------
			when sReadFromKbd =>
				NextState <= State;
				
			when sReadFromSDRdy =>
				if SD_DO = X"0A" or SD_DO = X"0D" then
					NextState <= sReadFromSDEnd;
				else 
					NextState <= sReadFromSDEndByte;
				end if;
				
			when sReadFromSDEndByte =>
				NextState <= sReadFromSD;
				
			when sReadFromSDEnd =>
				NextState <= sReadFromKbd;
				
		end case;
	end process process2;
	
	process3 : process( Clk )
	begin
		if rising_edge( Clk ) then
			case State is
				when sReadFromSD =>
					NewlineOut <= '0';
					
				when sReadFromSDRdy =>
					------------------------------- CZYTA Z KARTY -------------------------------
					Char_DI <= SD_DO;
					Char_WE <= '1';
					SD_Pop <= '1';
					CharNumber <= CharNumber + 1;
					Text(CharNumber) <= character'val(to_integer(unsigned(SD_DO)));
					
				when sReadFromSDEndByte =>
					Char_WE <= '0';
					SD_Pop <= '0';
					
				when sReadFromSDEnd =>
					NewlineOut <= '1';
				
				----------------------------- CZYTA Z KLAWIATURY -----------------------------
				when sReadFromKbd =>
					NewlineOut <= '0';
					Char_DI <= PS2_DO;
					Char_WE <= PS2_DO_Rdy;
					
				when others =>
			end case;
		end if;
	end process process3;


	-- In place of process3:
--	Char_DI <= SD_DO when State = sReadFromSD
--	else PS2_DO;
--	
--	Char_WE <= SD_Pop when State = sReadFromSD
--	else PS2_Rdy;
	
end Behavioral;

