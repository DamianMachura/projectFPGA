library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Servo is
  port (
    clk : in std_logic;
    reset : in std_logic; -- Pullup
    pwm : out std_logic
  );
end Servo;

architecture str of Servo is

  constant clk_hz : real := 50.0e6; -- Cyclone CLK
  constant pulse_hz : real := 50.0;
  constant min_pulse_us : real := 500.0; -- MIN SG90 position
  constant max_pulse_us : real := 2500.0; -- MAX SG90 position
  constant step_bits : positive := 8; -- 0 to 255
  constant step_count : positive := 2**step_bits;

  -- obraca w 2 secondy at 50 MHz
  constant cnt_range : integer := 27;
  signal cnt : unsigned(cnt_range - 1 downto 0);
  signal count: integer;

  signal rst : std_logic;
  signal position : integer range 0 to step_count - 1;
  signal rom_addr : unsigned(step_bits - 1 downto 0);
  signal rom_data : unsigned(step_bits - 1 downto 0);

begin

  position <= to_integer(rom_data);
  cnt <= to_unsigned(count, cnt_range);
  rom_addr <= cnt(cnt'left downto cnt'left - step_bits + 1);

--  RESET : entity work.reset(rtl)
--  port map (
--    clk => clk,
--    rst_n => rst_n,
--    rst => rst
--  );

  SERVO : entity work.pwm(rtl)
  generic map (
    clk_hz => clk_hz,
    pulse_hz => pulse_hz,
    min_pulse_us => min_pulse_us,
    max_pulse_us => max_pulse_us,
    step_count => step_count
  )
  port map (
    clk => clk,
    rst => not reset,
    position => position,
    pwm => pwm
  );

  COUNTER : entity work.Counter(rtl)
  generic map (
    2**cnt_range
  )
  port map (
    clk => clk,
    reset => reset,
    enable => '1',
    count => count
  );

  SINE_ROM : entity work.sine_rom(rtl)
  generic map (
    data_bits => step_bits,
    addr_bits => step_bits
  )
  port map (
    clk => clk,
    addr => rom_addr,
    data => rom_data
  );

end architecture;