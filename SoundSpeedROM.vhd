library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SoundSpeedROM is
    Port (
        clk : in STD_LOGIC;              -- sygnał zegarowy
        address : in integer range 0 to 50; -- adres 
        data_out : out integer range 0 to 1000 -- dane wyjściowe 
    );
end SoundSpeedROM;

architecture Behavioral of SoundSpeedROM is

    -- ROM: wartości prędkości dźwięku (331.3 + 0.6 * T) w m/s (pomnożone przez 10 dla dokładności)
    type ROM_Array is array (0 to 10) of integer;
    constant ROM : ROM_Array := (
        331, -- 331.3 m/s (0°C -> 3313 po skalowaniu)
        334, -- 334.3 m/s (5°C -> 3343)
        337, -- 337.3 m/s (10°C -> 3373)
        340, -- 340.3 m/s (15°C -> 3403)
        343, -- 343.3 m/s (20°C -> 3433)
        346, -- 346.3 m/s (25°C -> 3463)
        349, -- 349.3 m/s (30°C -> 3493)
        352, -- 352.3 m/s (35°C -> 3523)
        355, -- 355.3 m/s (40°C -> 3553)
        358, -- 358.3 m/s (45°C -> 3583)
        361  -- 361.3 m/s (50°C -> 3613)
    );

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if address < 51 then
                data_out <= ROM(address/5);
            else
                data_out <= 0; -- zwróć zero, jeśli adres poza zakresem
            end if;
        end if;
    end process;

end Behavioral;
