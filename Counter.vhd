library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
use ieee.math_real.all;

-- Counter entity declaration
entity Counter is
		generic(n: POSITIVE := 10);
    Port (
        clk   : in  std_logic;  -- Clock input
		  enable : in STD_LOGIC;
        reset : in  std_logic;  -- Reset input
        count : out integer range 0 to n
    );
end Counter;

architecture rtl of Counter is

signal counter_i : integer;
  
begin

  count <= counter_i;
  
  COUNTER_PROC : process(clk)
  begin
    if rising_edge(clk) then
      if reset = '0' then
        counter_i <= 0;
        
      else
        if enable = '1' then
          counter_i <= counter_i + 1;
        end if;
        
      end if;
    end if;
  end process;

end ARCHITECTURE;
