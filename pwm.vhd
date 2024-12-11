library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- Definicja modułu PWM
entity pwm is
  port (
    clk : in std_logic;       -- Wejście zegara
    rst : in std_logic;       -- Wejście resetu
    position : in std_logic_vector(7 downto 0); -- Pozycja, od 0 do maksymalnej liczby kroków
	 step_done: out std_logic;
    pwm : out std_logic       -- Wyjście sygnału PWM
  );
end pwm;

architecture behavioral of pwm is
		
  -- Funkcja obliczająca liczbę cykli zegara dla określonego czasu w mikrosekundach


  -- Stałe dla minimalnej i maksymalnej liczby cykli zegara w zależności od szerokości impulsu
  constant cnt_min : std_logic_vector(16 downto 0) := "00100111000100000";    -- Liczba cykli dla minimalnego impulsu 20000 bo (400 *50)/50e6 = 0.0004s
  constant cycles_per_step : std_logic_vector(8 downto 0) := "110010000";  -- Liczba cykli zegara na krok pozycji ((max_count - min_count)/255)*50 = 400

  -- Maksymalna wartość licznika dla określonej częstotliwości PWM
  signal count : STD_LOGIC_VECTOR(20 downto 0); -- Licznik sygnału PWM
  signal cnt_max : std_logic_vector(20 downto 0) := "100110001001011010000"; -- 0,025 s 1 000 000
  signal duty_cycle : STD_LOGIC_VECTOR(16 downto 0); -- Liczba cykli zegara odpowiadająca wybranej szerokości impulsu

begin

  -- Proces licznika PWM
  COUNTER_PROC : process(clk)
  begin
    if rising_edge(clk) then
      if rst = '0' then
        count <= (others =>'0');

      else
        if count < cnt_max then
          count <= count + 1;
			 step_done <= '0';
        else
		    step_done <= '1';
          count <= (others => '0');
        end if;

      end if;
    end if;
  end process;

  PWM_PROC : process(clk)
  begin
    if rising_edge(clk) then
      if rst = '0' then
        pwm <= '0';  -- Reset sygnału PWM

      else
        pwm <= '0';  -- Domyślnie ustawienie PWM na niski stan

        if count < duty_cycle then
          pwm <= '1';  -- Sygnał wysoki, jeśli licznik jest mniejszy od wartości duty_cycle
        end if;

      end if;
    end if;
  end process;

  -- Proces ustawiający wartość szerokości impulsu na podstawie pozycji
  DUTY_CYCLE_PROC : process(clk)
  variable Multiplier : std_logic_vector(16 downto 0);
  begin
  
    if rising_edge(clk) then
      if rst = '0' then
        duty_cycle <= cnt_min;  -- Ustawienie szerokości impulsu na minimalną pozycję

      else
		  Multiplier := position * cycles_per_step + cnt_min;
        duty_cycle <= Multiplier; -- Obliczenie szerokości impulsu na podstawie pozycji
      end if;
    end if;
  end process;

end behavioral;
