library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Definicja komponentu Servo
entity Servo is
  port (
    clk : in std_logic;         -- Wejście zegara
    reset : in std_logic;       -- Wejście sygnału resetu
    servo_pwm : out std_logic         -- Wyjście sygnału PWM
  );
end Servo;

architecture behavioral of Servo is
COMPONENT pwm is
  generic (
    clk_hz : real           -- Częstotliwość zegara wejściowego (w Hz)
  );
  port (
    clk : in std_logic;       -- Wejście zegara
    rst : in std_logic;       -- Wejście resetu
    position : in integer range 0 to 256; -- Pozycja, od 0 do maksymalnej liczby kroków
    pwm : out std_logic       -- Wyjście sygnału PWM
  );
end COMPONENT;

COMPONENT Counter is
		generic(n: POSITIVE := 10);
    Port (
        clk   : in  std_logic;  -- Clock input
		  enable : in STD_LOGIC;
        reset : in  std_logic;  -- Reset input
        count : out integer range 0 to n
    );
end COMPONENT;

COMPONENT sine_rom is
  port (
    clk : in std_logic;                      -- Wejście zegara
    addr : in unsigned(7 downto 0); -- Adres odczytu w pamięci ROM
    data : out unsigned(7 downto 0) -- Wartość sinusoidy wyjściowej
  );
end COMPONENT; 
  constant clk_hz : real := 50.0e6;        -- Częstotliwość zegara (50 MHz)
  signal cnt : unsigned(26 downto 0);  -- Sygnalizuje obecny stan licznika
  signal count : integer;                  -- Wartość licznika do użycia
  signal rst : std_logic;
  signal position : integer range 0 to 255;  -- Pozycja w zakresie od 0 do 255
  signal rom_addr : unsigned(7 downto 0);   -- Adres dla pamięci ROM
  signal rom_data : unsigned(7 downto 0);   -- Dane z pamięci ROM

begin

  -- Przypisanie pozycji na podstawie wartości `rom_data`
  position <= to_integer(rom_data);
  cnt <= to_unsigned(count, 27);  -- Konwersja liczby całkowitej na `unsigned`
  rom_addr <= cnt(cnt'left downto cnt'left - 7); -- Wyliczanie adresu do ROM

  -- Moduł PWM odpowiedzialny za generowanie sygnału
  SERVO : pwm
  generic map (
    clk_hz => clk_hz
	 )
  port map (
    clk => clk,
    rst => not reset,    -- Odwrócony sygnał resetu
    position => position,
    pwm => servo_pwm
  );

  -- Moduł licznika używany do inkrementacji `count` z określonym zakresem
  COUNTING : Counter
  generic map (
    2**27            -- Ustawia maksymalną wartość licznika
  )
  port map (
    clk => clk,
    reset => reset,
    enable => '1',         -- Licznik zawsze włączony
    count => count         -- Wartość licznika wyjściowego
  );

  -- Pamięć ROM przechowująca wartości sinusoidy, do generowania danych
  SINE : sine_rom
  port map (
    clk => clk,
    addr => rom_addr,
    data => rom_data
  );

end behavioral;
