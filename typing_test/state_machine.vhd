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
--use ieee.std_logic_arith;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity state_machine is
    Port ( Clk 		  : in  STD_LOGIC;
           Reset 		: in  STD_LOGIC;
			  
         SD_DO 		  : in  STD_LOGIC_VECTOR (7 downto 0);
         SD_Busy 	  : in  STD_LOGIC;
         SD_DO_Rdy  : in  STD_LOGIC;
      
         PS2_DO_Rdy : in  STD_LOGIC;
         PS2_DO 	  : in  STD_LOGIC_VECTOR (7 downto 0);
      
         Char_DI 	  : out STD_LOGIC_VECTOR (7 downto 0);
         Char_WE 	  : out STD_LOGIC;
			   NewlineOut : out STD_LOGIC;
			   SD_Pop 	  : out  STD_LOGIC;
			   Score_DI	  : out STD_LOGIC_VECTOR (63 downto 0));
			  
end state_machine;

architecture Behavioral of state_machine is

	type state_type is ( 
                sWaitingForStart, 
                sReadFromSD, 
                sReadFromSDRdy, 
                sReadFromSDEndByte, 
                sReadFromSDEnd, 
								sReadFromKbd, 
                sReadFromKbdEnd);
	signal State, NextState : state_type;
	signal CharNumber 		: positive;
	signal CharNumberCheck 	: positive;
	signal Score				: STD_LOGIC_VECTOR (63 downto 0) := X"0000000000000000";
	type byte_array			is array (1 to 100) of STD_LOGIC_VECTOR (7 downto 0);
	signal Text					: byte_array;

begin
	process1 : process( Clk )
	begin
		if rising_edge( Clk ) then
			if Reset = '1' then
				State <= sWaitingForStart;
			else
				State <= NextState;
			end if;
		end if;
	end process process1;
		
		
	process2 : process( State, SD_Busy, SD_DO_Rdy, PS2_DO, SD_DO )
	begin
		NextState <= State; -- by default
		case State is
			when sWaitingForStart => 
				if SD_DO_Rdy = '1' then
					NextState <= sReadFromSD;
				end if;
			
			------------------- SD -------------------
			when sReadFromSD =>
				if SD_DO_Rdy = '1' then
					NextState <= sReadFromSDRdy;
				end if;
				
			when sReadFromSDRdy =>
				if SD_DO = X"0A" or SD_DO = X"0D" or SD_DO = X"00" then
					NextState <= sReadFromSDEnd;
				else 
					NextState <= sReadFromSDEndByte;
				end if;
				
			when sReadFromSDEndByte =>
				NextState <= sReadFromSD;
				
			when sReadFromSDEnd =>
				NextState <= sReadFromKbd;
			
			------------------- KEYBOARD -------------------
			when sReadFromKbd =>
				if PS2_DO = X"0a" or PS2_DO = X"0d" then
					NextState <= sReadFromKbdEnd;
				end if;
				
			when sReadFromKbdEnd =>
				NextState <= sReadFromSD;
				
			when others =>
				NextState <= State; 
		end case;
	end process process2;
	
	process3 : process( Clk )
	begin
		if rising_edge( Clk ) then
			case State is
				when sWaitingForStart => 
					NewlineOut <= '0';
					Char_WE <= '0';
					SD_Pop <= '0';
				
				when sReadFromSD =>
					NewlineOut <= '0';
					SD_Pop <= '0';
					
				when sReadFromSDRdy =>
--					SD_Pop <= '0';
					------------------------------- CZYTA Z KARTY -------------------------------
					if SD_DO /= X"0A" and SD_DO /= X"0D" and SD_DO /= X"00" then
						Char_DI <= SD_DO;
						Char_WE <= '1';
						Text(CharNumber) <= SD_DO;
						CharNumber <= CharNumber + 1;
					end if;
					SD_Pop <= '1';
--					Text(CharNumber) <= character'val(to_integer(unsigned(SD_DO)));
					
				when sReadFromSDEndByte =>
					Char_WE <= '0';
					SD_Pop <= '0';
					
				when sReadFromSDEnd =>
					Char_WE <= '0';
					NewlineOut <= '1';
					SD_Pop <= '1';
				
				----------------------------- CZYTA Z KLAWIATURY -----------------------------
				when sReadFromKbd =>
					SD_Pop <= '0';
					NewlineOut <= '0';
					if PS2_DO /= X"0A" and PS2_DO /= X"0D" and PS2_DO /= X"00" then
						Char_DI <= PS2_DO;
						Char_WE <= PS2_DO_Rdy;
						Score_DI <= Score;
					end if;
				
				when sReadFromKbdEnd =>
					CharNumber <= 1;
					
				when others =>
			end case;
		end if;
	end process process3;
	
	------------------ PROCES LICZ�CY PUNKTY -------------------------
	process4 : process( Clk )
	begin
		if rising_edge( Clk ) then
			case State is
				when sReadFromKbd =>
					if PS2_DO_Rdy = '1' then
						if PS2_DO = Text(CharNumberCheck) then
							Score <= std_logic_vector(signed(Score) + 1);
						else
							Score <= std_logic_vector(signed(Score) - 1);
						end if;
					end if;
					CharNumberCheck <= CharNumberCheck + 1;
				
				when sReadFromKbdEnd =>
					CharNumberCheck <= 1;
			
			when others =>
			end case;
		end if;
	end process process4;


	-- In place of process3:
--	Char_DI <= SD_DO when State = sReadFromSD
--	else PS2_DO;
--	
--	Char_WE <= SD_Pop when State = sReadFromSD
--	else PS2_Rdy;
	
end Behavioral;

