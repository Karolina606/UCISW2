-- Vhdl test bench created from schematic C:\Users\nogac\Desktop\studejszyn_sem6\UCiSW2\typing_tutor\typing_tutor\typing_tutor.sch - Wed Mar 09 17:07:02 2022
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
ENTITY typing_tutor_typing_tutor_sch_tb IS
END typing_tutor_typing_tutor_sch_tb;
ARCHITECTURE behavioral OF typing_tutor_typing_tutor_sch_tb IS 

   COMPONENT typing_tutor
   PORT( 
          START	:	IN	STD_LOGIC; 
          Clk_50MHz	:	IN	STD_LOGIC; 
          STOP		:	IN	STD_LOGIC; 
			 FR_DO	: IN STD_LOGIC_VECTOR(7 downto 0);
			 FR_Rdy	: IN STD_LOGIC;
			 FR_Pop	: OUT STD_LOGIC;
			 START_OUT	:	OUT	STD_LOGIC; 
          VGA_VS	:	OUT	STD_LOGIC; 
          VGA_HS	:	OUT	STD_LOGIC; 
          VGA_G	:	OUT	STD_LOGIC; 
          VGA_B	:	OUT	STD_LOGIC; 
          VGA_R	:	OUT	STD_LOGIC
	); 
   END COMPONENT;

   SIGNAL START	:	STD_LOGIC := '0';
   SIGNAL Clk_50MHz	:	STD_LOGIC := '0';
   SIGNAL STOP		:	STD_LOGIC := '0';
	SIGNAL FR_DO	: STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL FR_Rdy	: STD_LOGIC := '0';
	SIGNAL FR_Pop	: STD_LOGIC := '1';
   SIGNAL VGA_VS	:	STD_LOGIC := '0';
   SIGNAL VGA_HS	:	STD_LOGIC := '0';
   SIGNAL VGA_G	:	STD_LOGIC := '0';
   SIGNAL VGA_B	:	STD_LOGIC := '0';
   SIGNAL VGA_R	:	STD_LOGIC := '0';
	
	-- The VGAscan component
   COMPONENT VGAscan
       Generic ( -- Output file (frame number & ".bmp" will be appended)
                 FileName   : string := "C:\Users\nogac\Desktop\studejszyn_sem6\UCiSW2\typing_tutor\image";
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
	
	-- Clock period definitions
   constant CLK_period : time := 20 ns;

BEGIN

   UUT: typing_tutor PORT MAP(
		START => START, 
		Clk_50MHz => Clk_50MHz, 
		STOP => STOP,
		FR_DO => FR_DO,
		FR_Rdy => FR_Rdy,
		FR_Pop => FR_Pop,
		VGA_VS => VGA_VS, 
		VGA_HS => VGA_HS, 
		VGA_G => VGA_G, 
		VGA_B => VGA_B, 
		VGA_R => VGA_R
   );
	
	------------------------------------------------------------------
   -- Instance of the VGA scanner
   ------------------------------------------------------------------
   I_Scanner: VGAscan
      generic map(
         pxBorder => 3,
         FileName => "C:\Users\nogac\Desktop\studejszyn_sem6\UCiSW2\typing_tutor\image" )    -- VGAtxt48x20 works in 800x600/72Hz mode => VGA generics can be left with their defaults
      port map(
         VS => VGA_VS,
         HS => VGA_HS,
         R => VGA_R,
         G => VGA_G,
         B => VGA_B );

	-- Clock process definitions
   CLK_process :process
   begin
		CLK_50MHz <= '0';
		wait for CLK_period/2;
		CLK_50MHz <= '1';
		wait for CLK_period/2;
   end process;
	
	-- Operation of the SDCFileReader (signals with FR_ prefix)
   SDC_FileReader: process
      type t_FileOfCharacter is file of character;
      file fTheFile : t_FileOfCharacter is in "C:\Users\nogac\Desktop\studejszyn_sem6\UCiSW2\typing_tutor\1.txt";
      variable byte : character;
   begin
      wait until rising_edge( Clk_50MHz ) and START= '1';
      
	-- FR_Busy <= '1';  -- w tej symulacji nie jest do niczego potrzebe
      
      while not endfile( fTheFile ) loop
        wait for Clk_Period * 3;    -- represents SDCard read delay
        read( fTheFile, byte );
        FR_DO <= std_logic_vector( to_unsigned( character'pos( byte ) , 8 ) );
        FR_Rdy <= '1';
        wait until rising_edge( Clk_50MHz ) and FR_Pop = '1';
        FR_Rdy <= '0';
      end loop;

	--FR_Busy <= '0';  -- w tej symulacji nie jest do niczego potrzebe
      wait;
   end process;
	
	

-- Podanie jednotaktowego implusu start
   tb : PROCESS
   BEGIN
		START <= '1';
      WAIT for CLK_period;
   END PROCESS;

END;
