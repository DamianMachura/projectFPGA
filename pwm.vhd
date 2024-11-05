library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.round;

-- Definicja modułu PWM
entity pwm is
  generic (
    clk_hz : real;            -- Częstotliwość zegara wejściowego (w Hz)
    pulse_hz : real;          -- Częstotliwość generowanego sygnału PWM
    min_pulse_us : real;      -- Minimalna szerokość impulsu w mikrosekundach
    max_pulse_us : real;      -- Maksymalna szerokość impulsu w mikrosekundach
    step_count : positive     -- Liczba kroków od pozycji minimalnej do maksymalnej
  );
  port (
    clk : in std_logic;       -- Wejście zegara
    rst : in std_logic;       -- Wejście resetu
    position : in integer range 0 to step_count - 1; -- Pozycja, od 0 do maksymalnej liczby kroków
    pwm : out std_logic       -- Wyjście sygnału PWM
  );
end pwm;

architecture rtl of pwm is

  -- Funkcja obliczająca liczbę cykli zegara dla określonego czasu w mikrosekundach
  function cycles_per_us (us_count : real) return integer is
  begin
    return integer(round(clk_hz / 1.0e6 * us_count));
  end function;

  -- Stałe dla minimalnej i maksymalnej liczby cykli zegara w zależności od szerokości impulsu
  constant min_count : integer := cycles_per_us(min_pulse_us);    -- Liczba cykli dla minimalnego impulsu
  constant max_count : integer := cycles_per_us(max_pulse_us);    -- Liczba cykli dla maksymalnego impulsu
  constant min_max_range_us : real := max_pulse_us - min_pulse_us; -- Zakres czasowy impulsu
  constant step_us : real := min_max_range_us / real(step_count - 1); -- Krok w mikrosekundach między pozycjami
  constant cycles_per_step : positive := cycles_per_us(step_us);  -- Liczba cykli zegara na krok pozycji

  -- Maksymalna wartość licznika dla określonej częstotliwości PWM
  constant counter_max : integer := integer(round(clk_hz / pulse_hz)) - 1;
  signal counter : integer range 0 to counter_max; -- Licznik sygnału PWM

  signal duty_cycle : integer range 0 to max_count; -- Liczba cykli zegara odpowiadająca wybranej szerokości impulsu

begin

  -- Proces licznika PWM
  COUNTER_PROC : process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        counter <= 0;  -- Reset licznika

      else
        if counter < counter_max then
          counter <= counter + 1;  -- Inkrementacja licznika
        else
          counter <= 0;  -- Reset licznika, gdy osiągnie maksimum
        end if;

      end if;
    end if;
  end process;

  -- Proces generujący sygnał PWM
  PWM_PROC : process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        pwm <= '0';  -- Reset sygnału PWM

      else
        pwm <= '0';  -- Domyślnie ustawienie PWM na niski stan

        if counter < duty_cycle then
          pwm <= '1';  -- Sygnał wysoki, jeśli licznik jest mniejszy od wartości duty_cycle
        end if;

      end if;
    end if;
  end process;

  -- Proces ustawiający wartość szerokości impulsu na podstawie pozycji
  DUTY_CYCLE_PROC : process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        duty_cycle <= min_count;  -- Ustawienie szerokości impulsu na minimalną pozycję

      else
        duty_cycle <= position * cycles_per_step + min_count; -- Obliczenie szerokości impulsu na podstawie pozycji
      end if;
    end if;
  end process;

end architecture;
