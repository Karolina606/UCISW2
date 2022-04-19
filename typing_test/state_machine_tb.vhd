--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:27:54 04/05/2022
-- Design Name:   
-- Module Name:   E:/studia/UCISW2/typing_test_v2/state_machine_tb.vhd
-- Project Name:  typing_test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: state_machine
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_arith;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY state_machine_tb IS
END state_machine_tb;
 
ARCHITECTURE behavior OF state_machine_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT state_machine
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         SD_DO : IN  std_logic_vector(7 downto 0);
         SD_Busy : IN  std_logic;
         SD_DO_Rdy : IN  std_logic;
         PS2_DO_Rdy : IN  std_logic;
         PS2_DO : IN  std_logic_vector(7 downto 0);
         Char_DI : OUT  std_logic_vector(7 downto 0);
         Char_WE : OUT  std_logic;
			NewlineOut : OUT std_logic;
         SD_Pop : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal SD_DO : std_logic_vector(7 downto 0) := (others => '0');
   signal SD_Busy : std_logic := '0';
   signal SD_DO_Rdy : std_logic := '0';
   signal PS2_DO_Rdy : std_logic := '0';
   signal PS2_DO : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Char_DI : std_logic_vector(7 downto 0);
   signal Char_WE : std_logic;
   signal SD_Pop : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
	
	signal ifSDReadingEnded: std_logic := '0';
	
	
	-- Kbd
	type charArray is array (21 downto 0) of STD_LOGIC_VECTOR( 7 downto 0 );
	constant testCharacterArray : charArray := 
	( X"41", X"6c", X"61",
	X"20",
	X"6d", X"61",
	X"20", 
	X"6b", X"6f", X"74", X"61", 
	
	X"41", X"6c", X"61",
	X"20",
	X"6d", X"61",
	X"20", 
	X"6b", X"6f", X"74", X"61");
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: state_machine PORT MAP (
          Clk => Clk,
          Reset => Reset,
          SD_DO => SD_DO,
          SD_Busy => SD_Busy,
          SD_DO_Rdy => SD_DO_Rdy,
          PS2_DO_Rdy => PS2_DO_Rdy,
          PS2_DO => PS2_DO,
          Char_DI => Char_DI,
          Char_WE => Char_WE,
          SD_Pop => SD_Pop
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;


	-- Proces symulacyjny dla czytania z karty
   process

      type t_FileOfCharacter is file of character;
      file fTheFile : t_FileOfCharacter is in "C:\Users\nogac\Desktop\studejszyn_sem6\UCiSW2\typing_tutor\1.txt";
      variable byte : character;

		begin
			wait until rising_edge( Clk );
			
			SD_Busy <= '1';
			
			while not endfile( fTheFile ) loop
			  wait for Clk_Period * 3;    -- represents SDCard read delay
			  read( fTheFile, byte );
			  SD_DO <= std_logic_vector( to_unsigned( character'pos( byte ) , 8 ) );
			  SD_DO_Rdy <= '1';
			  wait until rising_edge( Clk ) and SD_Pop = '1';
			  SD_DO_Rdy <= '0';
			end loop;

			SD_Busy <= '0';
			ifSDReadingEnded <= '1';
--			wait; -- forever
   end process;
	
	-- Proces dla symulacji klawiatury
   kbd_process: process
   begin	
		wait for 1 * CLK_period;
		if ifSDReadingEnded = '1' then
			for i in 21 downto 0 loop
				PS2_DO <= testCharacterArray(i);
					PS2_DO_Rdy <= '1';
				wait for CLK_period;
					PS2_DO_Rdy <='0';
				wait for 5 * CLK_period;
			end loop;
		else
			PS2_DO <= "00000000";
			PS2_DO_Rdy <= '0';
		end if;
   end process;
END;
