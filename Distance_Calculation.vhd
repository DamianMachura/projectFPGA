library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- Definicja modułu Distance_calculator
entity Distance_calculator is
	port(
		clk : in std_logic;                -- Wejście zegara
		Calculation_Reset : in std_logic;  -- Sygnał resetu obliczeń
		pulse : in std_logic;              -- Wejście impulsu z czujnika
		Distance : out STD_LOGIC_VECTOR(8 downto 0) -- Wyjście z wartością odległości
	);
end Distance_calculator;

architecture Behavioral of Distance_calculator is

-- Definicja komponentu Counter
component Counter is
	generic(
		n : POSITIVE := 10  -- Parametr dla zakresu licznika
	);
	port(
		clk   : in  std_logic;  -- Wejście zegara
		enable : in STD_LOGIC;  -- Sygnał włączający pracę licznika
      reset : in  std_logic;  -- Sygnał resetu licznika
      count : out STD_LOGIC_VECTOR( n-1 downto 0) -- Wyjście z aktualną wartością licznika
	);
end component;

component SoundSpeedROM is
    Port (
        clk : in STD_LOGIC;              -- sygnał zegarowy
        address : in integer range 0 to 50; -- adres 
        data_out : out STD_LOGIC_VECTOR(8 downto 0) -- dane wyjściowe 
    );
end component;

-- Sygnał wewnętrzny do przechowywania szerokości impulsu
signal Pulse_width : std_logic_vector(21 downto 0);
signal Sound_speed : STD_LOGIC_VECTOR(8 downto 0);
signal Temperature : integer range 0 to 50 := 20;
signal not_calculation_reset : std_logic;
begin
not_calculation_reset <= not Calculation_Reset;
Counter_pulse : Counter 
	generic map(22)                -- Zakres licznika ustawiony na 2^22
	port map(clk, pulse, not_calculation_reset, Pulse_width);
Sound_rom : SoundSpeedROM Port map (clk, Temperature, Sound_speed);

-- Proces obliczający odległość
Distance_calculator : process(pulse)
	
	-- Zmienne pomocnicze do obliczeń
	variable Result : integer;--std_logic_vector(8 downto 0);
	variable short_width : std_logic_vector(8 downto 0);
	variable Multiplier: std_logic_vector(17 downto 0);
	
begin
	
	-- Gdy zakończy się impuls 'pulse', wykonywane są obliczenia
	if (pulse = '0') then
		-- Obliczanie odległośc w cm na podstawie czasu trwania impulsu
	   short_width := Pulse_width(21 downto 13);
		Multiplier :=  short_width * Sound_speed;
		Result := to_integer(unsigned(Multiplier(16 downto 7)));
		
		-- Sprawdzenie zakresu odległości i ograniczenie maksymalnej wartości
		if (Result > 200) then --"111001010"
			Distance <= "000000000";          -- Przekroczenie zakresu
		else
			Distance <= STD_LOGIC_VECTOR(to_unsigned(Result,9)); -- Wynik konwersji do 9-bitowej liczby unsigned
		end if;
	end if;
end process;

end Behavioral;
