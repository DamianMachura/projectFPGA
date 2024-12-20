library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Counter entity declaration
entity clock_divider is
		generic(n: POSITIVE := 10);
    Port (
        clk   : in  std_logic;  -- Clock input
		  enable : in STD_LOGIC;
        reset : in  std_logic;  -- Reset input
        data_clk : out std_logic_vector(15 downto 0)
    );
end clock_divider;

-- clock_divider architecture definition
architecture Behavioral of clock_divider is

begin
    process(clk, reset)
	 variable count: std_logic_vector(15 downto 0):=(others=>'0');
    begin
        if reset = '1' then
            -- Reset the counter to zero when reset is asserted
            count := (others => '0');
        elsif enable = '1' and rising_edge(clk) and clk = '1' then
            count := count+ 1;
        end if;
		  data_clk <= count;
    end process;
    
end Behavioral;