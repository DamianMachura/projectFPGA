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
		Distance : out Unsigned(8 downto 0) -- Wyjście z wartością odległości
	);
end Distance_calculator;

architecture Behavioral of Distance_calculator is

-- Definicja komponentu Counter
component Counter is
	generic(
		n : POSITIVE := 10  -- Parametr dla zakresu licznika
	);
	port(
		clk : in std_logic;              -- Wejście zegara
		enable : in std_logic;           -- Sygnał włączający pracę licznika
		reset : in std_logic;            -- Sygnał resetu licznika
		count : out integer range 0 to n -- Wyjście z aktualną wartością licznika
	);
end component;

-- Sygnał wewnętrzny do przechowywania szerokości impulsu
signal Pulse_width : integer range 0 to 2**22;

begin

-- Instancja komponentu Counter
-- Licznik mierzy czas trwania impulsu 'pulse' otrzymanego z czujnika
Counter_pulse : Counter 
	generic map(2**22)                -- Zakres licznika ustawiony na 2^22
	port map(clk, pulse, not Calculation_Reset, Pulse_width); 

-- Proces obliczający odległość
Distance_calculator : process(pulse)
	
	-- Zmienne pomocnicze do obliczeń
	variable Result : integer range 0 to 1000;
	variable Multiplier : integer;

begin
	-- Gdy zakończy się impuls 'pulse', wykonywane są obliczenia
	if (pulse = '0') then
		-- Obliczanie odległości w cm na podstawie czasu trwania impulsu
		Result := (Pulse_width / 50) / 58;
		
		-- Sprawdzenie zakresu odległości i ograniczenie maksymalnej wartości
		if (Result > 458) then
			Distance <= "111111111";          -- Przekroczenie zakresu
		else
			Distance <= to_unsigned(Result, 9); -- Wynik konwersji do 9-bitowej liczby unsigned
		end if;
	end if;
end process;

end Behavioral;
