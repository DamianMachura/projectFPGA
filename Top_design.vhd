library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

Entity Top_design is
     Port (
	        clk : in  STD_LOGIC;
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
end Top_design;

Architecture behavioral of Top_design is

component Range_Sensor is
     Port (fpgaclk : in  STD_LOGIC;
           pulse : in  STD_LOGIC;
           trigger_out : out  STD_LOGIC;
			  reset: in STD_LOGIC;
			  distance_out: out Unsigned(8 downto 0)
				);
end component;

component segmentdriver
	Port (  Distance : in Unsigned (8 downto 0);
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
	Component Servo
		PORT(
        clk  : IN  STD_LOGIC;
        reset : IN  STD_LOGIC;
        servo_pwm: OUT STD_LOGIC
		  );
		end component;
	component BlackBoxRAM is
    Port (
        clk : in STD_LOGIC;                  -- zegar główny
        we : in STD_LOGIC;                   -- sygnał zapisu (write enable)
        addr : in STD_LOGIC_VECTOR(7 downto 0); -- adres (zakładamy 256 komórek pamięci)
        data_in : in STD_LOGIC_VECTOR(14 downto 0); -- dane wejściowe (15-bitowe słowo)
        data_out : out STD_LOGIC_VECTOR(14 downto 0) -- dane wyjściowe (odczyt z pamięci)
    );
end component ;
		
	signal distance_out : Unsigned(8 downto 0);
	signal we : std_logic;
	signal boxaddr : STD_LOGIC_VECTOR(7 downto 0);
	signal radar_data : STD_LOGIC_VECTOR(14 downto 0);
		
begin
		
rangesensor: Range_Sensor PORT MAP(clk, pulse, trigger_out, reset, distance_out);	
	
segment_driver: segmentdriver PORT MAP( 
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
			  clk => clk);
servo_pwm: Servo PORT MAP(clk, reset, servo_out);
blackbox: BlackBoxRAM PORT MAP (clk, we, boxaddr, radar_data);

end behavioral;