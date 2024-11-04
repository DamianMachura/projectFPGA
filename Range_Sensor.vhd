library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;


Entity Range_Sensor is
     Port (fpgaclk : in  STD_LOGIC;
           pulse : in  STD_LOGIC;
           trigger_out : out  STD_LOGIC;
			  servo_out : out STD_LOGIC;
			  reset: in STD_LOGIC;
			  topseldispA : out STD_LOGIC;
			  topseldispB : out STD_LOGIC;
			  topseldispC : out STD_LOGIC;
			  topseldispD : out STD_LOGIC;
           topseg_A: out STD_LOGIC;
			  topseg_B: out STD_LOGIC;
			  topseg_C: out STD_LOGIC;
		     topseg_D: out STD_LOGIC;
	        topseg_E: out STD_LOGIC;
           topseg_F: out STD_LOGIC;
           topseg_G: out STD_LOGIC
				);
end Range_Sensor;

architecture Behavioral of Range_Sensor is
	component segmentdriver
	Port (  Distance : in Unsigned (8 downto 0);
--			  Display_A : in STD_LOGIC_VECTOR (3 downto 0);
--			  Display_B : in STD_LOGIC_VECTOR (3 downto 0);
--	        Display_C : in STD_LOGIC_VECTOR (3 downto 0);
--	        Display_D : in STD_LOGIC_VECTOR (3 downto 0);
           seg_A: out STD_LOGIC;
			  seg_B: out STD_LOGIC;
			  seg_C: out STD_LOGIC;
		     seg_D: out STD_LOGIC;
	        seg_E: out STD_LOGIC;
           seg_F: out STD_LOGIC;
           seg_G: out STD_LOGIC;
			  select_Display_A: out STD_LOGIC;
			  select_Display_B: out STD_LOGIC;
			  select_Display_C: out STD_LOGIC;
			  select_Display_D: out STD_LOGIC;
			  clk: in std_logic);
	end component;

COMPONENT Distance_calculator
	port(
		-- Clock
		clk: in std_logic; 
		Calculation_Reset: in std_logic; 
		pulse :in std_logic; 
		Distance: out Unsigned(8 downto 0) 
	);
	END COMPONENT;

COMPONENT Trigger_Generator
	PORT(
		clk : IN std_logic;   
		echo : IN std_logic;
		trigger : OUT std_logic
		);
	END COMPONENT;
	
--COMPONENT BCDConverter
--    Port (
--        Distance_input : in  std_logic_vector(8 downto 0);
--        hundreds   : out std_logic_vector(3 downto 0);
--		  tens   : out std_logic_vector(3 downto 0);
--		  unit   : out std_logic_vector(3 downto 0)
--    );
--	END COMPONENT;
Component Servo
PORT(
        clk  : IN  STD_LOGIC;
        reset : IN  STD_LOGIC;
        pwm: OUT STD_LOGIC
		  );
end component;

	Signal Ai : STD_LOGIC_VECTOR (3 downto 0);
	Signal Bi : STD_LOGIC_VECTOR (3 downto 0);
	Signal Ci : STD_LOGIC_VECTOR (3 downto 0);
	Signal Di : STD_LOGIC_VECTOR (3 downto 0);
	signal distance_out : Unsigned(8 downto 0);
	signal trig_out : std_logic;
--   signal  meters :  STD_LOGIC_VECTOR (3 downto 0);
--   signal  decimeters :  STD_LOGIC_VECTOR (3 downto 0);
--   signal  centimeters : STD_LOGIC_VECTOR (3 downto 0);

begin


trig_generator: Trigger_Generator PORT MAP(
		clk => fpgaclk,
		echo => pulse,
		trigger => trig_out
	);
Pulse_width: Distance_calculator PORT MAP(
		clk => fpgaclk,
		calculation_reset => trig_out,
		pulse => pulse,
		Distance => distance_out
	);

--BCD_conv: BCDConverter PORT MAP(
--		distance_input => distance_out,
--		hundreds => meters,
--		tens => decimeters,
--		unit => centimeters
--	);
	trigger_out <= trig_out;
uut2: segmentdriver PORT MAP( 
--			  Display_A => Ai,
--			  Display_B => Bi,
--	        Display_C => Ci,
--	        Display_D => "1111",
			  Distance => distance_out,
           seg_A => topseg_A,
			  seg_B => topseg_B,
			  seg_C => topseg_C,
		     seg_D => topseg_D,
	        seg_E => topseg_E,
           seg_F => topseg_F,
           seg_G => topseg_G,
			  select_Display_A => topseldispA,
			  select_Display_B => topseldispB,
			  select_Display_C => topseldispC,
			  select_Display_D => topseldispD,
			  clk => fpgaclk);
servo_pwm: Servo PORT MAP(fpgaclk, reset, servo_out);
--process(fpgaclk)
--begin
--
--				if(rising_edge(fpgaclk)) then
--			  	Ai <= centimeters;
--				Bi <= decimeters;
--				Ci <= meters;
--				Di <= "1111";
--				end if;
--end process;
end Behavioral;
