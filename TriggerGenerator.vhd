library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Definicja modułu Trigger_Generator
entity Trigger_Generator is
    Port (
        clk : in  std_logic;         -- Wejście zegara
        echo : in std_logic;         -- Wejście sygnału ECHO
        trigger : out std_logic      -- Wyjście sygnału TRIGGER
    );
end Trigger_Generator;

architecture Behavioral of Trigger_Generator is

-- Definicja komponentu Counter
component Counter is
	generic(n: POSITIVE := 10);  -- Parametr do ustawienia zakresu licznika
    Port (
        clk : in  std_logic;        -- Wejście zegara
        enable : in STD_LOGIC;      -- Wejście sygnału umożliwiającego pracę licznika
        reset : in  std_logic;      -- Wejście sygnału resetu licznika
        count : out integer range 0 to n -- Wyjście z aktualną wartością licznika
    );
end component;

-- Sygnały wewnętrzne
signal resetCounter : std_logic;     -- Sygnał resetu dla licznika
signal outputCounter : integer;      -- Wartość licznika

begin

-- Instancja komponentu Counter
-- Licznik odmierza czas 250 ms oraz dodatkowe 100 μs (250.1 ms)
trigg : Counter 
    generic map(2**24)                    -- Zakres licznika ustawiony na 2^24
    port map(clk, '1', resetCounter, outputCounter);  -- Podłączenia sygnałów

process(clk)

    -- Definicje stałych czasowych
    constant ms250 : integer := 12500000;             -- 250 ms przy zegarze 50 MHz
    constant ms250And100us : integer := 12505000;     -- 250.1 ms przy zegarze 50 MHz

begin
    -- Proces generujący sygnał TRIGGER w określonym przedziale czasowym
    if(outputCounter > ms250 and outputCounter < ms250And100us) then
        trigger <= '1';      -- Aktywacja sygnału TRIGGER przez 100 μs
    else
        trigger <= '0';      -- Sygnał TRIGGER w stanie niskim poza wyznaczonym czasem
    end if;

    -- Proces resetowania licznika
    if(outputCounter = ms250And100us or outputCounter > ms250And100us or outputCounter < 0) then
        resetCounter <= '0'; -- Zatrzymanie licznika, gdy przekroczy ustawiony czas
    else
        resetCounter <= '1'; -- Włączony licznik, dopóki nie osiągnie limitu czasowego
    end if; 

end process;

end Behavioral;
