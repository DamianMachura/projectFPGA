library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DistanceConverter is
    Port (
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        pulse       : in  STD_LOGIC;
        centimeters : out STD_LOGIC_VECTOR(11 downto 0);  -- max 999 cm
        decimeters  : out STD_LOGIC_VECTOR(3 downto 0);   -- max 9 dm
        meters      : out STD_LOGIC_VECTOR(3 downto 0)    -- max 9 m
    );
end DistanceConverter;

architecture Behavioral of DistanceConverter is

    -- Stałe
    constant CYCLES_PER_CM : integer := 2900;  -- Liczba cykli na 1 cm

    -- Sygnały
    signal pulse_width   : unsigned(23 downto 0) := (others => '0');
    signal distance_cm   : unsigned(23 downto 0) := (others => '0');
    signal distance_bcd  : std_logic_vector(11 downto 0) := (others => '0');
    signal dm_bcd        : std_logic_vector(3 downto 0) := (others => '0');
    signal meters_bcd    : std_logic_vector(3 downto 0) := (others => '0');

begin

    -- Liczenie szerokości impulsu
    process(clk, reset)
    begin
        if reset = '1' then
            pulse_width <= (others => '0');
        elsif rising_edge(clk) then
            if pulse = '1' then
                pulse_width <= pulse_width + 1;
            end if;
        end if;
    end process;

    -- Konwersja szerokości impulsu na odległość w cm
    process(clk, reset)
    begin
        if reset = '1' then
            distance_cm <= (others => '0');
        elsif rising_edge(clk) then
            if pulse = '0' then
                -- Przelicz szerokość impulsu na odległość w cm
                distance_cm <= pulse_width / to_unsigned(CYCLES_PER_CM, pulse_width'length);
            end if;
        end if;
    end process;

    -- Konwersja na BCD
    process(distance_cm)
        variable bcd : std_logic_vector(11 downto 0) := (others => '0');
        variable temp_distance : unsigned(11 downto 0);
    begin
        -- Przekształcenie na BCD
        temp_distance := distance_cm(11 downto 0);  -- Zmienna pomocnicza

        bcd := std_logic_vector(temp_distance);

        -- Algorytm Double Dabble
        for i in 0 to 11 loop
            if (bcd(11 downto 8) > "0100") then
                bcd(11 downto 8) := std_logic_vector(unsigned(bcd(11 downto 8)) + 3);
            end if;
            if (bcd(7 downto 4) > "0100") then
                bcd(7 downto 4) := std_logic_vector(unsigned(bcd(7 downto 4)) + 3);
            end if;
            if (bcd(3 downto 0) > "0100") then
                bcd(3 downto 0) := std_logic_vector(unsigned(bcd(3 downto 0)) + 3);
            end if;
            bcd := bcd(10 downto 0) & '0';
        end loop;

        -- Podział na metry i decymetry
        --meters_bcd <= std_logic_vector(temp_distance / 100); -- dzielenie przez 100
        --dm_bcd <= std_logic_vector((temp_distance mod 100) / 10); -- dzielenie przez 10
        distance_bcd <= std_logic_vector(temp_distance mod 10); -- Reszta dzielenia

    end process;

    -- Przypisanie wartości wyjściowych
    centimeters <= distance_bcd;
    decimeters <= dm_bcd;
    meters <= meters_bcd;

end Behavioral;
