--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:38:40 09/20/2008
-- Design Name:   
-- Module Name:   C:/XilinxPrj/_XC3S500E/00_Stud/Test_KbdVGA/TBW_FSM_SendByte.vhd
-- Project Name:  Test_PS2Kbd
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FSM_SendByte
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
use IEEE.STD_LOGIC_ARITH.ALL;
USE ieee.std_logic_unsigned.all;
 
ENTITY TBW_FSM_SendByte IS
END TBW_FSM_SendByte;
 
ARCHITECTURE behavior OF TBW_FSM_SendByte IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FSM_SendByte
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         DI : IN  std_logic_vector(7 downto 0);
         DIRdy : IN  std_logic;
         TxBusy : IN  std_logic;
         DO : OUT  std_logic_vector(7 downto 0);
         DORdy : OUT  std_logic;
         Busy : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal DI : std_logic_vector(7 downto 0) := (others => '0');
   signal DIRdy : std_logic := '0';
   signal TxBusy : std_logic := '0';

 	--Outputs
   signal DO : std_logic_vector(7 downto 0);
   signal DORdy : std_logic;
   signal Busy : std_logic;

   -- Clock period
   constant Tclk : TIME := 1 us / 50;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FSM_SendByte PORT MAP (
          Clk => Clk,
          Reset => Reset,
          DI => DI,
          DIRdy => DIRdy,
          TxBusy => TxBusy,
          DO => DO,
          DORdy => DORdy,
          Busy => Busy
        );
 
   -- Clock signal
   Clk <= not Clk after Tclk / 2;
 
   -- Process1: bytes coming from source
   process
      type tBytes is array ( INTEGER range <> ) of std_logic_vector( 7 downto 0 );
      constant arrBytes: tBytes( 0 to 4 ) :=
        ( X"1C", X"29", X"7E", X"33", X"34" );
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      for i in arrBytes'RANGE loop
        DI <= arrBytes( i );
        DIRdy <= '1', '0' after Tclk;
        wait for 20 * Tclk;
      end loop;

      for i in 0 to 4 loop
        DI <= conv_std_logic_vector( i, 8 );
        DIRdy <= '1', '0' after Tclk;
        wait for 20 * Tclk;
      end loop;

      wait; -- forever
      
   end process;

   -- Process2: busy signal from destination
   process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      loop
        wait until rising_edge( Clk ) and DORdy = '1' and TxBusy = '0';
        TxBusy <= '1', '0' after 3 * Tclk;
      end loop;
      
   end process;

END;
