--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : typing_tutor.vhf
-- /___/   /\     Timestamp : 05/12/2022 21:03:52
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_tutor_symulacja/SDC_FileReader -sympath C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_tutor_symulacja/VGAtxt48x20 -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_tutor_symulacja/typing_tutor.vhf -w C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_tutor_symulacja/typing_tutor.sch
--Design Name: typing_tutor
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

entity typing_tutor is
   port ( Clk_50MHz : in    std_logic; 
          FR_DO     : in    std_logic_vector (7 downto 0); 
          FR_Rdy    : in    std_logic; 
          START     : in    std_logic; 
          STOP      : in    std_logic; 
          FR_Pop    : out   std_logic; 
          START_OUT : out   std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
end typing_tutor;

architecture BEHAVIORAL of typing_tutor is
   attribute BOX_TYPE   : string ;
   signal XLXN_17      : std_logic;
   signal XLXN_564     : std_logic;
   signal XLXN_612     : std_logic;
   signal XLXN_613     : std_logic;
   signal XLXN_614     : std_logic;
   signal XLXN_795     : std_logic;
   signal XLXN_796     : std_logic;
   signal FR_Pop_DUMMY : std_logic;
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
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   FR_Pop <= FR_Pop_DUMMY;
   XLXI_2 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>FR_DO(7 downto 0),
                Char_WE=>FR_Pop_DUMMY,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                CursorOn=>XLXN_612,
                Goto00=>XLXN_796,
                Home=>XLXN_795,
                NewLine=>STOP,
                ScrollClear=>XLXN_614,
                ScrollEn=>XLXN_613,
                Busy=>XLXN_17,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_564,
                VGA_VS=>VGA_VS);
   
   XLXI_3 : BUF
      port map (I=>XLXN_564,
                O=>VGA_R);
   
   XLXI_4 : BUF
      port map (I=>XLXN_564,
                O=>VGA_G);
   
   XLXI_5 : BUF
      port map (I=>XLXN_564,
                O=>VGA_B);
   
   XLXI_9 : AND2B1
      port map (I0=>XLXN_17,
                I1=>FR_Rdy,
                O=>FR_Pop_DUMMY);
   
   XLXI_27 : VCC
      port map (P=>XLXN_612);
   
   XLXI_28 : VCC
      port map (P=>XLXN_613);
   
   XLXI_29 : VCC
      port map (P=>XLXN_614);
   
   XLXI_137 : GND
      port map (G=>XLXN_795);
   
   XLXI_138 : GND
      port map (G=>XLXN_796);
   
   XLXI_140 : BUF
      port map (I=>START,
                O=>START_OUT);
   
end BEHAVIORAL;


