--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Test_KbdVGA.vhf
-- /___/   /\     Timestamp : 03/22/2022 09:12:30
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/lab/Downloads/VGAtxt48x20 -sympath C:/Users/lab/Downloads/PS2_Kbd -sympath C:/Users/lab/Downloads/RotaryEnc -intstyle ise -family spartan3e -flat -suppress -vhdl C:/ucisw2/typing_test/Test_KbdVGA.vhf -w C:/Users/lab/Downloads/Test_KbdVGA/Test_KbdVGA/Test_KbdVGA.sch
--Design Name: Test_KbdVGA
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

entity Test_KbdVGA is
   port ( Clk_50MHz : in    std_logic; 
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          ROT_A     : in    std_logic; 
          ROT_B     : in    std_logic; 
          SW_0      : in    std_logic; 
          SW_1      : in    std_logic; 
          SW_2      : in    std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
end Test_KbdVGA;

architecture BEHAVIORAL of Test_KbdVGA is
   attribute BOX_TYPE   : string ;
   signal XLXN_8    : std_logic;
   signal XLXN_15   : std_logic;
   signal XLXN_16   : std_logic;
   signal XLXN_17   : std_logic;
   signal XLXN_25   : std_logic_vector (7 downto 0);
   signal XLXN_26   : std_logic_vector (7 downto 0);
   signal XLXN_27   : std_logic;
   signal XLXN_63   : std_logic;
   signal XLXN_64   : std_logic;
   signal XLXN_65   : std_logic;
   signal XLXN_72   : std_logic;
   signal XLXN_73   : std_logic;
   signal XLXN_79   : std_logic;
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
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
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component FSM_SendByte
      port ( Busy   : out   std_logic; 
             DORdy  : out   std_logic; 
             DO     : out   std_logic_vector (7 downto 0); 
             DI     : in    std_logic_vector (7 downto 0); 
             DIRdy  : in    std_logic; 
             TxBusy : in    std_logic; 
             Reset  : in    std_logic; 
             Clk    : in    std_logic);
   end component;
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component RotaryEnc
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             RotL  : out   std_logic; 
             RotR  : out   std_logic; 
             Clk   : in    std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_1 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_25(7 downto 0),
                DO_Rdy=>XLXN_17,
                E0=>XLXN_15,
                F0=>XLXN_16);
   
   XLXI_2 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_26(7 downto 0),
                Char_WE=>XLXN_27,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                CursorOn=>SW_0,
                Goto00=>XLXN_63,
                Home=>XLXN_73,
                NewLine=>XLXN_64,
                ScrollClear=>SW_2,
                ScrollEn=>SW_1,
                Busy=>XLXN_65,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_8,
                VGA_VS=>VGA_VS);
   
   XLXI_3 : BUF
      port map (I=>XLXN_8,
                O=>VGA_R);
   
   XLXI_4 : BUF
      port map (I=>XLXN_8,
                O=>VGA_G);
   
   XLXI_5 : BUF
      port map (I=>XLXN_8,
                O=>VGA_B);
   
   XLXI_12 : FSM_SendByte
      port map (Clk=>Clk_50MHz,
                DI(7 downto 0)=>XLXN_25(7 downto 0),
                DIRdy=>XLXN_72,
                Reset=>XLXN_79,
                TxBusy=>XLXN_65,
                Busy=>open,
                DO(7 downto 0)=>XLXN_26(7 downto 0),
                DORdy=>XLXN_27);
   
   XLXI_13 : AND3B2
      port map (I0=>XLXN_15,
                I1=>XLXN_16,
                I2=>XLXN_17,
                O=>XLXN_72);
   
   XLXI_25 : RotaryEnc
      port map (Clk=>Clk_50MHz,
                ROT_A=>ROT_A,
                ROT_B=>ROT_B,
                RotL=>XLXN_63,
                RotR=>XLXN_64);
   
   XLXI_28 : GND
      port map (G=>XLXN_73);
   
   XLXI_32 : GND
      port map (G=>XLXN_79);
   
end BEHAVIORAL;


