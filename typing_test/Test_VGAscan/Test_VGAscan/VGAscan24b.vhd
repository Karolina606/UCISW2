----------------------------------------------------------------------------------
-- VGAscan: saving simulation results of a VGA output in BMP format.
-- An entity for instantiation in a testbench file; full color (24bpp) version
-- J.Sugier, 2021
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VGAscan24b is
    Generic (
         -- VGA mode params (defaults are for 800x600/72Hz)
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
         pxBorder   : integer := 2;           -- bitmap border around the visible area
         FileName   : string := "D:/Frame"    -- output file name (frame number & ".bmp" will be appended)
         );
    Port ( VS, HS  : in  STD_LOGIC;
         R, G, B : in  STD_LOGIC_VECTOR (7 downto 0)
         );
end VGAscan24b;


architecture Simulational of VGAscan24b is

-- synthesis translate_off
-- For simulation only
   -- Constants
   constant scanWidth    : integer := pxWidth  + 2 * pxBorder;
   constant scanHeight   : integer := pxHeight + 2 * pxBorder;
   constant PixelTime    : DELAY_LENGTH := 1 us / mhzPixelClk;
   
   -- The arrays for scanned RGB values
   type tArrayOfBytes is array (natural range <>) of natural range 0 to 255;
   type tArrayOfScanlines is array (natural range <>) of tArrayOfBytes(0 to 3 * scanWidth - 1); -- each pixel in scanline = 3 elements (RGB order)
   shared variable vectBuffer : tArrayOfBytes(0 to pxTotal * 3 - 1);    -- the line buffer; size for all pixels in the VGA line (max)
   shared variable vectLines : tArrayOfScanlines(0 to lnTotal - 1);     -- the frame buffer; size for all lines in the VGA frame (max)

   -- Operational variables for array navigation
   shared variable cntLineNo, cntPixelNo : natural := 0;
   
   -- BMP file params
   type t_ByteArray is array (Natural range <>) of unsigned(7 downto 0);
   constant LineBytes   : integer := scanWidth * 3;                  -- 24bpp => 3 bytes per pixel
   constant PaddingBytes: integer := (4 - (LineBytes mod 4)) mod 4;  -- padding the line bytes to the 4B boundary
   constant FileSize    : unsigned(31 downto 0) := to_unsigned(54 + (LineBytes + PaddingBytes) * scanHeight, 32);
   constant BmpWidth    : unsigned(31 downto 0) := to_unsigned(scanWidth, 32);
   constant BmpHeight   : unsigned(31 downto 0) := to_unsigned(scanHeight, 32);
   constant DataSize    : unsigned(31 downto 0) := to_unsigned((LineBytes + PaddingBytes) * scanHeight, 32);
   
   constant BMPFileHeader : t_ByteArray( 1 to 54 ) := (
         x"42", x"4D", FileSize(7 downto 0), FileSize(15 downto 8), FileSize(23 downto 16), FileSize(31 downto 24), 
         x"00", x"00", x"00", x"00", x"36", x"00", x"00", x"00", x"28", x"00", x"00", x"00",
         BmpWidth(7 downto 0),  BmpWidth(15 downto 8),  BmpWidth(23 downto 16),  BmpWidth(31 downto 24),
         BmpHeight(7 downto 0), BmpHeight(15 downto 8), BmpHeight(23 downto 16), BmpHeight(31 downto 24),
         x"01", x"00", x"18", x"00", x"00", x"00", x"00", x"00",
         DataSize(7 downto 0), DataSize(15 downto 8), DataSize(23 downto 16), DataSize(31 downto 24),
         x"23", x"2E", x"00", x"00", x"23", x"2E", x"00", x"00",  -- H & V resolution; 300dpi = 11811 px/meter (2E23)
         x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00" );
-- synthesis translate_on

begin

-- synthesis translate_off
   -------------------------------------------------------------------------------
   -- Process 1: Scanning the pixels into the line buffer
   -------------------------------------------------------------------------------
   process
   begin
      loop
         if HS = activeHS then
            wait until HS /= activeHS;    -- do not scan inside HSync
            wait for PixelTime / 2;       -- resync with the middle of the pixel window after HSync
         end if;
         
         vectBuffer( cntPixelNo * 3 + 0 ) := to_integer(unsigned(R));  -- R
         vectBuffer( cntPixelNo * 3 + 1 ) := to_integer(unsigned(G));  -- G
         vectBuffer( cntPixelNo * 3 + 2 ) := to_integer(unsigned(B));  -- B
         
         cntPixelNo := cntPixelNo + 1;
         wait for PixelTime;
      end loop;
   end process;
   
   -------------------------------------------------------------------------------
   -- Process 2: Copying the line buffer to the frame buffer on HSync start
   -------------------------------------------------------------------------------
   process
      variable pxFirst, pxLast, idxSrc, idxDest : integer;
   begin
      loop
         wait until HS = activeHS;              -- start of HSync
         
         -- Copying the line buffer if not during the VSync
         if VS /= activeVS then
            pxLast  := cntPixelNo - 1 - pxHSfrontP + pxBorder;-- range of the buffer with visible pixels
            pxFirst := pxLast - scanWidth + 1;

            if pxLast >= 0 then                    -- copying the line if any visible pixels have been scanned
               for idxSrc in pxFirst to pxLast loop
                  idxDest := idxSrc - pxFirst;
                  if idxSrc >= 0 then
                     vectLines( cntLineNo )( idxDest * 3 + 0 ) := vectBuffer( idxSrc * 3 + 0 );
                     vectLines( cntLineNo )( idxDest * 3 + 1 ) := vectBuffer( idxSrc * 3 + 1 );
                     vectLines( cntLineNo )( idxDest * 3 + 2 ) := vectBuffer( idxSrc * 3 + 2 );
                  else
                     vectLines( cntLineNo )( idxDest * 3 + 0 ) := 0; -- pixel not scanned, write black
                     vectLines( cntLineNo )( idxDest * 3 + 1 ) := 0;
                     vectLines( cntLineNo )( idxDest * 3 + 2 ) := 0;
                  end if;
               end loop;
               
               cntLineNo := cntLineNo + 1;
            end if;
         end if;
         
         cntPixelNo := 0;
      end loop;
   end process;

   -------------------------------------------------------------------------------
   -- Process 3: Saving the frame buffer to the BMP file on VSync start
   -------------------------------------------------------------------------------
   process
      variable lnFirst, lnLast, cntFrameNo : integer := 0;
      type t_file is file of character;
      file fBMP : t_file;
   begin
      loop
         wait until VS = activeVS;              -- wait for VSync start
         
         if HS'event and HS = activeHS then     -- if HSync starts in the same cycle as VSync
            cntLineNo := cntLineNo + 1;         -- count the curent line in (will not be saved anyway)
         end if;
         
         lnLast := cntLineNo - 1 - lnVSfrontP + pxBorder; -- range of the vectLines array with the scanned lines 
         lnFirst := lnLast - scanHeight + 1;

         if lnLast >= 0 then                    -- save the frame if any visible lines have been scanned
            file_open(fBMP, FileName & integer'image(cntFrameNo) & ".bmp", WRITE_MODE);
            
            for i in BMPFileHeader'range loop   -- write BMP header
               write(fBMP, character'val( to_integer( BMPFileHeader(i) ) ));
            end loop;
            
            for y in lnLast downto lnFirst loop    -- write the lines (bottom up)
               for x in 0 to scanWidth - 1 loop    -- a) scanned pixels
                  if y >= 0 then
                     write(fBMP, character'val( vectLines(y)(x * 3 + 2) ) );   -- B
                     write(fBMP, character'val( vectLines(y)(x * 3 + 1) ) );   -- G
                     write(fBMP, character'val( vectLines(y)(x * 3 + 0) ) );   -- R
                  else
                     write(fBMP, character'val( 0 )); -- black pixels for line not scanned
                     write(fBMP, character'val( 0 ));
                     write(fBMP, character'val( 0 ));
                  end if;
               end loop;
               if PaddingBytes > 0 then            -- b) padding to the 4B boundary
                  for i in 1 to PaddingBytes loop
                     write(fBMP, character'val( 0 ));
                  end loop;
               end if;
            end loop;
            
            file_close(fBMP);
            cntFrameNo := cntFrameNo + 1;
         end if;
         
         cntLineNo := 0;
      end loop;
   end process;
-- synthesis translate_on

end Simulational;
