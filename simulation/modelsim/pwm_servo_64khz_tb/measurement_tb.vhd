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
component Distance_calculator is
	port(
	clk : in std_logic;                
	Calculation_Reset : in std_logic;  -- Sygnał resetu obliczeń
	pulse : in std_logic;              -- Wejście impulsu z czujnika
	Distance : out STD_LOGIC_VECTOR(8 downto 0) -- Wyjście z wartością odległości
	);
end component;
  signal clock  : std_logic := '0';
  signal reset  : std_logic := '0';
  signal out_q  : std_logic;
  signal echo  : std_logic:= '0';
  signal Dist : STD_LOGIC_VECTOR(8 downto 0);
  signal position: std_logic;
begin
  -- Reset and clock
  clock <= not clock after 10 ns;
  reset <= '1', '0' after 1000 ms;
  --echo <= not echo after 9 ms;
echo_proc: process
begin
if(out_q'event) then
	wait for 11600 us;
	echo <= '1';
	wait for 11600 us;
	echo <= '0';
end if;
wait on out_q;
end process;

uut: Measurement_control Port MAP (clock, reset, out_q, position);
uut0: Distance_calculator port map (clock, out_q, echo, dist);
  
  -- Instantiate the design under test

end architecture test;