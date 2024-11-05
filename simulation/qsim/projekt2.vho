-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "10/28/2024 13:39:44"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Range_Sensor IS
    PORT (
	fpgaclk : IN std_logic;
	pulse : IN std_logic;
	trigger_out : BUFFER std_logic;
	servo_out : BUFFER std_logic;
	reset : IN std_logic;
	topseldispA : BUFFER std_logic;
	topseldispB : BUFFER std_logic;
	topseldispC : BUFFER std_logic;
	topseldispD : BUFFER std_logic;
	topseg_A : BUFFER std_logic;
	topseg_B : BUFFER std_logic;
	topseg_C : BUFFER std_logic;
	topseg_D : BUFFER std_logic;
	topseg_E : BUFFER std_logic;
	topseg_F : BUFFER std_logic;
	topseg_G : BUFFER std_logic
	);
END Range_Sensor;

-- Design Ports Information
-- trigger_out	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo_out	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseldispA	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseldispB	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseldispC	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseldispD	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseg_A	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseg_B	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseg_C	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseg_D	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseg_E	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseg_F	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseg_G	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpgaclk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Range_Sensor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fpgaclk : std_logic;
SIGNAL ww_pulse : std_logic;
SIGNAL ww_trigger_out : std_logic;
SIGNAL ww_servo_out : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_topseldispA : std_logic;
SIGNAL ww_topseldispB : std_logic;
SIGNAL ww_topseldispC : std_logic;
SIGNAL ww_topseldispD : std_logic;
SIGNAL ww_topseg_A : std_logic;
SIGNAL ww_topseg_B : std_logic;
SIGNAL ww_topseg_C : std_logic;
SIGNAL ww_topseg_D : std_logic;
SIGNAL ww_topseg_E : std_logic;
SIGNAL ww_topseg_F : std_logic;
SIGNAL ww_topseg_G : std_logic;
SIGNAL \servo|clk1kHz_map|temporal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uut2|uut1|count[15]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \servo|clk64kHz_map|temporal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fpgaclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \trigger_out~output_o\ : std_logic;
SIGNAL \servo_out~output_o\ : std_logic;
SIGNAL \topseldispA~output_o\ : std_logic;
SIGNAL \topseldispB~output_o\ : std_logic;
SIGNAL \topseldispC~output_o\ : std_logic;
SIGNAL \topseldispD~output_o\ : std_logic;
SIGNAL \topseg_A~output_o\ : std_logic;
SIGNAL \topseg_B~output_o\ : std_logic;
SIGNAL \topseg_C~output_o\ : std_logic;
SIGNAL \topseg_D~output_o\ : std_logic;
SIGNAL \topseg_E~output_o\ : std_logic;
SIGNAL \topseg_F~output_o\ : std_logic;
SIGNAL \topseg_G~output_o\ : std_logic;
SIGNAL \fpgaclk~input_o\ : std_logic;
SIGNAL \fpgaclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[0]~69_combout\ : std_logic;
SIGNAL \trig_generator|Equal0~6_combout\ : std_logic;
SIGNAL \trig_generator|Equal0~5_combout\ : std_logic;
SIGNAL \trig_generator|Equal0~7_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[9]~40\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[10]~41_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[10]~42\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[11]~43_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[11]~44\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[12]~45_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[12]~46\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[13]~47_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[13]~48\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[14]~49_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[14]~50\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[15]~51_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[15]~52\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[16]~53_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[16]~54\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[17]~55_combout\ : std_logic;
SIGNAL \trig_generator|Equal0~1_combout\ : std_logic;
SIGNAL \trig_generator|Equal0~0_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[17]~56\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[18]~57_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[18]~58\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[19]~59_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[19]~60\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[20]~61_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[20]~62\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[21]~63_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[21]~64\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[22]~65_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[22]~66\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[23]~67_combout\ : std_logic;
SIGNAL \trig_generator|Equal0~3_combout\ : std_logic;
SIGNAL \trig_generator|Equal0~2_combout\ : std_logic;
SIGNAL \trig_generator|Equal0~4_combout\ : std_logic;
SIGNAL \trig_generator|Equal0~8_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[1]~23_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[1]~24\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[2]~25_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[2]~26\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[3]~27_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[3]~28\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[4]~29_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[4]~30\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[5]~31_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[5]~32\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[6]~33_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[6]~34\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[7]~35_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[7]~36\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[8]~37_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[8]~38\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg[9]~39_combout\ : std_logic;
SIGNAL \trig_generator|trigger~0_combout\ : std_logic;
SIGNAL \trig_generator|trigger~1_combout\ : std_logic;
SIGNAL \trig_generator|trigger~2_combout\ : std_logic;
SIGNAL \trig_generator|trigger~3_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~0_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|counter~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~1\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~2_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~3\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~4_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|counter~4_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~5\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~6_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|counter~3_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~7\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~8_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~9\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~10_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~11\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~12_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|Equal0~1_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~13\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~14_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~15\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~16_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|counter~1_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~17\ : std_logic;
SIGNAL \servo|clk64kHz_map|Add0~18_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|counter~0_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|Equal0~0_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|Equal0~2_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|temporal~0_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|temporal~feeder_combout\ : std_logic;
SIGNAL \servo|clk64kHz_map|temporal~q\ : std_logic;
SIGNAL \servo|clk64kHz_map|temporal~clkctrl_outclk\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~3\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~4_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~5\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~6_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~7\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~8_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~9\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~10_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~11\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~12_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~13\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~14_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~15\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~17\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~18_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~19\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~20_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|cnt~1_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Equal0~0_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~0_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|cnt~0_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~1\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~2_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Equal0~1_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Equal0~2_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add1~16_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|cnt~2_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~0_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|counter~0_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~1\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~2_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~3\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~4_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|counter~4_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~5\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~6_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|counter~3_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~7\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~8_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~9\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~10_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~11\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~12_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Equal0~5_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~13\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~14_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~15\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~16_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|counter~2_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~17\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~18_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|counter~1_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~19\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~20_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~21\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~22_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~23\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~24_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~25\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~26_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~27\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~28_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Equal0~2_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~29\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~30_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~31\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~32_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~33\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~34_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~35\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~36_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Equal0~1_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~37\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~38_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~39\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~40_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~41\ : std_logic;
SIGNAL \servo|clk1kHz_map|Add0~42_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Equal0~0_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Equal0~3_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Equal0~4_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|Equal0~6_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|temporal~0_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|temporal~feeder_combout\ : std_logic;
SIGNAL \servo|clk1kHz_map|temporal~q\ : std_logic;
SIGNAL \servo|clk1kHz_map|temporal~clkctrl_outclk\ : std_logic;
SIGNAL \servo|address[0]~3_combout\ : std_logic;
SIGNAL \servo|address[1]~2_combout\ : std_logic;
SIGNAL \servo|address[2]~1_combout\ : std_logic;
SIGNAL \servo|address[3]~0_combout\ : std_logic;
SIGNAL \servo|sin_wave_position|Mux0~0_combout\ : std_logic;
SIGNAL \servo|sin_wave_position|Mux1~0_combout\ : std_logic;
SIGNAL \servo|sin_wave_position|Mux2~0_combout\ : std_logic;
SIGNAL \servo|sin_wave_position|Mux3~0_combout\ : std_logic;
SIGNAL \servo|sin_wave_position|Mux4~0_combout\ : std_logic;
SIGNAL \servo|sin_wave_position|Mux5~0_combout\ : std_logic;
SIGNAL \servo|sin_wave_position|Mux7~0_combout\ : std_logic;
SIGNAL \servo|sin_wave_position|Mux6~0_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add0~1\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add0~3\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add0~5\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add0~7\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add0~9\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add0~11\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add0~12_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add0~10_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add0~8_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add0~6_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add0~4_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add0~2_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|Add0~0_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|LessThan0~1_cout\ : std_logic;
SIGNAL \servo|servo_pwm_map|LessThan0~3_cout\ : std_logic;
SIGNAL \servo|servo_pwm_map|LessThan0~5_cout\ : std_logic;
SIGNAL \servo|servo_pwm_map|LessThan0~7_cout\ : std_logic;
SIGNAL \servo|servo_pwm_map|LessThan0~9_cout\ : std_logic;
SIGNAL \servo|servo_pwm_map|LessThan0~11_cout\ : std_logic;
SIGNAL \servo|servo_pwm_map|LessThan0~13_cout\ : std_logic;
SIGNAL \servo|servo_pwm_map|LessThan0~14_combout\ : std_logic;
SIGNAL \servo|servo_pwm_map|LessThan0~16_combout\ : std_logic;
SIGNAL \uut2|uut1|count[0]~45_combout\ : std_logic;
SIGNAL \uut2|uut1|count[1]~15_combout\ : std_logic;
SIGNAL \uut2|uut1|count[1]~16\ : std_logic;
SIGNAL \uut2|uut1|count[2]~17_combout\ : std_logic;
SIGNAL \uut2|uut1|count[2]~18\ : std_logic;
SIGNAL \uut2|uut1|count[3]~19_combout\ : std_logic;
SIGNAL \uut2|uut1|count[3]~20\ : std_logic;
SIGNAL \uut2|uut1|count[4]~21_combout\ : std_logic;
SIGNAL \uut2|uut1|count[4]~22\ : std_logic;
SIGNAL \uut2|uut1|count[5]~23_combout\ : std_logic;
SIGNAL \uut2|uut1|count[5]~24\ : std_logic;
SIGNAL \uut2|uut1|count[6]~25_combout\ : std_logic;
SIGNAL \uut2|uut1|count[6]~26\ : std_logic;
SIGNAL \uut2|uut1|count[7]~27_combout\ : std_logic;
SIGNAL \uut2|uut1|count[7]~28\ : std_logic;
SIGNAL \uut2|uut1|count[8]~29_combout\ : std_logic;
SIGNAL \uut2|uut1|count[8]~30\ : std_logic;
SIGNAL \uut2|uut1|count[9]~31_combout\ : std_logic;
SIGNAL \uut2|uut1|count[9]~32\ : std_logic;
SIGNAL \uut2|uut1|count[10]~33_combout\ : std_logic;
SIGNAL \uut2|uut1|count[10]~34\ : std_logic;
SIGNAL \uut2|uut1|count[11]~35_combout\ : std_logic;
SIGNAL \uut2|uut1|count[11]~36\ : std_logic;
SIGNAL \uut2|uut1|count[12]~37_combout\ : std_logic;
SIGNAL \uut2|uut1|count[12]~38\ : std_logic;
SIGNAL \uut2|uut1|count[13]~39_combout\ : std_logic;
SIGNAL \uut2|uut1|count[13]~40\ : std_logic;
SIGNAL \uut2|uut1|count[14]~41_combout\ : std_logic;
SIGNAL \uut2|uut1|count[14]~42\ : std_logic;
SIGNAL \uut2|uut1|count[15]~43_combout\ : std_logic;
SIGNAL \uut2|uut1|count[15]~clkctrl_outclk\ : std_logic;
SIGNAL \uut2|Display_Selection[0]~1_combout\ : std_logic;
SIGNAL \uut2|Display_Selection[1]~0_combout\ : std_logic;
SIGNAL \uut2|Mux4~0_combout\ : std_logic;
SIGNAL \uut2|select_Display_A~q\ : std_logic;
SIGNAL \uut2|Mux5~0_combout\ : std_logic;
SIGNAL \uut2|select_Display_B~q\ : std_logic;
SIGNAL \uut2|Mux6~0_combout\ : std_logic;
SIGNAL \uut2|select_Display_C~q\ : std_logic;
SIGNAL \uut2|Mux3~0_combout\ : std_logic;
SIGNAL \uut2|select_Display_D~q\ : std_logic;
SIGNAL \pulse~input_o\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[0]~55_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[0]~feeder_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[1]~21_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[1]~22\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[2]~23_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[2]~24\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[3]~25_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[3]~26\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[4]~27_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[4]~28\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[5]~29_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[5]~30\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[6]~31_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[6]~32\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[7]~33_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[7]~34\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[8]~35_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[8]~36\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[9]~37_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[9]~38\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[10]~39_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[10]~40\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[11]~41_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[11]~42\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[12]~43_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[12]~44\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[13]~45_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[13]~46\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[14]~47_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[14]~48\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[15]~49_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[15]~50\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[16]~51_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[16]~52\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[17]~53_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[17]~54\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[18]~56_combout\ : std_logic;
SIGNAL \Pulse_width|Add0~1_cout\ : std_logic;
SIGNAL \Pulse_width|Add0~3_cout\ : std_logic;
SIGNAL \Pulse_width|Add0~5_cout\ : std_logic;
SIGNAL \Pulse_width|Add0~7_cout\ : std_logic;
SIGNAL \Pulse_width|Add0~9_cout\ : std_logic;
SIGNAL \Pulse_width|Add0~11_cout\ : std_logic;
SIGNAL \Pulse_width|Add0~13_cout\ : std_logic;
SIGNAL \Pulse_width|Add0~15_cout\ : std_logic;
SIGNAL \Pulse_width|Add0~17_cout\ : std_logic;
SIGNAL \Pulse_width|Add0~19_cout\ : std_logic;
SIGNAL \Pulse_width|Add0~21_cout\ : std_logic;
SIGNAL \Pulse_width|Add0~23_cout\ : std_logic;
SIGNAL \Pulse_width|Add0~25\ : std_logic;
SIGNAL \Pulse_width|Add0~27\ : std_logic;
SIGNAL \Pulse_width|Add0~29\ : std_logic;
SIGNAL \Pulse_width|Add0~31\ : std_logic;
SIGNAL \Pulse_width|Add0~33\ : std_logic;
SIGNAL \Pulse_width|Add0~34_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[18]~57\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[19]~58_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[19]~59\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[20]~60_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[20]~61\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_reg[21]~62_combout\ : std_logic;
SIGNAL \Pulse_width|Add0~35\ : std_logic;
SIGNAL \Pulse_width|Add0~37\ : std_logic;
SIGNAL \Pulse_width|Add0~39\ : std_logic;
SIGNAL \Pulse_width|Add0~41\ : std_logic;
SIGNAL \Pulse_width|Add0~42_combout\ : std_logic;
SIGNAL \Pulse_width|Add0~43\ : std_logic;
SIGNAL \Pulse_width|Add0~44_combout\ : std_logic;
SIGNAL \Pulse_width|Add0~38_combout\ : std_logic;
SIGNAL \Pulse_width|Add0~36_combout\ : std_logic;
SIGNAL \Pulse_width|Add0~40_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~3_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~32_combout\ : std_logic;
SIGNAL \Pulse_width|Add0~32_combout\ : std_logic;
SIGNAL \Pulse_width|Add0~30_combout\ : std_logic;
SIGNAL \Pulse_width|Add0~24_combout\ : std_logic;
SIGNAL \Pulse_width|Add0~26_combout\ : std_logic;
SIGNAL \Pulse_width|Add0~28_combout\ : std_logic;
SIGNAL \Pulse_width|LessThan0~0_combout\ : std_logic;
SIGNAL \Pulse_width|LessThan0~1_combout\ : std_logic;
SIGNAL \Pulse_width|LessThan0~2_combout\ : std_logic;
SIGNAL \Pulse_width|LessThan0~3_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~28_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~26_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~27_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~2_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~33_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~0_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~1_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~8_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~29_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~9_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~7_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~13_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~14_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~30_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~12_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~15_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~22_combout\ : std_logic;
SIGNAL \BCD_conv|LessThan0~0_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~21_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~3_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~4_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~10_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~5_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~6_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~11_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~16_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~17_combout\ : std_logic;
SIGNAL \BCD_conv|tens[2]~2_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~18_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~31_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~19_combout\ : std_logic;
SIGNAL \BCD_conv|bcd~20_combout\ : std_logic;
SIGNAL \BCD_conv|unit[2]~1_combout\ : std_logic;
SIGNAL \BCD_conv|hundreds[2]~3_combout\ : std_logic;
SIGNAL \BCD_conv|hundreds[2]~11_combout\ : std_logic;
SIGNAL \uut2|Mux1~0_combout\ : std_logic;
SIGNAL \uut2|Mux1~1_combout\ : std_logic;
SIGNAL \BCD_conv|tens[0]~0_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~24_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~25_combout\ : std_logic;
SIGNAL \BCD_conv|hundreds[0]~9_combout\ : std_logic;
SIGNAL \uut2|Mux3~1_combout\ : std_logic;
SIGNAL \uut2|Mux3~2_combout\ : std_logic;
SIGNAL \BCD_conv|tens[1]~1_combout\ : std_logic;
SIGNAL \BCD_conv|unit[1]~0_combout\ : std_logic;
SIGNAL \BCD_conv|hundreds[1]~10_combout\ : std_logic;
SIGNAL \uut2|Mux2~0_combout\ : std_logic;
SIGNAL \uut2|Mux2~1_combout\ : std_logic;
SIGNAL \BCD_conv|unit[3]~2_combout\ : std_logic;
SIGNAL \BCD_conv|tens[3]~3_combout\ : std_logic;
SIGNAL \uut2|Mux0~0_combout\ : std_logic;
SIGNAL \uut2|uut|Mux0~0_combout\ : std_logic;
SIGNAL \uut2|uut|Mux1~0_combout\ : std_logic;
SIGNAL \uut2|uut|Mux2~0_combout\ : std_logic;
SIGNAL \uut2|uut|Mux3~0_combout\ : std_logic;
SIGNAL \uut2|uut|Mux4~0_combout\ : std_logic;
SIGNAL \uut2|uut|Mux5~0_combout\ : std_logic;
SIGNAL \uut2|uut|Mux6~0_combout\ : std_logic;
SIGNAL \trig_generator|trigg|counter_reg\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \uut2|Display_Selection\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \uut2|uut1|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \servo|sin_wave_position|o_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL Ci : std_logic_vector(3 DOWNTO 0);
SIGNAL \Pulse_width|Counter_pulse|counter_reg\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \servo|address\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \servo|servo_pwm_map|cnt\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \uut2|temporary_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL Ai : std_logic_vector(3 DOWNTO 0);
SIGNAL Bi : std_logic_vector(3 DOWNTO 0);
SIGNAL \servo|clk64kHz_map|counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \servo|clk1kHz_map|counter\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \Pulse_width|Distance\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_pulse~input_o\ : std_logic;
SIGNAL \trig_generator|ALT_INV_trigger~3_combout\ : std_logic;
SIGNAL \trig_generator|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \uut2|uut|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_fpgaclk <= fpgaclk;
ww_pulse <= pulse;
trigger_out <= ww_trigger_out;
servo_out <= ww_servo_out;
ww_reset <= reset;
topseldispA <= ww_topseldispA;
topseldispB <= ww_topseldispB;
topseldispC <= ww_topseldispC;
topseldispD <= ww_topseldispD;
topseg_A <= ww_topseg_A;
topseg_B <= ww_topseg_B;
topseg_C <= ww_topseg_C;
topseg_D <= ww_topseg_D;
topseg_E <= ww_topseg_E;
topseg_F <= ww_topseg_F;
topseg_G <= ww_topseg_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\servo|clk1kHz_map|temporal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \servo|clk1kHz_map|temporal~q\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\uut2|uut1|count[15]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \uut2|uut1|count\(15));

\servo|clk64kHz_map|temporal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \servo|clk64kHz_map|temporal~q\);

\fpgaclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fpgaclk~input_o\);
\ALT_INV_pulse~input_o\ <= NOT \pulse~input_o\;
\trig_generator|ALT_INV_trigger~3_combout\ <= NOT \trig_generator|trigger~3_combout\;
\trig_generator|ALT_INV_Equal0~8_combout\ <= NOT \trig_generator|Equal0~8_combout\;
\uut2|uut|ALT_INV_Mux6~0_combout\ <= NOT \uut2|uut|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y2_N16
\trigger_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trig_generator|trigger~3_combout\,
	devoe => ww_devoe,
	o => \trigger_out~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\servo_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \servo|servo_pwm_map|LessThan0~16_combout\,
	devoe => ww_devoe,
	o => \servo_out~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\topseldispA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut2|select_Display_A~q\,
	devoe => ww_devoe,
	o => \topseldispA~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\topseldispB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut2|select_Display_B~q\,
	devoe => ww_devoe,
	o => \topseldispB~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\topseldispC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut2|select_Display_C~q\,
	devoe => ww_devoe,
	o => \topseldispC~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\topseldispD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut2|select_Display_D~q\,
	devoe => ww_devoe,
	o => \topseldispD~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\topseg_A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut2|uut|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \topseg_A~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\topseg_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut2|uut|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \topseg_B~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\topseg_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut2|uut|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \topseg_C~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\topseg_D~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut2|uut|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \topseg_D~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\topseg_E~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut2|uut|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \topseg_E~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\topseg_F~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut2|uut|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \topseg_F~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\topseg_G~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut2|uut|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \topseg_G~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\fpgaclk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpgaclk,
	o => \fpgaclk~input_o\);

-- Location: CLKCTRL_G2
\fpgaclk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fpgaclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fpgaclk~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y6_N10
\trig_generator|trigg|counter_reg[0]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[0]~69_combout\ = !\trig_generator|trigg|counter_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \trig_generator|trigg|counter_reg\(0),
	combout => \trig_generator|trigg|counter_reg[0]~69_combout\);

-- Location: LCCOMB_X29_Y6_N4
\trig_generator|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|Equal0~6_combout\ = (\trig_generator|trigg|counter_reg\(3) & (!\trig_generator|trigg|counter_reg\(7) & (\trig_generator|trigg|counter_reg\(2) & !\trig_generator|trigg|counter_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(3),
	datab => \trig_generator|trigg|counter_reg\(7),
	datac => \trig_generator|trigg|counter_reg\(2),
	datad => \trig_generator|trigg|counter_reg\(8),
	combout => \trig_generator|Equal0~6_combout\);

-- Location: LCCOMB_X28_Y6_N6
\trig_generator|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|Equal0~5_combout\ = (!\trig_generator|trigg|counter_reg\(1) & (!\trig_generator|trigg|counter_reg\(0) & !\trig_generator|trigg|counter_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(1),
	datac => \trig_generator|trigg|counter_reg\(0),
	datad => \trig_generator|trigg|counter_reg\(4),
	combout => \trig_generator|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y6_N0
\trig_generator|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|Equal0~7_combout\ = (\trig_generator|trigg|counter_reg\(6) & (!\trig_generator|trigg|counter_reg\(5) & (\trig_generator|trigg|counter_reg\(9) & \trig_generator|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(6),
	datab => \trig_generator|trigg|counter_reg\(5),
	datac => \trig_generator|trigg|counter_reg\(9),
	datad => \trig_generator|Equal0~5_combout\,
	combout => \trig_generator|Equal0~7_combout\);

-- Location: LCCOMB_X28_Y6_N26
\trig_generator|trigg|counter_reg[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[9]~39_combout\ = (\trig_generator|trigg|counter_reg\(9) & (\trig_generator|trigg|counter_reg[8]~38\ $ (GND))) # (!\trig_generator|trigg|counter_reg\(9) & (!\trig_generator|trigg|counter_reg[8]~38\ & VCC))
-- \trig_generator|trigg|counter_reg[9]~40\ = CARRY((\trig_generator|trigg|counter_reg\(9) & !\trig_generator|trigg|counter_reg[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(9),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[8]~38\,
	combout => \trig_generator|trigg|counter_reg[9]~39_combout\,
	cout => \trig_generator|trigg|counter_reg[9]~40\);

-- Location: LCCOMB_X28_Y6_N28
\trig_generator|trigg|counter_reg[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[10]~41_combout\ = (\trig_generator|trigg|counter_reg\(10) & (!\trig_generator|trigg|counter_reg[9]~40\)) # (!\trig_generator|trigg|counter_reg\(10) & ((\trig_generator|trigg|counter_reg[9]~40\) # (GND)))
-- \trig_generator|trigg|counter_reg[10]~42\ = CARRY((!\trig_generator|trigg|counter_reg[9]~40\) # (!\trig_generator|trigg|counter_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \trig_generator|trigg|counter_reg\(10),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[9]~40\,
	combout => \trig_generator|trigg|counter_reg[10]~41_combout\,
	cout => \trig_generator|trigg|counter_reg[10]~42\);

-- Location: FF_X28_Y6_N29
\trig_generator|trigg|counter_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[10]~41_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(10));

-- Location: LCCOMB_X28_Y6_N30
\trig_generator|trigg|counter_reg[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[11]~43_combout\ = (\trig_generator|trigg|counter_reg\(11) & (\trig_generator|trigg|counter_reg[10]~42\ $ (GND))) # (!\trig_generator|trigg|counter_reg\(11) & (!\trig_generator|trigg|counter_reg[10]~42\ & VCC))
-- \trig_generator|trigg|counter_reg[11]~44\ = CARRY((\trig_generator|trigg|counter_reg\(11) & !\trig_generator|trigg|counter_reg[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(11),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[10]~42\,
	combout => \trig_generator|trigg|counter_reg[11]~43_combout\,
	cout => \trig_generator|trigg|counter_reg[11]~44\);

-- Location: FF_X28_Y6_N31
\trig_generator|trigg|counter_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[11]~43_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(11));

-- Location: LCCOMB_X28_Y5_N0
\trig_generator|trigg|counter_reg[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[12]~45_combout\ = (\trig_generator|trigg|counter_reg\(12) & (!\trig_generator|trigg|counter_reg[11]~44\)) # (!\trig_generator|trigg|counter_reg\(12) & ((\trig_generator|trigg|counter_reg[11]~44\) # (GND)))
-- \trig_generator|trigg|counter_reg[12]~46\ = CARRY((!\trig_generator|trigg|counter_reg[11]~44\) # (!\trig_generator|trigg|counter_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \trig_generator|trigg|counter_reg\(12),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[11]~44\,
	combout => \trig_generator|trigg|counter_reg[12]~45_combout\,
	cout => \trig_generator|trigg|counter_reg[12]~46\);

-- Location: FF_X28_Y5_N1
\trig_generator|trigg|counter_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[12]~45_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(12));

-- Location: LCCOMB_X28_Y5_N2
\trig_generator|trigg|counter_reg[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[13]~47_combout\ = (\trig_generator|trigg|counter_reg\(13) & (\trig_generator|trigg|counter_reg[12]~46\ $ (GND))) # (!\trig_generator|trigg|counter_reg\(13) & (!\trig_generator|trigg|counter_reg[12]~46\ & VCC))
-- \trig_generator|trigg|counter_reg[13]~48\ = CARRY((\trig_generator|trigg|counter_reg\(13) & !\trig_generator|trigg|counter_reg[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \trig_generator|trigg|counter_reg\(13),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[12]~46\,
	combout => \trig_generator|trigg|counter_reg[13]~47_combout\,
	cout => \trig_generator|trigg|counter_reg[13]~48\);

-- Location: FF_X28_Y5_N3
\trig_generator|trigg|counter_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[13]~47_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(13));

-- Location: LCCOMB_X28_Y5_N4
\trig_generator|trigg|counter_reg[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[14]~49_combout\ = (\trig_generator|trigg|counter_reg\(14) & (!\trig_generator|trigg|counter_reg[13]~48\)) # (!\trig_generator|trigg|counter_reg\(14) & ((\trig_generator|trigg|counter_reg[13]~48\) # (GND)))
-- \trig_generator|trigg|counter_reg[14]~50\ = CARRY((!\trig_generator|trigg|counter_reg[13]~48\) # (!\trig_generator|trigg|counter_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \trig_generator|trigg|counter_reg\(14),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[13]~48\,
	combout => \trig_generator|trigg|counter_reg[14]~49_combout\,
	cout => \trig_generator|trigg|counter_reg[14]~50\);

-- Location: FF_X28_Y5_N5
\trig_generator|trigg|counter_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[14]~49_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(14));

-- Location: LCCOMB_X28_Y5_N6
\trig_generator|trigg|counter_reg[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[15]~51_combout\ = (\trig_generator|trigg|counter_reg\(15) & (\trig_generator|trigg|counter_reg[14]~50\ $ (GND))) # (!\trig_generator|trigg|counter_reg\(15) & (!\trig_generator|trigg|counter_reg[14]~50\ & VCC))
-- \trig_generator|trigg|counter_reg[15]~52\ = CARRY((\trig_generator|trigg|counter_reg\(15) & !\trig_generator|trigg|counter_reg[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(15),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[14]~50\,
	combout => \trig_generator|trigg|counter_reg[15]~51_combout\,
	cout => \trig_generator|trigg|counter_reg[15]~52\);

-- Location: FF_X28_Y5_N7
\trig_generator|trigg|counter_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[15]~51_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(15));

-- Location: LCCOMB_X28_Y5_N8
\trig_generator|trigg|counter_reg[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[16]~53_combout\ = (\trig_generator|trigg|counter_reg\(16) & (!\trig_generator|trigg|counter_reg[15]~52\)) # (!\trig_generator|trigg|counter_reg\(16) & ((\trig_generator|trigg|counter_reg[15]~52\) # (GND)))
-- \trig_generator|trigg|counter_reg[16]~54\ = CARRY((!\trig_generator|trigg|counter_reg[15]~52\) # (!\trig_generator|trigg|counter_reg\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \trig_generator|trigg|counter_reg\(16),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[15]~52\,
	combout => \trig_generator|trigg|counter_reg[16]~53_combout\,
	cout => \trig_generator|trigg|counter_reg[16]~54\);

-- Location: FF_X28_Y5_N9
\trig_generator|trigg|counter_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[16]~53_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(16));

-- Location: LCCOMB_X28_Y5_N10
\trig_generator|trigg|counter_reg[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[17]~55_combout\ = (\trig_generator|trigg|counter_reg\(17) & (\trig_generator|trigg|counter_reg[16]~54\ $ (GND))) # (!\trig_generator|trigg|counter_reg\(17) & (!\trig_generator|trigg|counter_reg[16]~54\ & VCC))
-- \trig_generator|trigg|counter_reg[17]~56\ = CARRY((\trig_generator|trigg|counter_reg\(17) & !\trig_generator|trigg|counter_reg[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(17),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[16]~54\,
	combout => \trig_generator|trigg|counter_reg[17]~55_combout\,
	cout => \trig_generator|trigg|counter_reg[17]~56\);

-- Location: FF_X28_Y5_N11
\trig_generator|trigg|counter_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[17]~55_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(17));

-- Location: LCCOMB_X28_Y5_N24
\trig_generator|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|Equal0~1_combout\ = (\trig_generator|trigg|counter_reg\(17) & (!\trig_generator|trigg|counter_reg\(16) & (!\trig_generator|trigg|counter_reg\(14) & \trig_generator|trigg|counter_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(17),
	datab => \trig_generator|trigg|counter_reg\(16),
	datac => \trig_generator|trigg|counter_reg\(14),
	datad => \trig_generator|trigg|counter_reg\(15),
	combout => \trig_generator|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y6_N8
\trig_generator|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|Equal0~0_combout\ = (\trig_generator|trigg|counter_reg\(11) & (\trig_generator|trigg|counter_reg\(10) & (\trig_generator|trigg|counter_reg\(12) & \trig_generator|trigg|counter_reg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(11),
	datab => \trig_generator|trigg|counter_reg\(10),
	datac => \trig_generator|trigg|counter_reg\(12),
	datad => \trig_generator|trigg|counter_reg\(13),
	combout => \trig_generator|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y5_N12
\trig_generator|trigg|counter_reg[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[18]~57_combout\ = (\trig_generator|trigg|counter_reg\(18) & (!\trig_generator|trigg|counter_reg[17]~56\)) # (!\trig_generator|trigg|counter_reg\(18) & ((\trig_generator|trigg|counter_reg[17]~56\) # (GND)))
-- \trig_generator|trigg|counter_reg[18]~58\ = CARRY((!\trig_generator|trigg|counter_reg[17]~56\) # (!\trig_generator|trigg|counter_reg\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(18),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[17]~56\,
	combout => \trig_generator|trigg|counter_reg[18]~57_combout\,
	cout => \trig_generator|trigg|counter_reg[18]~58\);

-- Location: FF_X28_Y5_N13
\trig_generator|trigg|counter_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[18]~57_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(18));

-- Location: LCCOMB_X28_Y5_N14
\trig_generator|trigg|counter_reg[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[19]~59_combout\ = (\trig_generator|trigg|counter_reg\(19) & (\trig_generator|trigg|counter_reg[18]~58\ $ (GND))) # (!\trig_generator|trigg|counter_reg\(19) & (!\trig_generator|trigg|counter_reg[18]~58\ & VCC))
-- \trig_generator|trigg|counter_reg[19]~60\ = CARRY((\trig_generator|trigg|counter_reg\(19) & !\trig_generator|trigg|counter_reg[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \trig_generator|trigg|counter_reg\(19),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[18]~58\,
	combout => \trig_generator|trigg|counter_reg[19]~59_combout\,
	cout => \trig_generator|trigg|counter_reg[19]~60\);

-- Location: FF_X28_Y5_N15
\trig_generator|trigg|counter_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[19]~59_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(19));

-- Location: LCCOMB_X28_Y5_N16
\trig_generator|trigg|counter_reg[20]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[20]~61_combout\ = (\trig_generator|trigg|counter_reg\(20) & (!\trig_generator|trigg|counter_reg[19]~60\)) # (!\trig_generator|trigg|counter_reg\(20) & ((\trig_generator|trigg|counter_reg[19]~60\) # (GND)))
-- \trig_generator|trigg|counter_reg[20]~62\ = CARRY((!\trig_generator|trigg|counter_reg[19]~60\) # (!\trig_generator|trigg|counter_reg\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(20),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[19]~60\,
	combout => \trig_generator|trigg|counter_reg[20]~61_combout\,
	cout => \trig_generator|trigg|counter_reg[20]~62\);

-- Location: FF_X28_Y5_N17
\trig_generator|trigg|counter_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[20]~61_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(20));

-- Location: LCCOMB_X28_Y5_N18
\trig_generator|trigg|counter_reg[21]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[21]~63_combout\ = (\trig_generator|trigg|counter_reg\(21) & (\trig_generator|trigg|counter_reg[20]~62\ $ (GND))) # (!\trig_generator|trigg|counter_reg\(21) & (!\trig_generator|trigg|counter_reg[20]~62\ & VCC))
-- \trig_generator|trigg|counter_reg[21]~64\ = CARRY((\trig_generator|trigg|counter_reg\(21) & !\trig_generator|trigg|counter_reg[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \trig_generator|trigg|counter_reg\(21),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[20]~62\,
	combout => \trig_generator|trigg|counter_reg[21]~63_combout\,
	cout => \trig_generator|trigg|counter_reg[21]~64\);

-- Location: FF_X28_Y5_N19
\trig_generator|trigg|counter_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[21]~63_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(21));

-- Location: LCCOMB_X28_Y5_N20
\trig_generator|trigg|counter_reg[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[22]~65_combout\ = (\trig_generator|trigg|counter_reg\(22) & (!\trig_generator|trigg|counter_reg[21]~64\)) # (!\trig_generator|trigg|counter_reg\(22) & ((\trig_generator|trigg|counter_reg[21]~64\) # (GND)))
-- \trig_generator|trigg|counter_reg[22]~66\ = CARRY((!\trig_generator|trigg|counter_reg[21]~64\) # (!\trig_generator|trigg|counter_reg\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \trig_generator|trigg|counter_reg\(22),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[21]~64\,
	combout => \trig_generator|trigg|counter_reg[22]~65_combout\,
	cout => \trig_generator|trigg|counter_reg[22]~66\);

-- Location: FF_X28_Y5_N21
\trig_generator|trigg|counter_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[22]~65_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(22));

-- Location: LCCOMB_X28_Y5_N22
\trig_generator|trigg|counter_reg[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[23]~67_combout\ = \trig_generator|trigg|counter_reg[22]~66\ $ (!\trig_generator|trigg|counter_reg\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \trig_generator|trigg|counter_reg\(23),
	cin => \trig_generator|trigg|counter_reg[22]~66\,
	combout => \trig_generator|trigg|counter_reg[23]~67_combout\);

-- Location: FF_X28_Y5_N23
\trig_generator|trigg|counter_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[23]~67_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(23));

-- Location: LCCOMB_X28_Y5_N28
\trig_generator|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|Equal0~3_combout\ = (\trig_generator|trigg|counter_reg\(23) & !\trig_generator|trigg|counter_reg\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \trig_generator|trigg|counter_reg\(23),
	datad => \trig_generator|trigg|counter_reg\(22),
	combout => \trig_generator|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y5_N30
\trig_generator|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|Equal0~2_combout\ = (\trig_generator|trigg|counter_reg\(18) & (\trig_generator|trigg|counter_reg\(21) & (\trig_generator|trigg|counter_reg\(19) & \trig_generator|trigg|counter_reg\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(18),
	datab => \trig_generator|trigg|counter_reg\(21),
	datac => \trig_generator|trigg|counter_reg\(19),
	datad => \trig_generator|trigg|counter_reg\(20),
	combout => \trig_generator|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y6_N2
\trig_generator|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|Equal0~4_combout\ = (\trig_generator|Equal0~1_combout\ & (\trig_generator|Equal0~0_combout\ & (\trig_generator|Equal0~3_combout\ & \trig_generator|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|Equal0~1_combout\,
	datab => \trig_generator|Equal0~0_combout\,
	datac => \trig_generator|Equal0~3_combout\,
	datad => \trig_generator|Equal0~2_combout\,
	combout => \trig_generator|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y6_N4
\trig_generator|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|Equal0~8_combout\ = (\trig_generator|Equal0~6_combout\ & (\trig_generator|Equal0~7_combout\ & \trig_generator|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|Equal0~6_combout\,
	datab => \trig_generator|Equal0~7_combout\,
	datad => \trig_generator|Equal0~4_combout\,
	combout => \trig_generator|Equal0~8_combout\);

-- Location: FF_X28_Y6_N5
\trig_generator|trigg|counter_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	asdata => \trig_generator|trigg|counter_reg[0]~69_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(0));

-- Location: LCCOMB_X28_Y6_N10
\trig_generator|trigg|counter_reg[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[1]~23_combout\ = (\trig_generator|trigg|counter_reg\(1) & (\trig_generator|trigg|counter_reg\(0) $ (VCC))) # (!\trig_generator|trigg|counter_reg\(1) & (\trig_generator|trigg|counter_reg\(0) & VCC))
-- \trig_generator|trigg|counter_reg[1]~24\ = CARRY((\trig_generator|trigg|counter_reg\(1) & \trig_generator|trigg|counter_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(1),
	datab => \trig_generator|trigg|counter_reg\(0),
	datad => VCC,
	combout => \trig_generator|trigg|counter_reg[1]~23_combout\,
	cout => \trig_generator|trigg|counter_reg[1]~24\);

-- Location: FF_X28_Y6_N11
\trig_generator|trigg|counter_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[1]~23_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(1));

-- Location: LCCOMB_X28_Y6_N12
\trig_generator|trigg|counter_reg[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[2]~25_combout\ = (\trig_generator|trigg|counter_reg\(2) & (!\trig_generator|trigg|counter_reg[1]~24\)) # (!\trig_generator|trigg|counter_reg\(2) & ((\trig_generator|trigg|counter_reg[1]~24\) # (GND)))
-- \trig_generator|trigg|counter_reg[2]~26\ = CARRY((!\trig_generator|trigg|counter_reg[1]~24\) # (!\trig_generator|trigg|counter_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(2),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[1]~24\,
	combout => \trig_generator|trigg|counter_reg[2]~25_combout\,
	cout => \trig_generator|trigg|counter_reg[2]~26\);

-- Location: FF_X28_Y6_N13
\trig_generator|trigg|counter_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[2]~25_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(2));

-- Location: LCCOMB_X28_Y6_N14
\trig_generator|trigg|counter_reg[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[3]~27_combout\ = (\trig_generator|trigg|counter_reg\(3) & (\trig_generator|trigg|counter_reg[2]~26\ $ (GND))) # (!\trig_generator|trigg|counter_reg\(3) & (!\trig_generator|trigg|counter_reg[2]~26\ & VCC))
-- \trig_generator|trigg|counter_reg[3]~28\ = CARRY((\trig_generator|trigg|counter_reg\(3) & !\trig_generator|trigg|counter_reg[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \trig_generator|trigg|counter_reg\(3),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[2]~26\,
	combout => \trig_generator|trigg|counter_reg[3]~27_combout\,
	cout => \trig_generator|trigg|counter_reg[3]~28\);

-- Location: FF_X28_Y6_N15
\trig_generator|trigg|counter_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[3]~27_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(3));

-- Location: LCCOMB_X28_Y6_N16
\trig_generator|trigg|counter_reg[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[4]~29_combout\ = (\trig_generator|trigg|counter_reg\(4) & (!\trig_generator|trigg|counter_reg[3]~28\)) # (!\trig_generator|trigg|counter_reg\(4) & ((\trig_generator|trigg|counter_reg[3]~28\) # (GND)))
-- \trig_generator|trigg|counter_reg[4]~30\ = CARRY((!\trig_generator|trigg|counter_reg[3]~28\) # (!\trig_generator|trigg|counter_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \trig_generator|trigg|counter_reg\(4),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[3]~28\,
	combout => \trig_generator|trigg|counter_reg[4]~29_combout\,
	cout => \trig_generator|trigg|counter_reg[4]~30\);

-- Location: FF_X28_Y6_N17
\trig_generator|trigg|counter_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[4]~29_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(4));

-- Location: LCCOMB_X28_Y6_N18
\trig_generator|trigg|counter_reg[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[5]~31_combout\ = (\trig_generator|trigg|counter_reg\(5) & (\trig_generator|trigg|counter_reg[4]~30\ $ (GND))) # (!\trig_generator|trigg|counter_reg\(5) & (!\trig_generator|trigg|counter_reg[4]~30\ & VCC))
-- \trig_generator|trigg|counter_reg[5]~32\ = CARRY((\trig_generator|trigg|counter_reg\(5) & !\trig_generator|trigg|counter_reg[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \trig_generator|trigg|counter_reg\(5),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[4]~30\,
	combout => \trig_generator|trigg|counter_reg[5]~31_combout\,
	cout => \trig_generator|trigg|counter_reg[5]~32\);

-- Location: FF_X28_Y6_N19
\trig_generator|trigg|counter_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[5]~31_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(5));

-- Location: LCCOMB_X28_Y6_N20
\trig_generator|trigg|counter_reg[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[6]~33_combout\ = (\trig_generator|trigg|counter_reg\(6) & (!\trig_generator|trigg|counter_reg[5]~32\)) # (!\trig_generator|trigg|counter_reg\(6) & ((\trig_generator|trigg|counter_reg[5]~32\) # (GND)))
-- \trig_generator|trigg|counter_reg[6]~34\ = CARRY((!\trig_generator|trigg|counter_reg[5]~32\) # (!\trig_generator|trigg|counter_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \trig_generator|trigg|counter_reg\(6),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[5]~32\,
	combout => \trig_generator|trigg|counter_reg[6]~33_combout\,
	cout => \trig_generator|trigg|counter_reg[6]~34\);

-- Location: FF_X28_Y6_N21
\trig_generator|trigg|counter_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[6]~33_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(6));

-- Location: LCCOMB_X28_Y6_N22
\trig_generator|trigg|counter_reg[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[7]~35_combout\ = (\trig_generator|trigg|counter_reg\(7) & (\trig_generator|trigg|counter_reg[6]~34\ $ (GND))) # (!\trig_generator|trigg|counter_reg\(7) & (!\trig_generator|trigg|counter_reg[6]~34\ & VCC))
-- \trig_generator|trigg|counter_reg[7]~36\ = CARRY((\trig_generator|trigg|counter_reg\(7) & !\trig_generator|trigg|counter_reg[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(7),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[6]~34\,
	combout => \trig_generator|trigg|counter_reg[7]~35_combout\,
	cout => \trig_generator|trigg|counter_reg[7]~36\);

-- Location: FF_X28_Y6_N23
\trig_generator|trigg|counter_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[7]~35_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(7));

-- Location: LCCOMB_X28_Y6_N24
\trig_generator|trigg|counter_reg[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigg|counter_reg[8]~37_combout\ = (\trig_generator|trigg|counter_reg\(8) & (!\trig_generator|trigg|counter_reg[7]~36\)) # (!\trig_generator|trigg|counter_reg\(8) & ((\trig_generator|trigg|counter_reg[7]~36\) # (GND)))
-- \trig_generator|trigg|counter_reg[8]~38\ = CARRY((!\trig_generator|trigg|counter_reg[7]~36\) # (!\trig_generator|trigg|counter_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \trig_generator|trigg|counter_reg\(8),
	datad => VCC,
	cin => \trig_generator|trigg|counter_reg[7]~36\,
	combout => \trig_generator|trigg|counter_reg[8]~37_combout\,
	cout => \trig_generator|trigg|counter_reg[8]~38\);

-- Location: FF_X28_Y6_N25
\trig_generator|trigg|counter_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[8]~37_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(8));

-- Location: FF_X28_Y6_N27
\trig_generator|trigg|counter_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \trig_generator|trigg|counter_reg[9]~39_combout\,
	clrn => \trig_generator|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig_generator|trigg|counter_reg\(9));

-- Location: LCCOMB_X29_Y6_N28
\trig_generator|trigger~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigger~0_combout\ = (\trig_generator|trigg|counter_reg\(8)) # ((\trig_generator|trigg|counter_reg\(7)) # ((\trig_generator|trigg|counter_reg\(4) & \trig_generator|trigg|counter_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(4),
	datab => \trig_generator|trigg|counter_reg\(8),
	datac => \trig_generator|trigg|counter_reg\(6),
	datad => \trig_generator|trigg|counter_reg\(7),
	combout => \trig_generator|trigger~0_combout\);

-- Location: LCCOMB_X29_Y6_N6
\trig_generator|trigger~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigger~1_combout\ = (\trig_generator|trigg|counter_reg\(9) & (\trig_generator|trigg|counter_reg\(2) & ((\trig_generator|trigg|counter_reg\(3))))) # (!\trig_generator|trigg|counter_reg\(9) & (!\trig_generator|trigg|counter_reg\(2) & 
-- (\trig_generator|Equal0~5_combout\ & !\trig_generator|trigg|counter_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(9),
	datab => \trig_generator|trigg|counter_reg\(2),
	datac => \trig_generator|Equal0~5_combout\,
	datad => \trig_generator|trigg|counter_reg\(3),
	combout => \trig_generator|trigger~1_combout\);

-- Location: LCCOMB_X29_Y6_N8
\trig_generator|trigger~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigger~2_combout\ = (\trig_generator|trigg|counter_reg\(6) & ((\trig_generator|trigg|counter_reg\(5)) # ((\trig_generator|trigger~1_combout\) # (!\trig_generator|trigg|counter_reg\(9))))) # (!\trig_generator|trigg|counter_reg\(6) & 
-- (\trig_generator|trigg|counter_reg\(5) & (!\trig_generator|trigg|counter_reg\(9) & !\trig_generator|trigger~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(6),
	datab => \trig_generator|trigg|counter_reg\(5),
	datac => \trig_generator|trigg|counter_reg\(9),
	datad => \trig_generator|trigger~1_combout\,
	combout => \trig_generator|trigger~2_combout\);

-- Location: LCCOMB_X29_Y6_N18
\trig_generator|trigger~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \trig_generator|trigger~3_combout\ = (\trig_generator|Equal0~4_combout\ & (\trig_generator|trigg|counter_reg\(9) $ (((\trig_generator|trigger~0_combout\) # (\trig_generator|trigger~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trig_generator|trigg|counter_reg\(9),
	datab => \trig_generator|trigger~0_combout\,
	datac => \trig_generator|trigger~2_combout\,
	datad => \trig_generator|Equal0~4_combout\,
	combout => \trig_generator|trigger~3_combout\);

-- Location: LCCOMB_X2_Y9_N8
\servo|clk64kHz_map|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|Add0~0_combout\ = \servo|clk64kHz_map|counter\(0) $ (VCC)
-- \servo|clk64kHz_map|Add0~1\ = CARRY(\servo|clk64kHz_map|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk64kHz_map|counter\(0),
	datad => VCC,
	combout => \servo|clk64kHz_map|Add0~0_combout\,
	cout => \servo|clk64kHz_map|Add0~1\);

-- Location: LCCOMB_X2_Y9_N0
\servo|clk64kHz_map|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|counter~2_combout\ = (\servo|clk64kHz_map|Add0~0_combout\ & !\servo|clk64kHz_map|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo|clk64kHz_map|Add0~0_combout\,
	datad => \servo|clk64kHz_map|Equal0~2_combout\,
	combout => \servo|clk64kHz_map|counter~2_combout\);

-- Location: IOIBUF_X0_Y11_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G3
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X2_Y9_N1
\servo|clk64kHz_map|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk64kHz_map|counter~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk64kHz_map|counter\(0));

-- Location: LCCOMB_X2_Y9_N10
\servo|clk64kHz_map|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|Add0~2_combout\ = (\servo|clk64kHz_map|counter\(1) & (!\servo|clk64kHz_map|Add0~1\)) # (!\servo|clk64kHz_map|counter\(1) & ((\servo|clk64kHz_map|Add0~1\) # (GND)))
-- \servo|clk64kHz_map|Add0~3\ = CARRY((!\servo|clk64kHz_map|Add0~1\) # (!\servo|clk64kHz_map|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk64kHz_map|counter\(1),
	datad => VCC,
	cin => \servo|clk64kHz_map|Add0~1\,
	combout => \servo|clk64kHz_map|Add0~2_combout\,
	cout => \servo|clk64kHz_map|Add0~3\);

-- Location: FF_X2_Y9_N11
\servo|clk64kHz_map|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk64kHz_map|Add0~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk64kHz_map|counter\(1));

-- Location: LCCOMB_X2_Y9_N12
\servo|clk64kHz_map|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|Add0~4_combout\ = (\servo|clk64kHz_map|counter\(2) & (\servo|clk64kHz_map|Add0~3\ $ (GND))) # (!\servo|clk64kHz_map|counter\(2) & (!\servo|clk64kHz_map|Add0~3\ & VCC))
-- \servo|clk64kHz_map|Add0~5\ = CARRY((\servo|clk64kHz_map|counter\(2) & !\servo|clk64kHz_map|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk64kHz_map|counter\(2),
	datad => VCC,
	cin => \servo|clk64kHz_map|Add0~3\,
	combout => \servo|clk64kHz_map|Add0~4_combout\,
	cout => \servo|clk64kHz_map|Add0~5\);

-- Location: LCCOMB_X2_Y9_N30
\servo|clk64kHz_map|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|counter~4_combout\ = (\servo|clk64kHz_map|Add0~4_combout\ & !\servo|clk64kHz_map|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk64kHz_map|Add0~4_combout\,
	datad => \servo|clk64kHz_map|Equal0~2_combout\,
	combout => \servo|clk64kHz_map|counter~4_combout\);

-- Location: FF_X2_Y9_N31
\servo|clk64kHz_map|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk64kHz_map|counter~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk64kHz_map|counter\(2));

-- Location: LCCOMB_X2_Y9_N14
\servo|clk64kHz_map|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|Add0~6_combout\ = (\servo|clk64kHz_map|counter\(3) & (!\servo|clk64kHz_map|Add0~5\)) # (!\servo|clk64kHz_map|counter\(3) & ((\servo|clk64kHz_map|Add0~5\) # (GND)))
-- \servo|clk64kHz_map|Add0~7\ = CARRY((!\servo|clk64kHz_map|Add0~5\) # (!\servo|clk64kHz_map|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk64kHz_map|counter\(3),
	datad => VCC,
	cin => \servo|clk64kHz_map|Add0~5\,
	combout => \servo|clk64kHz_map|Add0~6_combout\,
	cout => \servo|clk64kHz_map|Add0~7\);

-- Location: LCCOMB_X2_Y9_N4
\servo|clk64kHz_map|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|counter~3_combout\ = (\servo|clk64kHz_map|Add0~6_combout\ & !\servo|clk64kHz_map|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo|clk64kHz_map|Add0~6_combout\,
	datad => \servo|clk64kHz_map|Equal0~2_combout\,
	combout => \servo|clk64kHz_map|counter~3_combout\);

-- Location: FF_X2_Y9_N5
\servo|clk64kHz_map|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk64kHz_map|counter~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk64kHz_map|counter\(3));

-- Location: LCCOMB_X2_Y9_N16
\servo|clk64kHz_map|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|Add0~8_combout\ = (\servo|clk64kHz_map|counter\(4) & (\servo|clk64kHz_map|Add0~7\ $ (GND))) # (!\servo|clk64kHz_map|counter\(4) & (!\servo|clk64kHz_map|Add0~7\ & VCC))
-- \servo|clk64kHz_map|Add0~9\ = CARRY((\servo|clk64kHz_map|counter\(4) & !\servo|clk64kHz_map|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk64kHz_map|counter\(4),
	datad => VCC,
	cin => \servo|clk64kHz_map|Add0~7\,
	combout => \servo|clk64kHz_map|Add0~8_combout\,
	cout => \servo|clk64kHz_map|Add0~9\);

-- Location: FF_X2_Y9_N17
\servo|clk64kHz_map|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk64kHz_map|Add0~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk64kHz_map|counter\(4));

-- Location: LCCOMB_X2_Y9_N18
\servo|clk64kHz_map|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|Add0~10_combout\ = (\servo|clk64kHz_map|counter\(5) & (!\servo|clk64kHz_map|Add0~9\)) # (!\servo|clk64kHz_map|counter\(5) & ((\servo|clk64kHz_map|Add0~9\) # (GND)))
-- \servo|clk64kHz_map|Add0~11\ = CARRY((!\servo|clk64kHz_map|Add0~9\) # (!\servo|clk64kHz_map|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk64kHz_map|counter\(5),
	datad => VCC,
	cin => \servo|clk64kHz_map|Add0~9\,
	combout => \servo|clk64kHz_map|Add0~10_combout\,
	cout => \servo|clk64kHz_map|Add0~11\);

-- Location: FF_X2_Y9_N19
\servo|clk64kHz_map|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk64kHz_map|Add0~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk64kHz_map|counter\(5));

-- Location: LCCOMB_X2_Y9_N20
\servo|clk64kHz_map|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|Add0~12_combout\ = (\servo|clk64kHz_map|counter\(6) & (\servo|clk64kHz_map|Add0~11\ $ (GND))) # (!\servo|clk64kHz_map|counter\(6) & (!\servo|clk64kHz_map|Add0~11\ & VCC))
-- \servo|clk64kHz_map|Add0~13\ = CARRY((\servo|clk64kHz_map|counter\(6) & !\servo|clk64kHz_map|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk64kHz_map|counter\(6),
	datad => VCC,
	cin => \servo|clk64kHz_map|Add0~11\,
	combout => \servo|clk64kHz_map|Add0~12_combout\,
	cout => \servo|clk64kHz_map|Add0~13\);

-- Location: FF_X2_Y9_N21
\servo|clk64kHz_map|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk64kHz_map|Add0~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk64kHz_map|counter\(6));

-- Location: LCCOMB_X1_Y9_N4
\servo|clk64kHz_map|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|Equal0~1_combout\ = (\servo|clk64kHz_map|counter\(3) & (!\servo|clk64kHz_map|counter\(4) & (!\servo|clk64kHz_map|counter\(6) & !\servo|clk64kHz_map|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk64kHz_map|counter\(3),
	datab => \servo|clk64kHz_map|counter\(4),
	datac => \servo|clk64kHz_map|counter\(6),
	datad => \servo|clk64kHz_map|counter\(5),
	combout => \servo|clk64kHz_map|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y9_N22
\servo|clk64kHz_map|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|Add0~14_combout\ = (\servo|clk64kHz_map|counter\(7) & (!\servo|clk64kHz_map|Add0~13\)) # (!\servo|clk64kHz_map|counter\(7) & ((\servo|clk64kHz_map|Add0~13\) # (GND)))
-- \servo|clk64kHz_map|Add0~15\ = CARRY((!\servo|clk64kHz_map|Add0~13\) # (!\servo|clk64kHz_map|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk64kHz_map|counter\(7),
	datad => VCC,
	cin => \servo|clk64kHz_map|Add0~13\,
	combout => \servo|clk64kHz_map|Add0~14_combout\,
	cout => \servo|clk64kHz_map|Add0~15\);

-- Location: FF_X2_Y9_N23
\servo|clk64kHz_map|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk64kHz_map|Add0~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk64kHz_map|counter\(7));

-- Location: LCCOMB_X2_Y9_N24
\servo|clk64kHz_map|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|Add0~16_combout\ = (\servo|clk64kHz_map|counter\(8) & (\servo|clk64kHz_map|Add0~15\ $ (GND))) # (!\servo|clk64kHz_map|counter\(8) & (!\servo|clk64kHz_map|Add0~15\ & VCC))
-- \servo|clk64kHz_map|Add0~17\ = CARRY((\servo|clk64kHz_map|counter\(8) & !\servo|clk64kHz_map|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk64kHz_map|counter\(8),
	datad => VCC,
	cin => \servo|clk64kHz_map|Add0~15\,
	combout => \servo|clk64kHz_map|Add0~16_combout\,
	cout => \servo|clk64kHz_map|Add0~17\);

-- Location: LCCOMB_X2_Y9_N6
\servo|clk64kHz_map|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|counter~1_combout\ = (!\servo|clk64kHz_map|Equal0~2_combout\ & \servo|clk64kHz_map|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk64kHz_map|Equal0~2_combout\,
	datad => \servo|clk64kHz_map|Add0~16_combout\,
	combout => \servo|clk64kHz_map|counter~1_combout\);

-- Location: FF_X2_Y9_N7
\servo|clk64kHz_map|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk64kHz_map|counter~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk64kHz_map|counter\(8));

-- Location: LCCOMB_X2_Y9_N26
\servo|clk64kHz_map|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|Add0~18_combout\ = \servo|clk64kHz_map|Add0~17\ $ (\servo|clk64kHz_map|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \servo|clk64kHz_map|counter\(9),
	cin => \servo|clk64kHz_map|Add0~17\,
	combout => \servo|clk64kHz_map|Add0~18_combout\);

-- Location: LCCOMB_X2_Y9_N28
\servo|clk64kHz_map|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|counter~0_combout\ = (\servo|clk64kHz_map|Add0~18_combout\ & !\servo|clk64kHz_map|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo|clk64kHz_map|Add0~18_combout\,
	datad => \servo|clk64kHz_map|Equal0~2_combout\,
	combout => \servo|clk64kHz_map|counter~0_combout\);

-- Location: FF_X2_Y9_N29
\servo|clk64kHz_map|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk64kHz_map|counter~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk64kHz_map|counter\(9));

-- Location: LCCOMB_X2_Y9_N2
\servo|clk64kHz_map|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|Equal0~0_combout\ = (\servo|clk64kHz_map|counter\(8) & (!\servo|clk64kHz_map|counter\(0) & (!\servo|clk64kHz_map|counter\(7) & \servo|clk64kHz_map|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk64kHz_map|counter\(8),
	datab => \servo|clk64kHz_map|counter\(0),
	datac => \servo|clk64kHz_map|counter\(7),
	datad => \servo|clk64kHz_map|counter\(9),
	combout => \servo|clk64kHz_map|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y9_N20
\servo|clk64kHz_map|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|Equal0~2_combout\ = (\servo|clk64kHz_map|counter\(2) & (!\servo|clk64kHz_map|counter\(1) & (\servo|clk64kHz_map|Equal0~1_combout\ & \servo|clk64kHz_map|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk64kHz_map|counter\(2),
	datab => \servo|clk64kHz_map|counter\(1),
	datac => \servo|clk64kHz_map|Equal0~1_combout\,
	datad => \servo|clk64kHz_map|Equal0~0_combout\,
	combout => \servo|clk64kHz_map|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y9_N10
\servo|clk64kHz_map|temporal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|temporal~0_combout\ = \servo|clk64kHz_map|temporal~q\ $ (\servo|clk64kHz_map|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo|clk64kHz_map|temporal~q\,
	datad => \servo|clk64kHz_map|Equal0~2_combout\,
	combout => \servo|clk64kHz_map|temporal~0_combout\);

-- Location: LCCOMB_X1_Y9_N0
\servo|clk64kHz_map|temporal~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk64kHz_map|temporal~feeder_combout\ = \servo|clk64kHz_map|temporal~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk64kHz_map|temporal~0_combout\,
	combout => \servo|clk64kHz_map|temporal~feeder_combout\);

-- Location: FF_X1_Y9_N1
\servo|clk64kHz_map|temporal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk64kHz_map|temporal~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk64kHz_map|temporal~q\);

-- Location: CLKCTRL_G0
\servo|clk64kHz_map|temporal~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \servo|clk64kHz_map|temporal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \servo|clk64kHz_map|temporal~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y4_N8
\servo|servo_pwm_map|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add1~2_combout\ = (\servo|servo_pwm_map|cnt\(1) & (!\servo|servo_pwm_map|Add1~1\)) # (!\servo|servo_pwm_map|cnt\(1) & ((\servo|servo_pwm_map|Add1~1\) # (GND)))
-- \servo|servo_pwm_map|Add1~3\ = CARRY((!\servo|servo_pwm_map|Add1~1\) # (!\servo|servo_pwm_map|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|servo_pwm_map|cnt\(1),
	datad => VCC,
	cin => \servo|servo_pwm_map|Add1~1\,
	combout => \servo|servo_pwm_map|Add1~2_combout\,
	cout => \servo|servo_pwm_map|Add1~3\);

-- Location: LCCOMB_X23_Y4_N10
\servo|servo_pwm_map|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add1~4_combout\ = (\servo|servo_pwm_map|cnt\(2) & (\servo|servo_pwm_map|Add1~3\ $ (GND))) # (!\servo|servo_pwm_map|cnt\(2) & (!\servo|servo_pwm_map|Add1~3\ & VCC))
-- \servo|servo_pwm_map|Add1~5\ = CARRY((\servo|servo_pwm_map|cnt\(2) & !\servo|servo_pwm_map|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|servo_pwm_map|cnt\(2),
	datad => VCC,
	cin => \servo|servo_pwm_map|Add1~3\,
	combout => \servo|servo_pwm_map|Add1~4_combout\,
	cout => \servo|servo_pwm_map|Add1~5\);

-- Location: FF_X23_Y4_N11
\servo|servo_pwm_map|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk64kHz_map|temporal~clkctrl_outclk\,
	d => \servo|servo_pwm_map|Add1~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|servo_pwm_map|cnt\(2));

-- Location: LCCOMB_X23_Y4_N12
\servo|servo_pwm_map|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add1~6_combout\ = (\servo|servo_pwm_map|cnt\(3) & (!\servo|servo_pwm_map|Add1~5\)) # (!\servo|servo_pwm_map|cnt\(3) & ((\servo|servo_pwm_map|Add1~5\) # (GND)))
-- \servo|servo_pwm_map|Add1~7\ = CARRY((!\servo|servo_pwm_map|Add1~5\) # (!\servo|servo_pwm_map|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|servo_pwm_map|cnt\(3),
	datad => VCC,
	cin => \servo|servo_pwm_map|Add1~5\,
	combout => \servo|servo_pwm_map|Add1~6_combout\,
	cout => \servo|servo_pwm_map|Add1~7\);

-- Location: FF_X23_Y4_N13
\servo|servo_pwm_map|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk64kHz_map|temporal~clkctrl_outclk\,
	d => \servo|servo_pwm_map|Add1~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|servo_pwm_map|cnt\(3));

-- Location: LCCOMB_X23_Y4_N14
\servo|servo_pwm_map|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add1~8_combout\ = (\servo|servo_pwm_map|cnt\(4) & (\servo|servo_pwm_map|Add1~7\ $ (GND))) # (!\servo|servo_pwm_map|cnt\(4) & (!\servo|servo_pwm_map|Add1~7\ & VCC))
-- \servo|servo_pwm_map|Add1~9\ = CARRY((\servo|servo_pwm_map|cnt\(4) & !\servo|servo_pwm_map|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|servo_pwm_map|cnt\(4),
	datad => VCC,
	cin => \servo|servo_pwm_map|Add1~7\,
	combout => \servo|servo_pwm_map|Add1~8_combout\,
	cout => \servo|servo_pwm_map|Add1~9\);

-- Location: FF_X23_Y4_N15
\servo|servo_pwm_map|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk64kHz_map|temporal~clkctrl_outclk\,
	d => \servo|servo_pwm_map|Add1~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|servo_pwm_map|cnt\(4));

-- Location: LCCOMB_X23_Y4_N16
\servo|servo_pwm_map|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add1~10_combout\ = (\servo|servo_pwm_map|cnt\(5) & (!\servo|servo_pwm_map|Add1~9\)) # (!\servo|servo_pwm_map|cnt\(5) & ((\servo|servo_pwm_map|Add1~9\) # (GND)))
-- \servo|servo_pwm_map|Add1~11\ = CARRY((!\servo|servo_pwm_map|Add1~9\) # (!\servo|servo_pwm_map|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|servo_pwm_map|cnt\(5),
	datad => VCC,
	cin => \servo|servo_pwm_map|Add1~9\,
	combout => \servo|servo_pwm_map|Add1~10_combout\,
	cout => \servo|servo_pwm_map|Add1~11\);

-- Location: FF_X23_Y4_N17
\servo|servo_pwm_map|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk64kHz_map|temporal~clkctrl_outclk\,
	d => \servo|servo_pwm_map|Add1~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|servo_pwm_map|cnt\(5));

-- Location: LCCOMB_X23_Y4_N18
\servo|servo_pwm_map|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add1~12_combout\ = (\servo|servo_pwm_map|cnt\(6) & (\servo|servo_pwm_map|Add1~11\ $ (GND))) # (!\servo|servo_pwm_map|cnt\(6) & (!\servo|servo_pwm_map|Add1~11\ & VCC))
-- \servo|servo_pwm_map|Add1~13\ = CARRY((\servo|servo_pwm_map|cnt\(6) & !\servo|servo_pwm_map|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|servo_pwm_map|cnt\(6),
	datad => VCC,
	cin => \servo|servo_pwm_map|Add1~11\,
	combout => \servo|servo_pwm_map|Add1~12_combout\,
	cout => \servo|servo_pwm_map|Add1~13\);

-- Location: FF_X23_Y4_N19
\servo|servo_pwm_map|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk64kHz_map|temporal~clkctrl_outclk\,
	d => \servo|servo_pwm_map|Add1~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|servo_pwm_map|cnt\(6));

-- Location: LCCOMB_X23_Y4_N20
\servo|servo_pwm_map|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add1~14_combout\ = (\servo|servo_pwm_map|cnt\(7) & (!\servo|servo_pwm_map|Add1~13\)) # (!\servo|servo_pwm_map|cnt\(7) & ((\servo|servo_pwm_map|Add1~13\) # (GND)))
-- \servo|servo_pwm_map|Add1~15\ = CARRY((!\servo|servo_pwm_map|Add1~13\) # (!\servo|servo_pwm_map|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|servo_pwm_map|cnt\(7),
	datad => VCC,
	cin => \servo|servo_pwm_map|Add1~13\,
	combout => \servo|servo_pwm_map|Add1~14_combout\,
	cout => \servo|servo_pwm_map|Add1~15\);

-- Location: FF_X23_Y4_N21
\servo|servo_pwm_map|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk64kHz_map|temporal~clkctrl_outclk\,
	d => \servo|servo_pwm_map|Add1~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|servo_pwm_map|cnt\(7));

-- Location: LCCOMB_X23_Y4_N22
\servo|servo_pwm_map|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add1~16_combout\ = (\servo|servo_pwm_map|cnt\(8) & (\servo|servo_pwm_map|Add1~15\ $ (GND))) # (!\servo|servo_pwm_map|cnt\(8) & (!\servo|servo_pwm_map|Add1~15\ & VCC))
-- \servo|servo_pwm_map|Add1~17\ = CARRY((\servo|servo_pwm_map|cnt\(8) & !\servo|servo_pwm_map|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|servo_pwm_map|cnt\(8),
	datad => VCC,
	cin => \servo|servo_pwm_map|Add1~15\,
	combout => \servo|servo_pwm_map|Add1~16_combout\,
	cout => \servo|servo_pwm_map|Add1~17\);

-- Location: LCCOMB_X23_Y4_N24
\servo|servo_pwm_map|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add1~18_combout\ = (\servo|servo_pwm_map|cnt\(9) & (!\servo|servo_pwm_map|Add1~17\)) # (!\servo|servo_pwm_map|cnt\(9) & ((\servo|servo_pwm_map|Add1~17\) # (GND)))
-- \servo|servo_pwm_map|Add1~19\ = CARRY((!\servo|servo_pwm_map|Add1~17\) # (!\servo|servo_pwm_map|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|servo_pwm_map|cnt\(9),
	datad => VCC,
	cin => \servo|servo_pwm_map|Add1~17\,
	combout => \servo|servo_pwm_map|Add1~18_combout\,
	cout => \servo|servo_pwm_map|Add1~19\);

-- Location: FF_X23_Y4_N25
\servo|servo_pwm_map|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk64kHz_map|temporal~clkctrl_outclk\,
	d => \servo|servo_pwm_map|Add1~18_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|servo_pwm_map|cnt\(9));

-- Location: LCCOMB_X23_Y4_N26
\servo|servo_pwm_map|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add1~20_combout\ = \servo|servo_pwm_map|Add1~19\ $ (!\servo|servo_pwm_map|cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \servo|servo_pwm_map|cnt\(10),
	cin => \servo|servo_pwm_map|Add1~19\,
	combout => \servo|servo_pwm_map|Add1~20_combout\);

-- Location: LCCOMB_X23_Y4_N2
\servo|servo_pwm_map|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|cnt~1_combout\ = (\servo|servo_pwm_map|Add1~20_combout\ & ((!\servo|servo_pwm_map|Equal0~0_combout\) # (!\servo|servo_pwm_map|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo|servo_pwm_map|Equal0~2_combout\,
	datac => \servo|servo_pwm_map|Add1~20_combout\,
	datad => \servo|servo_pwm_map|Equal0~0_combout\,
	combout => \servo|servo_pwm_map|cnt~1_combout\);

-- Location: FF_X23_Y4_N3
\servo|servo_pwm_map|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk64kHz_map|temporal~clkctrl_outclk\,
	d => \servo|servo_pwm_map|cnt~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|servo_pwm_map|cnt\(10));

-- Location: LCCOMB_X23_Y4_N28
\servo|servo_pwm_map|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Equal0~0_combout\ = (!\servo|servo_pwm_map|cnt\(0) & (!\servo|servo_pwm_map|cnt\(9) & (\servo|servo_pwm_map|cnt\(8) & \servo|servo_pwm_map|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|servo_pwm_map|cnt\(0),
	datab => \servo|servo_pwm_map|cnt\(9),
	datac => \servo|servo_pwm_map|cnt\(8),
	datad => \servo|servo_pwm_map|cnt\(10),
	combout => \servo|servo_pwm_map|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y4_N6
\servo|servo_pwm_map|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add1~0_combout\ = \servo|servo_pwm_map|cnt\(0) $ (VCC)
-- \servo|servo_pwm_map|Add1~1\ = CARRY(\servo|servo_pwm_map|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo|servo_pwm_map|cnt\(0),
	datad => VCC,
	combout => \servo|servo_pwm_map|Add1~0_combout\,
	cout => \servo|servo_pwm_map|Add1~1\);

-- Location: LCCOMB_X23_Y4_N0
\servo|servo_pwm_map|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|cnt~0_combout\ = (\servo|servo_pwm_map|Add1~0_combout\ & ((!\servo|servo_pwm_map|Equal0~2_combout\) # (!\servo|servo_pwm_map|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo|servo_pwm_map|Equal0~0_combout\,
	datac => \servo|servo_pwm_map|Equal0~2_combout\,
	datad => \servo|servo_pwm_map|Add1~0_combout\,
	combout => \servo|servo_pwm_map|cnt~0_combout\);

-- Location: FF_X23_Y4_N1
\servo|servo_pwm_map|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk64kHz_map|temporal~clkctrl_outclk\,
	d => \servo|servo_pwm_map|cnt~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|servo_pwm_map|cnt\(0));

-- Location: FF_X23_Y4_N9
\servo|servo_pwm_map|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk64kHz_map|temporal~clkctrl_outclk\,
	d => \servo|servo_pwm_map|Add1~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|servo_pwm_map|cnt\(1));

-- Location: LCCOMB_X23_Y4_N30
\servo|servo_pwm_map|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Equal0~1_combout\ = (!\servo|servo_pwm_map|cnt\(7) & (!\servo|servo_pwm_map|cnt\(5) & (!\servo|servo_pwm_map|cnt\(4) & !\servo|servo_pwm_map|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|servo_pwm_map|cnt\(7),
	datab => \servo|servo_pwm_map|cnt\(5),
	datac => \servo|servo_pwm_map|cnt\(4),
	datad => \servo|servo_pwm_map|cnt\(6),
	combout => \servo|servo_pwm_map|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y4_N6
\servo|servo_pwm_map|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Equal0~2_combout\ = (!\servo|servo_pwm_map|cnt\(1) & (!\servo|servo_pwm_map|cnt\(3) & (!\servo|servo_pwm_map|cnt\(2) & \servo|servo_pwm_map|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|servo_pwm_map|cnt\(1),
	datab => \servo|servo_pwm_map|cnt\(3),
	datac => \servo|servo_pwm_map|cnt\(2),
	datad => \servo|servo_pwm_map|Equal0~1_combout\,
	combout => \servo|servo_pwm_map|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y4_N4
\servo|servo_pwm_map|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|cnt~2_combout\ = (\servo|servo_pwm_map|Add1~16_combout\ & ((!\servo|servo_pwm_map|Equal0~0_combout\) # (!\servo|servo_pwm_map|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo|servo_pwm_map|Equal0~2_combout\,
	datac => \servo|servo_pwm_map|Add1~16_combout\,
	datad => \servo|servo_pwm_map|Equal0~0_combout\,
	combout => \servo|servo_pwm_map|cnt~2_combout\);

-- Location: FF_X23_Y4_N5
\servo|servo_pwm_map|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk64kHz_map|temporal~clkctrl_outclk\,
	d => \servo|servo_pwm_map|cnt~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|servo_pwm_map|cnt\(8));

-- Location: LCCOMB_X29_Y11_N10
\servo|clk1kHz_map|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~0_combout\ = \servo|clk1kHz_map|counter\(0) $ (VCC)
-- \servo|clk1kHz_map|Add0~1\ = CARRY(\servo|clk1kHz_map|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|counter\(0),
	datad => VCC,
	combout => \servo|clk1kHz_map|Add0~0_combout\,
	cout => \servo|clk1kHz_map|Add0~1\);

-- Location: LCCOMB_X30_Y11_N30
\servo|clk1kHz_map|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|counter~0_combout\ = (\servo|clk1kHz_map|Add0~0_combout\ & !\servo|clk1kHz_map|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|Add0~0_combout\,
	datad => \servo|clk1kHz_map|Equal0~6_combout\,
	combout => \servo|clk1kHz_map|counter~0_combout\);

-- Location: FF_X30_Y11_N31
\servo|clk1kHz_map|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|counter~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(0));

-- Location: LCCOMB_X29_Y11_N12
\servo|clk1kHz_map|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~2_combout\ = (\servo|clk1kHz_map|counter\(1) & (!\servo|clk1kHz_map|Add0~1\)) # (!\servo|clk1kHz_map|counter\(1) & ((\servo|clk1kHz_map|Add0~1\) # (GND)))
-- \servo|clk1kHz_map|Add0~3\ = CARRY((!\servo|clk1kHz_map|Add0~1\) # (!\servo|clk1kHz_map|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|counter\(1),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~1\,
	combout => \servo|clk1kHz_map|Add0~2_combout\,
	cout => \servo|clk1kHz_map|Add0~3\);

-- Location: FF_X29_Y11_N13
\servo|clk1kHz_map|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(1));

-- Location: LCCOMB_X29_Y11_N14
\servo|clk1kHz_map|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~4_combout\ = (\servo|clk1kHz_map|counter\(2) & (\servo|clk1kHz_map|Add0~3\ $ (GND))) # (!\servo|clk1kHz_map|counter\(2) & (!\servo|clk1kHz_map|Add0~3\ & VCC))
-- \servo|clk1kHz_map|Add0~5\ = CARRY((\servo|clk1kHz_map|counter\(2) & !\servo|clk1kHz_map|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|counter\(2),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~3\,
	combout => \servo|clk1kHz_map|Add0~4_combout\,
	cout => \servo|clk1kHz_map|Add0~5\);

-- Location: LCCOMB_X29_Y11_N0
\servo|clk1kHz_map|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|counter~4_combout\ = (\servo|clk1kHz_map|Add0~4_combout\ & !\servo|clk1kHz_map|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo|clk1kHz_map|Add0~4_combout\,
	datad => \servo|clk1kHz_map|Equal0~6_combout\,
	combout => \servo|clk1kHz_map|counter~4_combout\);

-- Location: FF_X29_Y11_N1
\servo|clk1kHz_map|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|counter~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(2));

-- Location: LCCOMB_X29_Y11_N16
\servo|clk1kHz_map|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~6_combout\ = (\servo|clk1kHz_map|counter\(3) & (!\servo|clk1kHz_map|Add0~5\)) # (!\servo|clk1kHz_map|counter\(3) & ((\servo|clk1kHz_map|Add0~5\) # (GND)))
-- \servo|clk1kHz_map|Add0~7\ = CARRY((!\servo|clk1kHz_map|Add0~5\) # (!\servo|clk1kHz_map|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|counter\(3),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~5\,
	combout => \servo|clk1kHz_map|Add0~6_combout\,
	cout => \servo|clk1kHz_map|Add0~7\);

-- Location: LCCOMB_X29_Y11_N8
\servo|clk1kHz_map|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|counter~3_combout\ = (\servo|clk1kHz_map|Add0~6_combout\ & !\servo|clk1kHz_map|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|Add0~6_combout\,
	datad => \servo|clk1kHz_map|Equal0~6_combout\,
	combout => \servo|clk1kHz_map|counter~3_combout\);

-- Location: FF_X29_Y11_N9
\servo|clk1kHz_map|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|counter~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(3));

-- Location: LCCOMB_X29_Y11_N18
\servo|clk1kHz_map|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~8_combout\ = (\servo|clk1kHz_map|counter\(4) & (\servo|clk1kHz_map|Add0~7\ $ (GND))) # (!\servo|clk1kHz_map|counter\(4) & (!\servo|clk1kHz_map|Add0~7\ & VCC))
-- \servo|clk1kHz_map|Add0~9\ = CARRY((\servo|clk1kHz_map|counter\(4) & !\servo|clk1kHz_map|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|counter\(4),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~7\,
	combout => \servo|clk1kHz_map|Add0~8_combout\,
	cout => \servo|clk1kHz_map|Add0~9\);

-- Location: FF_X29_Y11_N19
\servo|clk1kHz_map|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(4));

-- Location: LCCOMB_X29_Y11_N20
\servo|clk1kHz_map|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~10_combout\ = (\servo|clk1kHz_map|counter\(5) & (!\servo|clk1kHz_map|Add0~9\)) # (!\servo|clk1kHz_map|counter\(5) & ((\servo|clk1kHz_map|Add0~9\) # (GND)))
-- \servo|clk1kHz_map|Add0~11\ = CARRY((!\servo|clk1kHz_map|Add0~9\) # (!\servo|clk1kHz_map|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|counter\(5),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~9\,
	combout => \servo|clk1kHz_map|Add0~10_combout\,
	cout => \servo|clk1kHz_map|Add0~11\);

-- Location: FF_X29_Y11_N21
\servo|clk1kHz_map|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(5));

-- Location: LCCOMB_X29_Y11_N22
\servo|clk1kHz_map|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~12_combout\ = (\servo|clk1kHz_map|counter\(6) & (\servo|clk1kHz_map|Add0~11\ $ (GND))) # (!\servo|clk1kHz_map|counter\(6) & (!\servo|clk1kHz_map|Add0~11\ & VCC))
-- \servo|clk1kHz_map|Add0~13\ = CARRY((\servo|clk1kHz_map|counter\(6) & !\servo|clk1kHz_map|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|counter\(6),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~11\,
	combout => \servo|clk1kHz_map|Add0~12_combout\,
	cout => \servo|clk1kHz_map|Add0~13\);

-- Location: FF_X29_Y11_N23
\servo|clk1kHz_map|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(6));

-- Location: LCCOMB_X29_Y11_N6
\servo|clk1kHz_map|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Equal0~5_combout\ = (!\servo|clk1kHz_map|counter\(6) & (!\servo|clk1kHz_map|counter\(4) & (\servo|clk1kHz_map|counter\(3) & !\servo|clk1kHz_map|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|counter\(6),
	datab => \servo|clk1kHz_map|counter\(4),
	datac => \servo|clk1kHz_map|counter\(3),
	datad => \servo|clk1kHz_map|counter\(5),
	combout => \servo|clk1kHz_map|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y11_N24
\servo|clk1kHz_map|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~14_combout\ = (\servo|clk1kHz_map|counter\(7) & (!\servo|clk1kHz_map|Add0~13\)) # (!\servo|clk1kHz_map|counter\(7) & ((\servo|clk1kHz_map|Add0~13\) # (GND)))
-- \servo|clk1kHz_map|Add0~15\ = CARRY((!\servo|clk1kHz_map|Add0~13\) # (!\servo|clk1kHz_map|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|counter\(7),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~13\,
	combout => \servo|clk1kHz_map|Add0~14_combout\,
	cout => \servo|clk1kHz_map|Add0~15\);

-- Location: FF_X29_Y11_N25
\servo|clk1kHz_map|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(7));

-- Location: LCCOMB_X29_Y11_N26
\servo|clk1kHz_map|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~16_combout\ = (\servo|clk1kHz_map|counter\(8) & (\servo|clk1kHz_map|Add0~15\ $ (GND))) # (!\servo|clk1kHz_map|counter\(8) & (!\servo|clk1kHz_map|Add0~15\ & VCC))
-- \servo|clk1kHz_map|Add0~17\ = CARRY((\servo|clk1kHz_map|counter\(8) & !\servo|clk1kHz_map|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|counter\(8),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~15\,
	combout => \servo|clk1kHz_map|Add0~16_combout\,
	cout => \servo|clk1kHz_map|Add0~17\);

-- Location: LCCOMB_X30_Y11_N28
\servo|clk1kHz_map|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|counter~2_combout\ = (\servo|clk1kHz_map|Add0~16_combout\ & !\servo|clk1kHz_map|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo|clk1kHz_map|Add0~16_combout\,
	datad => \servo|clk1kHz_map|Equal0~6_combout\,
	combout => \servo|clk1kHz_map|counter~2_combout\);

-- Location: FF_X30_Y11_N29
\servo|clk1kHz_map|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|counter~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(8));

-- Location: LCCOMB_X29_Y11_N28
\servo|clk1kHz_map|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~18_combout\ = (\servo|clk1kHz_map|counter\(9) & (!\servo|clk1kHz_map|Add0~17\)) # (!\servo|clk1kHz_map|counter\(9) & ((\servo|clk1kHz_map|Add0~17\) # (GND)))
-- \servo|clk1kHz_map|Add0~19\ = CARRY((!\servo|clk1kHz_map|Add0~17\) # (!\servo|clk1kHz_map|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|counter\(9),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~17\,
	combout => \servo|clk1kHz_map|Add0~18_combout\,
	cout => \servo|clk1kHz_map|Add0~19\);

-- Location: LCCOMB_X29_Y11_N4
\servo|clk1kHz_map|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|counter~1_combout\ = (\servo|clk1kHz_map|Add0~18_combout\ & !\servo|clk1kHz_map|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|Add0~18_combout\,
	datad => \servo|clk1kHz_map|Equal0~6_combout\,
	combout => \servo|clk1kHz_map|counter~1_combout\);

-- Location: FF_X29_Y11_N5
\servo|clk1kHz_map|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|counter~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(9));

-- Location: LCCOMB_X29_Y11_N30
\servo|clk1kHz_map|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~20_combout\ = (\servo|clk1kHz_map|counter\(10) & (\servo|clk1kHz_map|Add0~19\ $ (GND))) # (!\servo|clk1kHz_map|counter\(10) & (!\servo|clk1kHz_map|Add0~19\ & VCC))
-- \servo|clk1kHz_map|Add0~21\ = CARRY((\servo|clk1kHz_map|counter\(10) & !\servo|clk1kHz_map|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|counter\(10),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~19\,
	combout => \servo|clk1kHz_map|Add0~20_combout\,
	cout => \servo|clk1kHz_map|Add0~21\);

-- Location: FF_X29_Y11_N31
\servo|clk1kHz_map|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~20_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(10));

-- Location: LCCOMB_X29_Y10_N0
\servo|clk1kHz_map|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~22_combout\ = (\servo|clk1kHz_map|counter\(11) & (!\servo|clk1kHz_map|Add0~21\)) # (!\servo|clk1kHz_map|counter\(11) & ((\servo|clk1kHz_map|Add0~21\) # (GND)))
-- \servo|clk1kHz_map|Add0~23\ = CARRY((!\servo|clk1kHz_map|Add0~21\) # (!\servo|clk1kHz_map|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|counter\(11),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~21\,
	combout => \servo|clk1kHz_map|Add0~22_combout\,
	cout => \servo|clk1kHz_map|Add0~23\);

-- Location: FF_X29_Y10_N1
\servo|clk1kHz_map|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~22_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(11));

-- Location: LCCOMB_X29_Y10_N2
\servo|clk1kHz_map|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~24_combout\ = (\servo|clk1kHz_map|counter\(12) & (\servo|clk1kHz_map|Add0~23\ $ (GND))) # (!\servo|clk1kHz_map|counter\(12) & (!\servo|clk1kHz_map|Add0~23\ & VCC))
-- \servo|clk1kHz_map|Add0~25\ = CARRY((\servo|clk1kHz_map|counter\(12) & !\servo|clk1kHz_map|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|counter\(12),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~23\,
	combout => \servo|clk1kHz_map|Add0~24_combout\,
	cout => \servo|clk1kHz_map|Add0~25\);

-- Location: FF_X29_Y10_N3
\servo|clk1kHz_map|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~24_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(12));

-- Location: LCCOMB_X29_Y10_N4
\servo|clk1kHz_map|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~26_combout\ = (\servo|clk1kHz_map|counter\(13) & (!\servo|clk1kHz_map|Add0~25\)) # (!\servo|clk1kHz_map|counter\(13) & ((\servo|clk1kHz_map|Add0~25\) # (GND)))
-- \servo|clk1kHz_map|Add0~27\ = CARRY((!\servo|clk1kHz_map|Add0~25\) # (!\servo|clk1kHz_map|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|counter\(13),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~25\,
	combout => \servo|clk1kHz_map|Add0~26_combout\,
	cout => \servo|clk1kHz_map|Add0~27\);

-- Location: FF_X29_Y10_N5
\servo|clk1kHz_map|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~26_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(13));

-- Location: LCCOMB_X29_Y10_N6
\servo|clk1kHz_map|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~28_combout\ = (\servo|clk1kHz_map|counter\(14) & (\servo|clk1kHz_map|Add0~27\ $ (GND))) # (!\servo|clk1kHz_map|counter\(14) & (!\servo|clk1kHz_map|Add0~27\ & VCC))
-- \servo|clk1kHz_map|Add0~29\ = CARRY((\servo|clk1kHz_map|counter\(14) & !\servo|clk1kHz_map|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|counter\(14),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~27\,
	combout => \servo|clk1kHz_map|Add0~28_combout\,
	cout => \servo|clk1kHz_map|Add0~29\);

-- Location: FF_X29_Y10_N7
\servo|clk1kHz_map|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~28_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(14));

-- Location: LCCOMB_X29_Y10_N30
\servo|clk1kHz_map|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Equal0~2_combout\ = (!\servo|clk1kHz_map|counter\(14) & (!\servo|clk1kHz_map|counter\(11) & (!\servo|clk1kHz_map|counter\(13) & !\servo|clk1kHz_map|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|counter\(14),
	datab => \servo|clk1kHz_map|counter\(11),
	datac => \servo|clk1kHz_map|counter\(13),
	datad => \servo|clk1kHz_map|counter\(12),
	combout => \servo|clk1kHz_map|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y10_N8
\servo|clk1kHz_map|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~30_combout\ = (\servo|clk1kHz_map|counter\(15) & (!\servo|clk1kHz_map|Add0~29\)) # (!\servo|clk1kHz_map|counter\(15) & ((\servo|clk1kHz_map|Add0~29\) # (GND)))
-- \servo|clk1kHz_map|Add0~31\ = CARRY((!\servo|clk1kHz_map|Add0~29\) # (!\servo|clk1kHz_map|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|counter\(15),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~29\,
	combout => \servo|clk1kHz_map|Add0~30_combout\,
	cout => \servo|clk1kHz_map|Add0~31\);

-- Location: FF_X29_Y10_N9
\servo|clk1kHz_map|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~30_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(15));

-- Location: LCCOMB_X29_Y10_N10
\servo|clk1kHz_map|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~32_combout\ = (\servo|clk1kHz_map|counter\(16) & (\servo|clk1kHz_map|Add0~31\ $ (GND))) # (!\servo|clk1kHz_map|counter\(16) & (!\servo|clk1kHz_map|Add0~31\ & VCC))
-- \servo|clk1kHz_map|Add0~33\ = CARRY((\servo|clk1kHz_map|counter\(16) & !\servo|clk1kHz_map|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|counter\(16),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~31\,
	combout => \servo|clk1kHz_map|Add0~32_combout\,
	cout => \servo|clk1kHz_map|Add0~33\);

-- Location: FF_X29_Y10_N11
\servo|clk1kHz_map|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~32_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(16));

-- Location: LCCOMB_X29_Y10_N12
\servo|clk1kHz_map|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~34_combout\ = (\servo|clk1kHz_map|counter\(17) & (!\servo|clk1kHz_map|Add0~33\)) # (!\servo|clk1kHz_map|counter\(17) & ((\servo|clk1kHz_map|Add0~33\) # (GND)))
-- \servo|clk1kHz_map|Add0~35\ = CARRY((!\servo|clk1kHz_map|Add0~33\) # (!\servo|clk1kHz_map|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|counter\(17),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~33\,
	combout => \servo|clk1kHz_map|Add0~34_combout\,
	cout => \servo|clk1kHz_map|Add0~35\);

-- Location: FF_X29_Y10_N13
\servo|clk1kHz_map|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~34_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(17));

-- Location: LCCOMB_X29_Y10_N14
\servo|clk1kHz_map|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~36_combout\ = (\servo|clk1kHz_map|counter\(18) & (\servo|clk1kHz_map|Add0~35\ $ (GND))) # (!\servo|clk1kHz_map|counter\(18) & (!\servo|clk1kHz_map|Add0~35\ & VCC))
-- \servo|clk1kHz_map|Add0~37\ = CARRY((\servo|clk1kHz_map|counter\(18) & !\servo|clk1kHz_map|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|counter\(18),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~35\,
	combout => \servo|clk1kHz_map|Add0~36_combout\,
	cout => \servo|clk1kHz_map|Add0~37\);

-- Location: FF_X29_Y10_N15
\servo|clk1kHz_map|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~36_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(18));

-- Location: LCCOMB_X29_Y10_N28
\servo|clk1kHz_map|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Equal0~1_combout\ = (!\servo|clk1kHz_map|counter\(17) & (!\servo|clk1kHz_map|counter\(15) & (!\servo|clk1kHz_map|counter\(16) & !\servo|clk1kHz_map|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|counter\(17),
	datab => \servo|clk1kHz_map|counter\(15),
	datac => \servo|clk1kHz_map|counter\(16),
	datad => \servo|clk1kHz_map|counter\(18),
	combout => \servo|clk1kHz_map|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y10_N16
\servo|clk1kHz_map|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~38_combout\ = (\servo|clk1kHz_map|counter\(19) & (!\servo|clk1kHz_map|Add0~37\)) # (!\servo|clk1kHz_map|counter\(19) & ((\servo|clk1kHz_map|Add0~37\) # (GND)))
-- \servo|clk1kHz_map|Add0~39\ = CARRY((!\servo|clk1kHz_map|Add0~37\) # (!\servo|clk1kHz_map|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|counter\(19),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~37\,
	combout => \servo|clk1kHz_map|Add0~38_combout\,
	cout => \servo|clk1kHz_map|Add0~39\);

-- Location: FF_X29_Y10_N17
\servo|clk1kHz_map|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~38_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(19));

-- Location: LCCOMB_X29_Y10_N18
\servo|clk1kHz_map|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~40_combout\ = (\servo|clk1kHz_map|counter\(20) & (\servo|clk1kHz_map|Add0~39\ $ (GND))) # (!\servo|clk1kHz_map|counter\(20) & (!\servo|clk1kHz_map|Add0~39\ & VCC))
-- \servo|clk1kHz_map|Add0~41\ = CARRY((\servo|clk1kHz_map|counter\(20) & !\servo|clk1kHz_map|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|counter\(20),
	datad => VCC,
	cin => \servo|clk1kHz_map|Add0~39\,
	combout => \servo|clk1kHz_map|Add0~40_combout\,
	cout => \servo|clk1kHz_map|Add0~41\);

-- Location: FF_X29_Y10_N19
\servo|clk1kHz_map|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~40_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(20));

-- Location: LCCOMB_X29_Y10_N20
\servo|clk1kHz_map|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Add0~42_combout\ = \servo|clk1kHz_map|Add0~41\ $ (\servo|clk1kHz_map|counter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \servo|clk1kHz_map|counter\(21),
	cin => \servo|clk1kHz_map|Add0~41\,
	combout => \servo|clk1kHz_map|Add0~42_combout\);

-- Location: FF_X29_Y10_N21
\servo|clk1kHz_map|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|Add0~42_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|counter\(21));

-- Location: LCCOMB_X29_Y10_N22
\servo|clk1kHz_map|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Equal0~0_combout\ = (!\servo|clk1kHz_map|counter\(20) & (!\servo|clk1kHz_map|counter\(19) & (!\servo|clk1kHz_map|counter\(0) & !\servo|clk1kHz_map|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|counter\(20),
	datab => \servo|clk1kHz_map|counter\(19),
	datac => \servo|clk1kHz_map|counter\(0),
	datad => \servo|clk1kHz_map|counter\(21),
	combout => \servo|clk1kHz_map|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y11_N2
\servo|clk1kHz_map|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Equal0~3_combout\ = (!\servo|clk1kHz_map|counter\(10) & (!\servo|clk1kHz_map|counter\(7) & (\servo|clk1kHz_map|counter\(9) & \servo|clk1kHz_map|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|counter\(10),
	datab => \servo|clk1kHz_map|counter\(7),
	datac => \servo|clk1kHz_map|counter\(9),
	datad => \servo|clk1kHz_map|counter\(8),
	combout => \servo|clk1kHz_map|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y10_N24
\servo|clk1kHz_map|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Equal0~4_combout\ = (\servo|clk1kHz_map|Equal0~2_combout\ & (\servo|clk1kHz_map|Equal0~1_combout\ & (\servo|clk1kHz_map|Equal0~0_combout\ & \servo|clk1kHz_map|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|Equal0~2_combout\,
	datab => \servo|clk1kHz_map|Equal0~1_combout\,
	datac => \servo|clk1kHz_map|Equal0~0_combout\,
	datad => \servo|clk1kHz_map|Equal0~3_combout\,
	combout => \servo|clk1kHz_map|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y10_N26
\servo|clk1kHz_map|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|Equal0~6_combout\ = (\servo|clk1kHz_map|counter\(2) & (!\servo|clk1kHz_map|counter\(1) & (\servo|clk1kHz_map|Equal0~5_combout\ & \servo|clk1kHz_map|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk1kHz_map|counter\(2),
	datab => \servo|clk1kHz_map|counter\(1),
	datac => \servo|clk1kHz_map|Equal0~5_combout\,
	datad => \servo|clk1kHz_map|Equal0~4_combout\,
	combout => \servo|clk1kHz_map|Equal0~6_combout\);

-- Location: LCCOMB_X30_Y11_N18
\servo|clk1kHz_map|temporal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|temporal~0_combout\ = \servo|clk1kHz_map|temporal~q\ $ (\servo|clk1kHz_map|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo|clk1kHz_map|temporal~q\,
	datad => \servo|clk1kHz_map|Equal0~6_combout\,
	combout => \servo|clk1kHz_map|temporal~0_combout\);

-- Location: LCCOMB_X30_Y11_N16
\servo|clk1kHz_map|temporal~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk1kHz_map|temporal~feeder_combout\ = \servo|clk1kHz_map|temporal~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk1kHz_map|temporal~0_combout\,
	combout => \servo|clk1kHz_map|temporal~feeder_combout\);

-- Location: FF_X30_Y11_N17
\servo|clk1kHz_map|temporal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \servo|clk1kHz_map|temporal~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk1kHz_map|temporal~q\);

-- Location: CLKCTRL_G6
\servo|clk1kHz_map|temporal~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \servo|clk1kHz_map|temporal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \servo|clk1kHz_map|temporal~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y4_N26
\servo|address[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|address[0]~3_combout\ = !\servo|address\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo|address\(0),
	combout => \servo|address[0]~3_combout\);

-- Location: FF_X19_Y4_N27
\servo|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk1kHz_map|temporal~clkctrl_outclk\,
	d => \servo|address[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|address\(0));

-- Location: LCCOMB_X19_Y4_N20
\servo|address[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|address[1]~2_combout\ = \servo|address\(1) $ (\servo|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo|address\(1),
	datad => \servo|address\(0),
	combout => \servo|address[1]~2_combout\);

-- Location: FF_X19_Y4_N21
\servo|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk1kHz_map|temporal~clkctrl_outclk\,
	d => \servo|address[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|address\(1));

-- Location: LCCOMB_X19_Y4_N18
\servo|address[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|address[2]~1_combout\ = \servo|address\(2) $ (((\servo|address\(0) & \servo|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|address\(0),
	datac => \servo|address\(2),
	datad => \servo|address\(1),
	combout => \servo|address[2]~1_combout\);

-- Location: FF_X19_Y4_N19
\servo|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk1kHz_map|temporal~clkctrl_outclk\,
	d => \servo|address[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|address\(2));

-- Location: LCCOMB_X19_Y4_N4
\servo|address[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|address[3]~0_combout\ = \servo|address\(3) $ (((\servo|address\(0) & (\servo|address\(2) & \servo|address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|address\(0),
	datab => \servo|address\(2),
	datac => \servo|address\(3),
	datad => \servo|address\(1),
	combout => \servo|address[3]~0_combout\);

-- Location: FF_X19_Y4_N5
\servo|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk1kHz_map|temporal~clkctrl_outclk\,
	d => \servo|address[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|address\(3));

-- Location: LCCOMB_X19_Y4_N16
\servo|sin_wave_position|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|sin_wave_position|Mux0~0_combout\ = (!\servo|address\(0) & (!\servo|address\(1) & (!\servo|address\(3) & !\servo|address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|address\(0),
	datab => \servo|address\(1),
	datac => \servo|address\(3),
	datad => \servo|address\(2),
	combout => \servo|sin_wave_position|Mux0~0_combout\);

-- Location: FF_X19_Y4_N17
\servo|sin_wave_position|o_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk1kHz_map|temporal~clkctrl_outclk\,
	d => \servo|sin_wave_position|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|sin_wave_position|o_data\(7));

-- Location: LCCOMB_X19_Y4_N30
\servo|sin_wave_position|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|sin_wave_position|Mux1~0_combout\ = (\servo|address\(3) & (\servo|address\(2) & ((\servo|address\(1))))) # (!\servo|address\(3) & (!\servo|address\(2) & (\servo|address\(0) $ (\servo|address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|address\(3),
	datab => \servo|address\(2),
	datac => \servo|address\(0),
	datad => \servo|address\(1),
	combout => \servo|sin_wave_position|Mux1~0_combout\);

-- Location: FF_X19_Y4_N31
\servo|sin_wave_position|o_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk1kHz_map|temporal~clkctrl_outclk\,
	d => \servo|sin_wave_position|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|sin_wave_position|o_data\(6));

-- Location: LCCOMB_X19_Y4_N24
\servo|sin_wave_position|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|sin_wave_position|Mux2~0_combout\ = (\servo|address\(0) & ((\servo|address\(3) $ (!\servo|address\(2))))) # (!\servo|address\(0) & (!\servo|address\(1) & ((\servo|address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|address\(0),
	datab => \servo|address\(1),
	datac => \servo|address\(3),
	datad => \servo|address\(2),
	combout => \servo|sin_wave_position|Mux2~0_combout\);

-- Location: FF_X19_Y4_N25
\servo|sin_wave_position|o_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk1kHz_map|temporal~clkctrl_outclk\,
	d => \servo|sin_wave_position|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|sin_wave_position|o_data\(5));

-- Location: LCCOMB_X19_Y4_N6
\servo|sin_wave_position|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|sin_wave_position|Mux3~0_combout\ = (\servo|address\(0) & (\servo|address\(2) $ (\servo|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo|address\(2),
	datac => \servo|address\(0),
	datad => \servo|address\(1),
	combout => \servo|sin_wave_position|Mux3~0_combout\);

-- Location: FF_X19_Y4_N7
\servo|sin_wave_position|o_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk1kHz_map|temporal~clkctrl_outclk\,
	d => \servo|sin_wave_position|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|sin_wave_position|o_data\(4));

-- Location: LCCOMB_X19_Y4_N12
\servo|sin_wave_position|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|sin_wave_position|Mux4~0_combout\ = (\servo|address\(0) & ((\servo|address\(1) & (!\servo|address\(3) & !\servo|address\(2))) # (!\servo|address\(1) & (\servo|address\(3) & \servo|address\(2))))) # (!\servo|address\(0) & (\servo|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|address\(0),
	datab => \servo|address\(1),
	datac => \servo|address\(3),
	datad => \servo|address\(2),
	combout => \servo|sin_wave_position|Mux4~0_combout\);

-- Location: FF_X19_Y4_N13
\servo|sin_wave_position|o_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk1kHz_map|temporal~clkctrl_outclk\,
	d => \servo|sin_wave_position|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|sin_wave_position|o_data\(3));

-- Location: LCCOMB_X19_Y4_N14
\servo|sin_wave_position|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|sin_wave_position|Mux5~0_combout\ = (\servo|address\(0) & (\servo|address\(3) $ (((!\servo|address\(1)))))) # (!\servo|address\(0) & (\servo|address\(2) $ (((!\servo|address\(3) & \servo|address\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|address\(3),
	datab => \servo|address\(2),
	datac => \servo|address\(0),
	datad => \servo|address\(1),
	combout => \servo|sin_wave_position|Mux5~0_combout\);

-- Location: FF_X19_Y4_N15
\servo|sin_wave_position|o_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk1kHz_map|temporal~clkctrl_outclk\,
	d => \servo|sin_wave_position|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|sin_wave_position|o_data\(2));

-- Location: LCCOMB_X19_Y4_N22
\servo|sin_wave_position|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|sin_wave_position|Mux7~0_combout\ = (\servo|address\(0) & ((\servo|address\(3) $ (!\servo|address\(1))))) # (!\servo|address\(0) & ((\servo|address\(2)) # ((\servo|address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|address\(2),
	datab => \servo|address\(3),
	datac => \servo|address\(0),
	datad => \servo|address\(1),
	combout => \servo|sin_wave_position|Mux7~0_combout\);

-- Location: FF_X19_Y4_N23
\servo|sin_wave_position|o_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk1kHz_map|temporal~clkctrl_outclk\,
	d => \servo|sin_wave_position|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|sin_wave_position|o_data\(0));

-- Location: LCCOMB_X19_Y4_N28
\servo|sin_wave_position|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|sin_wave_position|Mux6~0_combout\ = (\servo|address\(0) & ((\servo|address\(2) $ (!\servo|address\(1))))) # (!\servo|address\(0) & (\servo|address\(1) & (\servo|address\(3) $ (!\servo|address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|address\(3),
	datab => \servo|address\(2),
	datac => \servo|address\(0),
	datad => \servo|address\(1),
	combout => \servo|sin_wave_position|Mux6~0_combout\);

-- Location: FF_X19_Y4_N29
\servo|sin_wave_position|o_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \servo|clk1kHz_map|temporal~clkctrl_outclk\,
	d => \servo|sin_wave_position|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|sin_wave_position|o_data\(1));

-- Location: LCCOMB_X21_Y4_N4
\servo|servo_pwm_map|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add0~0_combout\ = (\servo|sin_wave_position|o_data\(0) & (\servo|sin_wave_position|o_data\(1) $ (VCC))) # (!\servo|sin_wave_position|o_data\(0) & (\servo|sin_wave_position|o_data\(1) & VCC))
-- \servo|servo_pwm_map|Add0~1\ = CARRY((\servo|sin_wave_position|o_data\(0) & \servo|sin_wave_position|o_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|sin_wave_position|o_data\(0),
	datab => \servo|sin_wave_position|o_data\(1),
	datad => VCC,
	combout => \servo|servo_pwm_map|Add0~0_combout\,
	cout => \servo|servo_pwm_map|Add0~1\);

-- Location: LCCOMB_X21_Y4_N6
\servo|servo_pwm_map|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add0~2_combout\ = (\servo|sin_wave_position|o_data\(2) & (!\servo|servo_pwm_map|Add0~1\)) # (!\servo|sin_wave_position|o_data\(2) & ((\servo|servo_pwm_map|Add0~1\) # (GND)))
-- \servo|servo_pwm_map|Add0~3\ = CARRY((!\servo|servo_pwm_map|Add0~1\) # (!\servo|sin_wave_position|o_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|sin_wave_position|o_data\(2),
	datad => VCC,
	cin => \servo|servo_pwm_map|Add0~1\,
	combout => \servo|servo_pwm_map|Add0~2_combout\,
	cout => \servo|servo_pwm_map|Add0~3\);

-- Location: LCCOMB_X21_Y4_N8
\servo|servo_pwm_map|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add0~4_combout\ = (\servo|sin_wave_position|o_data\(3) & (\servo|servo_pwm_map|Add0~3\ $ (GND))) # (!\servo|sin_wave_position|o_data\(3) & (!\servo|servo_pwm_map|Add0~3\ & VCC))
-- \servo|servo_pwm_map|Add0~5\ = CARRY((\servo|sin_wave_position|o_data\(3) & !\servo|servo_pwm_map|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|sin_wave_position|o_data\(3),
	datad => VCC,
	cin => \servo|servo_pwm_map|Add0~3\,
	combout => \servo|servo_pwm_map|Add0~4_combout\,
	cout => \servo|servo_pwm_map|Add0~5\);

-- Location: LCCOMB_X21_Y4_N10
\servo|servo_pwm_map|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add0~6_combout\ = (\servo|sin_wave_position|o_data\(4) & (!\servo|servo_pwm_map|Add0~5\)) # (!\servo|sin_wave_position|o_data\(4) & ((\servo|servo_pwm_map|Add0~5\) # (GND)))
-- \servo|servo_pwm_map|Add0~7\ = CARRY((!\servo|servo_pwm_map|Add0~5\) # (!\servo|sin_wave_position|o_data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|sin_wave_position|o_data\(4),
	datad => VCC,
	cin => \servo|servo_pwm_map|Add0~5\,
	combout => \servo|servo_pwm_map|Add0~6_combout\,
	cout => \servo|servo_pwm_map|Add0~7\);

-- Location: LCCOMB_X21_Y4_N12
\servo|servo_pwm_map|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add0~8_combout\ = (\servo|sin_wave_position|o_data\(5) & (\servo|servo_pwm_map|Add0~7\ $ (GND))) # (!\servo|sin_wave_position|o_data\(5) & (!\servo|servo_pwm_map|Add0~7\ & VCC))
-- \servo|servo_pwm_map|Add0~9\ = CARRY((\servo|sin_wave_position|o_data\(5) & !\servo|servo_pwm_map|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|sin_wave_position|o_data\(5),
	datad => VCC,
	cin => \servo|servo_pwm_map|Add0~7\,
	combout => \servo|servo_pwm_map|Add0~8_combout\,
	cout => \servo|servo_pwm_map|Add0~9\);

-- Location: LCCOMB_X21_Y4_N14
\servo|servo_pwm_map|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add0~10_combout\ = (\servo|sin_wave_position|o_data\(6) & (!\servo|servo_pwm_map|Add0~9\)) # (!\servo|sin_wave_position|o_data\(6) & ((\servo|servo_pwm_map|Add0~9\) # (GND)))
-- \servo|servo_pwm_map|Add0~11\ = CARRY((!\servo|servo_pwm_map|Add0~9\) # (!\servo|sin_wave_position|o_data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|sin_wave_position|o_data\(6),
	datad => VCC,
	cin => \servo|servo_pwm_map|Add0~9\,
	combout => \servo|servo_pwm_map|Add0~10_combout\,
	cout => \servo|servo_pwm_map|Add0~11\);

-- Location: LCCOMB_X21_Y4_N16
\servo|servo_pwm_map|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|Add0~12_combout\ = \servo|servo_pwm_map|Add0~11\ $ (!\servo|sin_wave_position|o_data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \servo|sin_wave_position|o_data\(7),
	cin => \servo|servo_pwm_map|Add0~11\,
	combout => \servo|servo_pwm_map|Add0~12_combout\);

-- Location: LCCOMB_X22_Y4_N10
\servo|servo_pwm_map|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|LessThan0~1_cout\ = CARRY((!\servo|sin_wave_position|o_data\(0) & !\servo|servo_pwm_map|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|sin_wave_position|o_data\(0),
	datab => \servo|servo_pwm_map|cnt\(0),
	datad => VCC,
	cout => \servo|servo_pwm_map|LessThan0~1_cout\);

-- Location: LCCOMB_X22_Y4_N12
\servo|servo_pwm_map|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|LessThan0~3_cout\ = CARRY((\servo|servo_pwm_map|cnt\(1) & ((!\servo|servo_pwm_map|LessThan0~1_cout\) # (!\servo|servo_pwm_map|Add0~0_combout\))) # (!\servo|servo_pwm_map|cnt\(1) & (!\servo|servo_pwm_map|Add0~0_combout\ & 
-- !\servo|servo_pwm_map|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|servo_pwm_map|cnt\(1),
	datab => \servo|servo_pwm_map|Add0~0_combout\,
	datad => VCC,
	cin => \servo|servo_pwm_map|LessThan0~1_cout\,
	cout => \servo|servo_pwm_map|LessThan0~3_cout\);

-- Location: LCCOMB_X22_Y4_N14
\servo|servo_pwm_map|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|LessThan0~5_cout\ = CARRY((\servo|servo_pwm_map|cnt\(2) & (\servo|servo_pwm_map|Add0~2_combout\ & !\servo|servo_pwm_map|LessThan0~3_cout\)) # (!\servo|servo_pwm_map|cnt\(2) & ((\servo|servo_pwm_map|Add0~2_combout\) # 
-- (!\servo|servo_pwm_map|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|servo_pwm_map|cnt\(2),
	datab => \servo|servo_pwm_map|Add0~2_combout\,
	datad => VCC,
	cin => \servo|servo_pwm_map|LessThan0~3_cout\,
	cout => \servo|servo_pwm_map|LessThan0~5_cout\);

-- Location: LCCOMB_X22_Y4_N16
\servo|servo_pwm_map|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|LessThan0~7_cout\ = CARRY((\servo|servo_pwm_map|Add0~4_combout\ & (\servo|servo_pwm_map|cnt\(3) & !\servo|servo_pwm_map|LessThan0~5_cout\)) # (!\servo|servo_pwm_map|Add0~4_combout\ & ((\servo|servo_pwm_map|cnt\(3)) # 
-- (!\servo|servo_pwm_map|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|servo_pwm_map|Add0~4_combout\,
	datab => \servo|servo_pwm_map|cnt\(3),
	datad => VCC,
	cin => \servo|servo_pwm_map|LessThan0~5_cout\,
	cout => \servo|servo_pwm_map|LessThan0~7_cout\);

-- Location: LCCOMB_X22_Y4_N18
\servo|servo_pwm_map|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|LessThan0~9_cout\ = CARRY((\servo|servo_pwm_map|Add0~6_combout\ & ((!\servo|servo_pwm_map|LessThan0~7_cout\) # (!\servo|servo_pwm_map|cnt\(4)))) # (!\servo|servo_pwm_map|Add0~6_combout\ & (!\servo|servo_pwm_map|cnt\(4) & 
-- !\servo|servo_pwm_map|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|servo_pwm_map|Add0~6_combout\,
	datab => \servo|servo_pwm_map|cnt\(4),
	datad => VCC,
	cin => \servo|servo_pwm_map|LessThan0~7_cout\,
	cout => \servo|servo_pwm_map|LessThan0~9_cout\);

-- Location: LCCOMB_X22_Y4_N20
\servo|servo_pwm_map|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|LessThan0~11_cout\ = CARRY((\servo|servo_pwm_map|Add0~8_combout\ & (\servo|servo_pwm_map|cnt\(5) & !\servo|servo_pwm_map|LessThan0~9_cout\)) # (!\servo|servo_pwm_map|Add0~8_combout\ & ((\servo|servo_pwm_map|cnt\(5)) # 
-- (!\servo|servo_pwm_map|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|servo_pwm_map|Add0~8_combout\,
	datab => \servo|servo_pwm_map|cnt\(5),
	datad => VCC,
	cin => \servo|servo_pwm_map|LessThan0~9_cout\,
	cout => \servo|servo_pwm_map|LessThan0~11_cout\);

-- Location: LCCOMB_X22_Y4_N22
\servo|servo_pwm_map|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|LessThan0~13_cout\ = CARRY((\servo|servo_pwm_map|Add0~10_combout\ & ((!\servo|servo_pwm_map|LessThan0~11_cout\) # (!\servo|servo_pwm_map|cnt\(6)))) # (!\servo|servo_pwm_map|Add0~10_combout\ & (!\servo|servo_pwm_map|cnt\(6) & 
-- !\servo|servo_pwm_map|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|servo_pwm_map|Add0~10_combout\,
	datab => \servo|servo_pwm_map|cnt\(6),
	datad => VCC,
	cin => \servo|servo_pwm_map|LessThan0~11_cout\,
	cout => \servo|servo_pwm_map|LessThan0~13_cout\);

-- Location: LCCOMB_X22_Y4_N24
\servo|servo_pwm_map|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|LessThan0~14_combout\ = (\servo|servo_pwm_map|Add0~12_combout\ & ((\servo|servo_pwm_map|LessThan0~13_cout\) # (!\servo|servo_pwm_map|cnt\(7)))) # (!\servo|servo_pwm_map|Add0~12_combout\ & (\servo|servo_pwm_map|LessThan0~13_cout\ & 
-- !\servo|servo_pwm_map|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|servo_pwm_map|Add0~12_combout\,
	datad => \servo|servo_pwm_map|cnt\(7),
	cin => \servo|servo_pwm_map|LessThan0~13_cout\,
	combout => \servo|servo_pwm_map|LessThan0~14_combout\);

-- Location: LCCOMB_X22_Y4_N8
\servo|servo_pwm_map|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|servo_pwm_map|LessThan0~16_combout\ = (!\servo|servo_pwm_map|cnt\(8) & (\servo|servo_pwm_map|LessThan0~14_combout\ & (!\servo|servo_pwm_map|cnt\(9) & !\servo|servo_pwm_map|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|servo_pwm_map|cnt\(8),
	datab => \servo|servo_pwm_map|LessThan0~14_combout\,
	datac => \servo|servo_pwm_map|cnt\(9),
	datad => \servo|servo_pwm_map|cnt\(10),
	combout => \servo|servo_pwm_map|LessThan0~16_combout\);

-- Location: LCCOMB_X1_Y11_N30
\uut2|uut1|count[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[0]~45_combout\ = !\uut2|uut1|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut2|uut1|count\(0),
	combout => \uut2|uut1|count[0]~45_combout\);

-- Location: FF_X1_Y11_N31
\uut2|uut1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(0));

-- Location: LCCOMB_X1_Y11_N0
\uut2|uut1|count[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[1]~15_combout\ = (\uut2|uut1|count\(0) & (\uut2|uut1|count\(1) $ (VCC))) # (!\uut2|uut1|count\(0) & (\uut2|uut1|count\(1) & VCC))
-- \uut2|uut1|count[1]~16\ = CARRY((\uut2|uut1|count\(0) & \uut2|uut1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|uut1|count\(0),
	datab => \uut2|uut1|count\(1),
	datad => VCC,
	combout => \uut2|uut1|count[1]~15_combout\,
	cout => \uut2|uut1|count[1]~16\);

-- Location: FF_X1_Y11_N1
\uut2|uut1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(1));

-- Location: LCCOMB_X1_Y11_N2
\uut2|uut1|count[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[2]~17_combout\ = (\uut2|uut1|count\(2) & (!\uut2|uut1|count[1]~16\)) # (!\uut2|uut1|count\(2) & ((\uut2|uut1|count[1]~16\) # (GND)))
-- \uut2|uut1|count[2]~18\ = CARRY((!\uut2|uut1|count[1]~16\) # (!\uut2|uut1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut2|uut1|count\(2),
	datad => VCC,
	cin => \uut2|uut1|count[1]~16\,
	combout => \uut2|uut1|count[2]~17_combout\,
	cout => \uut2|uut1|count[2]~18\);

-- Location: FF_X1_Y11_N3
\uut2|uut1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(2));

-- Location: LCCOMB_X1_Y11_N4
\uut2|uut1|count[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[3]~19_combout\ = (\uut2|uut1|count\(3) & (\uut2|uut1|count[2]~18\ $ (GND))) # (!\uut2|uut1|count\(3) & (!\uut2|uut1|count[2]~18\ & VCC))
-- \uut2|uut1|count[3]~20\ = CARRY((\uut2|uut1|count\(3) & !\uut2|uut1|count[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut2|uut1|count\(3),
	datad => VCC,
	cin => \uut2|uut1|count[2]~18\,
	combout => \uut2|uut1|count[3]~19_combout\,
	cout => \uut2|uut1|count[3]~20\);

-- Location: FF_X1_Y11_N5
\uut2|uut1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(3));

-- Location: LCCOMB_X1_Y11_N6
\uut2|uut1|count[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[4]~21_combout\ = (\uut2|uut1|count\(4) & (!\uut2|uut1|count[3]~20\)) # (!\uut2|uut1|count\(4) & ((\uut2|uut1|count[3]~20\) # (GND)))
-- \uut2|uut1|count[4]~22\ = CARRY((!\uut2|uut1|count[3]~20\) # (!\uut2|uut1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|uut1|count\(4),
	datad => VCC,
	cin => \uut2|uut1|count[3]~20\,
	combout => \uut2|uut1|count[4]~21_combout\,
	cout => \uut2|uut1|count[4]~22\);

-- Location: FF_X1_Y11_N7
\uut2|uut1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(4));

-- Location: LCCOMB_X1_Y11_N8
\uut2|uut1|count[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[5]~23_combout\ = (\uut2|uut1|count\(5) & (\uut2|uut1|count[4]~22\ $ (GND))) # (!\uut2|uut1|count\(5) & (!\uut2|uut1|count[4]~22\ & VCC))
-- \uut2|uut1|count[5]~24\ = CARRY((\uut2|uut1|count\(5) & !\uut2|uut1|count[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut2|uut1|count\(5),
	datad => VCC,
	cin => \uut2|uut1|count[4]~22\,
	combout => \uut2|uut1|count[5]~23_combout\,
	cout => \uut2|uut1|count[5]~24\);

-- Location: FF_X1_Y11_N9
\uut2|uut1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[5]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(5));

-- Location: LCCOMB_X1_Y11_N10
\uut2|uut1|count[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[6]~25_combout\ = (\uut2|uut1|count\(6) & (!\uut2|uut1|count[5]~24\)) # (!\uut2|uut1|count\(6) & ((\uut2|uut1|count[5]~24\) # (GND)))
-- \uut2|uut1|count[6]~26\ = CARRY((!\uut2|uut1|count[5]~24\) # (!\uut2|uut1|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|uut1|count\(6),
	datad => VCC,
	cin => \uut2|uut1|count[5]~24\,
	combout => \uut2|uut1|count[6]~25_combout\,
	cout => \uut2|uut1|count[6]~26\);

-- Location: FF_X1_Y11_N11
\uut2|uut1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(6));

-- Location: LCCOMB_X1_Y11_N12
\uut2|uut1|count[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[7]~27_combout\ = (\uut2|uut1|count\(7) & (\uut2|uut1|count[6]~26\ $ (GND))) # (!\uut2|uut1|count\(7) & (!\uut2|uut1|count[6]~26\ & VCC))
-- \uut2|uut1|count[7]~28\ = CARRY((\uut2|uut1|count\(7) & !\uut2|uut1|count[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|uut1|count\(7),
	datad => VCC,
	cin => \uut2|uut1|count[6]~26\,
	combout => \uut2|uut1|count[7]~27_combout\,
	cout => \uut2|uut1|count[7]~28\);

-- Location: FF_X1_Y11_N13
\uut2|uut1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(7));

-- Location: LCCOMB_X1_Y11_N14
\uut2|uut1|count[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[8]~29_combout\ = (\uut2|uut1|count\(8) & (!\uut2|uut1|count[7]~28\)) # (!\uut2|uut1|count\(8) & ((\uut2|uut1|count[7]~28\) # (GND)))
-- \uut2|uut1|count[8]~30\ = CARRY((!\uut2|uut1|count[7]~28\) # (!\uut2|uut1|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut2|uut1|count\(8),
	datad => VCC,
	cin => \uut2|uut1|count[7]~28\,
	combout => \uut2|uut1|count[8]~29_combout\,
	cout => \uut2|uut1|count[8]~30\);

-- Location: FF_X1_Y11_N15
\uut2|uut1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(8));

-- Location: LCCOMB_X1_Y11_N16
\uut2|uut1|count[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[9]~31_combout\ = (\uut2|uut1|count\(9) & (\uut2|uut1|count[8]~30\ $ (GND))) # (!\uut2|uut1|count\(9) & (!\uut2|uut1|count[8]~30\ & VCC))
-- \uut2|uut1|count[9]~32\ = CARRY((\uut2|uut1|count\(9) & !\uut2|uut1|count[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut2|uut1|count\(9),
	datad => VCC,
	cin => \uut2|uut1|count[8]~30\,
	combout => \uut2|uut1|count[9]~31_combout\,
	cout => \uut2|uut1|count[9]~32\);

-- Location: FF_X1_Y11_N17
\uut2|uut1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(9));

-- Location: LCCOMB_X1_Y11_N18
\uut2|uut1|count[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[10]~33_combout\ = (\uut2|uut1|count\(10) & (!\uut2|uut1|count[9]~32\)) # (!\uut2|uut1|count\(10) & ((\uut2|uut1|count[9]~32\) # (GND)))
-- \uut2|uut1|count[10]~34\ = CARRY((!\uut2|uut1|count[9]~32\) # (!\uut2|uut1|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut2|uut1|count\(10),
	datad => VCC,
	cin => \uut2|uut1|count[9]~32\,
	combout => \uut2|uut1|count[10]~33_combout\,
	cout => \uut2|uut1|count[10]~34\);

-- Location: FF_X1_Y11_N19
\uut2|uut1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(10));

-- Location: LCCOMB_X1_Y11_N20
\uut2|uut1|count[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[11]~35_combout\ = (\uut2|uut1|count\(11) & (\uut2|uut1|count[10]~34\ $ (GND))) # (!\uut2|uut1|count\(11) & (!\uut2|uut1|count[10]~34\ & VCC))
-- \uut2|uut1|count[11]~36\ = CARRY((\uut2|uut1|count\(11) & !\uut2|uut1|count[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut2|uut1|count\(11),
	datad => VCC,
	cin => \uut2|uut1|count[10]~34\,
	combout => \uut2|uut1|count[11]~35_combout\,
	cout => \uut2|uut1|count[11]~36\);

-- Location: FF_X1_Y11_N21
\uut2|uut1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(11));

-- Location: LCCOMB_X1_Y11_N22
\uut2|uut1|count[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[12]~37_combout\ = (\uut2|uut1|count\(12) & (!\uut2|uut1|count[11]~36\)) # (!\uut2|uut1|count\(12) & ((\uut2|uut1|count[11]~36\) # (GND)))
-- \uut2|uut1|count[12]~38\ = CARRY((!\uut2|uut1|count[11]~36\) # (!\uut2|uut1|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|uut1|count\(12),
	datad => VCC,
	cin => \uut2|uut1|count[11]~36\,
	combout => \uut2|uut1|count[12]~37_combout\,
	cout => \uut2|uut1|count[12]~38\);

-- Location: FF_X1_Y11_N23
\uut2|uut1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(12));

-- Location: LCCOMB_X1_Y11_N24
\uut2|uut1|count[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[13]~39_combout\ = (\uut2|uut1|count\(13) & (\uut2|uut1|count[12]~38\ $ (GND))) # (!\uut2|uut1|count\(13) & (!\uut2|uut1|count[12]~38\ & VCC))
-- \uut2|uut1|count[13]~40\ = CARRY((\uut2|uut1|count\(13) & !\uut2|uut1|count[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut2|uut1|count\(13),
	datad => VCC,
	cin => \uut2|uut1|count[12]~38\,
	combout => \uut2|uut1|count[13]~39_combout\,
	cout => \uut2|uut1|count[13]~40\);

-- Location: FF_X1_Y11_N25
\uut2|uut1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(13));

-- Location: LCCOMB_X1_Y11_N26
\uut2|uut1|count[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[14]~41_combout\ = (\uut2|uut1|count\(14) & (!\uut2|uut1|count[13]~40\)) # (!\uut2|uut1|count\(14) & ((\uut2|uut1|count[13]~40\) # (GND)))
-- \uut2|uut1|count[14]~42\ = CARRY((!\uut2|uut1|count[13]~40\) # (!\uut2|uut1|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|uut1|count\(14),
	datad => VCC,
	cin => \uut2|uut1|count[13]~40\,
	combout => \uut2|uut1|count[14]~41_combout\,
	cout => \uut2|uut1|count[14]~42\);

-- Location: FF_X1_Y11_N27
\uut2|uut1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[14]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(14));

-- Location: LCCOMB_X1_Y11_N28
\uut2|uut1|count[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut1|count[15]~43_combout\ = \uut2|uut1|count\(15) $ (!\uut2|uut1|count[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut2|uut1|count\(15),
	cin => \uut2|uut1|count[14]~42\,
	combout => \uut2|uut1|count[15]~43_combout\);

-- Location: FF_X1_Y11_N29
\uut2|uut1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \uut2|uut1|count[15]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|uut1|count\(15));

-- Location: CLKCTRL_G1
\uut2|uut1|count[15]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \uut2|uut1|count[15]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \uut2|uut1|count[15]~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y3_N28
\uut2|Display_Selection[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|Display_Selection[0]~1_combout\ = !\uut2|Display_Selection\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut2|Display_Selection\(0),
	combout => \uut2|Display_Selection[0]~1_combout\);

-- Location: FF_X33_Y3_N29
\uut2|Display_Selection[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut2|uut1|count[15]~clkctrl_outclk\,
	d => \uut2|Display_Selection[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|Display_Selection\(0));

-- Location: LCCOMB_X32_Y3_N4
\uut2|Display_Selection[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|Display_Selection[1]~0_combout\ = \uut2|Display_Selection\(1) $ (\uut2|Display_Selection\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut2|Display_Selection\(1),
	datad => \uut2|Display_Selection\(0),
	combout => \uut2|Display_Selection[1]~0_combout\);

-- Location: FF_X32_Y3_N11
\uut2|Display_Selection[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut2|uut1|count[15]~clkctrl_outclk\,
	asdata => \uut2|Display_Selection[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|Display_Selection\(1));

-- Location: LCCOMB_X33_Y3_N20
\uut2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|Mux4~0_combout\ = (\uut2|Display_Selection\(0)) # (\uut2|Display_Selection\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut2|Display_Selection\(0),
	datad => \uut2|Display_Selection\(1),
	combout => \uut2|Mux4~0_combout\);

-- Location: FF_X33_Y3_N21
\uut2|select_Display_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut2|uut1|count[15]~clkctrl_outclk\,
	d => \uut2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|select_Display_A~q\);

-- Location: LCCOMB_X33_Y3_N30
\uut2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|Mux5~0_combout\ = (\uut2|Display_Selection\(1)) # (!\uut2|Display_Selection\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut2|Display_Selection\(0),
	datad => \uut2|Display_Selection\(1),
	combout => \uut2|Mux5~0_combout\);

-- Location: FF_X33_Y3_N31
\uut2|select_Display_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut2|uut1|count[15]~clkctrl_outclk\,
	d => \uut2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|select_Display_B~q\);

-- Location: LCCOMB_X33_Y3_N24
\uut2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|Mux6~0_combout\ = (\uut2|Display_Selection\(0)) # (!\uut2|Display_Selection\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut2|Display_Selection\(0),
	datad => \uut2|Display_Selection\(1),
	combout => \uut2|Mux6~0_combout\);

-- Location: FF_X33_Y3_N25
\uut2|select_Display_C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut2|uut1|count[15]~clkctrl_outclk\,
	d => \uut2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|select_Display_C~q\);

-- Location: LCCOMB_X33_Y3_N26
\uut2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|Mux3~0_combout\ = (!\uut2|Display_Selection\(1)) # (!\uut2|Display_Selection\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut2|Display_Selection\(0),
	datad => \uut2|Display_Selection\(1),
	combout => \uut2|Mux3~0_combout\);

-- Location: FF_X33_Y3_N27
\uut2|select_Display_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut2|uut1|count[15]~clkctrl_outclk\,
	d => \uut2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|select_Display_D~q\);

-- Location: IOIBUF_X32_Y0_N22
\pulse~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulse,
	o => \pulse~input_o\);

-- Location: LCCOMB_X29_Y3_N6
\Pulse_width|Counter_pulse|counter_reg[0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[0]~55_combout\ = \Pulse_width|Counter_pulse|counter_reg\(0) $ (\pulse~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(0),
	datac => \pulse~input_o\,
	combout => \Pulse_width|Counter_pulse|counter_reg[0]~55_combout\);

-- Location: LCCOMB_X29_Y3_N0
\Pulse_width|Counter_pulse|counter_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[0]~feeder_combout\ = \Pulse_width|Counter_pulse|counter_reg[0]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg[0]~55_combout\,
	combout => \Pulse_width|Counter_pulse|counter_reg[0]~feeder_combout\);

-- Location: FF_X29_Y3_N1
\Pulse_width|Counter_pulse|counter_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[0]~feeder_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(0));

-- Location: LCCOMB_X28_Y3_N12
\Pulse_width|Counter_pulse|counter_reg[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[1]~21_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(1) & (\Pulse_width|Counter_pulse|counter_reg\(0) $ (VCC))) # (!\Pulse_width|Counter_pulse|counter_reg\(1) & (\Pulse_width|Counter_pulse|counter_reg\(0) & 
-- VCC))
-- \Pulse_width|Counter_pulse|counter_reg[1]~22\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(1) & \Pulse_width|Counter_pulse|counter_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(1),
	datab => \Pulse_width|Counter_pulse|counter_reg\(0),
	datad => VCC,
	combout => \Pulse_width|Counter_pulse|counter_reg[1]~21_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[1]~22\);

-- Location: FF_X28_Y3_N13
\Pulse_width|Counter_pulse|counter_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[1]~21_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(1));

-- Location: LCCOMB_X28_Y3_N14
\Pulse_width|Counter_pulse|counter_reg[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[2]~23_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(2) & (!\Pulse_width|Counter_pulse|counter_reg[1]~22\)) # (!\Pulse_width|Counter_pulse|counter_reg\(2) & ((\Pulse_width|Counter_pulse|counter_reg[1]~22\) # 
-- (GND)))
-- \Pulse_width|Counter_pulse|counter_reg[2]~24\ = CARRY((!\Pulse_width|Counter_pulse|counter_reg[1]~22\) # (!\Pulse_width|Counter_pulse|counter_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(2),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[1]~22\,
	combout => \Pulse_width|Counter_pulse|counter_reg[2]~23_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[2]~24\);

-- Location: FF_X28_Y3_N15
\Pulse_width|Counter_pulse|counter_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[2]~23_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(2));

-- Location: LCCOMB_X28_Y3_N16
\Pulse_width|Counter_pulse|counter_reg[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[3]~25_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(3) & (\Pulse_width|Counter_pulse|counter_reg[2]~24\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_reg\(3) & (!\Pulse_width|Counter_pulse|counter_reg[2]~24\ 
-- & VCC))
-- \Pulse_width|Counter_pulse|counter_reg[3]~26\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(3) & !\Pulse_width|Counter_pulse|counter_reg[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(3),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[2]~24\,
	combout => \Pulse_width|Counter_pulse|counter_reg[3]~25_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[3]~26\);

-- Location: FF_X28_Y3_N17
\Pulse_width|Counter_pulse|counter_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[3]~25_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(3));

-- Location: LCCOMB_X28_Y3_N18
\Pulse_width|Counter_pulse|counter_reg[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[4]~27_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(4) & (!\Pulse_width|Counter_pulse|counter_reg[3]~26\)) # (!\Pulse_width|Counter_pulse|counter_reg\(4) & ((\Pulse_width|Counter_pulse|counter_reg[3]~26\) # 
-- (GND)))
-- \Pulse_width|Counter_pulse|counter_reg[4]~28\ = CARRY((!\Pulse_width|Counter_pulse|counter_reg[3]~26\) # (!\Pulse_width|Counter_pulse|counter_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(4),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[3]~26\,
	combout => \Pulse_width|Counter_pulse|counter_reg[4]~27_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[4]~28\);

-- Location: FF_X28_Y3_N19
\Pulse_width|Counter_pulse|counter_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[4]~27_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(4));

-- Location: LCCOMB_X28_Y3_N20
\Pulse_width|Counter_pulse|counter_reg[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[5]~29_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(5) & (\Pulse_width|Counter_pulse|counter_reg[4]~28\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_reg\(5) & (!\Pulse_width|Counter_pulse|counter_reg[4]~28\ 
-- & VCC))
-- \Pulse_width|Counter_pulse|counter_reg[5]~30\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(5) & !\Pulse_width|Counter_pulse|counter_reg[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(5),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[4]~28\,
	combout => \Pulse_width|Counter_pulse|counter_reg[5]~29_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[5]~30\);

-- Location: FF_X28_Y3_N21
\Pulse_width|Counter_pulse|counter_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[5]~29_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(5));

-- Location: LCCOMB_X28_Y3_N22
\Pulse_width|Counter_pulse|counter_reg[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[6]~31_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(6) & (!\Pulse_width|Counter_pulse|counter_reg[5]~30\)) # (!\Pulse_width|Counter_pulse|counter_reg\(6) & ((\Pulse_width|Counter_pulse|counter_reg[5]~30\) # 
-- (GND)))
-- \Pulse_width|Counter_pulse|counter_reg[6]~32\ = CARRY((!\Pulse_width|Counter_pulse|counter_reg[5]~30\) # (!\Pulse_width|Counter_pulse|counter_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(6),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[5]~30\,
	combout => \Pulse_width|Counter_pulse|counter_reg[6]~31_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[6]~32\);

-- Location: FF_X28_Y3_N23
\Pulse_width|Counter_pulse|counter_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[6]~31_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(6));

-- Location: LCCOMB_X28_Y3_N24
\Pulse_width|Counter_pulse|counter_reg[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[7]~33_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(7) & (\Pulse_width|Counter_pulse|counter_reg[6]~32\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_reg\(7) & (!\Pulse_width|Counter_pulse|counter_reg[6]~32\ 
-- & VCC))
-- \Pulse_width|Counter_pulse|counter_reg[7]~34\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(7) & !\Pulse_width|Counter_pulse|counter_reg[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(7),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[6]~32\,
	combout => \Pulse_width|Counter_pulse|counter_reg[7]~33_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[7]~34\);

-- Location: FF_X28_Y3_N25
\Pulse_width|Counter_pulse|counter_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[7]~33_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(7));

-- Location: LCCOMB_X28_Y3_N26
\Pulse_width|Counter_pulse|counter_reg[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[8]~35_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(8) & (!\Pulse_width|Counter_pulse|counter_reg[7]~34\)) # (!\Pulse_width|Counter_pulse|counter_reg\(8) & ((\Pulse_width|Counter_pulse|counter_reg[7]~34\) # 
-- (GND)))
-- \Pulse_width|Counter_pulse|counter_reg[8]~36\ = CARRY((!\Pulse_width|Counter_pulse|counter_reg[7]~34\) # (!\Pulse_width|Counter_pulse|counter_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(8),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[7]~34\,
	combout => \Pulse_width|Counter_pulse|counter_reg[8]~35_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[8]~36\);

-- Location: FF_X28_Y3_N27
\Pulse_width|Counter_pulse|counter_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[8]~35_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(8));

-- Location: LCCOMB_X28_Y3_N28
\Pulse_width|Counter_pulse|counter_reg[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[9]~37_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(9) & (\Pulse_width|Counter_pulse|counter_reg[8]~36\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_reg\(9) & (!\Pulse_width|Counter_pulse|counter_reg[8]~36\ 
-- & VCC))
-- \Pulse_width|Counter_pulse|counter_reg[9]~38\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(9) & !\Pulse_width|Counter_pulse|counter_reg[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(9),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[8]~36\,
	combout => \Pulse_width|Counter_pulse|counter_reg[9]~37_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[9]~38\);

-- Location: FF_X28_Y3_N29
\Pulse_width|Counter_pulse|counter_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[9]~37_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(9));

-- Location: LCCOMB_X28_Y3_N30
\Pulse_width|Counter_pulse|counter_reg[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[10]~39_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(10) & (!\Pulse_width|Counter_pulse|counter_reg[9]~38\)) # (!\Pulse_width|Counter_pulse|counter_reg\(10) & ((\Pulse_width|Counter_pulse|counter_reg[9]~38\) # 
-- (GND)))
-- \Pulse_width|Counter_pulse|counter_reg[10]~40\ = CARRY((!\Pulse_width|Counter_pulse|counter_reg[9]~38\) # (!\Pulse_width|Counter_pulse|counter_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(10),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[9]~38\,
	combout => \Pulse_width|Counter_pulse|counter_reg[10]~39_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[10]~40\);

-- Location: FF_X28_Y3_N31
\Pulse_width|Counter_pulse|counter_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[10]~39_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(10));

-- Location: LCCOMB_X28_Y2_N0
\Pulse_width|Counter_pulse|counter_reg[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[11]~41_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(11) & (\Pulse_width|Counter_pulse|counter_reg[10]~40\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_reg\(11) & 
-- (!\Pulse_width|Counter_pulse|counter_reg[10]~40\ & VCC))
-- \Pulse_width|Counter_pulse|counter_reg[11]~42\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(11) & !\Pulse_width|Counter_pulse|counter_reg[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(11),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[10]~40\,
	combout => \Pulse_width|Counter_pulse|counter_reg[11]~41_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[11]~42\);

-- Location: FF_X28_Y2_N1
\Pulse_width|Counter_pulse|counter_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[11]~41_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(11));

-- Location: LCCOMB_X28_Y2_N2
\Pulse_width|Counter_pulse|counter_reg[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[12]~43_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(12) & (!\Pulse_width|Counter_pulse|counter_reg[11]~42\)) # (!\Pulse_width|Counter_pulse|counter_reg\(12) & ((\Pulse_width|Counter_pulse|counter_reg[11]~42\) 
-- # (GND)))
-- \Pulse_width|Counter_pulse|counter_reg[12]~44\ = CARRY((!\Pulse_width|Counter_pulse|counter_reg[11]~42\) # (!\Pulse_width|Counter_pulse|counter_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(12),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[11]~42\,
	combout => \Pulse_width|Counter_pulse|counter_reg[12]~43_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[12]~44\);

-- Location: FF_X28_Y2_N3
\Pulse_width|Counter_pulse|counter_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[12]~43_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(12));

-- Location: LCCOMB_X28_Y2_N4
\Pulse_width|Counter_pulse|counter_reg[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[13]~45_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(13) & (\Pulse_width|Counter_pulse|counter_reg[12]~44\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_reg\(13) & 
-- (!\Pulse_width|Counter_pulse|counter_reg[12]~44\ & VCC))
-- \Pulse_width|Counter_pulse|counter_reg[13]~46\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(13) & !\Pulse_width|Counter_pulse|counter_reg[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(13),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[12]~44\,
	combout => \Pulse_width|Counter_pulse|counter_reg[13]~45_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[13]~46\);

-- Location: FF_X28_Y2_N5
\Pulse_width|Counter_pulse|counter_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[13]~45_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(13));

-- Location: LCCOMB_X28_Y2_N6
\Pulse_width|Counter_pulse|counter_reg[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[14]~47_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(14) & (!\Pulse_width|Counter_pulse|counter_reg[13]~46\)) # (!\Pulse_width|Counter_pulse|counter_reg\(14) & ((\Pulse_width|Counter_pulse|counter_reg[13]~46\) 
-- # (GND)))
-- \Pulse_width|Counter_pulse|counter_reg[14]~48\ = CARRY((!\Pulse_width|Counter_pulse|counter_reg[13]~46\) # (!\Pulse_width|Counter_pulse|counter_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(14),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[13]~46\,
	combout => \Pulse_width|Counter_pulse|counter_reg[14]~47_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[14]~48\);

-- Location: FF_X28_Y2_N7
\Pulse_width|Counter_pulse|counter_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[14]~47_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(14));

-- Location: LCCOMB_X28_Y2_N8
\Pulse_width|Counter_pulse|counter_reg[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[15]~49_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(15) & (\Pulse_width|Counter_pulse|counter_reg[14]~48\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_reg\(15) & 
-- (!\Pulse_width|Counter_pulse|counter_reg[14]~48\ & VCC))
-- \Pulse_width|Counter_pulse|counter_reg[15]~50\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(15) & !\Pulse_width|Counter_pulse|counter_reg[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(15),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[14]~48\,
	combout => \Pulse_width|Counter_pulse|counter_reg[15]~49_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[15]~50\);

-- Location: FF_X28_Y2_N9
\Pulse_width|Counter_pulse|counter_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[15]~49_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(15));

-- Location: LCCOMB_X28_Y2_N10
\Pulse_width|Counter_pulse|counter_reg[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[16]~51_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(16) & (!\Pulse_width|Counter_pulse|counter_reg[15]~50\)) # (!\Pulse_width|Counter_pulse|counter_reg\(16) & ((\Pulse_width|Counter_pulse|counter_reg[15]~50\) 
-- # (GND)))
-- \Pulse_width|Counter_pulse|counter_reg[16]~52\ = CARRY((!\Pulse_width|Counter_pulse|counter_reg[15]~50\) # (!\Pulse_width|Counter_pulse|counter_reg\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(16),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[15]~50\,
	combout => \Pulse_width|Counter_pulse|counter_reg[16]~51_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[16]~52\);

-- Location: FF_X28_Y2_N11
\Pulse_width|Counter_pulse|counter_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[16]~51_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(16));

-- Location: LCCOMB_X28_Y2_N12
\Pulse_width|Counter_pulse|counter_reg[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[17]~53_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(17) & (\Pulse_width|Counter_pulse|counter_reg[16]~52\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_reg\(17) & 
-- (!\Pulse_width|Counter_pulse|counter_reg[16]~52\ & VCC))
-- \Pulse_width|Counter_pulse|counter_reg[17]~54\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(17) & !\Pulse_width|Counter_pulse|counter_reg[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(17),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[16]~52\,
	combout => \Pulse_width|Counter_pulse|counter_reg[17]~53_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[17]~54\);

-- Location: FF_X28_Y2_N13
\Pulse_width|Counter_pulse|counter_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[17]~53_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(17));

-- Location: LCCOMB_X28_Y2_N14
\Pulse_width|Counter_pulse|counter_reg[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[18]~56_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(18) & (!\Pulse_width|Counter_pulse|counter_reg[17]~54\)) # (!\Pulse_width|Counter_pulse|counter_reg\(18) & ((\Pulse_width|Counter_pulse|counter_reg[17]~54\) 
-- # (GND)))
-- \Pulse_width|Counter_pulse|counter_reg[18]~57\ = CARRY((!\Pulse_width|Counter_pulse|counter_reg[17]~54\) # (!\Pulse_width|Counter_pulse|counter_reg\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(18),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[17]~54\,
	combout => \Pulse_width|Counter_pulse|counter_reg[18]~56_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[18]~57\);

-- Location: FF_X28_Y2_N15
\Pulse_width|Counter_pulse|counter_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[18]~56_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(18));

-- Location: LCCOMB_X29_Y3_N10
\Pulse_width|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~1_cout\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(1) & \Pulse_width|Counter_pulse|counter_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(1),
	datab => \Pulse_width|Counter_pulse|counter_reg\(0),
	datad => VCC,
	cout => \Pulse_width|Add0~1_cout\);

-- Location: LCCOMB_X29_Y3_N12
\Pulse_width|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~3_cout\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(1) & (!\Pulse_width|Counter_pulse|counter_reg\(2) & !\Pulse_width|Add0~1_cout\)) # (!\Pulse_width|Counter_pulse|counter_reg\(1) & ((!\Pulse_width|Add0~1_cout\) # 
-- (!\Pulse_width|Counter_pulse|counter_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(1),
	datab => \Pulse_width|Counter_pulse|counter_reg\(2),
	datad => VCC,
	cin => \Pulse_width|Add0~1_cout\,
	cout => \Pulse_width|Add0~3_cout\);

-- Location: LCCOMB_X29_Y3_N14
\Pulse_width|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~5_cout\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(3) & ((\Pulse_width|Counter_pulse|counter_reg\(2)) # (!\Pulse_width|Add0~3_cout\))) # (!\Pulse_width|Counter_pulse|counter_reg\(3) & (\Pulse_width|Counter_pulse|counter_reg\(2) & 
-- !\Pulse_width|Add0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(3),
	datab => \Pulse_width|Counter_pulse|counter_reg\(2),
	datad => VCC,
	cin => \Pulse_width|Add0~3_cout\,
	cout => \Pulse_width|Add0~5_cout\);

-- Location: LCCOMB_X29_Y3_N16
\Pulse_width|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~7_cout\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(3) & (!\Pulse_width|Counter_pulse|counter_reg\(4) & !\Pulse_width|Add0~5_cout\)) # (!\Pulse_width|Counter_pulse|counter_reg\(3) & ((!\Pulse_width|Add0~5_cout\) # 
-- (!\Pulse_width|Counter_pulse|counter_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(3),
	datab => \Pulse_width|Counter_pulse|counter_reg\(4),
	datad => VCC,
	cin => \Pulse_width|Add0~5_cout\,
	cout => \Pulse_width|Add0~7_cout\);

-- Location: LCCOMB_X29_Y3_N18
\Pulse_width|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~9_cout\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(5) & ((\Pulse_width|Counter_pulse|counter_reg\(4)) # (!\Pulse_width|Add0~7_cout\))) # (!\Pulse_width|Counter_pulse|counter_reg\(5) & (\Pulse_width|Counter_pulse|counter_reg\(4) & 
-- !\Pulse_width|Add0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(5),
	datab => \Pulse_width|Counter_pulse|counter_reg\(4),
	datad => VCC,
	cin => \Pulse_width|Add0~7_cout\,
	cout => \Pulse_width|Add0~9_cout\);

-- Location: LCCOMB_X29_Y3_N20
\Pulse_width|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~11_cout\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(5) & (!\Pulse_width|Counter_pulse|counter_reg\(6) & !\Pulse_width|Add0~9_cout\)) # (!\Pulse_width|Counter_pulse|counter_reg\(5) & ((!\Pulse_width|Add0~9_cout\) # 
-- (!\Pulse_width|Counter_pulse|counter_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(5),
	datab => \Pulse_width|Counter_pulse|counter_reg\(6),
	datad => VCC,
	cin => \Pulse_width|Add0~9_cout\,
	cout => \Pulse_width|Add0~11_cout\);

-- Location: LCCOMB_X29_Y3_N22
\Pulse_width|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~13_cout\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(7) & ((\Pulse_width|Counter_pulse|counter_reg\(6)) # (!\Pulse_width|Add0~11_cout\))) # (!\Pulse_width|Counter_pulse|counter_reg\(7) & (\Pulse_width|Counter_pulse|counter_reg\(6) & 
-- !\Pulse_width|Add0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(7),
	datab => \Pulse_width|Counter_pulse|counter_reg\(6),
	datad => VCC,
	cin => \Pulse_width|Add0~11_cout\,
	cout => \Pulse_width|Add0~13_cout\);

-- Location: LCCOMB_X29_Y3_N24
\Pulse_width|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~15_cout\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(8) & (!\Pulse_width|Counter_pulse|counter_reg\(7) & !\Pulse_width|Add0~13_cout\)) # (!\Pulse_width|Counter_pulse|counter_reg\(8) & ((!\Pulse_width|Add0~13_cout\) # 
-- (!\Pulse_width|Counter_pulse|counter_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(8),
	datab => \Pulse_width|Counter_pulse|counter_reg\(7),
	datad => VCC,
	cin => \Pulse_width|Add0~13_cout\,
	cout => \Pulse_width|Add0~15_cout\);

-- Location: LCCOMB_X29_Y3_N26
\Pulse_width|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~17_cout\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(8) & ((\Pulse_width|Counter_pulse|counter_reg\(9)) # (!\Pulse_width|Add0~15_cout\))) # (!\Pulse_width|Counter_pulse|counter_reg\(8) & (\Pulse_width|Counter_pulse|counter_reg\(9) & 
-- !\Pulse_width|Add0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(8),
	datab => \Pulse_width|Counter_pulse|counter_reg\(9),
	datad => VCC,
	cin => \Pulse_width|Add0~15_cout\,
	cout => \Pulse_width|Add0~17_cout\);

-- Location: LCCOMB_X29_Y3_N28
\Pulse_width|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~19_cout\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(10) & (!\Pulse_width|Counter_pulse|counter_reg\(9) & !\Pulse_width|Add0~17_cout\)) # (!\Pulse_width|Counter_pulse|counter_reg\(10) & ((!\Pulse_width|Add0~17_cout\) # 
-- (!\Pulse_width|Counter_pulse|counter_reg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(10),
	datab => \Pulse_width|Counter_pulse|counter_reg\(9),
	datad => VCC,
	cin => \Pulse_width|Add0~17_cout\,
	cout => \Pulse_width|Add0~19_cout\);

-- Location: LCCOMB_X29_Y3_N30
\Pulse_width|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~21_cout\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(11) & ((\Pulse_width|Counter_pulse|counter_reg\(10)) # (!\Pulse_width|Add0~19_cout\))) # (!\Pulse_width|Counter_pulse|counter_reg\(11) & 
-- (\Pulse_width|Counter_pulse|counter_reg\(10) & !\Pulse_width|Add0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(11),
	datab => \Pulse_width|Counter_pulse|counter_reg\(10),
	datad => VCC,
	cin => \Pulse_width|Add0~19_cout\,
	cout => \Pulse_width|Add0~21_cout\);

-- Location: LCCOMB_X29_Y2_N0
\Pulse_width|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~23_cout\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(12) & (!\Pulse_width|Counter_pulse|counter_reg\(11) & !\Pulse_width|Add0~21_cout\)) # (!\Pulse_width|Counter_pulse|counter_reg\(12) & ((!\Pulse_width|Add0~21_cout\) # 
-- (!\Pulse_width|Counter_pulse|counter_reg\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(12),
	datab => \Pulse_width|Counter_pulse|counter_reg\(11),
	datad => VCC,
	cin => \Pulse_width|Add0~21_cout\,
	cout => \Pulse_width|Add0~23_cout\);

-- Location: LCCOMB_X29_Y2_N2
\Pulse_width|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~24_combout\ = ((\Pulse_width|Counter_pulse|counter_reg\(12) $ (\Pulse_width|Counter_pulse|counter_reg\(13) $ (!\Pulse_width|Add0~23_cout\)))) # (GND)
-- \Pulse_width|Add0~25\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(12) & ((\Pulse_width|Counter_pulse|counter_reg\(13)) # (!\Pulse_width|Add0~23_cout\))) # (!\Pulse_width|Counter_pulse|counter_reg\(12) & (\Pulse_width|Counter_pulse|counter_reg\(13) & 
-- !\Pulse_width|Add0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(12),
	datab => \Pulse_width|Counter_pulse|counter_reg\(13),
	datad => VCC,
	cin => \Pulse_width|Add0~23_cout\,
	combout => \Pulse_width|Add0~24_combout\,
	cout => \Pulse_width|Add0~25\);

-- Location: LCCOMB_X29_Y2_N4
\Pulse_width|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~26_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(14) & ((\Pulse_width|Counter_pulse|counter_reg\(13) & (\Pulse_width|Add0~25\ & VCC)) # (!\Pulse_width|Counter_pulse|counter_reg\(13) & (!\Pulse_width|Add0~25\)))) # 
-- (!\Pulse_width|Counter_pulse|counter_reg\(14) & ((\Pulse_width|Counter_pulse|counter_reg\(13) & (!\Pulse_width|Add0~25\)) # (!\Pulse_width|Counter_pulse|counter_reg\(13) & ((\Pulse_width|Add0~25\) # (GND)))))
-- \Pulse_width|Add0~27\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(14) & (!\Pulse_width|Counter_pulse|counter_reg\(13) & !\Pulse_width|Add0~25\)) # (!\Pulse_width|Counter_pulse|counter_reg\(14) & ((!\Pulse_width|Add0~25\) # 
-- (!\Pulse_width|Counter_pulse|counter_reg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(14),
	datab => \Pulse_width|Counter_pulse|counter_reg\(13),
	datad => VCC,
	cin => \Pulse_width|Add0~25\,
	combout => \Pulse_width|Add0~26_combout\,
	cout => \Pulse_width|Add0~27\);

-- Location: LCCOMB_X29_Y2_N6
\Pulse_width|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~28_combout\ = ((\Pulse_width|Counter_pulse|counter_reg\(14) $ (\Pulse_width|Counter_pulse|counter_reg\(15) $ (!\Pulse_width|Add0~27\)))) # (GND)
-- \Pulse_width|Add0~29\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(14) & ((\Pulse_width|Counter_pulse|counter_reg\(15)) # (!\Pulse_width|Add0~27\))) # (!\Pulse_width|Counter_pulse|counter_reg\(14) & (\Pulse_width|Counter_pulse|counter_reg\(15) & 
-- !\Pulse_width|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(14),
	datab => \Pulse_width|Counter_pulse|counter_reg\(15),
	datad => VCC,
	cin => \Pulse_width|Add0~27\,
	combout => \Pulse_width|Add0~28_combout\,
	cout => \Pulse_width|Add0~29\);

-- Location: LCCOMB_X29_Y2_N8
\Pulse_width|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~30_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(16) & ((\Pulse_width|Counter_pulse|counter_reg\(15) & (\Pulse_width|Add0~29\ & VCC)) # (!\Pulse_width|Counter_pulse|counter_reg\(15) & (!\Pulse_width|Add0~29\)))) # 
-- (!\Pulse_width|Counter_pulse|counter_reg\(16) & ((\Pulse_width|Counter_pulse|counter_reg\(15) & (!\Pulse_width|Add0~29\)) # (!\Pulse_width|Counter_pulse|counter_reg\(15) & ((\Pulse_width|Add0~29\) # (GND)))))
-- \Pulse_width|Add0~31\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(16) & (!\Pulse_width|Counter_pulse|counter_reg\(15) & !\Pulse_width|Add0~29\)) # (!\Pulse_width|Counter_pulse|counter_reg\(16) & ((!\Pulse_width|Add0~29\) # 
-- (!\Pulse_width|Counter_pulse|counter_reg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(16),
	datab => \Pulse_width|Counter_pulse|counter_reg\(15),
	datad => VCC,
	cin => \Pulse_width|Add0~29\,
	combout => \Pulse_width|Add0~30_combout\,
	cout => \Pulse_width|Add0~31\);

-- Location: LCCOMB_X29_Y2_N10
\Pulse_width|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~32_combout\ = ((\Pulse_width|Counter_pulse|counter_reg\(16) $ (\Pulse_width|Counter_pulse|counter_reg\(17) $ (!\Pulse_width|Add0~31\)))) # (GND)
-- \Pulse_width|Add0~33\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(16) & ((\Pulse_width|Counter_pulse|counter_reg\(17)) # (!\Pulse_width|Add0~31\))) # (!\Pulse_width|Counter_pulse|counter_reg\(16) & (\Pulse_width|Counter_pulse|counter_reg\(17) & 
-- !\Pulse_width|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(16),
	datab => \Pulse_width|Counter_pulse|counter_reg\(17),
	datad => VCC,
	cin => \Pulse_width|Add0~31\,
	combout => \Pulse_width|Add0~32_combout\,
	cout => \Pulse_width|Add0~33\);

-- Location: LCCOMB_X29_Y2_N12
\Pulse_width|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~34_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(18) & ((\Pulse_width|Counter_pulse|counter_reg\(17) & (\Pulse_width|Add0~33\ & VCC)) # (!\Pulse_width|Counter_pulse|counter_reg\(17) & (!\Pulse_width|Add0~33\)))) # 
-- (!\Pulse_width|Counter_pulse|counter_reg\(18) & ((\Pulse_width|Counter_pulse|counter_reg\(17) & (!\Pulse_width|Add0~33\)) # (!\Pulse_width|Counter_pulse|counter_reg\(17) & ((\Pulse_width|Add0~33\) # (GND)))))
-- \Pulse_width|Add0~35\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(18) & (!\Pulse_width|Counter_pulse|counter_reg\(17) & !\Pulse_width|Add0~33\)) # (!\Pulse_width|Counter_pulse|counter_reg\(18) & ((!\Pulse_width|Add0~33\) # 
-- (!\Pulse_width|Counter_pulse|counter_reg\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(18),
	datab => \Pulse_width|Counter_pulse|counter_reg\(17),
	datad => VCC,
	cin => \Pulse_width|Add0~33\,
	combout => \Pulse_width|Add0~34_combout\,
	cout => \Pulse_width|Add0~35\);

-- Location: LCCOMB_X28_Y2_N16
\Pulse_width|Counter_pulse|counter_reg[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[19]~58_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(19) & (\Pulse_width|Counter_pulse|counter_reg[18]~57\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_reg\(19) & 
-- (!\Pulse_width|Counter_pulse|counter_reg[18]~57\ & VCC))
-- \Pulse_width|Counter_pulse|counter_reg[19]~59\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(19) & !\Pulse_width|Counter_pulse|counter_reg[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(19),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[18]~57\,
	combout => \Pulse_width|Counter_pulse|counter_reg[19]~58_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[19]~59\);

-- Location: FF_X28_Y2_N17
\Pulse_width|Counter_pulse|counter_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[19]~58_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(19));

-- Location: LCCOMB_X28_Y2_N18
\Pulse_width|Counter_pulse|counter_reg[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[20]~60_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(20) & (!\Pulse_width|Counter_pulse|counter_reg[19]~59\)) # (!\Pulse_width|Counter_pulse|counter_reg\(20) & ((\Pulse_width|Counter_pulse|counter_reg[19]~59\) 
-- # (GND)))
-- \Pulse_width|Counter_pulse|counter_reg[20]~61\ = CARRY((!\Pulse_width|Counter_pulse|counter_reg[19]~59\) # (!\Pulse_width|Counter_pulse|counter_reg\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(20),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_reg[19]~59\,
	combout => \Pulse_width|Counter_pulse|counter_reg[20]~60_combout\,
	cout => \Pulse_width|Counter_pulse|counter_reg[20]~61\);

-- Location: FF_X28_Y2_N19
\Pulse_width|Counter_pulse|counter_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[20]~60_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(20));

-- Location: LCCOMB_X28_Y2_N20
\Pulse_width|Counter_pulse|counter_reg[21]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_reg[21]~62_combout\ = \Pulse_width|Counter_pulse|counter_reg[20]~61\ $ (!\Pulse_width|Counter_pulse|counter_reg\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Pulse_width|Counter_pulse|counter_reg\(21),
	cin => \Pulse_width|Counter_pulse|counter_reg[20]~61\,
	combout => \Pulse_width|Counter_pulse|counter_reg[21]~62_combout\);

-- Location: FF_X28_Y2_N21
\Pulse_width|Counter_pulse|counter_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_reg[21]~62_combout\,
	clrn => \trig_generator|ALT_INV_trigger~3_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_reg\(21));

-- Location: LCCOMB_X29_Y2_N14
\Pulse_width|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~36_combout\ = ((\Pulse_width|Counter_pulse|counter_reg\(18) $ (\Pulse_width|Counter_pulse|counter_reg\(19) $ (!\Pulse_width|Add0~35\)))) # (GND)
-- \Pulse_width|Add0~37\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(18) & ((\Pulse_width|Counter_pulse|counter_reg\(19)) # (!\Pulse_width|Add0~35\))) # (!\Pulse_width|Counter_pulse|counter_reg\(18) & (\Pulse_width|Counter_pulse|counter_reg\(19) & 
-- !\Pulse_width|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(18),
	datab => \Pulse_width|Counter_pulse|counter_reg\(19),
	datad => VCC,
	cin => \Pulse_width|Add0~35\,
	combout => \Pulse_width|Add0~36_combout\,
	cout => \Pulse_width|Add0~37\);

-- Location: LCCOMB_X29_Y2_N16
\Pulse_width|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~38_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(19) & ((\Pulse_width|Counter_pulse|counter_reg\(20) & (\Pulse_width|Add0~37\ & VCC)) # (!\Pulse_width|Counter_pulse|counter_reg\(20) & (!\Pulse_width|Add0~37\)))) # 
-- (!\Pulse_width|Counter_pulse|counter_reg\(19) & ((\Pulse_width|Counter_pulse|counter_reg\(20) & (!\Pulse_width|Add0~37\)) # (!\Pulse_width|Counter_pulse|counter_reg\(20) & ((\Pulse_width|Add0~37\) # (GND)))))
-- \Pulse_width|Add0~39\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(19) & (!\Pulse_width|Counter_pulse|counter_reg\(20) & !\Pulse_width|Add0~37\)) # (!\Pulse_width|Counter_pulse|counter_reg\(19) & ((!\Pulse_width|Add0~37\) # 
-- (!\Pulse_width|Counter_pulse|counter_reg\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(19),
	datab => \Pulse_width|Counter_pulse|counter_reg\(20),
	datad => VCC,
	cin => \Pulse_width|Add0~37\,
	combout => \Pulse_width|Add0~38_combout\,
	cout => \Pulse_width|Add0~39\);

-- Location: LCCOMB_X29_Y2_N18
\Pulse_width|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~40_combout\ = ((\Pulse_width|Counter_pulse|counter_reg\(21) $ (\Pulse_width|Counter_pulse|counter_reg\(20) $ (!\Pulse_width|Add0~39\)))) # (GND)
-- \Pulse_width|Add0~41\ = CARRY((\Pulse_width|Counter_pulse|counter_reg\(21) & ((\Pulse_width|Counter_pulse|counter_reg\(20)) # (!\Pulse_width|Add0~39\))) # (!\Pulse_width|Counter_pulse|counter_reg\(21) & (\Pulse_width|Counter_pulse|counter_reg\(20) & 
-- !\Pulse_width|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_reg\(21),
	datab => \Pulse_width|Counter_pulse|counter_reg\(20),
	datad => VCC,
	cin => \Pulse_width|Add0~39\,
	combout => \Pulse_width|Add0~40_combout\,
	cout => \Pulse_width|Add0~41\);

-- Location: LCCOMB_X29_Y2_N20
\Pulse_width|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~42_combout\ = (\Pulse_width|Counter_pulse|counter_reg\(21) & (!\Pulse_width|Add0~41\)) # (!\Pulse_width|Counter_pulse|counter_reg\(21) & ((\Pulse_width|Add0~41\) # (GND)))
-- \Pulse_width|Add0~43\ = CARRY((!\Pulse_width|Add0~41\) # (!\Pulse_width|Counter_pulse|counter_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_reg\(21),
	datad => VCC,
	cin => \Pulse_width|Add0~41\,
	combout => \Pulse_width|Add0~42_combout\,
	cout => \Pulse_width|Add0~43\);

-- Location: LCCOMB_X29_Y2_N22
\Pulse_width|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Add0~44_combout\ = !\Pulse_width|Add0~43\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Pulse_width|Add0~43\,
	combout => \Pulse_width|Add0~44_combout\);

-- Location: LCCOMB_X29_Y2_N26
\Pulse_width|Distance~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~3_combout\ = ((!\Pulse_width|Add0~40_combout\) # (!\Pulse_width|Add0~36_combout\)) # (!\Pulse_width|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Add0~38_combout\,
	datac => \Pulse_width|Add0~36_combout\,
	datad => \Pulse_width|Add0~40_combout\,
	combout => \Pulse_width|Distance~3_combout\);

-- Location: LCCOMB_X30_Y3_N30
\Pulse_width|Distance~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~32_combout\ = (\Pulse_width|Add0~34_combout\ & (!\Pulse_width|Add0~42_combout\ & (!\Pulse_width|Add0~44_combout\ & \Pulse_width|Distance~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Add0~34_combout\,
	datab => \Pulse_width|Add0~42_combout\,
	datac => \Pulse_width|Add0~44_combout\,
	datad => \Pulse_width|Distance~3_combout\,
	combout => \Pulse_width|Distance~32_combout\);

-- Location: FF_X30_Y3_N31
\Pulse_width|Distance[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(5));

-- Location: LCCOMB_X29_Y2_N28
\Pulse_width|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|LessThan0~0_combout\ = (\Pulse_width|Add0~28_combout\) # ((\Pulse_width|Add0~24_combout\ & \Pulse_width|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Add0~24_combout\,
	datac => \Pulse_width|Add0~26_combout\,
	datad => \Pulse_width|Add0~28_combout\,
	combout => \Pulse_width|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y2_N30
\Pulse_width|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|LessThan0~1_combout\ = (\Pulse_width|Add0~34_combout\) # ((\Pulse_width|Add0~32_combout\) # ((\Pulse_width|Add0~30_combout\ & \Pulse_width|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Add0~34_combout\,
	datab => \Pulse_width|Add0~32_combout\,
	datac => \Pulse_width|Add0~30_combout\,
	datad => \Pulse_width|LessThan0~0_combout\,
	combout => \Pulse_width|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y2_N24
\Pulse_width|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|LessThan0~2_combout\ = (\Pulse_width|Add0~40_combout\ & (\Pulse_width|Add0~36_combout\ & \Pulse_width|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Add0~40_combout\,
	datac => \Pulse_width|Add0~36_combout\,
	datad => \Pulse_width|Add0~38_combout\,
	combout => \Pulse_width|LessThan0~2_combout\);

-- Location: LCCOMB_X28_Y3_N10
\Pulse_width|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|LessThan0~3_combout\ = (\Pulse_width|Add0~44_combout\) # (\Pulse_width|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Add0~44_combout\,
	datac => \Pulse_width|Add0~42_combout\,
	combout => \Pulse_width|LessThan0~3_combout\);

-- Location: LCCOMB_X30_Y3_N20
\Pulse_width|Distance~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~28_combout\ = (\Pulse_width|Add0~38_combout\ & (!\Pulse_width|LessThan0~3_combout\ & ((!\Pulse_width|LessThan0~2_combout\) # (!\Pulse_width|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Add0~38_combout\,
	datab => \Pulse_width|LessThan0~1_combout\,
	datac => \Pulse_width|LessThan0~2_combout\,
	datad => \Pulse_width|LessThan0~3_combout\,
	combout => \Pulse_width|Distance~28_combout\);

-- Location: FF_X30_Y3_N21
\Pulse_width|Distance[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(7));

-- Location: LCCOMB_X30_Y3_N8
\Pulse_width|Distance~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~26_combout\ = (\Pulse_width|Add0~40_combout\ & (!\Pulse_width|LessThan0~3_combout\ & ((!\Pulse_width|LessThan0~2_combout\) # (!\Pulse_width|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Add0~40_combout\,
	datab => \Pulse_width|LessThan0~1_combout\,
	datac => \Pulse_width|LessThan0~2_combout\,
	datad => \Pulse_width|LessThan0~3_combout\,
	combout => \Pulse_width|Distance~26_combout\);

-- Location: FF_X30_Y3_N9
\Pulse_width|Distance[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(8));

-- Location: LCCOMB_X30_Y3_N18
\Pulse_width|Distance~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~27_combout\ = (\Pulse_width|Add0~36_combout\ & (!\Pulse_width|LessThan0~3_combout\ & ((!\Pulse_width|LessThan0~2_combout\) # (!\Pulse_width|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Add0~36_combout\,
	datab => \Pulse_width|LessThan0~1_combout\,
	datac => \Pulse_width|LessThan0~2_combout\,
	datad => \Pulse_width|LessThan0~3_combout\,
	combout => \Pulse_width|Distance~27_combout\);

-- Location: FF_X30_Y3_N19
\Pulse_width|Distance[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(6));

-- Location: LCCOMB_X30_Y3_N6
\BCD_conv|bcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~2_combout\ = (\Pulse_width|Distance\(5) & (\Pulse_width|Distance\(7) $ (((\Pulse_width|Distance\(6)) # (!\Pulse_width|Distance\(8)))))) # (!\Pulse_width|Distance\(5) & ((\Pulse_width|Distance\(7) & (!\Pulse_width|Distance\(8) & 
-- \Pulse_width|Distance\(6))) # (!\Pulse_width|Distance\(7) & (\Pulse_width|Distance\(8) & !\Pulse_width|Distance\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(5),
	datab => \Pulse_width|Distance\(7),
	datac => \Pulse_width|Distance\(8),
	datad => \Pulse_width|Distance\(6),
	combout => \BCD_conv|bcd~2_combout\);

-- Location: LCCOMB_X30_Y3_N16
\Pulse_width|Distance~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~33_combout\ = (\Pulse_width|Add0~32_combout\ & (!\Pulse_width|Add0~42_combout\ & (!\Pulse_width|Add0~44_combout\ & \Pulse_width|Distance~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Add0~32_combout\,
	datab => \Pulse_width|Add0~42_combout\,
	datac => \Pulse_width|Add0~44_combout\,
	datad => \Pulse_width|Distance~3_combout\,
	combout => \Pulse_width|Distance~33_combout\);

-- Location: FF_X30_Y3_N17
\Pulse_width|Distance[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(4));

-- Location: LCCOMB_X30_Y3_N4
\BCD_conv|bcd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~0_combout\ = (\Pulse_width|Distance\(8) & (!\Pulse_width|Distance\(6) & ((\Pulse_width|Distance\(7)) # (!\Pulse_width|Distance\(5))))) # (!\Pulse_width|Distance\(8) & (\Pulse_width|Distance\(6) & ((\Pulse_width|Distance\(5)) # 
-- (!\Pulse_width|Distance\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(5),
	datab => \Pulse_width|Distance\(7),
	datac => \Pulse_width|Distance\(8),
	datad => \Pulse_width|Distance\(6),
	combout => \BCD_conv|bcd~0_combout\);

-- Location: LCCOMB_X30_Y3_N10
\BCD_conv|bcd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~1_combout\ = (\Pulse_width|Distance\(7) & (!\Pulse_width|Distance\(5) & (\Pulse_width|Distance\(8) $ (!\Pulse_width|Distance\(6))))) # (!\Pulse_width|Distance\(7) & (\Pulse_width|Distance\(8) & (\Pulse_width|Distance\(5) & 
-- !\Pulse_width|Distance\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(7),
	datab => \Pulse_width|Distance\(8),
	datac => \Pulse_width|Distance\(5),
	datad => \Pulse_width|Distance\(6),
	combout => \BCD_conv|bcd~1_combout\);

-- Location: LCCOMB_X30_Y3_N12
\BCD_conv|bcd~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~8_combout\ = (\BCD_conv|bcd~0_combout\ & (!\BCD_conv|bcd~2_combout\ & (!\Pulse_width|Distance\(4)))) # (!\BCD_conv|bcd~0_combout\ & (\BCD_conv|bcd~1_combout\ & ((\BCD_conv|bcd~2_combout\) # (\Pulse_width|Distance\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~2_combout\,
	datab => \Pulse_width|Distance\(4),
	datac => \BCD_conv|bcd~0_combout\,
	datad => \BCD_conv|bcd~1_combout\,
	combout => \BCD_conv|bcd~8_combout\);

-- Location: LCCOMB_X28_Y3_N6
\Pulse_width|Distance~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~29_combout\ = (!\Pulse_width|LessThan0~3_combout\ & (\Pulse_width|Add0~30_combout\ & ((!\Pulse_width|LessThan0~1_combout\) # (!\Pulse_width|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|LessThan0~3_combout\,
	datab => \Pulse_width|Add0~30_combout\,
	datac => \Pulse_width|LessThan0~2_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~29_combout\);

-- Location: FF_X28_Y3_N7
\Pulse_width|Distance[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(3));

-- Location: LCCOMB_X30_Y3_N26
\BCD_conv|bcd~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~9_combout\ = (\Pulse_width|Distance\(4) & (((!\BCD_conv|bcd~0_combout\ & !\BCD_conv|bcd~1_combout\)))) # (!\Pulse_width|Distance\(4) & ((\BCD_conv|bcd~1_combout\) # ((\BCD_conv|bcd~2_combout\ & \BCD_conv|bcd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~2_combout\,
	datab => \Pulse_width|Distance\(4),
	datac => \BCD_conv|bcd~0_combout\,
	datad => \BCD_conv|bcd~1_combout\,
	combout => \BCD_conv|bcd~9_combout\);

-- Location: LCCOMB_X30_Y3_N2
\BCD_conv|bcd~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~7_combout\ = (\BCD_conv|bcd~2_combout\ & ((\Pulse_width|Distance\(4)) # ((!\BCD_conv|bcd~0_combout\ & !\BCD_conv|bcd~1_combout\)))) # (!\BCD_conv|bcd~2_combout\ & (((!\Pulse_width|Distance\(4) & \BCD_conv|bcd~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~2_combout\,
	datab => \BCD_conv|bcd~0_combout\,
	datac => \Pulse_width|Distance\(4),
	datad => \BCD_conv|bcd~1_combout\,
	combout => \BCD_conv|bcd~7_combout\);

-- Location: LCCOMB_X30_Y3_N14
\BCD_conv|bcd~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~13_combout\ = (\BCD_conv|bcd~7_combout\ & (((!\Pulse_width|Distance\(3) & !\BCD_conv|bcd~9_combout\)))) # (!\BCD_conv|bcd~7_combout\ & (\BCD_conv|bcd~8_combout\ & ((\Pulse_width|Distance\(3)) # (\BCD_conv|bcd~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~8_combout\,
	datab => \Pulse_width|Distance\(3),
	datac => \BCD_conv|bcd~9_combout\,
	datad => \BCD_conv|bcd~7_combout\,
	combout => \BCD_conv|bcd~13_combout\);

-- Location: LCCOMB_X30_Y3_N24
\BCD_conv|bcd~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~14_combout\ = (\BCD_conv|bcd~8_combout\ & (!\Pulse_width|Distance\(3))) # (!\BCD_conv|bcd~8_combout\ & ((\Pulse_width|Distance\(3) & ((!\BCD_conv|bcd~7_combout\))) # (!\Pulse_width|Distance\(3) & (\BCD_conv|bcd~9_combout\ & 
-- \BCD_conv|bcd~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~8_combout\,
	datab => \Pulse_width|Distance\(3),
	datac => \BCD_conv|bcd~9_combout\,
	datad => \BCD_conv|bcd~7_combout\,
	combout => \BCD_conv|bcd~14_combout\);

-- Location: LCCOMB_X28_Y3_N8
\Pulse_width|Distance~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~30_combout\ = (\Pulse_width|Add0~28_combout\ & (!\Pulse_width|LessThan0~3_combout\ & ((!\Pulse_width|LessThan0~2_combout\) # (!\Pulse_width|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Add0~28_combout\,
	datab => \Pulse_width|LessThan0~1_combout\,
	datac => \Pulse_width|LessThan0~2_combout\,
	datad => \Pulse_width|LessThan0~3_combout\,
	combout => \Pulse_width|Distance~30_combout\);

-- Location: FF_X28_Y3_N9
\Pulse_width|Distance[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(2));

-- Location: LCCOMB_X30_Y3_N28
\BCD_conv|bcd~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~12_combout\ = (\Pulse_width|Distance\(3) & (((\BCD_conv|bcd~9_combout\)))) # (!\Pulse_width|Distance\(3) & ((\BCD_conv|bcd~9_combout\ & (!\BCD_conv|bcd~7_combout\ & !\BCD_conv|bcd~8_combout\)) # (!\BCD_conv|bcd~9_combout\ & 
-- ((\BCD_conv|bcd~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(3),
	datab => \BCD_conv|bcd~7_combout\,
	datac => \BCD_conv|bcd~9_combout\,
	datad => \BCD_conv|bcd~8_combout\,
	combout => \BCD_conv|bcd~12_combout\);

-- Location: LCCOMB_X31_Y3_N30
\BCD_conv|bcd~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~15_combout\ = \BCD_conv|bcd~13_combout\ $ ((((!\BCD_conv|bcd~14_combout\ & !\Pulse_width|Distance\(2))) # (!\BCD_conv|bcd~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~13_combout\,
	datab => \BCD_conv|bcd~14_combout\,
	datac => \Pulse_width|Distance\(2),
	datad => \BCD_conv|bcd~12_combout\,
	combout => \BCD_conv|bcd~15_combout\);

-- Location: LCCOMB_X31_Y3_N20
\BCD_conv|bcd~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~22_combout\ = (\Pulse_width|Distance\(7) & ((\Pulse_width|Distance\(5) & (\Pulse_width|Distance\(8) & !\Pulse_width|Distance\(6))) # (!\Pulse_width|Distance\(5) & ((\Pulse_width|Distance\(8)) # (!\Pulse_width|Distance\(6)))))) # 
-- (!\Pulse_width|Distance\(7) & (((\Pulse_width|Distance\(6)) # (!\Pulse_width|Distance\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(7),
	datab => \Pulse_width|Distance\(5),
	datac => \Pulse_width|Distance\(8),
	datad => \Pulse_width|Distance\(6),
	combout => \BCD_conv|bcd~22_combout\);

-- Location: LCCOMB_X31_Y3_N4
\BCD_conv|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|LessThan0~0_combout\ = (\Pulse_width|Distance\(7)) # (\Pulse_width|Distance\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Distance\(7),
	datad => \Pulse_width|Distance\(6),
	combout => \BCD_conv|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y3_N2
\BCD_conv|bcd~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~21_combout\ = \BCD_conv|bcd~1_combout\ $ ((((!\Pulse_width|Distance\(4) & !\BCD_conv|bcd~2_combout\)) # (!\BCD_conv|bcd~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(4),
	datab => \BCD_conv|bcd~2_combout\,
	datac => \BCD_conv|bcd~0_combout\,
	datad => \BCD_conv|bcd~1_combout\,
	combout => \BCD_conv|bcd~21_combout\);

-- Location: LCCOMB_X31_Y3_N12
\BCD_conv|bcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~3_combout\ = (\Pulse_width|Distance\(8) & (\BCD_conv|bcd~22_combout\ & (\BCD_conv|LessThan0~0_combout\ & \BCD_conv|bcd~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(8),
	datab => \BCD_conv|bcd~22_combout\,
	datac => \BCD_conv|LessThan0~0_combout\,
	datad => \BCD_conv|bcd~21_combout\,
	combout => \BCD_conv|bcd~3_combout\);

-- Location: LCCOMB_X31_Y3_N14
\BCD_conv|bcd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~4_combout\ = (!\BCD_conv|bcd~22_combout\ & (((!\BCD_conv|bcd~21_combout\) # (!\BCD_conv|LessThan0~0_combout\)) # (!\Pulse_width|Distance\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(8),
	datab => \BCD_conv|bcd~22_combout\,
	datac => \BCD_conv|LessThan0~0_combout\,
	datad => \BCD_conv|bcd~21_combout\,
	combout => \BCD_conv|bcd~4_combout\);

-- Location: LCCOMB_X31_Y3_N22
\BCD_conv|bcd~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~10_combout\ = \BCD_conv|bcd~8_combout\ $ ((((!\Pulse_width|Distance\(3) & !\BCD_conv|bcd~9_combout\)) # (!\BCD_conv|bcd~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~8_combout\,
	datab => \BCD_conv|bcd~7_combout\,
	datac => \Pulse_width|Distance\(3),
	datad => \BCD_conv|bcd~9_combout\,
	combout => \BCD_conv|bcd~10_combout\);

-- Location: LCCOMB_X30_Y3_N0
\BCD_conv|bcd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~5_combout\ = (\Pulse_width|Distance\(7) & (\Pulse_width|Distance\(6) & (\Pulse_width|Distance\(5) & \Pulse_width|Distance\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(7),
	datab => \Pulse_width|Distance\(6),
	datac => \Pulse_width|Distance\(5),
	datad => \Pulse_width|Distance\(8),
	combout => \BCD_conv|bcd~5_combout\);

-- Location: LCCOMB_X31_Y3_N16
\BCD_conv|bcd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~6_combout\ = (\BCD_conv|bcd~5_combout\) # ((!\BCD_conv|bcd~21_combout\ & ((!\BCD_conv|LessThan0~0_combout\) # (!\Pulse_width|Distance\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(8),
	datab => \BCD_conv|LessThan0~0_combout\,
	datac => \BCD_conv|bcd~5_combout\,
	datad => \BCD_conv|bcd~21_combout\,
	combout => \BCD_conv|bcd~6_combout\);

-- Location: LCCOMB_X31_Y3_N24
\BCD_conv|bcd~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~11_combout\ = (\BCD_conv|bcd~3_combout\ & ((\BCD_conv|bcd~10_combout\ $ (\BCD_conv|bcd~6_combout\)))) # (!\BCD_conv|bcd~3_combout\ & (\BCD_conv|bcd~6_combout\ & ((!\BCD_conv|bcd~10_combout\) # (!\BCD_conv|bcd~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~3_combout\,
	datab => \BCD_conv|bcd~4_combout\,
	datac => \BCD_conv|bcd~10_combout\,
	datad => \BCD_conv|bcd~6_combout\,
	combout => \BCD_conv|bcd~11_combout\);

-- Location: LCCOMB_X31_Y3_N8
\BCD_conv|bcd~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~16_combout\ = (\BCD_conv|bcd~10_combout\ & (!\BCD_conv|bcd~3_combout\ & ((!\BCD_conv|bcd~4_combout\) # (!\BCD_conv|bcd~6_combout\)))) # (!\BCD_conv|bcd~10_combout\ & (((\BCD_conv|bcd~4_combout\) # (\BCD_conv|bcd~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~10_combout\,
	datab => \BCD_conv|bcd~6_combout\,
	datac => \BCD_conv|bcd~4_combout\,
	datad => \BCD_conv|bcd~3_combout\,
	combout => \BCD_conv|bcd~16_combout\);

-- Location: LCCOMB_X31_Y3_N18
\BCD_conv|bcd~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~17_combout\ = (\BCD_conv|bcd~4_combout\ & (((\BCD_conv|bcd~10_combout\ & !\BCD_conv|bcd~6_combout\)))) # (!\BCD_conv|bcd~4_combout\ & (\BCD_conv|bcd~3_combout\ & ((\BCD_conv|bcd~6_combout\) # (!\BCD_conv|bcd~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~3_combout\,
	datab => \BCD_conv|bcd~4_combout\,
	datac => \BCD_conv|bcd~10_combout\,
	datad => \BCD_conv|bcd~6_combout\,
	combout => \BCD_conv|bcd~17_combout\);

-- Location: LCCOMB_X31_Y3_N0
\BCD_conv|tens[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|tens[2]~2_combout\ = (\BCD_conv|bcd~15_combout\ & ((\BCD_conv|bcd~16_combout\ & ((\BCD_conv|bcd~17_combout\))) # (!\BCD_conv|bcd~16_combout\ & (!\BCD_conv|bcd~11_combout\ & !\BCD_conv|bcd~17_combout\)))) # (!\BCD_conv|bcd~15_combout\ & 
-- (((!\BCD_conv|bcd~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~15_combout\,
	datab => \BCD_conv|bcd~11_combout\,
	datac => \BCD_conv|bcd~16_combout\,
	datad => \BCD_conv|bcd~17_combout\,
	combout => \BCD_conv|tens[2]~2_combout\);

-- Location: FF_X31_Y3_N1
\Bi[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \BCD_conv|tens[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Bi(2));

-- Location: LCCOMB_X32_Y3_N30
\BCD_conv|bcd~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~18_combout\ = (\BCD_conv|bcd~13_combout\ & (\Pulse_width|Distance\(2) $ (((!\BCD_conv|bcd~14_combout\))))) # (!\BCD_conv|bcd~13_combout\ & (\BCD_conv|bcd~14_combout\ & ((\Pulse_width|Distance\(2)) # (!\BCD_conv|bcd~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~13_combout\,
	datab => \Pulse_width|Distance\(2),
	datac => \BCD_conv|bcd~12_combout\,
	datad => \BCD_conv|bcd~14_combout\,
	combout => \BCD_conv|bcd~18_combout\);

-- Location: LCCOMB_X28_Y3_N2
\Pulse_width|Distance~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~31_combout\ = (!\Pulse_width|LessThan0~3_combout\ & (\Pulse_width|Add0~26_combout\ & ((!\Pulse_width|LessThan0~1_combout\) # (!\Pulse_width|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|LessThan0~3_combout\,
	datab => \Pulse_width|Add0~26_combout\,
	datac => \Pulse_width|LessThan0~2_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~31_combout\);

-- Location: FF_X28_Y3_N3
\Pulse_width|Distance[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(1));

-- Location: LCCOMB_X32_Y3_N8
\BCD_conv|bcd~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~19_combout\ = (\BCD_conv|bcd~12_combout\ & (((!\Pulse_width|Distance\(2) & !\BCD_conv|bcd~14_combout\)))) # (!\BCD_conv|bcd~12_combout\ & (\BCD_conv|bcd~13_combout\ & ((\Pulse_width|Distance\(2)) # (\BCD_conv|bcd~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~13_combout\,
	datab => \Pulse_width|Distance\(2),
	datac => \BCD_conv|bcd~12_combout\,
	datad => \BCD_conv|bcd~14_combout\,
	combout => \BCD_conv|bcd~19_combout\);

-- Location: LCCOMB_X32_Y3_N2
\BCD_conv|bcd~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|bcd~20_combout\ = (\BCD_conv|bcd~13_combout\ & (!\Pulse_width|Distance\(2))) # (!\BCD_conv|bcd~13_combout\ & ((\Pulse_width|Distance\(2) & (!\BCD_conv|bcd~12_combout\)) # (!\Pulse_width|Distance\(2) & (\BCD_conv|bcd~12_combout\ & 
-- \BCD_conv|bcd~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~13_combout\,
	datab => \Pulse_width|Distance\(2),
	datac => \BCD_conv|bcd~12_combout\,
	datad => \BCD_conv|bcd~14_combout\,
	combout => \BCD_conv|bcd~20_combout\);

-- Location: LCCOMB_X32_Y3_N26
\BCD_conv|unit[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|unit[2]~1_combout\ = (\Pulse_width|Distance\(1) & (((\BCD_conv|bcd~20_combout\)))) # (!\Pulse_width|Distance\(1) & ((\BCD_conv|bcd~19_combout\ & ((!\BCD_conv|bcd~20_combout\))) # (!\BCD_conv|bcd~19_combout\ & (!\BCD_conv|bcd~18_combout\ & 
-- \BCD_conv|bcd~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~18_combout\,
	datab => \Pulse_width|Distance\(1),
	datac => \BCD_conv|bcd~19_combout\,
	datad => \BCD_conv|bcd~20_combout\,
	combout => \BCD_conv|unit[2]~1_combout\);

-- Location: FF_X32_Y3_N27
\Ai[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \BCD_conv|unit[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ai(2));

-- Location: LCCOMB_X31_Y3_N10
\BCD_conv|hundreds[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|hundreds[2]~3_combout\ = (\Pulse_width|Distance\(4)) # (\Pulse_width|Distance\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Distance\(4),
	datad => \Pulse_width|Distance\(5),
	combout => \BCD_conv|hundreds[2]~3_combout\);

-- Location: LCCOMB_X32_Y3_N16
\BCD_conv|hundreds[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|hundreds[2]~11_combout\ = (\Pulse_width|Distance\(7) & (\Pulse_width|Distance\(8) & ((\Pulse_width|Distance\(6)) # (\BCD_conv|hundreds[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(6),
	datab => \Pulse_width|Distance\(7),
	datac => \Pulse_width|Distance\(8),
	datad => \BCD_conv|hundreds[2]~3_combout\,
	combout => \BCD_conv|hundreds[2]~11_combout\);

-- Location: FF_X32_Y3_N17
\Ci[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \BCD_conv|hundreds[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ci(2));

-- Location: LCCOMB_X32_Y3_N18
\uut2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|Mux1~0_combout\ = (\uut2|Display_Selection\(0) & ((\uut2|Display_Selection\(1) & (Ai(2))) # (!\uut2|Display_Selection\(1) & ((Ci(2)))))) # (!\uut2|Display_Selection\(0) & (((!\uut2|Display_Selection\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Ai(2),
	datab => \uut2|Display_Selection\(0),
	datac => \uut2|Display_Selection\(1),
	datad => Ci(2),
	combout => \uut2|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y3_N12
\uut2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|Mux1~1_combout\ = (\uut2|Mux1~0_combout\) # ((!\uut2|Display_Selection\(0) & Bi(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut2|Display_Selection\(0),
	datac => Bi(2),
	datad => \uut2|Mux1~0_combout\,
	combout => \uut2|Mux1~1_combout\);

-- Location: FF_X32_Y3_N13
\uut2|temporary_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut2|uut1|count[15]~clkctrl_outclk\,
	d => \uut2|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|temporary_data\(2));

-- Location: LCCOMB_X32_Y3_N24
\BCD_conv|tens[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|tens[0]~0_combout\ = \BCD_conv|bcd~19_combout\ $ (((\BCD_conv|bcd~18_combout\ & ((\Pulse_width|Distance\(1)) # (\BCD_conv|bcd~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~18_combout\,
	datab => \Pulse_width|Distance\(1),
	datac => \BCD_conv|bcd~19_combout\,
	datad => \BCD_conv|bcd~20_combout\,
	combout => \BCD_conv|tens[0]~0_combout\);

-- Location: FF_X32_Y3_N25
\Bi[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \BCD_conv|tens[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Bi(0));

-- Location: LCCOMB_X28_Y3_N0
\Pulse_width|Distance~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~24_combout\ = (!\Pulse_width|Add0~42_combout\ & \Pulse_width|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Add0~42_combout\,
	datad => \Pulse_width|Add0~24_combout\,
	combout => \Pulse_width|Distance~24_combout\);

-- Location: LCCOMB_X28_Y3_N4
\Pulse_width|Distance~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~25_combout\ = (!\Pulse_width|Add0~44_combout\ & (\Pulse_width|Distance~24_combout\ & ((!\Pulse_width|LessThan0~1_combout\) # (!\Pulse_width|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Add0~44_combout\,
	datab => \Pulse_width|Distance~24_combout\,
	datac => \Pulse_width|LessThan0~2_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~25_combout\);

-- Location: FF_X28_Y3_N5
\Pulse_width|Distance[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(0));

-- Location: FF_X32_Y3_N5
\Ai[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	asdata => \Pulse_width|Distance\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ai(0));

-- Location: LCCOMB_X31_Y3_N28
\BCD_conv|hundreds[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|hundreds[0]~9_combout\ = \BCD_conv|bcd~17_combout\ $ (((\BCD_conv|bcd~11_combout\ & ((!\BCD_conv|bcd~16_combout\) # (!\BCD_conv|bcd~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~15_combout\,
	datab => \BCD_conv|bcd~11_combout\,
	datac => \BCD_conv|bcd~16_combout\,
	datad => \BCD_conv|bcd~17_combout\,
	combout => \BCD_conv|hundreds[0]~9_combout\);

-- Location: FF_X31_Y3_N29
\Ci[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \BCD_conv|hundreds[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ci(0));

-- Location: LCCOMB_X32_Y3_N6
\uut2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|Mux3~1_combout\ = (\uut2|Display_Selection\(0) & ((\uut2|Display_Selection\(1) & (Ai(0))) # (!\uut2|Display_Selection\(1) & ((Ci(0)))))) # (!\uut2|Display_Selection\(0) & (((!\uut2|Display_Selection\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Ai(0),
	datab => \uut2|Display_Selection\(0),
	datac => \uut2|Display_Selection\(1),
	datad => Ci(0),
	combout => \uut2|Mux3~1_combout\);

-- Location: LCCOMB_X32_Y3_N20
\uut2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|Mux3~2_combout\ = (\uut2|Mux3~1_combout\) # ((!\uut2|Display_Selection\(0) & Bi(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut2|Display_Selection\(0),
	datac => Bi(0),
	datad => \uut2|Mux3~1_combout\,
	combout => \uut2|Mux3~2_combout\);

-- Location: FF_X32_Y3_N21
\uut2|temporary_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut2|uut1|count[15]~clkctrl_outclk\,
	d => \uut2|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|temporary_data\(0));

-- Location: LCCOMB_X31_Y3_N6
\BCD_conv|tens[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|tens[1]~1_combout\ = (\BCD_conv|bcd~15_combout\ & ((\BCD_conv|bcd~17_combout\) # ((\BCD_conv|bcd~11_combout\ & !\BCD_conv|bcd~16_combout\)))) # (!\BCD_conv|bcd~15_combout\ & (!\BCD_conv|bcd~11_combout\ & ((!\BCD_conv|bcd~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~15_combout\,
	datab => \BCD_conv|bcd~11_combout\,
	datac => \BCD_conv|bcd~16_combout\,
	datad => \BCD_conv|bcd~17_combout\,
	combout => \BCD_conv|tens[1]~1_combout\);

-- Location: FF_X31_Y3_N7
\Bi[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \BCD_conv|tens[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Bi(1));

-- Location: LCCOMB_X32_Y3_N22
\BCD_conv|unit[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|unit[1]~0_combout\ = (\Pulse_width|Distance\(1) & (((!\BCD_conv|bcd~18_combout\ & !\BCD_conv|bcd~19_combout\)))) # (!\Pulse_width|Distance\(1) & ((\BCD_conv|bcd~19_combout\) # ((\BCD_conv|bcd~20_combout\ & \BCD_conv|bcd~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(1),
	datab => \BCD_conv|bcd~20_combout\,
	datac => \BCD_conv|bcd~18_combout\,
	datad => \BCD_conv|bcd~19_combout\,
	combout => \BCD_conv|unit[1]~0_combout\);

-- Location: FF_X32_Y3_N23
\Ai[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \BCD_conv|unit[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ai(1));

-- Location: LCCOMB_X32_Y3_N28
\BCD_conv|hundreds[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|hundreds[1]~10_combout\ = \BCD_conv|bcd~3_combout\ $ (((\BCD_conv|bcd~4_combout\ & ((\BCD_conv|bcd~6_combout\) # (!\BCD_conv|bcd~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~4_combout\,
	datab => \BCD_conv|bcd~6_combout\,
	datac => \BCD_conv|bcd~3_combout\,
	datad => \BCD_conv|bcd~10_combout\,
	combout => \BCD_conv|hundreds[1]~10_combout\);

-- Location: FF_X32_Y3_N29
\Ci[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \BCD_conv|hundreds[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ci(1));

-- Location: LCCOMB_X32_Y3_N10
\uut2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|Mux2~0_combout\ = (\uut2|Display_Selection\(0) & ((\uut2|Display_Selection\(1) & (Ai(1))) # (!\uut2|Display_Selection\(1) & ((Ci(1)))))) # (!\uut2|Display_Selection\(0) & (((!\uut2|Display_Selection\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Ai(1),
	datab => \uut2|Display_Selection\(0),
	datac => \uut2|Display_Selection\(1),
	datad => Ci(1),
	combout => \uut2|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y3_N14
\uut2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|Mux2~1_combout\ = (\uut2|Mux2~0_combout\) # ((!\uut2|Display_Selection\(0) & Bi(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut2|Display_Selection\(0),
	datac => Bi(1),
	datad => \uut2|Mux2~0_combout\,
	combout => \uut2|Mux2~1_combout\);

-- Location: FF_X32_Y3_N15
\uut2|temporary_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut2|uut1|count[15]~clkctrl_outclk\,
	d => \uut2|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|temporary_data\(1));

-- Location: LCCOMB_X32_Y3_N0
\BCD_conv|unit[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|unit[3]~2_combout\ = (\BCD_conv|bcd~18_combout\ & (!\Pulse_width|Distance\(1) & ((!\BCD_conv|bcd~20_combout\)))) # (!\BCD_conv|bcd~18_combout\ & (\BCD_conv|bcd~19_combout\ & ((\Pulse_width|Distance\(1)) # (\BCD_conv|bcd~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(1),
	datab => \BCD_conv|bcd~19_combout\,
	datac => \BCD_conv|bcd~18_combout\,
	datad => \BCD_conv|bcd~20_combout\,
	combout => \BCD_conv|unit[3]~2_combout\);

-- Location: FF_X32_Y3_N1
\Ai[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \BCD_conv|unit[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ai(3));

-- Location: LCCOMB_X31_Y3_N26
\BCD_conv|tens[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_conv|tens[3]~3_combout\ = (\BCD_conv|bcd~11_combout\ & (\BCD_conv|bcd~15_combout\ & (\BCD_conv|bcd~16_combout\))) # (!\BCD_conv|bcd~11_combout\ & (\BCD_conv|bcd~17_combout\ & ((!\BCD_conv|bcd~16_combout\) # (!\BCD_conv|bcd~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_conv|bcd~15_combout\,
	datab => \BCD_conv|bcd~11_combout\,
	datac => \BCD_conv|bcd~16_combout\,
	datad => \BCD_conv|bcd~17_combout\,
	combout => \BCD_conv|tens[3]~3_combout\);

-- Location: FF_X31_Y3_N27
\Bi[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpgaclk~inputclkctrl_outclk\,
	d => \BCD_conv|tens[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Bi(3));

-- Location: LCCOMB_X33_Y3_N8
\uut2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|Mux0~0_combout\ = (\uut2|Display_Selection\(1) & ((\uut2|Display_Selection\(0) & (Ai(3))) # (!\uut2|Display_Selection\(0) & ((Bi(3)))))) # (!\uut2|Display_Selection\(1) & (!\uut2|Display_Selection\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|Display_Selection\(1),
	datab => \uut2|Display_Selection\(0),
	datac => Ai(3),
	datad => Bi(3),
	combout => \uut2|Mux0~0_combout\);

-- Location: FF_X33_Y3_N9
\uut2|temporary_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut2|uut1|count[15]~clkctrl_outclk\,
	d => \uut2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|temporary_data\(3));

-- Location: LCCOMB_X33_Y3_N18
\uut2|uut|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut|Mux0~0_combout\ = (\uut2|temporary_data\(2) & (!\uut2|temporary_data\(1) & (\uut2|temporary_data\(0) $ (!\uut2|temporary_data\(3))))) # (!\uut2|temporary_data\(2) & (\uut2|temporary_data\(0) & (\uut2|temporary_data\(1) $ 
-- (!\uut2|temporary_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|temporary_data\(2),
	datab => \uut2|temporary_data\(0),
	datac => \uut2|temporary_data\(1),
	datad => \uut2|temporary_data\(3),
	combout => \uut2|uut|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y3_N0
\uut2|uut|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut|Mux1~0_combout\ = (\uut2|temporary_data\(1) & ((\uut2|temporary_data\(0) & ((\uut2|temporary_data\(3)))) # (!\uut2|temporary_data\(0) & (\uut2|temporary_data\(2))))) # (!\uut2|temporary_data\(1) & (\uut2|temporary_data\(2) & 
-- (\uut2|temporary_data\(0) $ (\uut2|temporary_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|temporary_data\(2),
	datab => \uut2|temporary_data\(0),
	datac => \uut2|temporary_data\(1),
	datad => \uut2|temporary_data\(3),
	combout => \uut2|uut|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y3_N14
\uut2|uut|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut|Mux2~0_combout\ = (\uut2|temporary_data\(2) & (\uut2|temporary_data\(3) & ((\uut2|temporary_data\(1)) # (!\uut2|temporary_data\(0))))) # (!\uut2|temporary_data\(2) & (!\uut2|temporary_data\(0) & (\uut2|temporary_data\(1) & 
-- !\uut2|temporary_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|temporary_data\(2),
	datab => \uut2|temporary_data\(0),
	datac => \uut2|temporary_data\(1),
	datad => \uut2|temporary_data\(3),
	combout => \uut2|uut|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y3_N12
\uut2|uut|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut|Mux3~0_combout\ = (\uut2|temporary_data\(1) & (\uut2|temporary_data\(2) & (\uut2|temporary_data\(0)))) # (!\uut2|temporary_data\(1) & (!\uut2|temporary_data\(3) & (\uut2|temporary_data\(2) $ (\uut2|temporary_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|temporary_data\(2),
	datab => \uut2|temporary_data\(0),
	datac => \uut2|temporary_data\(1),
	datad => \uut2|temporary_data\(3),
	combout => \uut2|uut|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y3_N10
\uut2|uut|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut|Mux4~0_combout\ = (\uut2|temporary_data\(1) & (((\uut2|temporary_data\(0) & !\uut2|temporary_data\(3))))) # (!\uut2|temporary_data\(1) & ((\uut2|temporary_data\(2) & ((!\uut2|temporary_data\(3)))) # (!\uut2|temporary_data\(2) & 
-- (\uut2|temporary_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|temporary_data\(2),
	datab => \uut2|temporary_data\(0),
	datac => \uut2|temporary_data\(1),
	datad => \uut2|temporary_data\(3),
	combout => \uut2|uut|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y3_N16
\uut2|uut|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut|Mux5~0_combout\ = (\uut2|temporary_data\(0) & (\uut2|temporary_data\(3) $ (((\uut2|temporary_data\(1)) # (!\uut2|temporary_data\(2)))))) # (!\uut2|temporary_data\(0) & (!\uut2|temporary_data\(2) & (\uut2|temporary_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|temporary_data\(2),
	datab => \uut2|temporary_data\(0),
	datac => \uut2|temporary_data\(1),
	datad => \uut2|temporary_data\(3),
	combout => \uut2|uut|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y3_N22
\uut2|uut|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut2|uut|Mux6~0_combout\ = (\uut2|temporary_data\(0) & ((\uut2|temporary_data\(3)) # (\uut2|temporary_data\(2) $ (\uut2|temporary_data\(1))))) # (!\uut2|temporary_data\(0) & ((\uut2|temporary_data\(1)) # (\uut2|temporary_data\(2) $ 
-- (\uut2|temporary_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|temporary_data\(2),
	datab => \uut2|temporary_data\(0),
	datac => \uut2|temporary_data\(1),
	datad => \uut2|temporary_data\(3),
	combout => \uut2|uut|Mux6~0_combout\);

ww_trigger_out <= \trigger_out~output_o\;

ww_servo_out <= \servo_out~output_o\;

ww_topseldispA <= \topseldispA~output_o\;

ww_topseldispB <= \topseldispB~output_o\;

ww_topseldispC <= \topseldispC~output_o\;

ww_topseldispD <= \topseldispD~output_o\;

ww_topseg_A <= \topseg_A~output_o\;

ww_topseg_B <= \topseg_B~output_o\;

ww_topseg_C <= \topseg_C~output_o\;

ww_topseg_D <= \topseg_D~output_o\;

ww_topseg_E <= \topseg_E~output_o\;

ww_topseg_F <= \topseg_F~output_o\;

ww_topseg_G <= \topseg_G~output_o\;
END structure;


