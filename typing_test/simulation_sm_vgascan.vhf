--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : simulation_sm_vgascan.vhf
-- /___/   /\     Timestamp : 05/14/2022 14:49:50
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_test/PS2_Kbd -sympath C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_test/RotaryEnc -sympath C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_test/SDC_FileReader -sympath C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_test/LCD1x64 -sympath C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_test/VGAtxt48x20 -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_test/simulation_sm_vgascan.vhf -w C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_test/simulation_sm_vgascan.sch
--Design Name: simulation_sm_vgascan
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

entity simulation_sm_vgascan is
   port ( Clk_50MHz  : in    std_logic; 
          PS2_DO     : in    std_logic_vector (7 downto 0); 
          PS2_DO_Rdy : in    std_logic; 
          reset      : in    std_logic; 
          SD_Busy    : in    std_logic; 
          SD_DO      : in    std_logic_vector (7 downto 0); 
          SD_DO_Rdy  : in    std_logic; 
          SD_Pop     : out   std_logic; 
          VGA_B      : out   std_logic; 
          VGA_G      : out   std_logic; 
          VGA_HS     : out   std_logic; 
          VGA_R      : out   std_logic; 
          VGA_VS     : out   std_logic);
end simulation_sm_vgascan;

architecture BEHAVIORAL of simulation_sm_vgascan is
   attribute BOX_TYPE   : string ;
   signal XLXN_564   : std_logic;
   signal XLXN_612   : std_logic;
   signal XLXN_613   : std_logic;
   signal XLXN_614   : std_logic;
   signal XLXN_795   : std_logic;
   signal XLXN_796   : std_logic;
   signal XLXN_1178  : std_logic;
   signal XLXN_1179  : std_logic_vector (7 downto 0);
   signal XLXN_1192  : std_logic;
   signal XLXN_1195  : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
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
   
   component state_machine
      port ( Clk        : in    std_logic; 
             Reset      : in    std_logic; 
             SD_Busy    : in    std_logic; 
             SD_DO_Rdy  : in    std_logic; 
             PS2_DO_Rdy : in    std_logic; 
             SD_DO      : in    std_logic_vector (7 downto 0); 
             PS2_DO     : in    std_logic_vector (7 downto 0); 
             Char_WE    : out   std_logic; 
             NewlineOut : out   std_logic; 
             SD_Pop     : out   std_logic; 
             Char_DI    : out   std_logic_vector (7 downto 0); 
             Score_DI   : out   std_logic_vector (63 downto 0));
   end component;
   
begin
   XLXI_13 : VCC
      port map (P=>XLXN_612);
   
   XLXI_15 : VCC
      port map (P=>XLXN_614);
   
   XLXI_35 : VCC
      port map (P=>XLXN_613);
   
   XLXI_39 : BUF
      port map (I=>XLXN_564,
                O=>VGA_R);
   
   XLXI_40 : BUF
      port map (I=>XLXN_564,
                O=>VGA_G);
   
   XLXI_41 : BUF
      port map (I=>XLXN_564,
                O=>VGA_B);
   
   XLXI_137 : GND
      port map (G=>XLXN_795);
   
   XLXI_138 : GND
      port map (G=>XLXN_796);
   
   XLXI_381 : OR2
      port map (I0=>reset,
                I1=>XLXN_1192,
                O=>XLXN_1195);
   
   XLXI_384 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_1179(7 downto 0),
                Char_WE=>XLXN_1178,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                CursorOn=>XLXN_612,
                Goto00=>XLXN_796,
                Home=>XLXN_795,
                NewLine=>XLXN_1195,
                ScrollClear=>XLXN_614,
                ScrollEn=>XLXN_613,
                Busy=>open,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_564,
                VGA_VS=>VGA_VS);
   
   XLXI_385 : state_machine
      port map (Clk=>Clk_50MHz,
                PS2_DO(7 downto 0)=>PS2_DO(7 downto 0),
                PS2_DO_Rdy=>PS2_DO_Rdy,
                Reset=>reset,
                SD_Busy=>SD_Busy,
                SD_DO(7 downto 0)=>SD_DO(7 downto 0),
                SD_DO_Rdy=>SD_DO_Rdy,
                Char_DI(7 downto 0)=>XLXN_1179(7 downto 0),
                Char_WE=>XLXN_1178,
                NewlineOut=>XLXN_1192,
                Score_DI=>open,
                SD_Pop=>SD_Pop);
   
end BEHAVIORAL;


