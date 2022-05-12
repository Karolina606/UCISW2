LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

(...)

   -- Operation of the SDCFileReader (signals with FR_ prefix)
   process

      type t_FileOfCharacter is file of character;
      file fTheFile : t_FileOfCharacter is in "D:/1.wav";
      variable byte : character;

   begin
      wait until rising_edge( Clk ) and FR_Start = '1';
      
      FR_Busy <= '1';
      
      while not endfile( fTheFile ) loop
        wait for Clk_Period * 3;    -- represents SDCard read delay
        read( fTheFile, byte );
        FR_DO <= std_logic_vector( to_unsigned( character'pos( byte ) , 8 ) );
        FR_Rdy <= '1';
        wait until rising_edge( Clk ) and FR_Pop = '1';
        FR_Rdy <= '0';
      end loop;

      FR_Busy <= '0';
      wait; -- forever
   end process;
