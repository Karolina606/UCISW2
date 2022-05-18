library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FSM_SendByte is
    port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           DI : in  STD_LOGIC_VECTOR (7 downto 0);
           DIRdy : in  STD_LOGIC;
           TxBusy : in  STD_LOGIC;
           DO : out  STD_LOGIC_VECTOR (7 downto 0);
           DORdy : out  STD_LOGIC;
           Busy : out  STD_LOGIC  );
end FSM_SendByte;

architecture RTL of FSM_SendByte is

  type state_type is ( sReset, sReady, sWaitH, sSendH, sWaitL, sSendL );
  signal State, NextState : state_type;
  signal regDI : STD_LOGIC_VECTOR (7 downto 0);
  signal HalfByte : STD_LOGIC_VECTOR (3 downto 0);

begin

  -- Input register (with CE)
  regDI <= DI when rising_edge( Clk ) and State = sReady;

  -- HalfByte selection
  HalfByte <= regDI( 7 downto 4 ) when State = sSendH or State = sWaitL
              else regDI( 3 downto 0 );

  -- State register (with asynchronous reset) = process1
  process ( Clk, Reset )
  begin
    if Reset = '1' then
      State <= sReset;
    elsif rising_edge( Clk ) then
      State <= NextState;
    end if;
  end process;

  -- Next state decoding = process2
  process ( State, DIRdy, TxBusy )
  begin
    
    NextState <= State; -- default

    case State is
      when sReset =>
        NextState <= sReady;

      when sReady =>
        if DIRdy = '1' then
          NextState <= sWaitH;
        end if;

      when sWaitH =>
        if TxBusy = '0' then
          NextState <= sSendH;
        end if;

      when sSendH =>
        NextState <= sWaitL;
      
      when sWaitL =>
        if TxBusy = '0' then
          NextState <=
                    sSendL;
        end if;

      when sSendL =>
        NextState <= sReady;

    end case;
  end process;

  -- Outputs = process3
  with regDI select         -- 0-15 => ASCII '0'-'F'
    DO <= X"41" when X"1C", --A
			X"42" when X"32", --B
			X"43" when X"21", --C
			X"44" when X"23", --D
			X"45" when X"24", --E
			X"46" when X"2B", --F
			X"47" when X"34", --G
			X"48" when X"33", --H
			X"49" when X"43", --I
			X"4A" when X"3B", --J
			X"4B" when X"42", --K
			X"4C" when X"4B", --L
			X"4D" when X"3A", --M
			X"4E" when X"31", --N
			X"4F" when X"44", --O
			X"50" when X"4D", --P
			X"51" when X"15", --Q
			X"52" when X"2D", --R
			X"53" when X"1B", --S
			X"54" when X"2C", --T
			X"55" when X"3C", --U
			X"56" when X"2A", --V
			X"57" when X"1D", --W
			X"58" when X"22", --X
			X"59" when X"35", --Y
			X"5A" when X"1A", --Z
			X"20" when X"29", --SPACE
			X"78" when others; 
			 
			 -- TODO !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!DONE!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  DORdy <= '1' when State = sSendH
           else '0';
  Busy  <= '1' when State /= sReady
           else '0';

end RTL;
