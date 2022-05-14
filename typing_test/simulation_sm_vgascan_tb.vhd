-- Vhdl test bench created from schematic C:\Users\nogac\Desktop\studejszyn_sem6\UCiSW2\typing_tutor\typing_test\simulation_sm_vgascan.sch - Thu May 12 20:00:36 2022
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
ENTITY simulation_sm_vgascan_simulation_sm_vgascan_sch_tb IS
END simulation_sm_vgascan_simulation_sm_vgascan_sch_tb;
ARCHITECTURE behavioral OF 
      simulation_sm_vgascan_simulation_sm_vgascan_sch_tb IS 

   COMPONENT simulation_sm_vgascan
   PORT( VGA_VS	:	OUT	STD_LOGIC; 
          VGA_HS	:	OUT	STD_LOGIC; 
          VGA_G	:	OUT	STD_LOGIC; 
          VGA_B	:	OUT	STD_LOGIC; 
          VGA_R	:	OUT	STD_LOGIC; 
          reset	:	IN	STD_LOGIC; 
          Clk_50MHz	:	IN	STD_LOGIC; 
          SD_Busy	:	IN	STD_LOGIC; 
          SD_DO_Rdy	:	IN	STD_LOGIC; 
          PS2_DO_Rdy	:	IN	STD_LOGIC; 
          SD_DO	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          PS2_DO	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          SD_Pop	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL VGA_VS	:	STD_LOGIC;
   SIGNAL VGA_HS	:	STD_LOGIC;
   SIGNAL VGA_G	:	STD_LOGIC;
   SIGNAL VGA_B	:	STD_LOGIC;
   SIGNAL VGA_R	:	STD_LOGIC;
   SIGNAL reset	:	STD_LOGIC;
   SIGNAL Clk_50MHz	:	STD_LOGIC;
   SIGNAL SD_Busy	:	STD_LOGIC;
   SIGNAL SD_DO_Rdy	:	STD_LOGIC;
   SIGNAL PS2_DO_Rdy	:	STD_LOGIC;
   SIGNAL SD_DO	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL PS2_DO	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL SD_Pop	:	STD_LOGIC;
	
	
	-- The VGAscan component
   COMPONENT VGAscan
       Generic ( -- Output file (frame number & ".bmp" will be appended)
                 FileName   : string := "C:\Users\nogac\Desktop\studejszyn_sem6\UCiSW\typing_tutor\Frame";
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
   constant Clk_period : time := 10 ns;
	
	signal ifSDReadingEnded: std_logic := '0';
	
	
	-- Kbd
	type charArray is array (24 downto 0) of STD_LOGIC_VECTOR( 7 downto 0 );
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
	X"6b", X"6f", X"74", X"61",
	X"0D", X"0A", X"0A");

BEGIN

   UUT: simulation_sm_vgascan PORT MAP(
		VGA_VS => VGA_VS, 
		VGA_HS => VGA_HS, 
		VGA_G => VGA_G, 
		VGA_B => VGA_B, 
		VGA_R => VGA_R, 
		reset => reset, 
		Clk_50MHz => Clk_50MHz, 
		SD_Busy => SD_Busy, 
		SD_DO_Rdy => SD_DO_Rdy, 
		PS2_DO_Rdy => PS2_DO_Rdy, 
		SD_DO => SD_DO, 
		PS2_DO => PS2_DO, 
		SD_Pop => SD_Pop
   );
	
	------------------------------------------------------------------
   -- Instance of the VGA scanner
   ------------------------------------------------------------------
   I_Scanner: VGAscan
      generic map(
         pxBorder => 3,
         FileName => "C:\Users\nogac\Desktop\studejszyn_sem6\UCiSW2\typing_tutor\Frame" )    -- VGAtxt48x20 works in 800x600/72Hz mode => VGA generics can be left with their defaults
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

	-- Proces symulacyjny dla czytania z karty
   process

      type t_FileOfCharacter is file of character;
      file fTheFile : t_FileOfCharacter is in "C:\Users\nogac\Desktop\studejszyn_sem6\UCiSW2\typing_tutor\1.txt";
      variable byte : character;

		begin
			wait until rising_edge( Clk_50MHz );
			
			SD_Busy <= '1';
			
			while not endfile( fTheFile ) loop
			  wait for Clk_Period * 3;    -- represents SDCard read delay
			  read( fTheFile, byte );
			  SD_DO <= std_logic_vector( to_unsigned( character'pos( byte ) , 8 ) );
			  SD_DO_Rdy <= '1';
			  wait until rising_edge( Clk_50MHz ) and SD_Pop = '1';
			  SD_DO_Rdy <= '0';
			end loop;

			SD_Busy <= '0';
			ifSDReadingEnded <= '1';
   end process;
	
	-- Proces dla symulacji klawiatury
   kbd_process: process
   begin	
		wait for 0.2 * CLK_period;
		if ifSDReadingEnded = '1' then
			for i in 24 downto 0 loop
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
