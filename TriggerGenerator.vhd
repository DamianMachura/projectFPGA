library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

-- Definicja modułu Trigger_Generator
entity Trigger_Generator is
    Port (
        clk : in  std_logic;         -- Wejście zegara
		  --rst : in std_logic;          -- reset
        trigger : out std_logic      -- Wyjście sygnału TRIGGER
    );
end Trigger_Generator;

architecture Behavioral of Trigger_Generator is

  constant cnt_min : std_logic_vector(20 downto 0) := "000000000000111110100";-- 500 dla 0,00001     -- Liczba cykli dla minimalnego impulsu 5000 bo 5000/50e6 = 0.0001s

  -- Maksymalna wartość licznika dla określonej częstotliwości pwm
  signal count : STD_LOGIC_VECTOR(20 downto 0); -- Licznik sygnału PWM
  signal cnt_max : std_logic_vector(20 downto 0) := "100110001001011010000"; -- 0,025 sekundy

begin

  -- Proces licznika Trig_generator
  Trigger_proc : process(clk)
  begin
      if rising_edge(clk) then
      if count < cnt_max then
          count <= count + 1;
			 else
          count <= (others => '0');
			 end if;

      end if;
  end process;
trigger <= '1' when (count < cnt_min) else '0';
end behavioral;
