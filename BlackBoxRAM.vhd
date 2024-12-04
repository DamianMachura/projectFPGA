library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BlackBoxRAM is
    Port (
        clk : in STD_LOGIC;                  -- zegar główny
        we : in STD_LOGIC;                   -- sygnał zapisu (write enable)
        addr : in STD_LOGIC_VECTOR(7 downto 0); -- adres (zakładamy 256 komórek pamięci)
        data_in : in STD_LOGIC_VECTOR(14 downto 0); -- dane wejściowe (15-bitowe słowo)
        data_out : out STD_LOGIC_VECTOR(14 downto 0) -- dane wyjściowe (odczyt z pamięci)
    );
end BlackBoxRAM;

architecture BlackBox of BlackBoxRAM is
begin
    -- Czarna skrzynka – brak implementacji
end BlackBox;