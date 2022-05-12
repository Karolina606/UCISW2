VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL VGA_HS
        SIGNAL VGA_VS
        SIGNAL Clk_50MHz
        SIGNAL PS2_Clk
        SIGNAL PS2_Data
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_25(7:0)
        SIGNAL XLXN_26(7:0)
        SIGNAL XLXN_27
        SIGNAL SW_0
        SIGNAL SW_2
        SIGNAL ROT_A
        SIGNAL ROT_B
        SIGNAL SW_1
        SIGNAL XLXN_63
        SIGNAL XLXN_64
        SIGNAL XLXN_65
        SIGNAL XLXN_72
        SIGNAL XLXN_73
        SIGNAL VGA_R
        SIGNAL VGA_G
        SIGNAL VGA_B
        SIGNAL XLXN_8
        SIGNAL XLXN_79
        PORT Output VGA_HS
        PORT Output VGA_VS
        PORT Input Clk_50MHz
        PORT Input PS2_Clk
        PORT Input PS2_Data
        PORT Input SW_0
        PORT Input SW_2
        PORT Input ROT_A
        PORT Input ROT_B
        PORT Input SW_1
        PORT Output VGA_R
        PORT Output VGA_G
        PORT Output VGA_B
        BEGIN BLOCKDEF PS2_Kbd
            TIMESTAMP 2008 9 19 9 9 35
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF VGAtxt48x20
            TIMESTAMP 2008 9 4 9 59 0
            RECTANGLE N 64 -640 368 88 
            RECTANGLE N 0 -620 64 -596 
            LINE N 64 -608 0 -608 
            LINE N 64 -448 0 -448 
            LINE N 64 -384 0 -384 
            LINE N 64 -320 0 -320 
            LINE N 64 64 0 64 
            LINE N 64 0 0 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 368 -352 432 -352 
            LINE N 368 -608 432 -608 
            LINE N 368 -544 432 -544 
            LINE N 368 -480 432 -480 
            LINE N 64 -544 0 -544 
        END BLOCKDEF
        BEGIN BLOCKDEF buf
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
            LINE N 64 0 128 -32 
            LINE N 128 -32 64 -64 
            LINE N 64 -64 64 0 
        END BLOCKDEF
        BEGIN BLOCKDEF FSM_SendByte
            TIMESTAMP 2008 9 19 9 57 51
            RECTANGLE N 64 -320 320 0 
            LINE N 320 -160 384 -160 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF RotaryEnc
            TIMESTAMP 2008 8 28 17 16 17
            RECTANGLE N 64 -256 320 -64 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 VGAtxt48x20
            PIN Char_DI(7:0) XLXN_26(7:0)
            PIN Home XLXN_73
            PIN NewLine XLXN_64
            PIN Goto00 XLXN_63
            PIN Clk_Sys Clk_50MHz
            PIN Clk_50MHz Clk_50MHz
            PIN CursorOn SW_0
            PIN ScrollEn SW_1
            PIN ScrollClear SW_2
            PIN Busy XLXN_65
            PIN VGA_HS VGA_HS
            PIN VGA_VS VGA_VS
            PIN VGA_RGB XLXN_8
            PIN Char_WE XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_1 PS2_Kbd
            PIN PS2_Clk PS2_Clk
            PIN PS2_Data PS2_Data
            PIN Clk_50MHz Clk_50MHz
            PIN E0 XLXN_15
            PIN F0 XLXN_16
            PIN DO_Rdy XLXN_17
            PIN DO(7:0) XLXN_25(7:0)
            PIN Clk_Sys Clk_50MHz
        END BLOCK
        BEGIN BLOCK XLXI_13 and3b2
            PIN I0 XLXN_15
            PIN I1 XLXN_16
            PIN I2 XLXN_17
            PIN O XLXN_72
        END BLOCK
        BEGIN BLOCK XLXI_25 RotaryEnc
            PIN ROT_A ROT_A
            PIN ROT_B ROT_B
            PIN RotL XLXN_63
            PIN RotR XLXN_64
            PIN Clk Clk_50MHz
        END BLOCK
        BEGIN BLOCK XLXI_12 FSM_SendByte
            PIN Busy
            PIN DORdy XLXN_27
            PIN DO(7:0) XLXN_26(7:0)
            PIN DI(7:0) XLXN_25(7:0)
            PIN DIRdy XLXN_72
            PIN TxBusy XLXN_65
            PIN Reset XLXN_79
            PIN Clk Clk_50MHz
        END BLOCK
        BEGIN BLOCK XLXI_28 gnd
            PIN G XLXN_73
        END BLOCK
        BEGIN BLOCK XLXI_3 buf
            PIN I XLXN_8
            PIN O VGA_R
        END BLOCK
        BEGIN BLOCK XLXI_4 buf
            PIN I XLXN_8
            PIN O VGA_G
        END BLOCK
        BEGIN BLOCK XLXI_5 buf
            PIN I XLXN_8
            PIN O VGA_B
        END BLOCK
        BEGIN BLOCK XLXI_32 gnd
            PIN G XLXN_79
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 2208 1472 R0
        END INSTANCE
        BEGIN BRANCH VGA_HS
            WIRE 2640 864 3040 864
        END BRANCH
        BEGIN BRANCH VGA_VS
            WIRE 2640 928 3040 928
        END BRANCH
        BEGIN INSTANCE XLXI_1 608 1088 R0
        END INSTANCE
        BEGIN BRANCH PS2_Clk
            WIRE 432 864 608 864
        END BRANCH
        BEGIN BRANCH PS2_Data
            WIRE 432 928 608 928
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 992 928 1040 928
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 992 992 1040 992
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 992 1056 1040 1056
        END BRANCH
        INSTANCE XLXI_13 1040 864 M180
        BEGIN BRANCH XLXN_25(7:0)
            WIRE 992 864 1472 864
        END BRANCH
        BEGIN BRANCH XLXN_26(7:0)
            WIRE 1856 864 2208 864
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1856 928 2208 928
        END BRANCH
        BEGIN BRANCH SW_0
            WIRE 432 1520 2096 1520
            WIRE 2096 1248 2208 1248
            WIRE 2096 1248 2096 1520
        END BRANCH
        BEGIN BRANCH SW_2
            WIRE 432 1648 1968 1648
            WIRE 1968 1376 1968 1648
            WIRE 1968 1376 2208 1376
        END BRANCH
        IOMARKER 432 864 PS2_Clk R180 28
        IOMARKER 432 928 PS2_Data R180 28
        BEGIN INSTANCE XLXI_25 608 1504 R0
        END INSTANCE
        BEGIN BRANCH ROT_A
            WIRE 432 1280 608 1280
        END BRANCH
        BEGIN BRANCH ROT_B
            WIRE 432 1344 608 1344
        END BRANCH
        IOMARKER 432 1280 ROT_A R180 28
        IOMARKER 432 1344 ROT_B R180 28
        IOMARKER 432 1792 Clk_50MHz R180 28
        IOMARKER 432 1520 SW_0 R180 28
        IOMARKER 432 1648 SW_2 R180 28
        BEGIN BRANCH SW_1
            WIRE 432 1584 2032 1584
            WIRE 2032 1312 2208 1312
            WIRE 2032 1312 2032 1584
        END BRANCH
        IOMARKER 432 1584 SW_1 R180 28
        BEGIN BRANCH XLXN_63
            WIRE 992 1280 2000 1280
            WIRE 2000 1152 2000 1280
            WIRE 2000 1152 2208 1152
        END BRANCH
        BEGIN BRANCH XLXN_64
            WIRE 992 1344 1936 1344
            WIRE 1936 1088 1936 1344
            WIRE 1936 1088 2208 1088
        END BRANCH
        BEGIN BRANCH XLXN_65
            WIRE 1408 688 1408 992
            WIRE 1408 992 1472 992
            WIRE 1408 688 2672 688
            WIRE 2672 688 2672 1120
            WIRE 2640 1120 2672 1120
        END BRANCH
        BEGIN INSTANCE XLXI_12 1472 1152 R0
        END INSTANCE
        BEGIN BRANCH XLXN_72
            WIRE 1296 992 1344 992
            WIRE 1344 928 1344 992
            WIRE 1344 928 1472 928
        END BRANCH
        BEGIN BRANCH Clk_50MHz
            WIRE 432 1792 576 1792
            WIRE 576 1792 1408 1792
            WIRE 1408 1792 2160 1792
            WIRE 576 992 608 992
            WIRE 576 992 576 1056
            WIRE 576 1056 576 1408
            WIRE 576 1408 608 1408
            WIRE 576 1408 576 1792
            WIRE 576 1056 608 1056
            WIRE 1408 1120 1408 1792
            WIRE 1408 1120 1472 1120
            WIRE 2160 1472 2208 1472
            WIRE 2160 1472 2160 1536
            WIRE 2160 1536 2208 1536
            WIRE 2160 1536 2160 1792
        END BRANCH
        BEGIN BRANCH XLXN_73
            WIRE 2176 1024 2208 1024
        END BRANCH
        INSTANCE XLXI_28 2048 960 R90
        BEGIN DISPLAY 2696 2332 TEXT "J.Sugier  2008"
            FONT 64 "Arial"
        END DISPLAY
        BEGIN DISPLAY 2696 2236 TEXT Test_KbdVGA
            FONT 64 "Arial"
        END DISPLAY
        BEGIN BRANCH VGA_R
            WIRE 3008 992 3040 992
        END BRANCH
        BEGIN BRANCH VGA_G
            WIRE 3008 1056 3040 1056
        END BRANCH
        BEGIN BRANCH VGA_B
            WIRE 3008 1120 3040 1120
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 2640 992 2752 992
            WIRE 2752 992 2784 992
            WIRE 2752 992 2752 1056
            WIRE 2752 1056 2752 1120
            WIRE 2752 1120 2784 1120
            WIRE 2752 1056 2784 1056
        END BRANCH
        INSTANCE XLXI_3 2784 1024 R0
        INSTANCE XLXI_4 2784 1088 R0
        INSTANCE XLXI_5 2784 1152 R0
        IOMARKER 3040 992 VGA_R R0 28
        IOMARKER 3040 1056 VGA_G R0 28
        IOMARKER 3040 1120 VGA_B R0 28
        IOMARKER 3040 864 VGA_HS R0 28
        IOMARKER 3040 928 VGA_VS R0 28
        BEGIN BRANCH XLXN_79
            WIRE 1440 1056 1472 1056
        END BRANCH
        INSTANCE XLXI_32 1312 992 R90
    END SHEET
END SCHEMATIC
