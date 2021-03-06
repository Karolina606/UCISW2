-- Vhdl test bench created from schematic C:\XilinxPrj\_Dydaktyka\Tbw_VGA\Top_HelloOnVGA.sch - Wed Apr 14 11:32:54 2021
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;


ENTITY Tbw_VGAscan IS
END Tbw_VGAscan;
ARCHITECTURE behavioral OF Tbw_VGAscan IS 

   COMPONENT Top_HelloOnVGA
   PORT( Clk_50MHz	:	IN	STD_LOGIC; 
          Reset	:	IN	STD_LOGIC; 
          NewLine	:	IN	STD_LOGIC; 
          VGA_HS	:	OUT	STD_LOGIC; 
          VGA_VS	:	OUT	STD_LOGIC; 
          VGA_RGB	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL Clk_50MHz	:	STD_LOGIC := '0';
   SIGNAL Reset	:	STD_LOGIC := '0';
   SIGNAL NewLine	:	STD_LOGIC := '0';
   SIGNAL VGA_HS	:	STD_LOGIC;
   SIGNAL VGA_VS	:	STD_LOGIC;
   SIGNAL VGA_RGB	:	STD_LOGIC;
   
   CONSTANT Clk_Period : DELAY_LENGTH := 20 ns;
   
   -- The VGAscan component
   COMPONENT VGAscan
       Generic ( -- Output file (frame number & ".bmp" will be appended)
                 FileName   : string := "C:\Users\nogac\Desktop\studejszyn\studejszyn_sem5\UCiSW\lab6\Frame";
                 -- VGA mode params (defaults are for 800x600@72Hz or VGAtxt48x20)
                 pxWidth    : integer := 800;         -- visible pixels: width
                 pxHeight   : integer := 600;         -- visible pixels: height
                 pxHSfrontP : integer := 56;          -- HSync front porch
                 lnVSfrontP : integer := 37;          -- VSync front porch
                 pxTotal    : integer := 1040;        -- total horiz. pixels (visible & invisible)
                 lnTotal    : integer := 666;         -- total vert. lines (visible & invisible)
                 mhzPixelClk: real    := 50.000;      -- pixel clock
                 activeHS   : std_logic := '1';       -- HSync polarity
                 activeVS   : std_logic := '1';       -- VSync polarity
                 -- Aux params
                 pxBorder   : integer := 3            -- bitmap border around the visible area
               );
       Port ( VS, HS : in  STD_LOGIC;
              R, G, B : in  STD_LOGIC);
   END COMPONENT;

BEGIN
   
   ------------------------------------------------------------------
   -- Unit Under Test (the schematic)
   ------------------------------------------------------------------
   UUT: Top_HelloOnVGA PORT MAP(
		Clk_50MHz => Clk_50MHz, 
		Reset => Reset, 
		NewLine => NewLine, 
		VGA_HS => VGA_HS, 
		VGA_VS => VGA_VS, 
		VGA_RGB => VGA_RGB
   );
   
   ------------------------------------------------------------------
   -- Instance of the VGA scanner
   ------------------------------------------------------------------
   I_Scanner: VGAscan
      generic map(
         pxBorder => 3,
         FileName => "C:\Users\nogac\Desktop\studejszyn\studejszyn_sem5\UCiSW\lab6\Frame" )    -- VGAtxt48x20 works in 800x600/72Hz mode => VGA generics can be left with their defaults
      port map(
         VS => VGA_VS,
         HS => VGA_HS,
         R => VGA_RGB,
         G => VGA_RGB,
         B => VGA_RGB );

   -- Clock wave
   Clk_50MHz <= not Clk_50MHz after Clk_Period / 2;

   -- Inputs
   process
   begin
      -- Simulated behavior: print a new line every VGA frame
      loop
         wait until rising_edge(VGA_VS);
         Reset   <= '1', '0' after Clk_Period;  -- re-send the string
         NewLine <= '1', '0' after Clk_Period;  -- go to new line pulse
      end loop;
   end process;
   
END;
