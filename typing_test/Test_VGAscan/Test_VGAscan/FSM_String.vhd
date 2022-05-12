library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FSM_String is
    Port ( Clk     : in  STD_LOGIC;
           Reset   : in  STD_LOGIC;
           Busy_In : in  STD_LOGIC;
           Char_WE : out  STD_LOGIC;
           Char_DO : out  STD_LOGIC_VECTOR (7 downto 0));
end FSM_String;

architecture RTL of FSM_String is

  -- FSM
  type state_type is ( sReset, sBusyWait, sWE, sLoop );
  signal State, nextState : state_type; 

  -- String to print
  type STRINGZ is array ( NATURAL range <> ) of CHARACTER;
  constant nROMSize : POSITIVE := 16;  -- Power of 2 removes warning "Index value(s) does not match array range, simulation mismatch."
  constant romStr : STRINGZ( 0 to nROMSize - 1 ) := "Hello, world!" & NUL & NUL & NUL;

  -- Character index
  signal cntIdx : unsigned( 3 downto 0 ) := ( others => '0' );
  signal currentChar : unsigned(7 downto 0);

begin

  -- Character index
  process ( Clk )
  begin
    if rising_edge( Clk ) then
      if State = sReset then
        cntIdx <= ( others => '0' );
      elsif State = sWE then
        cntIdx <= cntIdx + 1;
      end if;
    end if;
  end process;
  
  -- Indexing the string
  process(cntIdx)
  begin
    currentChar <= to_unsigned( CHARACTER'Pos( romStr( to_integer( cntIdx ) ) ), 8 );
  end process;

  -- FSM
  process ( Clk )
  begin
    if rising_edge( Clk ) then
      if Reset = '1' then
        State <= sReset;
      else
        State <= nextState;
      end if;
    end if;
  end process;

  process( State, Busy_In, currentChar )
  begin
    nextState <= State;   -- default
    case State is

      when sReset =>
        nextState <= sBusyWait;

      when sBusyWait =>
        if Busy_In = '0' then
          nextState <= sWE;
        end if;

      when sWE =>   -- WE pulse
        nextState <= sLoop;

      when sLoop =>
        if currentChar /= 0 then
          nextState <= sBusyWait;
        end if;
      
    end case;
  end process;
  
  -- Outputs
  Char_WE <= '1' when State = sWE else '0';
  Char_DO <= STD_LOGIC_VECTOR( currentChar );

end RTL;

