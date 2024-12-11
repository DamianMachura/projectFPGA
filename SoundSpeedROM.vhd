library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SoundSpeedROM is
    Port (
        clk : in STD_LOGIC;              -- sygnał zegarowy
        address : in integer range 0 to 50; -- adres 
        data_out : out STD_LOGIC_VECTOR(8 downto 0) -- dane wyjściowe 
    );
end SoundSpeedROM;

architecture Behavioral of SoundSpeedROM is

    -- ROM: stosunek prędkości dźwięku razy 100 ( wynik w sekundach) podzielony przez zegar i potem całość przez 8 ( przesuniecie o 3 bity w prawo)
    type ROM_Array is array (0 to 10) of std_logic_vector(8 downto 0);
    constant ROM : ROM_Array := (
        "101011011", -- 331.3 m/s 0 C
        "101011110", -- 334.3 m/s 5 C
        "101100001", -- 337.3 m/s 10 C
        "101100100", -- 340.3 m/s 15 C
        "101100111", -- 343.3 m/s 20 C
        "101101010", -- 346.3 m/s 25 C
        "101101101", -- 349.3 m/s 30 C
        "101110001", -- 352.3 m/s 35 C
        "101110100", -- 355.3 m/s 40 C
        "101110111", -- 358.3 m/s 45 C
        "101111010"  -- 361.3 m/s 50 C
    );

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if address < 51 then
                data_out <= ROM(address/5);
            else
                data_out <= "000000000"; -- zwróć zero, jeśli adres poza zakresem
            end if;
        end if;
    end process;

end Behavioral;
