library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Definicja modułu głównego Range_Sensor, który służy do pomiaru odległości
Entity Range_Sensor is
     Port (
           fpgaclk : in  STD_LOGIC;          -- Wejście zegara FPGA
           pulse : in  STD_LOGIC;            -- Wejście impulsu ECHO od czujnika ultradźwiękowego
           trigger_out : out  STD_LOGIC;     -- Wyjście sygnału TRIGGER do czujnika
           reset: in STD_LOGIC;              -- Wejście sygnału reset
           distance_out: out Unsigned(8 downto 0) -- Wyjście wynikowe z odległością
           );
end Range_Sensor;

architecture Behavioral of Range_Sensor is

-- Definicja komponentu Distance_calculator, który oblicza odległość
COMPONENT Distance_calculator
	port(
		clk: in std_logic;                     -- Wejście zegara
		Calculation_Reset: in std_logic;       -- Sygnał resetu obliczeń
		pulse :in std_logic;                   -- Wejście sygnału ECHO z czujnika
		Distance: out Unsigned(8 downto 0)     -- Wyjście z obliczoną odległością
	);
END COMPONENT;

-- Definicja komponentu Trigger_Generator, który generuje sygnał TRIGGER
COMPONENT Trigger_Generator
	PORT(
		clk : IN std_logic;                  -- Wejście zegara
		echo : IN std_logic;                 -- Wejście sygnału ECHO do detekcji impulsu
		trigger : OUT std_logic              -- Wyjście sygnału TRIGGER
	);
END COMPONENT;

-- Definicja sygnału do połączenia wewnętrznego
signal trig_out : std_logic;

begin

-- Instancja komponentu Trigger_Generator
-- Ten komponent generuje sygnał TRIGGER do czujnika ultradźwiękowego
trig_generator: Trigger_Generator PORT MAP(
		clk => fpgaclk,            -- Podłączenie zegara FPGA
		echo => pulse,             -- Podłączenie sygnału ECHO z czujnika
		trigger => trig_out        -- Wyjście sygnału TRIGGER do czujnika
	);

-- Instancja komponentu Distance_calculator
-- Ten komponent mierzy szerokość impulsu ECHO, aby obliczyć odległość
Pulse_width: Distance_calculator PORT MAP(
		clk => fpgaclk,                    -- Podłączenie zegara FPGA
		calculation_reset => trig_out,     -- Sygnał resetu oparty na sygnale TRIGGER
		pulse => pulse,                    -- Podłączenie sygnału ECHO z czujnika
		Distance => distance_out           -- Wyjście z obliczoną odległością
	);

-- Przekazanie sygnału TRIGGER na wyjście głównego modułu
trigger_out <= trig_out;

end Behavioral;