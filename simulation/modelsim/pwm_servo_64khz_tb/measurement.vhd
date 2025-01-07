library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- Definicja komponentu Kontrola Pomiaru
entity Measurement_control is
  port (
    clk : in std_logic;         -- Wej?cie zegara
    reset : in std_logic;       -- Wej?cie sygna?u resetu
	 trigger : out std_logic;    -- wyjscie trigger
    servo_pwm : out std_logic   -- Wyj?cie sygna?u PWM
  );
end Measurement_control;

architecture behavioral of Measurement_control is
COMPONENT pwm is
  port (
    clk : in std_logic;       -- Wej?cie zegara
    rst : in std_logic;       -- Wej?cie resetu
    position : in std_logic_vector(7 downto 0); -- Pozycja, od 0 do maksymalnej liczby krok�w
	 step_done : out std_logic;
    pwm : out std_logic       -- Wyj?cie sygna?u PWM
  );
end COMPONENT;

COMPONENT Counter is
		generic(n: POSITIVE := 10);
    Port (
        clk   : in  std_logic;  -- Clock input
		  enable : in STD_LOGIC;
        reset : in  std_logic;  -- Reset input
        count : out STD_LOGIC_VECTOR(n-1 downto 0)
    );
end COMPONENT;

COMPONENT sine_rom is
  port (
    clk : in std_logic;                      -- Wej?cie zegara
    addr : in std_logic_vector(7 downto 0); -- Adres odczytu w pami?ci ROM
    data : out std_logic_vector(7 downto 0) -- Warto?? sinusoidy wyj?ciowej
  );
end COMPONENT; 
  signal step_done : std_logic;        -- sprawdza czy krok jest sko?czony
  signal cnt : std_logic_vector(5 downto 0);  -- Sygnalizuje obecny stan licznika
  signal rst : std_logic;
  signal count : std_logic_vector(20 downto 0);
  signal position : std_logic_vector(7 downto 0);  -- Pozycja w zakresie od 0 do 255
  signal rom_addr : std_logic_vector(7 downto 0);   -- Adres dla pami?ci ROM
  signal rom_data : std_logic_vector(7 downto 0);   -- Dane z pami?ci ROM
  signal trig_cnt : std_logic_vector(20 downto 0) := "000000000000111110100";
  signal cnt_max : std_logic_vector(20 downto 0) := "100110001001011010000";

begin

  -- Przypisanie pozycji na podstawie warto?ci `rom_data`
  position <= rom_data;
  rom_addr <= cnt*"11"; -- Wyliczanie adresu do ROM t= 2^20 / 50e6 = 0,02s jeden krok

  -- Modu? PWM odpowiedzialny za generowanie sygna?u
  SERVO : pwm
  port map (
    clk => clk,
    rst => reset,
    position => position,
	 step_done => step_done,
    pwm => servo_pwm
  );

  -- Modu? licznika u?ywany do inkrementacji `count` z okre?lonym zakresem
 COUNTING: Counter
  generic map (
    6       -- Ustawia maksymaln? warto?? licznika
  )
  port map (
    clk => clk,
    reset => reset,
    enable => step_done,         -- Licznik zawsze w??czony
    count => cnt         -- Warto?? licznika wyj?ciowego
  );

  -- Pami?? ROM przechowuj?ca warto?ci sinusoidy, do generowania danych
  SINE : sine_rom
  port map (
    clk => clk,
    addr => rom_addr,
    data => rom_data
  );

  Trigger_proc : process(clk)
  begin
      if rising_edge(clk) then
      if count < cnt_max then
          count <= count + 1;
			 else
          count <= (others => '0');
			 end if;

      end if;
  end process;
trigger <= '1' when (count < trig_cnt) else '0';

end behavioral;