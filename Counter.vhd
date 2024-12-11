library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
use ieee.math_real.all;

-- Counter entity declaration
entity Counter is
		generic (
			n       : positive := 10                        -- Liczba bitów (parametr pozytywny)
);

    Port (
        clk   : in  std_logic;  -- Clock input
		  enable : in STD_LOGIC;
        reset : in  std_logic;  -- Reset input
        count : out STD_LOGIC_VECTOR( n-1 downto 0)
    );
end Counter;

architecture behavioral of Counter is

signal counter_i : std_logic_vector(n-1 downto 0);
  
begin

  count <= counter_i;
  
  COUNTER_PROC : process(clk)
  begin
     if (reset = '0') then
            -- Reset the counter to zero when reset is asserted
            counter_i <= (others => '0');
        elsif (rising_edge(clk) and clk = '1') then
			if (enable = '1') then
            counter_i <= counter_i + 1;
        end if;
		  end if;
  end process;

end behavioral;
