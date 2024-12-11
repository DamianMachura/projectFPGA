library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity sine_rom is
  port (
    clk : in std_logic;                      -- Wejście zegara
    addr : in unsigned(7 downto 0); -- Adres odczytu w pamięci ROM
    data : out unsigned(7 downto 0) -- Wartość sinusoidy wyjściowej
  );
end sine_rom; 

architecture behavioral of sine_rom is
  
  subtype addr_range is integer range 0 to 2**8 - 1;  -- Zakres adresów pamięci
  type rom_type is array (addr_range) of unsigned(7 downto 0); -- Typ ROM, przechowujący wartości sinusoidy

  -- Funkcja inicjalizująca ROM, wypełniając go wartościami sinusoidy
  function init_rom return rom_type is
    variable rom_v : rom_type;               -- Tymczasowy ROM do zapisania wartości sinusoidy
    variable angle : real;                   -- Zmienna przechowująca aktualny kąt (w radianach)
    variable sin_scaled : real;              -- Zmienna przechowująca przeskalowaną wartość sinusoidy
  begin

    -- Pętla wypełniająca ROM przeskalowanymi wartościami sinusoidy
    for i in addr_range loop
      angle := real(i) * ((2.0 * MATH_PI) / 2.0**8);  -- Wyliczanie kąta na podstawie adresu
      sin_scaled := (1.0 + sin(angle)) * (2.0**8 - 1.0) / 2.0; -- Skalowanie wyniku sinusoidy
      rom_v(i) := to_unsigned(integer(round(sin_scaled)), 8); -- Przekształcenie wyniku do formatu unsigned
      
    end loop;
    
    return rom_v;                            -- Zwracanie przekształconych wartości sinusoidy
  end init_rom;

  constant rom : rom_type := init_rom;       -- Definicja ROM jako stałej wypełnionej wartościami sinusoidy

begin

  -- Proces odczytu wartości z ROM na rosnące zbocze sygnału zegara
  ROM_PROC : process(clk)
  begin
    if rising_edge(clk) then
      data <= rom(to_integer(unsigned(addr)));  -- Odczytanie wartości sinusoidy na podstawie adresu
    end if;
  end process;

end behavioral;
