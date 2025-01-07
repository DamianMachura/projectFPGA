library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity measurement_tb is
end entity measurement_tb;

architecture test of measurement_tb is
component  Measurement_control is
  port (
    clk : in std_logic;         -- Wej?cie zegara
    reset : in std_logic;       -- Wej?cie sygna?u resetu
	 trigger : out std_logic;    -- wyjscie trigger
    servo_pwm : out std_logic   -- Wyj?cie sygna?u PWM
  );
end component;
  signal clock  : std_logic := '0';
  signal reset  : std_logic := '0';
  signal out_q  : std_logic;
begin
  -- Reset and clock
  clock <= not clock after 1 ns;
  reset <= '1', '0' after 10 ns;

uut: Measurement_control MAP (clock, reset, out_q)
  
  -- Instantiate the design under test

end architecture test;