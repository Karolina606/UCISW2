--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Top_HelloOnVGA.vhf
-- /___/   /\     Timestamp : 01/10/2022 17:01:21
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/nogac/Desktop/studejszyn_sem5/UCiSW/lab6/Test_VGAscan/Test_VGAscan/Top_HelloOnVGA.vhf -w C:/Users/nogac/Desktop/studejszyn_sem5/UCiSW/lab6/Test_VGAscan/Test_VGAscan/Top_HelloOnVGA.sch
--Design Name: Top_HelloOnVGA
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Top_HelloOnVGA is
   port ( Clk_50MHz : in    std_logic; 
          NewLine   : in    std_logic; 
          Reset     : in    std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_RGB   : out   std_logic; 
          VGA_VS    : out   std_logic);
end Top_HelloOnVGA;

architecture BEHAVIORAL of Top_HelloOnVGA is
   attribute BOX_TYPE   : string ;
   signal XLXN_4    : std_logic;
   signal XLXN_6    : std_logic;
   signal XLXN_12   : std_logic;
   signal XLXN_16   : std_logic_vector (7 downto 0);
   signal XLXN_18   : std_logic;
   component FSM_String
      port ( Reset   : in    std_logic; 
             Busy_In : in    std_logic; 
             Clk     : in    std_logic; 
             Char_DO : out   std_logic_vector (7 downto 0); 
             Char_WE : out   std_logic);
   end component;
   
   component VGAtxt48x20
      port ( Char_DI     : in    std_logic_vector (7 downto 0); 
             Home        : in    std_logic; 
             NewLine     : in    std_logic; 
             Goto00      : in    std_logic; 
             Clk_Sys     : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             CursorOn    : in    std_logic; 
             ScrollEn    : in    std_logic; 
             ScrollClear : in    std_logic; 
             Busy        : out   std_logic; 
             VGA_HS      : out   std_logic; 
             VGA_VS      : out   std_logic; 
             VGA_RGB     : out   std_logic; 
             Char_WE     : in    std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
begin
   FSM : FSM_String
      port map (Busy_In=>XLXN_12,
                Clk=>Clk_50MHz,
                Reset=>Reset,
                Char_DO(7 downto 0)=>XLXN_16(7 downto 0),
                Char_WE=>XLXN_18);
   
   VGA : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_16(7 downto 0),
                Char_WE=>XLXN_18,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                CursorOn=>XLXN_4,
                Goto00=>XLXN_6,
                Home=>XLXN_6,
                NewLine=>NewLine,
                ScrollClear=>XLXN_4,
                ScrollEn=>XLXN_4,
                Busy=>XLXN_12,
                VGA_HS=>VGA_HS,
                VGA_RGB=>VGA_RGB,
                VGA_VS=>VGA_VS);
   
   XLXI_5 : GND
      port map (G=>XLXN_6);
   
   XLXI_6 : VCC
      port map (P=>XLXN_4);
   
end BEHAVIORAL;


