--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : tutor_v2.vhf
-- /___/   /\     Timestamp : 05/17/2022 15:32:26
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/ucisw2/ucisw2/typing_test/PS2_Kbd -sympath C:/ucisw2/ucisw2/typing_test/RotaryEnc -sympath C:/ucisw2/ucisw2/typing_test/SDC_FileReader -sympath C:/ucisw2/ucisw2/typing_test/LCD1x64 -sympath C:/ucisw2/ucisw2/typing_test/VGAtxt48x20 -intstyle ise -family spartan3e -flat -suppress -vhdl C:/ucisw2/ucisw2/typing_test/tutor_v2.vhf -w C:/ucisw2/ucisw2/typing_test/tutor_v2.sch
--Design Name: tutor_v2
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

entity tutor_v2 is
   port ( Clk_50MHz : in    std_logic; 
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          ROT_A     : in    std_logic; 
          ROT_B     : in    std_logic; 
          SDC_MISO  : in    std_logic; 
          SW_0      : in    std_logic; 
          SW_1      : in    std_logic; 
          SW_2      : in    std_logic; 
          SW_3      : in    std_logic; 
          LCD_E     : out   std_logic; 
          LCD_RS    : out   std_logic; 
          LCD_RW    : out   std_logic; 
          LED       : out   std_logic_vector (1 downto 0); 
          LED_7     : out   std_logic; 
          SDC_MOSI  : out   std_logic; 
          SDC_SCK   : out   std_logic; 
          SDC_SS    : out   std_logic; 
          SF_CE     : out   std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic; 
          LCD_D     : inout std_logic_vector (3 downto 0));
end tutor_v2;

architecture BEHAVIORAL of tutor_v2 is
   attribute BOX_TYPE   : string ;
   signal btn_south                 : std_logic;
   signal FExt                      : std_logic_vector (1 downto 0);
   signal FName                     : std_logic_vector (7 downto 0);
   signal XLXN_3                    : std_logic;
   signal XLXN_5                    : std_logic;
   signal XLXN_6                    : std_logic;
   signal XLXN_25                   : std_logic_vector (7 downto 0);
   signal XLXN_72                   : std_logic;
   signal XLXN_79                   : std_logic;
   signal XLXN_564                  : std_logic;
   signal XLXN_612                  : std_logic;
   signal XLXN_613                  : std_logic;
   signal XLXN_614                  : std_logic;
   signal XLXN_794                  : std_logic;
   signal XLXN_795                  : std_logic;
   signal XLXN_796                  : std_logic;
   signal XLXN_1124                 : std_logic_vector (7 downto 0);
   signal XLXN_1125                 : std_logic_vector (7 downto 0);
   signal XLXN_1172                 : std_logic;
   signal XLXN_1178                 : std_logic;
   signal XLXN_1179                 : std_logic_vector (7 downto 0);
   signal XLXN_1182                 : std_logic;
   signal XLXN_1186                 : std_logic;
   signal XLXN_1187                 : std_logic;
   signal XLXN_1188                 : std_logic;
   signal XLXN_1192                 : std_logic;
   signal XLXN_1195                 : std_logic;
   signal XLXN_1207                 : std_logic_vector (63 downto 0);
   signal XLXN_1215                 : std_logic;
   signal LED_7_DUMMY               : std_logic;
   signal XLXI_382_Blank_openSignal : std_logic_vector (15 downto 0);
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
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
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
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component SDC_FileReader
      port ( SDC_MISO  : in    std_logic; 
             Start     : in    std_logic; 
             FName     : in    std_logic_vector (7 downto 0); 
             Reset     : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             DO_Pop    : in    std_logic; 
             Abort     : in    std_logic; 
             SDC_MOSI  : out   std_logic; 
             SDC_SCK   : out   std_logic; 
             SDC_SS    : out   std_logic; 
             Error     : out   std_logic_vector (1 downto 0); 
             DO        : out   std_logic_vector (7 downto 0); 
             DO_Rdy    : out   std_logic; 
             Busy      : out   std_logic; 
             FExt      : in    std_logic_vector (1 downto 0); 
             Clk_Sys   : in    std_logic);
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
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
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
   
   component RotaryEnc
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             RotL  : out   std_logic; 
             RotR  : out   std_logic; 
             Clk   : in    std_logic);
   end component;
   
begin
   LED_7 <= LED_7_DUMMY;
   XLXI_1 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_25(7 downto 0),
                DO_Rdy=>XLXN_5,
                E0=>XLXN_3,
                F0=>XLXN_6);
   
   XLXI_2 : AND3B2
      port map (I0=>XLXN_3,
                I1=>XLXN_6,
                I2=>XLXN_5,
                O=>XLXN_72);
   
   XLXI_3 : FSM_SendByte
      port map (Clk=>Clk_50MHz,
                DI(7 downto 0)=>XLXN_25(7 downto 0),
                DIRdy=>XLXN_72,
                Reset=>XLXN_79,
                TxBusy=>XLXN_1187,
                Busy=>XLXN_1186,
                DO(7 downto 0)=>XLXN_1124(7 downto 0),
                DORdy=>XLXN_1172);
   
   XLXI_4 : GND
      port map (G=>XLXN_79);
   
   XLXI_12 : GND
      port map (G=>FExt(0));
   
   XLXI_13 : VCC
      port map (P=>FExt(1));
   
   XLXI_19 : VCC
      port map (P=>XLXN_612);
   
   XLXI_21 : VCC
      port map (P=>XLXN_614);
   
   XLXI_35 : VCC
      port map (P=>XLXN_613);
   
   XLXI_37 : GND
      port map (G=>FName(6));
   
   XLXI_39 : BUF
      port map (I=>XLXN_564,
                O=>VGA_R);
   
   XLXI_40 : BUF
      port map (I=>XLXN_564,
                O=>VGA_G);
   
   XLXI_41 : BUF
      port map (I=>XLXN_564,
                O=>VGA_B);
   
   XLXI_43 : GND
      port map (G=>FName(7));
   
   XLXI_44 : BUF
      port map (I=>SW_1,
                O=>FName(1));
   
   XLXI_45 : BUF
      port map (I=>SW_3,
                O=>FName(3));
   
   XLXI_46 : BUF
      port map (I=>SW_0,
                O=>FName(0));
   
   XLXI_48 : BUF
      port map (I=>SW_2,
                O=>FName(2));
   
   XLXI_52 : SDC_FileReader
      port map (Abort=>btn_south,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                DO_Pop=>XLXN_1182,
                FExt(1 downto 0)=>FExt(1 downto 0),
                FName(7 downto 0)=>FName(7 downto 0),
                Reset=>XLXN_794,
                SDC_MISO=>SDC_MISO,
                Start=>XLXN_1215,
                Busy=>LED_7_DUMMY,
                DO(7 downto 0)=>XLXN_1125(7 downto 0),
                DO_Rdy=>XLXN_1188,
                Error(1 downto 0)=>LED(1 downto 0),
                SDC_MOSI=>SDC_MOSI,
                SDC_SCK=>SDC_SCK,
                SDC_SS=>SDC_SS);
   
   XLXI_136 : GND
      port map (G=>XLXN_794);
   
   XLXI_137 : GND
      port map (G=>XLXN_795);
   
   XLXI_138 : GND
      port map (G=>XLXN_796);
   
   XLXI_203 : VCC
      port map (P=>FName(5));
   
   XLXI_204 : VCC
      port map (P=>FName(4));
   
   XLXI_379 : state_machine
      port map (Clk=>Clk_50MHz,
                PS2_DO(7 downto 0)=>XLXN_1124(7 downto 0),
                PS2_DO_Rdy=>XLXN_1172,
                Reset=>btn_south,
                SD_Busy=>LED_7_DUMMY,
                SD_DO(7 downto 0)=>XLXN_1125(7 downto 0),
                SD_DO_Rdy=>XLXN_1188,
                Char_DI(7 downto 0)=>XLXN_1179(7 downto 0),
                Char_WE=>XLXN_1178,
                NewlineOut=>XLXN_1192,
                Score_DI(63 downto 0)=>XLXN_1207(63 downto 0),
                SD_Pop=>XLXN_1182);
   
   XLXI_381 : OR2
      port map (I0=>btn_south,
                I1=>XLXN_1192,
                O=>XLXN_1195);
   
   XLXI_382 : LCD1x64
      port map (Blank(15 downto 0)=>XLXI_382_Blank_openSignal(15 downto 0),
                Clk_50MHz=>Clk_50MHz,
                Line(63 downto 0)=>XLXN_1207(63 downto 0),
                Reset=>btn_south,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
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
                Busy=>XLXN_1187,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_564,
                VGA_VS=>VGA_VS);
   
   XLXI_385 : RotaryEnc
      port map (Clk=>Clk_50MHz,
                ROT_A=>ROT_A,
                ROT_B=>ROT_B,
                RotL=>XLXN_1215,
                RotR=>btn_south);
   
end BEHAVIORAL;


