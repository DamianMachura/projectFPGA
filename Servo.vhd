library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Definicja jednostki Servo
entity Servo is
  port (
    clk : in std_logic;         -- Wejście zegara
    reset : in std_logic;       -- Wejście sygnału resetu
    pwm : out std_logic         -- Wyjście sygnału PWM
  );
end Servo;

architecture str of Servo is

  -- Parametry stałe
  constant clk_hz : real := 50.0e6;        -- Częstotliwość zegara (50 MHz)
  constant pulse_hz : real := 50.0;        -- Częstotliwość sygnału PWM (50 Hz)
  constant min_pulse_us : real := 500.0;   -- Minimalna szerokość impulsu (500 µs)
  constant max_pulse_us : real := 2500.0;  -- Maksymalna szerokość impulsu (2500 µs)
  constant step_bits : positive := 8;      -- Liczba bitów do adresowania kroków
  constant step_count : positive := 2**step_bits; -- Liczba kroków (256)

  -- Parametry dla sterowania serwomechanizmem
  constant cnt_range : integer := 27;      -- Zakres licznika (27 bitów)
  signal cnt : unsigned(cnt_range - 1 downto 0);  -- Sygnalizuje obecny stan licznika
  signal count : integer;                  -- Wartość licznika do użycia

  -- Sygnały pomocnicze
  signal rst : std_logic;
  signal position : integer range 0 to step_count - 1;  -- Pozycja w zakresie od 0 do 255
  signal rom_addr : unsigned(step_bits - 1 downto 0);   -- Adres dla pamięci ROM
  signal rom_data : unsigned(step_bits - 1 downto 0);   -- Dane z pamięci ROM

begin

  -- Przypisanie pozycji na podstawie wartości `rom_data`
  position <= to_integer(rom_data);
  cnt <= to_unsigned(count, cnt_range);  -- Konwersja liczby całkowitej na `unsigned`
  rom_addr <= cnt(cnt'left downto cnt'left - step_bits + 1); -- Wyliczanie adresu do ROM

  -- Moduł PWM odpowiedzialny za generowanie sygnału
  SERVO : entity work.pwm(rtl)
  generic map (
    clk_hz => clk_hz,
    pulse_hz => pulse_hz,
    min_pulse_us => min_pulse_us,
    max_pulse_us => max_pulse_us,
    step_count => step_count
  )
  port map (
    clk => clk,
    rst => not reset,    -- Odwrócony sygnał resetu
    position => position,
    pwm => pwm
  );

  -- Moduł licznika używany do inkrementacji `count` z określonym zakresem
  COUNTER : entity work.Counter(rtl)
  generic map (
    2**cnt_range            -- Ustawia maksymalną wartość licznika
  )
  port map (
    clk => clk,
    reset => reset,
    enable => '1',         -- Licznik zawsze włączony
    count => count         -- Wartość licznika wyjściowego
  );

  -- Pamięć ROM przechowująca wartości sinusoidy, do generowania danych
  SINE_ROM : entity work.sine_rom(rtl)
  generic map (
    data_bits => step_bits,   -- Liczba bitów danych w pamięci
    addr_bits => step_bits    -- Liczba bitów adresu
  )
  port map (
    clk => clk,
    addr => rom_addr,
    data => rom_data
  );

end architecture;
