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

-- DATE "12/11/2024 11:24:31"

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

ENTITY 	Top_design IS
    PORT (
	clk : IN std_logic;
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
END Top_design;

-- Design Ports Information
-- trigger_out	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo_out	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Top_design IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
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
SIGNAL \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \segment_driver|uut1|count[15]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \servo_pwm|count[0]~21_combout\ : std_logic;
SIGNAL \servo_pwm|count[14]~50\ : std_logic;
SIGNAL \servo_pwm|count[15]~51_combout\ : std_logic;
SIGNAL \servo_pwm|count[15]~52\ : std_logic;
SIGNAL \servo_pwm|count[16]~53_combout\ : std_logic;
SIGNAL \servo_pwm|count[16]~54\ : std_logic;
SIGNAL \servo_pwm|count[17]~55_combout\ : std_logic;
SIGNAL \servo_pwm|count[17]~56\ : std_logic;
SIGNAL \servo_pwm|count[18]~57_combout\ : std_logic;
SIGNAL \servo_pwm|count[18]~58\ : std_logic;
SIGNAL \servo_pwm|count[19]~59_combout\ : std_logic;
SIGNAL \servo_pwm|count[19]~60\ : std_logic;
SIGNAL \servo_pwm|count[20]~61_combout\ : std_logic;
SIGNAL \servo_pwm|LessThan1~6_combout\ : std_logic;
SIGNAL \servo_pwm|LessThan0~0_combout\ : std_logic;
SIGNAL \servo_pwm|LessThan0~1_combout\ : std_logic;
SIGNAL \servo_pwm|LessThan0~2_combout\ : std_logic;
SIGNAL \servo_pwm|LessThan0~3_combout\ : std_logic;
SIGNAL \servo_pwm|LessThan0~4_combout\ : std_logic;
SIGNAL \servo_pwm|count[0]~22\ : std_logic;
SIGNAL \servo_pwm|count[1]~23_combout\ : std_logic;
SIGNAL \servo_pwm|count[1]~24\ : std_logic;
SIGNAL \servo_pwm|count[2]~25_combout\ : std_logic;
SIGNAL \servo_pwm|count[2]~26\ : std_logic;
SIGNAL \servo_pwm|count[3]~27_combout\ : std_logic;
SIGNAL \servo_pwm|count[3]~28\ : std_logic;
SIGNAL \servo_pwm|count[4]~29_combout\ : std_logic;
SIGNAL \servo_pwm|count[4]~30\ : std_logic;
SIGNAL \servo_pwm|count[5]~31_combout\ : std_logic;
SIGNAL \servo_pwm|count[5]~32\ : std_logic;
SIGNAL \servo_pwm|count[6]~33_combout\ : std_logic;
SIGNAL \servo_pwm|count[6]~34\ : std_logic;
SIGNAL \servo_pwm|count[7]~35_combout\ : std_logic;
SIGNAL \servo_pwm|count[7]~36\ : std_logic;
SIGNAL \servo_pwm|count[8]~37_combout\ : std_logic;
SIGNAL \servo_pwm|count[8]~38\ : std_logic;
SIGNAL \servo_pwm|count[9]~39_combout\ : std_logic;
SIGNAL \servo_pwm|count[9]~40\ : std_logic;
SIGNAL \servo_pwm|count[10]~41_combout\ : std_logic;
SIGNAL \servo_pwm|count[10]~42\ : std_logic;
SIGNAL \servo_pwm|count[11]~43_combout\ : std_logic;
SIGNAL \servo_pwm|count[11]~44\ : std_logic;
SIGNAL \servo_pwm|count[12]~45_combout\ : std_logic;
SIGNAL \servo_pwm|count[12]~46\ : std_logic;
SIGNAL \servo_pwm|count[13]~47_combout\ : std_logic;
SIGNAL \servo_pwm|count[13]~48\ : std_logic;
SIGNAL \servo_pwm|count[14]~49_combout\ : std_logic;
SIGNAL \servo_pwm|LessThan1~3_combout\ : std_logic;
SIGNAL \servo_pwm|LessThan1~0_combout\ : std_logic;
SIGNAL \servo_pwm|LessThan1~4_combout\ : std_logic;
SIGNAL \servo_pwm|LessThan1~1_combout\ : std_logic;
SIGNAL \servo_pwm|LessThan1~2_combout\ : std_logic;
SIGNAL \servo_pwm|LessThan1~5_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[0]~21_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~0_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan0~0_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[2]~60_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[2]~61_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[2]~59_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[2]~62_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[2]~63_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[0]~22\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[1]~23_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[1]~24\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[2]~25_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[2]~26\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[3]~27_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[3]~28\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[4]~29_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[4]~30\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[5]~31_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[5]~32\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[6]~33_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[6]~34\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[7]~35_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[7]~36\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[8]~37_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[8]~38\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[9]~39_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[9]~40\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[10]~41_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[10]~42\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[11]~43_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[11]~44\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[12]~45_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[12]~46\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[13]~47_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[13]~48\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[14]~49_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[14]~50\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[15]~51_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[15]~52\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[16]~53_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[16]~54\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[17]~55_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[17]~56\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[18]~57_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[18]~58\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[19]~64_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[19]~65\ : std_logic;
SIGNAL \servo_pwm|SERVO|count[20]~66_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[0]~78_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[1]~26_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[1]~27\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[2]~28_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[2]~29\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[3]~30_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[3]~31\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[4]~32_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[4]~33\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[5]~34_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[5]~35\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[6]~36_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[6]~37\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[7]~38_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[7]~39\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[8]~40_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[8]~41\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[9]~42_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[9]~43\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[10]~44_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[10]~45\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[11]~46_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[11]~47\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[12]~48_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[12]~49\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[13]~50_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[13]~51\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[14]~52_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[14]~53\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[15]~54_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[15]~55\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[16]~56_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[16]~57\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[17]~58_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[17]~59\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[18]~60_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[18]~61\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[19]~62_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[19]~63\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[20]~64_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[20]~65\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[21]~66_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[21]~67\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[22]~68_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[22]~69\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[23]~70_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[23]~71\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[24]~72_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[24]~73\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[25]~74_combout\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[25]~75\ : std_logic;
SIGNAL \servo_pwm|COUNTING|counter_i[26]~76_combout\ : std_logic;
SIGNAL \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|romout[1][12]~0_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|romout[1][11]~1_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|romout[1][10]~2_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|romout[1][9]~3_combout\ : std_logic;
SIGNAL \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|romout[0][12]~5_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|romout[1][8]~4_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|romout[1][7]~6_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|romout[0][11]~7_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|romout[0][10]~8_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|romout[0][9]~9_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|romout[0][8]~10_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|Mult0|mult_core|romout[0][7]~11_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[5]~13\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[6]~15\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[7]~17\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[8]~19\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[9]~21\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[10]~23\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[11]~25\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[12]~27\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[13]~29\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[14]~31\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[15]~33\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[16]~34_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[15]~32_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[14]~30_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[13]~28_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[12]~26_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[11]~24_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[10]~22_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[9]~20_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[8]~18_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[7]~16_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[6]~14_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle[5]~12_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|duty_cycle~36_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~2_cout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~4_cout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~6_cout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~8_cout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~10_cout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~12_cout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~14_cout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~16_cout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~18_cout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~20_cout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~22_cout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~24_cout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~25_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|LessThan1~27_combout\ : std_logic;
SIGNAL \servo_pwm|SERVO|pwm~q\ : std_logic;
SIGNAL \segment_driver|uut1|count[0]~45_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[1]~15_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[1]~16\ : std_logic;
SIGNAL \segment_driver|uut1|count[2]~17_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[2]~18\ : std_logic;
SIGNAL \segment_driver|uut1|count[3]~19_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[3]~20\ : std_logic;
SIGNAL \segment_driver|uut1|count[4]~21_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[4]~22\ : std_logic;
SIGNAL \segment_driver|uut1|count[5]~23_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[5]~24\ : std_logic;
SIGNAL \segment_driver|uut1|count[6]~25_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[6]~26\ : std_logic;
SIGNAL \segment_driver|uut1|count[7]~27_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[7]~28\ : std_logic;
SIGNAL \segment_driver|uut1|count[8]~29_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[8]~30\ : std_logic;
SIGNAL \segment_driver|uut1|count[9]~31_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[9]~32\ : std_logic;
SIGNAL \segment_driver|uut1|count[10]~33_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[10]~34\ : std_logic;
SIGNAL \segment_driver|uut1|count[11]~35_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[11]~36\ : std_logic;
SIGNAL \segment_driver|uut1|count[12]~37_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[12]~38\ : std_logic;
SIGNAL \segment_driver|uut1|count[13]~39_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[13]~40\ : std_logic;
SIGNAL \segment_driver|uut1|count[14]~41_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[14]~42\ : std_logic;
SIGNAL \segment_driver|uut1|count[15]~43_combout\ : std_logic;
SIGNAL \segment_driver|uut1|count[15]~clkctrl_outclk\ : std_logic;
SIGNAL \segment_driver|Display_Selection[0]~1_combout\ : std_logic;
SIGNAL \segment_driver|Display_Selection[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Mux4~0_combout\ : std_logic;
SIGNAL \segment_driver|select_Display_A~q\ : std_logic;
SIGNAL \segment_driver|Mux5~0_combout\ : std_logic;
SIGNAL \segment_driver|select_Display_B~q\ : std_logic;
SIGNAL \segment_driver|Mux6~0_combout\ : std_logic;
SIGNAL \segment_driver|select_Display_C~q\ : std_logic;
SIGNAL \segment_driver|Add3~0_combout\ : std_logic;
SIGNAL \segment_driver|select_Display_D~q\ : std_logic;
SIGNAL \pulse~input_o\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[0]~60_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[0]~feeder_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[1]~20_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[1]~21\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[2]~22_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[2]~23\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[3]~24_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[3]~25\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[4]~26_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[4]~27\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[5]~28_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[5]~29\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[6]~30_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[6]~31\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[7]~32_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[7]~33\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[8]~34_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[8]~35\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[9]~36_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[9]~37\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[10]~38_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[10]~39\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[11]~40_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[11]~41\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[12]~42_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[12]~43\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[13]~44_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[13]~45\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[14]~46_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[14]~47\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[15]~48_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[15]~49\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[16]~50_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[16]~51\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[17]~52_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[17]~53\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[18]~54_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[18]~55\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[19]~56_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][11]~16_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][10]~15_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][9]~7_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][12]~9_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][8]~8_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][6]~12_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][10]~13_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][9]~combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][8]~1_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][4]~0_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][7]~3_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][3]~2_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][6]~4_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][2]~combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][5]~6_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][1]~5_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][4]~combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[19]~57\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[20]~58_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Pulse_width|LessThan0~0_combout\ : std_logic;
SIGNAL \Pulse_width|LessThan0~1_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~17_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~15_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~12_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~13_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~16_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~20_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~21_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[54]~33_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[54]~32_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~35_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~34_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~36_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~40_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~42_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~43_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~54_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~44_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~45_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~55_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~56_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~46_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~57_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~47_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~49_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~48_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~18_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~51_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~52_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~53_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~50_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \segment_driver|Mult0|mult_core|romout[0][8]~1_combout\ : std_logic;
SIGNAL \segment_driver|Mult0|mult_core|romout[0][7]~2_combout\ : std_logic;
SIGNAL \segment_driver|Mult0|mult_core|romout[0][6]~3_combout\ : std_logic;
SIGNAL \segment_driver|Add0~1\ : std_logic;
SIGNAL \segment_driver|Add0~3\ : std_logic;
SIGNAL \segment_driver|Add0~5\ : std_logic;
SIGNAL \segment_driver|Add0~7\ : std_logic;
SIGNAL \segment_driver|Add0~9\ : std_logic;
SIGNAL \segment_driver|Add0~11\ : std_logic;
SIGNAL \segment_driver|Add0~12_combout\ : std_logic;
SIGNAL \segment_driver|Mult0|mult_core|romout[0][9]~0_combout\ : std_logic;
SIGNAL \segment_driver|Add0~13\ : std_logic;
SIGNAL \segment_driver|Add0~15\ : std_logic;
SIGNAL \segment_driver|Add0~17\ : std_logic;
SIGNAL \segment_driver|Add0~18_combout\ : std_logic;
SIGNAL \segment_driver|Add0~14_combout\ : std_logic;
SIGNAL \segment_driver|Add0~8_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|_~1_combout\ : std_logic;
SIGNAL \segment_driver|Add0~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|_~0_combout\ : std_logic;
SIGNAL \segment_driver|Add0~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|_~2_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~14_combout\ : std_logic;
SIGNAL \segment_driver|Add0~0_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~19_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\ : std_logic;
SIGNAL \segment_driver|Add0~2_combout\ : std_logic;
SIGNAL \segment_driver|Add0~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|_~4_combout\ : std_logic;
SIGNAL \segment_driver|Add0~16_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|_~5_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|_~3_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~14_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[28]~90_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~91_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~92_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~93_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~94_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~95_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~142_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~143_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~163_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~97_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~100_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~102_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~101_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~145_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~103_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~104_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~106_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~107_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~108_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~109_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~148_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~110_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~111_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~112_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~150_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~151_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~152_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~115_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~116_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~120_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~119_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~155_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~121_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~122_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~156_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~125_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~124_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~126_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~127_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~158_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~128_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~130_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~133_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~134_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~135_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~160_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~136_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~137_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~138_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~139_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~140_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~141_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\ : std_logic;
SIGNAL \segment_driver|Add1~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|quotient[1]~1_combout\ : std_logic;
SIGNAL \segment_driver|Add2~1\ : std_logic;
SIGNAL \segment_driver|Add2~2_combout\ : std_logic;
SIGNAL \segment_driver|Add2~0_combout\ : std_logic;
SIGNAL \segment_driver|Add3~4\ : std_logic;
SIGNAL \segment_driver|Add3~9\ : std_logic;
SIGNAL \segment_driver|Add3~12_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \segment_driver|Add3~11_combout\ : std_logic;
SIGNAL \segment_driver|Add3~14_combout\ : std_logic;
SIGNAL \segment_driver|Add3~3_combout\ : std_logic;
SIGNAL \segment_driver|Add3~5_combout\ : std_logic;
SIGNAL \segment_driver|Add3~6_combout\ : std_logic;
SIGNAL \segment_driver|Add3~8_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|quotient[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Add3~7_combout\ : std_logic;
SIGNAL \segment_driver|Add3~10_combout\ : std_logic;
SIGNAL \segment_driver|Add3~1_combout\ : std_logic;
SIGNAL \segment_driver|Add3~2_combout\ : std_logic;
SIGNAL \segment_driver|uut|Mux0~0_combout\ : std_logic;
SIGNAL \segment_driver|uut|Mux1~0_combout\ : std_logic;
SIGNAL \segment_driver|uut|Mux2~0_combout\ : std_logic;
SIGNAL \segment_driver|uut|Mux3~0_combout\ : std_logic;
SIGNAL \segment_driver|uut|Mux4~0_combout\ : std_logic;
SIGNAL \segment_driver|uut|Mux5~0_combout\ : std_logic;
SIGNAL \segment_driver|uut|Mux6~0_combout\ : std_logic;
SIGNAL \segment_driver|Display_Selection\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \segment_driver|uut1|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \servo_pwm|count\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \segment_driver|temporary_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Pulse_width|Distance\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \servo_pwm|SERVO|count\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \servo_pwm|SERVO|duty_cycle\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \Pulse_width|Counter_pulse|counter_i\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \servo_pwm|COUNTING|counter_i\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \ALT_INV_pulse~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \segment_driver|uut|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \servo_pwm|ALT_INV_LessThan1~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
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

\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\servo_pwm|COUNTING|counter_i\(26) & \servo_pwm|COUNTING|counter_i\(25) & \servo_pwm|COUNTING|counter_i\(24) & \servo_pwm|COUNTING|counter_i\(23) & 
\servo_pwm|COUNTING|counter_i\(22) & \servo_pwm|COUNTING|counter_i\(21) & \servo_pwm|COUNTING|counter_i\(20) & \servo_pwm|COUNTING|counter_i\(19));

\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\ <= \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ <= \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\ <= \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ <= \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ <= \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ <= \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ <= \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\segment_driver|uut1|count[15]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \segment_driver|uut1|count\(15));

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_pulse~input_o\ <= NOT \pulse~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\segment_driver|uut|ALT_INV_Mux6~0_combout\ <= NOT \segment_driver|uut|Mux6~0_combout\;
\servo_pwm|ALT_INV_LessThan1~5_combout\ <= NOT \servo_pwm|LessThan1~5_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y17_N23
\trigger_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \servo_pwm|LessThan1~5_combout\,
	devoe => ww_devoe,
	o => \trigger_out~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\servo_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \servo_pwm|SERVO|pwm~q\,
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
	i => \segment_driver|select_Display_A~q\,
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
	i => \segment_driver|select_Display_B~q\,
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
	i => \segment_driver|select_Display_C~q\,
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
	i => \segment_driver|select_Display_D~q\,
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
	i => \segment_driver|uut|Mux0~0_combout\,
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
	i => \segment_driver|uut|Mux1~0_combout\,
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
	i => \segment_driver|uut|Mux2~0_combout\,
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
	i => \segment_driver|uut|Mux3~0_combout\,
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
	i => \segment_driver|uut|Mux4~0_combout\,
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
	i => \segment_driver|uut|Mux5~0_combout\,
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
	i => \segment_driver|uut|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \topseg_G~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y19_N12
\servo_pwm|count[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[0]~21_combout\ = \servo_pwm|count\(0) $ (VCC)
-- \servo_pwm|count[0]~22\ = CARRY(\servo_pwm|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(0),
	datad => VCC,
	combout => \servo_pwm|count[0]~21_combout\,
	cout => \servo_pwm|count[0]~22\);

-- Location: LCCOMB_X24_Y18_N8
\servo_pwm|count[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[14]~49_combout\ = (\servo_pwm|count\(14) & (\servo_pwm|count[13]~48\ $ (GND))) # (!\servo_pwm|count\(14) & (!\servo_pwm|count[13]~48\ & VCC))
-- \servo_pwm|count[14]~50\ = CARRY((\servo_pwm|count\(14) & !\servo_pwm|count[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|count\(14),
	datad => VCC,
	cin => \servo_pwm|count[13]~48\,
	combout => \servo_pwm|count[14]~49_combout\,
	cout => \servo_pwm|count[14]~50\);

-- Location: LCCOMB_X24_Y18_N10
\servo_pwm|count[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[15]~51_combout\ = (\servo_pwm|count\(15) & (!\servo_pwm|count[14]~50\)) # (!\servo_pwm|count\(15) & ((\servo_pwm|count[14]~50\) # (GND)))
-- \servo_pwm|count[15]~52\ = CARRY((!\servo_pwm|count[14]~50\) # (!\servo_pwm|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(15),
	datad => VCC,
	cin => \servo_pwm|count[14]~50\,
	combout => \servo_pwm|count[15]~51_combout\,
	cout => \servo_pwm|count[15]~52\);

-- Location: FF_X24_Y18_N11
\servo_pwm|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[15]~51_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(15));

-- Location: LCCOMB_X24_Y18_N12
\servo_pwm|count[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[16]~53_combout\ = (\servo_pwm|count\(16) & (\servo_pwm|count[15]~52\ $ (GND))) # (!\servo_pwm|count\(16) & (!\servo_pwm|count[15]~52\ & VCC))
-- \servo_pwm|count[16]~54\ = CARRY((\servo_pwm|count\(16) & !\servo_pwm|count[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(16),
	datad => VCC,
	cin => \servo_pwm|count[15]~52\,
	combout => \servo_pwm|count[16]~53_combout\,
	cout => \servo_pwm|count[16]~54\);

-- Location: FF_X24_Y18_N13
\servo_pwm|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[16]~53_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(16));

-- Location: LCCOMB_X24_Y18_N14
\servo_pwm|count[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[17]~55_combout\ = (\servo_pwm|count\(17) & (!\servo_pwm|count[16]~54\)) # (!\servo_pwm|count\(17) & ((\servo_pwm|count[16]~54\) # (GND)))
-- \servo_pwm|count[17]~56\ = CARRY((!\servo_pwm|count[16]~54\) # (!\servo_pwm|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|count\(17),
	datad => VCC,
	cin => \servo_pwm|count[16]~54\,
	combout => \servo_pwm|count[17]~55_combout\,
	cout => \servo_pwm|count[17]~56\);

-- Location: FF_X24_Y18_N15
\servo_pwm|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[17]~55_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(17));

-- Location: LCCOMB_X24_Y18_N16
\servo_pwm|count[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[18]~57_combout\ = (\servo_pwm|count\(18) & (\servo_pwm|count[17]~56\ $ (GND))) # (!\servo_pwm|count\(18) & (!\servo_pwm|count[17]~56\ & VCC))
-- \servo_pwm|count[18]~58\ = CARRY((\servo_pwm|count\(18) & !\servo_pwm|count[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|count\(18),
	datad => VCC,
	cin => \servo_pwm|count[17]~56\,
	combout => \servo_pwm|count[18]~57_combout\,
	cout => \servo_pwm|count[18]~58\);

-- Location: FF_X24_Y18_N17
\servo_pwm|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[18]~57_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(18));

-- Location: LCCOMB_X24_Y18_N18
\servo_pwm|count[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[19]~59_combout\ = (\servo_pwm|count\(19) & (!\servo_pwm|count[18]~58\)) # (!\servo_pwm|count\(19) & ((\servo_pwm|count[18]~58\) # (GND)))
-- \servo_pwm|count[19]~60\ = CARRY((!\servo_pwm|count[18]~58\) # (!\servo_pwm|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(19),
	datad => VCC,
	cin => \servo_pwm|count[18]~58\,
	combout => \servo_pwm|count[19]~59_combout\,
	cout => \servo_pwm|count[19]~60\);

-- Location: FF_X24_Y18_N19
\servo_pwm|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[19]~59_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(19));

-- Location: LCCOMB_X24_Y18_N20
\servo_pwm|count[20]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[20]~61_combout\ = \servo_pwm|count[19]~60\ $ (!\servo_pwm|count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \servo_pwm|count\(20),
	cin => \servo_pwm|count[19]~60\,
	combout => \servo_pwm|count[20]~61_combout\);

-- Location: FF_X24_Y18_N21
\servo_pwm|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[20]~61_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(20));

-- Location: LCCOMB_X24_Y18_N28
\servo_pwm|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|LessThan1~6_combout\ = (!\servo_pwm|count\(13) & (!\servo_pwm|count\(14) & !\servo_pwm|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|count\(13),
	datac => \servo_pwm|count\(14),
	datad => \servo_pwm|count\(15),
	combout => \servo_pwm|LessThan1~6_combout\);

-- Location: LCCOMB_X24_Y19_N8
\servo_pwm|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|LessThan0~0_combout\ = (((!\servo_pwm|count\(4) & !\servo_pwm|count\(5))) # (!\servo_pwm|count\(6))) # (!\servo_pwm|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(4),
	datab => \servo_pwm|count\(5),
	datac => \servo_pwm|count\(7),
	datad => \servo_pwm|count\(6),
	combout => \servo_pwm|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y19_N2
\servo_pwm|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|LessThan0~1_combout\ = ((!\servo_pwm|count\(8) & \servo_pwm|LessThan0~0_combout\)) # (!\servo_pwm|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(9),
	datab => \servo_pwm|count\(8),
	datac => \servo_pwm|LessThan0~0_combout\,
	combout => \servo_pwm|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y18_N30
\servo_pwm|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|LessThan0~2_combout\ = ((!\servo_pwm|count\(11) & (!\servo_pwm|count\(10) & \servo_pwm|LessThan0~1_combout\))) # (!\servo_pwm|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(12),
	datab => \servo_pwm|count\(11),
	datac => \servo_pwm|count\(10),
	datad => \servo_pwm|LessThan0~1_combout\,
	combout => \servo_pwm|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y18_N24
\servo_pwm|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|LessThan0~3_combout\ = (((\servo_pwm|LessThan1~6_combout\ & \servo_pwm|LessThan0~2_combout\)) # (!\servo_pwm|count\(17))) # (!\servo_pwm|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(16),
	datab => \servo_pwm|LessThan1~6_combout\,
	datac => \servo_pwm|LessThan0~2_combout\,
	datad => \servo_pwm|count\(17),
	combout => \servo_pwm|LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y18_N22
\servo_pwm|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|LessThan0~4_combout\ = (\servo_pwm|count\(20) & ((\servo_pwm|count\(18)) # ((\servo_pwm|count\(19)) # (!\servo_pwm|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(18),
	datab => \servo_pwm|count\(20),
	datac => \servo_pwm|count\(19),
	datad => \servo_pwm|LessThan0~3_combout\,
	combout => \servo_pwm|LessThan0~4_combout\);

-- Location: FF_X24_Y19_N13
\servo_pwm|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[0]~21_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(0));

-- Location: LCCOMB_X24_Y19_N14
\servo_pwm|count[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[1]~23_combout\ = (\servo_pwm|count\(1) & (!\servo_pwm|count[0]~22\)) # (!\servo_pwm|count\(1) & ((\servo_pwm|count[0]~22\) # (GND)))
-- \servo_pwm|count[1]~24\ = CARRY((!\servo_pwm|count[0]~22\) # (!\servo_pwm|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|count\(1),
	datad => VCC,
	cin => \servo_pwm|count[0]~22\,
	combout => \servo_pwm|count[1]~23_combout\,
	cout => \servo_pwm|count[1]~24\);

-- Location: FF_X24_Y19_N15
\servo_pwm|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[1]~23_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(1));

-- Location: LCCOMB_X24_Y19_N16
\servo_pwm|count[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[2]~25_combout\ = (\servo_pwm|count\(2) & (\servo_pwm|count[1]~24\ $ (GND))) # (!\servo_pwm|count\(2) & (!\servo_pwm|count[1]~24\ & VCC))
-- \servo_pwm|count[2]~26\ = CARRY((\servo_pwm|count\(2) & !\servo_pwm|count[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(2),
	datad => VCC,
	cin => \servo_pwm|count[1]~24\,
	combout => \servo_pwm|count[2]~25_combout\,
	cout => \servo_pwm|count[2]~26\);

-- Location: FF_X24_Y19_N17
\servo_pwm|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[2]~25_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(2));

-- Location: LCCOMB_X24_Y19_N18
\servo_pwm|count[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[3]~27_combout\ = (\servo_pwm|count\(3) & (!\servo_pwm|count[2]~26\)) # (!\servo_pwm|count\(3) & ((\servo_pwm|count[2]~26\) # (GND)))
-- \servo_pwm|count[3]~28\ = CARRY((!\servo_pwm|count[2]~26\) # (!\servo_pwm|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|count\(3),
	datad => VCC,
	cin => \servo_pwm|count[2]~26\,
	combout => \servo_pwm|count[3]~27_combout\,
	cout => \servo_pwm|count[3]~28\);

-- Location: FF_X24_Y19_N19
\servo_pwm|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[3]~27_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(3));

-- Location: LCCOMB_X24_Y19_N20
\servo_pwm|count[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[4]~29_combout\ = (\servo_pwm|count\(4) & (\servo_pwm|count[3]~28\ $ (GND))) # (!\servo_pwm|count\(4) & (!\servo_pwm|count[3]~28\ & VCC))
-- \servo_pwm|count[4]~30\ = CARRY((\servo_pwm|count\(4) & !\servo_pwm|count[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(4),
	datad => VCC,
	cin => \servo_pwm|count[3]~28\,
	combout => \servo_pwm|count[4]~29_combout\,
	cout => \servo_pwm|count[4]~30\);

-- Location: FF_X24_Y19_N21
\servo_pwm|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[4]~29_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(4));

-- Location: LCCOMB_X24_Y19_N22
\servo_pwm|count[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[5]~31_combout\ = (\servo_pwm|count\(5) & (!\servo_pwm|count[4]~30\)) # (!\servo_pwm|count\(5) & ((\servo_pwm|count[4]~30\) # (GND)))
-- \servo_pwm|count[5]~32\ = CARRY((!\servo_pwm|count[4]~30\) # (!\servo_pwm|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(5),
	datad => VCC,
	cin => \servo_pwm|count[4]~30\,
	combout => \servo_pwm|count[5]~31_combout\,
	cout => \servo_pwm|count[5]~32\);

-- Location: FF_X24_Y19_N23
\servo_pwm|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[5]~31_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(5));

-- Location: LCCOMB_X24_Y19_N24
\servo_pwm|count[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[6]~33_combout\ = (\servo_pwm|count\(6) & (\servo_pwm|count[5]~32\ $ (GND))) # (!\servo_pwm|count\(6) & (!\servo_pwm|count[5]~32\ & VCC))
-- \servo_pwm|count[6]~34\ = CARRY((\servo_pwm|count\(6) & !\servo_pwm|count[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|count\(6),
	datad => VCC,
	cin => \servo_pwm|count[5]~32\,
	combout => \servo_pwm|count[6]~33_combout\,
	cout => \servo_pwm|count[6]~34\);

-- Location: FF_X24_Y19_N25
\servo_pwm|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[6]~33_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(6));

-- Location: LCCOMB_X24_Y19_N26
\servo_pwm|count[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[7]~35_combout\ = (\servo_pwm|count\(7) & (!\servo_pwm|count[6]~34\)) # (!\servo_pwm|count\(7) & ((\servo_pwm|count[6]~34\) # (GND)))
-- \servo_pwm|count[7]~36\ = CARRY((!\servo_pwm|count[6]~34\) # (!\servo_pwm|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|count\(7),
	datad => VCC,
	cin => \servo_pwm|count[6]~34\,
	combout => \servo_pwm|count[7]~35_combout\,
	cout => \servo_pwm|count[7]~36\);

-- Location: FF_X24_Y19_N27
\servo_pwm|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[7]~35_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(7));

-- Location: LCCOMB_X24_Y19_N28
\servo_pwm|count[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[8]~37_combout\ = (\servo_pwm|count\(8) & (\servo_pwm|count[7]~36\ $ (GND))) # (!\servo_pwm|count\(8) & (!\servo_pwm|count[7]~36\ & VCC))
-- \servo_pwm|count[8]~38\ = CARRY((\servo_pwm|count\(8) & !\servo_pwm|count[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|count\(8),
	datad => VCC,
	cin => \servo_pwm|count[7]~36\,
	combout => \servo_pwm|count[8]~37_combout\,
	cout => \servo_pwm|count[8]~38\);

-- Location: FF_X24_Y19_N29
\servo_pwm|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[8]~37_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(8));

-- Location: LCCOMB_X24_Y19_N30
\servo_pwm|count[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[9]~39_combout\ = (\servo_pwm|count\(9) & (!\servo_pwm|count[8]~38\)) # (!\servo_pwm|count\(9) & ((\servo_pwm|count[8]~38\) # (GND)))
-- \servo_pwm|count[9]~40\ = CARRY((!\servo_pwm|count[8]~38\) # (!\servo_pwm|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(9),
	datad => VCC,
	cin => \servo_pwm|count[8]~38\,
	combout => \servo_pwm|count[9]~39_combout\,
	cout => \servo_pwm|count[9]~40\);

-- Location: FF_X24_Y19_N31
\servo_pwm|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[9]~39_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(9));

-- Location: LCCOMB_X24_Y18_N0
\servo_pwm|count[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[10]~41_combout\ = (\servo_pwm|count\(10) & (\servo_pwm|count[9]~40\ $ (GND))) # (!\servo_pwm|count\(10) & (!\servo_pwm|count[9]~40\ & VCC))
-- \servo_pwm|count[10]~42\ = CARRY((\servo_pwm|count\(10) & !\servo_pwm|count[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|count\(10),
	datad => VCC,
	cin => \servo_pwm|count[9]~40\,
	combout => \servo_pwm|count[10]~41_combout\,
	cout => \servo_pwm|count[10]~42\);

-- Location: FF_X24_Y18_N1
\servo_pwm|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[10]~41_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(10));

-- Location: LCCOMB_X24_Y18_N2
\servo_pwm|count[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[11]~43_combout\ = (\servo_pwm|count\(11) & (!\servo_pwm|count[10]~42\)) # (!\servo_pwm|count\(11) & ((\servo_pwm|count[10]~42\) # (GND)))
-- \servo_pwm|count[11]~44\ = CARRY((!\servo_pwm|count[10]~42\) # (!\servo_pwm|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|count\(11),
	datad => VCC,
	cin => \servo_pwm|count[10]~42\,
	combout => \servo_pwm|count[11]~43_combout\,
	cout => \servo_pwm|count[11]~44\);

-- Location: FF_X24_Y18_N3
\servo_pwm|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[11]~43_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(11));

-- Location: LCCOMB_X24_Y18_N4
\servo_pwm|count[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[12]~45_combout\ = (\servo_pwm|count\(12) & (\servo_pwm|count[11]~44\ $ (GND))) # (!\servo_pwm|count\(12) & (!\servo_pwm|count[11]~44\ & VCC))
-- \servo_pwm|count[12]~46\ = CARRY((\servo_pwm|count\(12) & !\servo_pwm|count[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|count\(12),
	datad => VCC,
	cin => \servo_pwm|count[11]~44\,
	combout => \servo_pwm|count[12]~45_combout\,
	cout => \servo_pwm|count[12]~46\);

-- Location: FF_X24_Y18_N5
\servo_pwm|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[12]~45_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(12));

-- Location: LCCOMB_X24_Y18_N6
\servo_pwm|count[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|count[13]~47_combout\ = (\servo_pwm|count\(13) & (!\servo_pwm|count[12]~46\)) # (!\servo_pwm|count\(13) & ((\servo_pwm|count[12]~46\) # (GND)))
-- \servo_pwm|count[13]~48\ = CARRY((!\servo_pwm|count[12]~46\) # (!\servo_pwm|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|count\(13),
	datad => VCC,
	cin => \servo_pwm|count[12]~46\,
	combout => \servo_pwm|count[13]~47_combout\,
	cout => \servo_pwm|count[13]~48\);

-- Location: FF_X24_Y18_N7
\servo_pwm|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[13]~47_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(13));

-- Location: FF_X24_Y18_N9
\servo_pwm|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|count[14]~49_combout\,
	sclr => \servo_pwm|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|count\(14));

-- Location: LCCOMB_X25_Y18_N10
\servo_pwm|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|LessThan1~3_combout\ = (!\servo_pwm|count\(14) & (!\servo_pwm|count\(13) & (!\servo_pwm|count\(9) & !\servo_pwm|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(14),
	datab => \servo_pwm|count\(13),
	datac => \servo_pwm|count\(9),
	datad => \servo_pwm|count\(15),
	combout => \servo_pwm|LessThan1~3_combout\);

-- Location: LCCOMB_X25_Y18_N0
\servo_pwm|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|LessThan1~0_combout\ = (!\servo_pwm|count\(16) & (!\servo_pwm|count\(20) & (!\servo_pwm|count\(12) & !\servo_pwm|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(16),
	datab => \servo_pwm|count\(20),
	datac => \servo_pwm|count\(12),
	datad => \servo_pwm|count\(17),
	combout => \servo_pwm|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y18_N26
\servo_pwm|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|LessThan1~4_combout\ = (!\servo_pwm|count\(19) & (!\servo_pwm|count\(11) & (!\servo_pwm|count\(18) & !\servo_pwm|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(19),
	datab => \servo_pwm|count\(11),
	datac => \servo_pwm|count\(18),
	datad => \servo_pwm|count\(10),
	combout => \servo_pwm|LessThan1~4_combout\);

-- Location: LCCOMB_X24_Y19_N0
\servo_pwm|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|LessThan1~1_combout\ = (((!\servo_pwm|count\(2) & !\servo_pwm|count\(3))) # (!\servo_pwm|count\(6))) # (!\servo_pwm|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(2),
	datab => \servo_pwm|count\(3),
	datac => \servo_pwm|count\(7),
	datad => \servo_pwm|count\(6),
	combout => \servo_pwm|LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y19_N6
\servo_pwm|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|LessThan1~2_combout\ = (((\servo_pwm|LessThan1~1_combout\) # (!\servo_pwm|count\(5))) # (!\servo_pwm|count\(8))) # (!\servo_pwm|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|count\(4),
	datab => \servo_pwm|count\(8),
	datac => \servo_pwm|count\(5),
	datad => \servo_pwm|LessThan1~1_combout\,
	combout => \servo_pwm|LessThan1~2_combout\);

-- Location: LCCOMB_X25_Y18_N8
\servo_pwm|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|LessThan1~5_combout\ = (\servo_pwm|LessThan1~3_combout\ & (\servo_pwm|LessThan1~0_combout\ & (\servo_pwm|LessThan1~4_combout\ & \servo_pwm|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|LessThan1~3_combout\,
	datab => \servo_pwm|LessThan1~0_combout\,
	datac => \servo_pwm|LessThan1~4_combout\,
	datad => \servo_pwm|LessThan1~2_combout\,
	combout => \servo_pwm|LessThan1~5_combout\);

-- Location: LCCOMB_X13_Y11_N12
\servo_pwm|SERVO|count[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[0]~21_combout\ = \servo_pwm|SERVO|count\(0) $ (VCC)
-- \servo_pwm|SERVO|count[0]~22\ = CARRY(\servo_pwm|SERVO|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(0),
	datad => VCC,
	combout => \servo_pwm|SERVO|count[0]~21_combout\,
	cout => \servo_pwm|SERVO|count[0]~22\);

-- Location: LCCOMB_X13_Y10_N26
\servo_pwm|SERVO|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~0_combout\ = (!\servo_pwm|SERVO|count\(19) & !\servo_pwm|SERVO|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(19),
	datad => \servo_pwm|SERVO|count\(18),
	combout => \servo_pwm|SERVO|LessThan1~0_combout\);

-- Location: LCCOMB_X13_Y11_N4
\servo_pwm|SERVO|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan0~0_combout\ = (((!\servo_pwm|SERVO|count\(5) & !\servo_pwm|SERVO|count\(4))) # (!\servo_pwm|SERVO|count\(6))) # (!\servo_pwm|SERVO|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(7),
	datab => \servo_pwm|SERVO|count\(6),
	datac => \servo_pwm|SERVO|count\(5),
	datad => \servo_pwm|SERVO|count\(4),
	combout => \servo_pwm|SERVO|LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y11_N2
\servo_pwm|SERVO|count[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[2]~60_combout\ = (\servo_pwm|SERVO|count\(9) & ((\servo_pwm|SERVO|count\(8)) # (!\servo_pwm|SERVO|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|LessThan0~0_combout\,
	datac => \servo_pwm|SERVO|count\(9),
	datad => \servo_pwm|SERVO|count\(8),
	combout => \servo_pwm|SERVO|count[2]~60_combout\);

-- Location: LCCOMB_X13_Y10_N30
\servo_pwm|SERVO|count[2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[2]~61_combout\ = (\servo_pwm|SERVO|count\(12) & ((\servo_pwm|SERVO|count[2]~60_combout\) # ((\servo_pwm|SERVO|count\(11)) # (\servo_pwm|SERVO|count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count[2]~60_combout\,
	datab => \servo_pwm|SERVO|count\(11),
	datac => \servo_pwm|SERVO|count\(12),
	datad => \servo_pwm|SERVO|count\(10),
	combout => \servo_pwm|SERVO|count[2]~61_combout\);

-- Location: LCCOMB_X13_Y10_N24
\servo_pwm|SERVO|count[2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[2]~59_combout\ = (!\servo_pwm|SERVO|count\(15) & (!\servo_pwm|SERVO|count\(14) & !\servo_pwm|SERVO|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(15),
	datac => \servo_pwm|SERVO|count\(14),
	datad => \servo_pwm|SERVO|count\(13),
	combout => \servo_pwm|SERVO|count[2]~59_combout\);

-- Location: LCCOMB_X13_Y10_N28
\servo_pwm|SERVO|count[2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[2]~62_combout\ = (((!\servo_pwm|SERVO|count[2]~61_combout\ & \servo_pwm|SERVO|count[2]~59_combout\)) # (!\servo_pwm|SERVO|count\(16))) # (!\servo_pwm|SERVO|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count[2]~61_combout\,
	datab => \servo_pwm|SERVO|count[2]~59_combout\,
	datac => \servo_pwm|SERVO|count\(17),
	datad => \servo_pwm|SERVO|count\(16),
	combout => \servo_pwm|SERVO|count[2]~62_combout\);

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

-- Location: LCCOMB_X13_Y10_N22
\servo_pwm|SERVO|count[2]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[2]~63_combout\ = ((\servo_pwm|SERVO|count\(20) & ((!\servo_pwm|SERVO|count[2]~62_combout\) # (!\servo_pwm|SERVO|LessThan1~0_combout\)))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|LessThan1~0_combout\,
	datab => \servo_pwm|SERVO|count[2]~62_combout\,
	datac => \reset~input_o\,
	datad => \servo_pwm|SERVO|count\(20),
	combout => \servo_pwm|SERVO|count[2]~63_combout\);

-- Location: FF_X13_Y11_N13
\servo_pwm|SERVO|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[0]~21_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(0));

-- Location: LCCOMB_X13_Y11_N14
\servo_pwm|SERVO|count[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[1]~23_combout\ = (\servo_pwm|SERVO|count\(1) & (!\servo_pwm|SERVO|count[0]~22\)) # (!\servo_pwm|SERVO|count\(1) & ((\servo_pwm|SERVO|count[0]~22\) # (GND)))
-- \servo_pwm|SERVO|count[1]~24\ = CARRY((!\servo_pwm|SERVO|count[0]~22\) # (!\servo_pwm|SERVO|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(1),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[0]~22\,
	combout => \servo_pwm|SERVO|count[1]~23_combout\,
	cout => \servo_pwm|SERVO|count[1]~24\);

-- Location: FF_X13_Y11_N15
\servo_pwm|SERVO|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[1]~23_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(1));

-- Location: LCCOMB_X13_Y11_N16
\servo_pwm|SERVO|count[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[2]~25_combout\ = (\servo_pwm|SERVO|count\(2) & (\servo_pwm|SERVO|count[1]~24\ $ (GND))) # (!\servo_pwm|SERVO|count\(2) & (!\servo_pwm|SERVO|count[1]~24\ & VCC))
-- \servo_pwm|SERVO|count[2]~26\ = CARRY((\servo_pwm|SERVO|count\(2) & !\servo_pwm|SERVO|count[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(2),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[1]~24\,
	combout => \servo_pwm|SERVO|count[2]~25_combout\,
	cout => \servo_pwm|SERVO|count[2]~26\);

-- Location: FF_X13_Y11_N17
\servo_pwm|SERVO|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[2]~25_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(2));

-- Location: LCCOMB_X13_Y11_N18
\servo_pwm|SERVO|count[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[3]~27_combout\ = (\servo_pwm|SERVO|count\(3) & (!\servo_pwm|SERVO|count[2]~26\)) # (!\servo_pwm|SERVO|count\(3) & ((\servo_pwm|SERVO|count[2]~26\) # (GND)))
-- \servo_pwm|SERVO|count[3]~28\ = CARRY((!\servo_pwm|SERVO|count[2]~26\) # (!\servo_pwm|SERVO|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(3),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[2]~26\,
	combout => \servo_pwm|SERVO|count[3]~27_combout\,
	cout => \servo_pwm|SERVO|count[3]~28\);

-- Location: FF_X13_Y11_N19
\servo_pwm|SERVO|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[3]~27_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(3));

-- Location: LCCOMB_X13_Y11_N20
\servo_pwm|SERVO|count[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[4]~29_combout\ = (\servo_pwm|SERVO|count\(4) & (\servo_pwm|SERVO|count[3]~28\ $ (GND))) # (!\servo_pwm|SERVO|count\(4) & (!\servo_pwm|SERVO|count[3]~28\ & VCC))
-- \servo_pwm|SERVO|count[4]~30\ = CARRY((\servo_pwm|SERVO|count\(4) & !\servo_pwm|SERVO|count[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(4),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[3]~28\,
	combout => \servo_pwm|SERVO|count[4]~29_combout\,
	cout => \servo_pwm|SERVO|count[4]~30\);

-- Location: FF_X13_Y11_N21
\servo_pwm|SERVO|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[4]~29_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(4));

-- Location: LCCOMB_X13_Y11_N22
\servo_pwm|SERVO|count[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[5]~31_combout\ = (\servo_pwm|SERVO|count\(5) & (!\servo_pwm|SERVO|count[4]~30\)) # (!\servo_pwm|SERVO|count\(5) & ((\servo_pwm|SERVO|count[4]~30\) # (GND)))
-- \servo_pwm|SERVO|count[5]~32\ = CARRY((!\servo_pwm|SERVO|count[4]~30\) # (!\servo_pwm|SERVO|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(5),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[4]~30\,
	combout => \servo_pwm|SERVO|count[5]~31_combout\,
	cout => \servo_pwm|SERVO|count[5]~32\);

-- Location: FF_X13_Y11_N23
\servo_pwm|SERVO|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[5]~31_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(5));

-- Location: LCCOMB_X13_Y11_N24
\servo_pwm|SERVO|count[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[6]~33_combout\ = (\servo_pwm|SERVO|count\(6) & (\servo_pwm|SERVO|count[5]~32\ $ (GND))) # (!\servo_pwm|SERVO|count\(6) & (!\servo_pwm|SERVO|count[5]~32\ & VCC))
-- \servo_pwm|SERVO|count[6]~34\ = CARRY((\servo_pwm|SERVO|count\(6) & !\servo_pwm|SERVO|count[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(6),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[5]~32\,
	combout => \servo_pwm|SERVO|count[6]~33_combout\,
	cout => \servo_pwm|SERVO|count[6]~34\);

-- Location: FF_X13_Y11_N25
\servo_pwm|SERVO|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[6]~33_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(6));

-- Location: LCCOMB_X13_Y11_N26
\servo_pwm|SERVO|count[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[7]~35_combout\ = (\servo_pwm|SERVO|count\(7) & (!\servo_pwm|SERVO|count[6]~34\)) # (!\servo_pwm|SERVO|count\(7) & ((\servo_pwm|SERVO|count[6]~34\) # (GND)))
-- \servo_pwm|SERVO|count[7]~36\ = CARRY((!\servo_pwm|SERVO|count[6]~34\) # (!\servo_pwm|SERVO|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(7),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[6]~34\,
	combout => \servo_pwm|SERVO|count[7]~35_combout\,
	cout => \servo_pwm|SERVO|count[7]~36\);

-- Location: FF_X13_Y11_N27
\servo_pwm|SERVO|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[7]~35_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(7));

-- Location: LCCOMB_X13_Y11_N28
\servo_pwm|SERVO|count[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[8]~37_combout\ = (\servo_pwm|SERVO|count\(8) & (\servo_pwm|SERVO|count[7]~36\ $ (GND))) # (!\servo_pwm|SERVO|count\(8) & (!\servo_pwm|SERVO|count[7]~36\ & VCC))
-- \servo_pwm|SERVO|count[8]~38\ = CARRY((\servo_pwm|SERVO|count\(8) & !\servo_pwm|SERVO|count[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(8),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[7]~36\,
	combout => \servo_pwm|SERVO|count[8]~37_combout\,
	cout => \servo_pwm|SERVO|count[8]~38\);

-- Location: FF_X13_Y11_N29
\servo_pwm|SERVO|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[8]~37_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(8));

-- Location: LCCOMB_X13_Y11_N30
\servo_pwm|SERVO|count[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[9]~39_combout\ = (\servo_pwm|SERVO|count\(9) & (!\servo_pwm|SERVO|count[8]~38\)) # (!\servo_pwm|SERVO|count\(9) & ((\servo_pwm|SERVO|count[8]~38\) # (GND)))
-- \servo_pwm|SERVO|count[9]~40\ = CARRY((!\servo_pwm|SERVO|count[8]~38\) # (!\servo_pwm|SERVO|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(9),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[8]~38\,
	combout => \servo_pwm|SERVO|count[9]~39_combout\,
	cout => \servo_pwm|SERVO|count[9]~40\);

-- Location: FF_X13_Y11_N31
\servo_pwm|SERVO|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[9]~39_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(9));

-- Location: LCCOMB_X13_Y10_N0
\servo_pwm|SERVO|count[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[10]~41_combout\ = (\servo_pwm|SERVO|count\(10) & (\servo_pwm|SERVO|count[9]~40\ $ (GND))) # (!\servo_pwm|SERVO|count\(10) & (!\servo_pwm|SERVO|count[9]~40\ & VCC))
-- \servo_pwm|SERVO|count[10]~42\ = CARRY((\servo_pwm|SERVO|count\(10) & !\servo_pwm|SERVO|count[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(10),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[9]~40\,
	combout => \servo_pwm|SERVO|count[10]~41_combout\,
	cout => \servo_pwm|SERVO|count[10]~42\);

-- Location: FF_X13_Y10_N1
\servo_pwm|SERVO|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[10]~41_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(10));

-- Location: LCCOMB_X13_Y10_N2
\servo_pwm|SERVO|count[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[11]~43_combout\ = (\servo_pwm|SERVO|count\(11) & (!\servo_pwm|SERVO|count[10]~42\)) # (!\servo_pwm|SERVO|count\(11) & ((\servo_pwm|SERVO|count[10]~42\) # (GND)))
-- \servo_pwm|SERVO|count[11]~44\ = CARRY((!\servo_pwm|SERVO|count[10]~42\) # (!\servo_pwm|SERVO|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(11),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[10]~42\,
	combout => \servo_pwm|SERVO|count[11]~43_combout\,
	cout => \servo_pwm|SERVO|count[11]~44\);

-- Location: FF_X13_Y10_N3
\servo_pwm|SERVO|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[11]~43_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(11));

-- Location: LCCOMB_X13_Y10_N4
\servo_pwm|SERVO|count[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[12]~45_combout\ = (\servo_pwm|SERVO|count\(12) & (\servo_pwm|SERVO|count[11]~44\ $ (GND))) # (!\servo_pwm|SERVO|count\(12) & (!\servo_pwm|SERVO|count[11]~44\ & VCC))
-- \servo_pwm|SERVO|count[12]~46\ = CARRY((\servo_pwm|SERVO|count\(12) & !\servo_pwm|SERVO|count[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(12),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[11]~44\,
	combout => \servo_pwm|SERVO|count[12]~45_combout\,
	cout => \servo_pwm|SERVO|count[12]~46\);

-- Location: FF_X13_Y10_N5
\servo_pwm|SERVO|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[12]~45_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(12));

-- Location: LCCOMB_X13_Y10_N6
\servo_pwm|SERVO|count[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[13]~47_combout\ = (\servo_pwm|SERVO|count\(13) & (!\servo_pwm|SERVO|count[12]~46\)) # (!\servo_pwm|SERVO|count\(13) & ((\servo_pwm|SERVO|count[12]~46\) # (GND)))
-- \servo_pwm|SERVO|count[13]~48\ = CARRY((!\servo_pwm|SERVO|count[12]~46\) # (!\servo_pwm|SERVO|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(13),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[12]~46\,
	combout => \servo_pwm|SERVO|count[13]~47_combout\,
	cout => \servo_pwm|SERVO|count[13]~48\);

-- Location: FF_X13_Y10_N7
\servo_pwm|SERVO|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[13]~47_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(13));

-- Location: LCCOMB_X13_Y10_N8
\servo_pwm|SERVO|count[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[14]~49_combout\ = (\servo_pwm|SERVO|count\(14) & (\servo_pwm|SERVO|count[13]~48\ $ (GND))) # (!\servo_pwm|SERVO|count\(14) & (!\servo_pwm|SERVO|count[13]~48\ & VCC))
-- \servo_pwm|SERVO|count[14]~50\ = CARRY((\servo_pwm|SERVO|count\(14) & !\servo_pwm|SERVO|count[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(14),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[13]~48\,
	combout => \servo_pwm|SERVO|count[14]~49_combout\,
	cout => \servo_pwm|SERVO|count[14]~50\);

-- Location: FF_X13_Y10_N9
\servo_pwm|SERVO|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[14]~49_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(14));

-- Location: LCCOMB_X13_Y10_N10
\servo_pwm|SERVO|count[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[15]~51_combout\ = (\servo_pwm|SERVO|count\(15) & (!\servo_pwm|SERVO|count[14]~50\)) # (!\servo_pwm|SERVO|count\(15) & ((\servo_pwm|SERVO|count[14]~50\) # (GND)))
-- \servo_pwm|SERVO|count[15]~52\ = CARRY((!\servo_pwm|SERVO|count[14]~50\) # (!\servo_pwm|SERVO|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(15),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[14]~50\,
	combout => \servo_pwm|SERVO|count[15]~51_combout\,
	cout => \servo_pwm|SERVO|count[15]~52\);

-- Location: FF_X13_Y10_N11
\servo_pwm|SERVO|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[15]~51_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(15));

-- Location: LCCOMB_X13_Y10_N12
\servo_pwm|SERVO|count[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[16]~53_combout\ = (\servo_pwm|SERVO|count\(16) & (\servo_pwm|SERVO|count[15]~52\ $ (GND))) # (!\servo_pwm|SERVO|count\(16) & (!\servo_pwm|SERVO|count[15]~52\ & VCC))
-- \servo_pwm|SERVO|count[16]~54\ = CARRY((\servo_pwm|SERVO|count\(16) & !\servo_pwm|SERVO|count[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(16),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[15]~52\,
	combout => \servo_pwm|SERVO|count[16]~53_combout\,
	cout => \servo_pwm|SERVO|count[16]~54\);

-- Location: FF_X13_Y10_N13
\servo_pwm|SERVO|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[16]~53_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(16));

-- Location: LCCOMB_X13_Y10_N14
\servo_pwm|SERVO|count[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[17]~55_combout\ = (\servo_pwm|SERVO|count\(17) & (!\servo_pwm|SERVO|count[16]~54\)) # (!\servo_pwm|SERVO|count\(17) & ((\servo_pwm|SERVO|count[16]~54\) # (GND)))
-- \servo_pwm|SERVO|count[17]~56\ = CARRY((!\servo_pwm|SERVO|count[16]~54\) # (!\servo_pwm|SERVO|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(17),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[16]~54\,
	combout => \servo_pwm|SERVO|count[17]~55_combout\,
	cout => \servo_pwm|SERVO|count[17]~56\);

-- Location: FF_X13_Y10_N15
\servo_pwm|SERVO|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[17]~55_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(17));

-- Location: LCCOMB_X13_Y10_N16
\servo_pwm|SERVO|count[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[18]~57_combout\ = (\servo_pwm|SERVO|count\(18) & (\servo_pwm|SERVO|count[17]~56\ $ (GND))) # (!\servo_pwm|SERVO|count\(18) & (!\servo_pwm|SERVO|count[17]~56\ & VCC))
-- \servo_pwm|SERVO|count[18]~58\ = CARRY((\servo_pwm|SERVO|count\(18) & !\servo_pwm|SERVO|count[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(18),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[17]~56\,
	combout => \servo_pwm|SERVO|count[18]~57_combout\,
	cout => \servo_pwm|SERVO|count[18]~58\);

-- Location: FF_X13_Y10_N17
\servo_pwm|SERVO|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[18]~57_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(18));

-- Location: LCCOMB_X13_Y10_N18
\servo_pwm|SERVO|count[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[19]~64_combout\ = (\servo_pwm|SERVO|count\(19) & (!\servo_pwm|SERVO|count[18]~58\)) # (!\servo_pwm|SERVO|count\(19) & ((\servo_pwm|SERVO|count[18]~58\) # (GND)))
-- \servo_pwm|SERVO|count[19]~65\ = CARRY((!\servo_pwm|SERVO|count[18]~58\) # (!\servo_pwm|SERVO|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(19),
	datad => VCC,
	cin => \servo_pwm|SERVO|count[18]~58\,
	combout => \servo_pwm|SERVO|count[19]~64_combout\,
	cout => \servo_pwm|SERVO|count[19]~65\);

-- Location: FF_X13_Y10_N19
\servo_pwm|SERVO|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[19]~64_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(19));

-- Location: LCCOMB_X13_Y10_N20
\servo_pwm|SERVO|count[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|count[20]~66_combout\ = \servo_pwm|SERVO|count\(20) $ (!\servo_pwm|SERVO|count[19]~65\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|count\(20),
	cin => \servo_pwm|SERVO|count[19]~65\,
	combout => \servo_pwm|SERVO|count[20]~66_combout\);

-- Location: FF_X13_Y10_N21
\servo_pwm|SERVO|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|count[20]~66_combout\,
	sclr => \servo_pwm|SERVO|count[2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|count\(20));

-- Location: LCCOMB_X17_Y7_N4
\servo_pwm|COUNTING|counter_i[0]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[0]~78_combout\ = !\servo_pwm|COUNTING|counter_i\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo_pwm|COUNTING|counter_i\(0),
	combout => \servo_pwm|COUNTING|counter_i[0]~78_combout\);

-- Location: CLKCTRL_G0
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

-- Location: FF_X17_Y7_N5
\servo_pwm|COUNTING|counter_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[0]~78_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(0));

-- Location: LCCOMB_X17_Y7_N6
\servo_pwm|COUNTING|counter_i[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[1]~26_combout\ = (\servo_pwm|COUNTING|counter_i\(1) & (\servo_pwm|COUNTING|counter_i\(0) $ (VCC))) # (!\servo_pwm|COUNTING|counter_i\(1) & (\servo_pwm|COUNTING|counter_i\(0) & VCC))
-- \servo_pwm|COUNTING|counter_i[1]~27\ = CARRY((\servo_pwm|COUNTING|counter_i\(1) & \servo_pwm|COUNTING|counter_i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|COUNTING|counter_i\(1),
	datab => \servo_pwm|COUNTING|counter_i\(0),
	datad => VCC,
	combout => \servo_pwm|COUNTING|counter_i[1]~26_combout\,
	cout => \servo_pwm|COUNTING|counter_i[1]~27\);

-- Location: FF_X17_Y7_N7
\servo_pwm|COUNTING|counter_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[1]~26_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(1));

-- Location: LCCOMB_X17_Y7_N8
\servo_pwm|COUNTING|counter_i[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[2]~28_combout\ = (\servo_pwm|COUNTING|counter_i\(2) & (!\servo_pwm|COUNTING|counter_i[1]~27\)) # (!\servo_pwm|COUNTING|counter_i\(2) & ((\servo_pwm|COUNTING|counter_i[1]~27\) # (GND)))
-- \servo_pwm|COUNTING|counter_i[2]~29\ = CARRY((!\servo_pwm|COUNTING|counter_i[1]~27\) # (!\servo_pwm|COUNTING|counter_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(2),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[1]~27\,
	combout => \servo_pwm|COUNTING|counter_i[2]~28_combout\,
	cout => \servo_pwm|COUNTING|counter_i[2]~29\);

-- Location: FF_X17_Y7_N9
\servo_pwm|COUNTING|counter_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[2]~28_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(2));

-- Location: LCCOMB_X17_Y7_N10
\servo_pwm|COUNTING|counter_i[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[3]~30_combout\ = (\servo_pwm|COUNTING|counter_i\(3) & (\servo_pwm|COUNTING|counter_i[2]~29\ $ (GND))) # (!\servo_pwm|COUNTING|counter_i\(3) & (!\servo_pwm|COUNTING|counter_i[2]~29\ & VCC))
-- \servo_pwm|COUNTING|counter_i[3]~31\ = CARRY((\servo_pwm|COUNTING|counter_i\(3) & !\servo_pwm|COUNTING|counter_i[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|COUNTING|counter_i\(3),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[2]~29\,
	combout => \servo_pwm|COUNTING|counter_i[3]~30_combout\,
	cout => \servo_pwm|COUNTING|counter_i[3]~31\);

-- Location: FF_X17_Y7_N11
\servo_pwm|COUNTING|counter_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[3]~30_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(3));

-- Location: LCCOMB_X17_Y7_N12
\servo_pwm|COUNTING|counter_i[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[4]~32_combout\ = (\servo_pwm|COUNTING|counter_i\(4) & (!\servo_pwm|COUNTING|counter_i[3]~31\)) # (!\servo_pwm|COUNTING|counter_i\(4) & ((\servo_pwm|COUNTING|counter_i[3]~31\) # (GND)))
-- \servo_pwm|COUNTING|counter_i[4]~33\ = CARRY((!\servo_pwm|COUNTING|counter_i[3]~31\) # (!\servo_pwm|COUNTING|counter_i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|COUNTING|counter_i\(4),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[3]~31\,
	combout => \servo_pwm|COUNTING|counter_i[4]~32_combout\,
	cout => \servo_pwm|COUNTING|counter_i[4]~33\);

-- Location: FF_X17_Y7_N13
\servo_pwm|COUNTING|counter_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[4]~32_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(4));

-- Location: LCCOMB_X17_Y7_N14
\servo_pwm|COUNTING|counter_i[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[5]~34_combout\ = (\servo_pwm|COUNTING|counter_i\(5) & (\servo_pwm|COUNTING|counter_i[4]~33\ $ (GND))) # (!\servo_pwm|COUNTING|counter_i\(5) & (!\servo_pwm|COUNTING|counter_i[4]~33\ & VCC))
-- \servo_pwm|COUNTING|counter_i[5]~35\ = CARRY((\servo_pwm|COUNTING|counter_i\(5) & !\servo_pwm|COUNTING|counter_i[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(5),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[4]~33\,
	combout => \servo_pwm|COUNTING|counter_i[5]~34_combout\,
	cout => \servo_pwm|COUNTING|counter_i[5]~35\);

-- Location: FF_X17_Y7_N15
\servo_pwm|COUNTING|counter_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[5]~34_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(5));

-- Location: LCCOMB_X17_Y7_N16
\servo_pwm|COUNTING|counter_i[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[6]~36_combout\ = (\servo_pwm|COUNTING|counter_i\(6) & (!\servo_pwm|COUNTING|counter_i[5]~35\)) # (!\servo_pwm|COUNTING|counter_i\(6) & ((\servo_pwm|COUNTING|counter_i[5]~35\) # (GND)))
-- \servo_pwm|COUNTING|counter_i[6]~37\ = CARRY((!\servo_pwm|COUNTING|counter_i[5]~35\) # (!\servo_pwm|COUNTING|counter_i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(6),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[5]~35\,
	combout => \servo_pwm|COUNTING|counter_i[6]~36_combout\,
	cout => \servo_pwm|COUNTING|counter_i[6]~37\);

-- Location: FF_X17_Y7_N17
\servo_pwm|COUNTING|counter_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[6]~36_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(6));

-- Location: LCCOMB_X17_Y7_N18
\servo_pwm|COUNTING|counter_i[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[7]~38_combout\ = (\servo_pwm|COUNTING|counter_i\(7) & (\servo_pwm|COUNTING|counter_i[6]~37\ $ (GND))) # (!\servo_pwm|COUNTING|counter_i\(7) & (!\servo_pwm|COUNTING|counter_i[6]~37\ & VCC))
-- \servo_pwm|COUNTING|counter_i[7]~39\ = CARRY((\servo_pwm|COUNTING|counter_i\(7) & !\servo_pwm|COUNTING|counter_i[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(7),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[6]~37\,
	combout => \servo_pwm|COUNTING|counter_i[7]~38_combout\,
	cout => \servo_pwm|COUNTING|counter_i[7]~39\);

-- Location: FF_X17_Y7_N19
\servo_pwm|COUNTING|counter_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[7]~38_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(7));

-- Location: LCCOMB_X17_Y7_N20
\servo_pwm|COUNTING|counter_i[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[8]~40_combout\ = (\servo_pwm|COUNTING|counter_i\(8) & (!\servo_pwm|COUNTING|counter_i[7]~39\)) # (!\servo_pwm|COUNTING|counter_i\(8) & ((\servo_pwm|COUNTING|counter_i[7]~39\) # (GND)))
-- \servo_pwm|COUNTING|counter_i[8]~41\ = CARRY((!\servo_pwm|COUNTING|counter_i[7]~39\) # (!\servo_pwm|COUNTING|counter_i\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(8),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[7]~39\,
	combout => \servo_pwm|COUNTING|counter_i[8]~40_combout\,
	cout => \servo_pwm|COUNTING|counter_i[8]~41\);

-- Location: FF_X17_Y7_N21
\servo_pwm|COUNTING|counter_i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[8]~40_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(8));

-- Location: LCCOMB_X17_Y7_N22
\servo_pwm|COUNTING|counter_i[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[9]~42_combout\ = (\servo_pwm|COUNTING|counter_i\(9) & (\servo_pwm|COUNTING|counter_i[8]~41\ $ (GND))) # (!\servo_pwm|COUNTING|counter_i\(9) & (!\servo_pwm|COUNTING|counter_i[8]~41\ & VCC))
-- \servo_pwm|COUNTING|counter_i[9]~43\ = CARRY((\servo_pwm|COUNTING|counter_i\(9) & !\servo_pwm|COUNTING|counter_i[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|COUNTING|counter_i\(9),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[8]~41\,
	combout => \servo_pwm|COUNTING|counter_i[9]~42_combout\,
	cout => \servo_pwm|COUNTING|counter_i[9]~43\);

-- Location: FF_X17_Y7_N23
\servo_pwm|COUNTING|counter_i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[9]~42_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(9));

-- Location: LCCOMB_X17_Y7_N24
\servo_pwm|COUNTING|counter_i[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[10]~44_combout\ = (\servo_pwm|COUNTING|counter_i\(10) & (!\servo_pwm|COUNTING|counter_i[9]~43\)) # (!\servo_pwm|COUNTING|counter_i\(10) & ((\servo_pwm|COUNTING|counter_i[9]~43\) # (GND)))
-- \servo_pwm|COUNTING|counter_i[10]~45\ = CARRY((!\servo_pwm|COUNTING|counter_i[9]~43\) # (!\servo_pwm|COUNTING|counter_i\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(10),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[9]~43\,
	combout => \servo_pwm|COUNTING|counter_i[10]~44_combout\,
	cout => \servo_pwm|COUNTING|counter_i[10]~45\);

-- Location: FF_X17_Y7_N25
\servo_pwm|COUNTING|counter_i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[10]~44_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(10));

-- Location: LCCOMB_X17_Y7_N26
\servo_pwm|COUNTING|counter_i[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[11]~46_combout\ = (\servo_pwm|COUNTING|counter_i\(11) & (\servo_pwm|COUNTING|counter_i[10]~45\ $ (GND))) # (!\servo_pwm|COUNTING|counter_i\(11) & (!\servo_pwm|COUNTING|counter_i[10]~45\ & VCC))
-- \servo_pwm|COUNTING|counter_i[11]~47\ = CARRY((\servo_pwm|COUNTING|counter_i\(11) & !\servo_pwm|COUNTING|counter_i[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|COUNTING|counter_i\(11),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[10]~45\,
	combout => \servo_pwm|COUNTING|counter_i[11]~46_combout\,
	cout => \servo_pwm|COUNTING|counter_i[11]~47\);

-- Location: FF_X17_Y7_N27
\servo_pwm|COUNTING|counter_i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[11]~46_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(11));

-- Location: LCCOMB_X17_Y7_N28
\servo_pwm|COUNTING|counter_i[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[12]~48_combout\ = (\servo_pwm|COUNTING|counter_i\(12) & (!\servo_pwm|COUNTING|counter_i[11]~47\)) # (!\servo_pwm|COUNTING|counter_i\(12) & ((\servo_pwm|COUNTING|counter_i[11]~47\) # (GND)))
-- \servo_pwm|COUNTING|counter_i[12]~49\ = CARRY((!\servo_pwm|COUNTING|counter_i[11]~47\) # (!\servo_pwm|COUNTING|counter_i\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(12),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[11]~47\,
	combout => \servo_pwm|COUNTING|counter_i[12]~48_combout\,
	cout => \servo_pwm|COUNTING|counter_i[12]~49\);

-- Location: FF_X17_Y7_N29
\servo_pwm|COUNTING|counter_i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[12]~48_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(12));

-- Location: LCCOMB_X17_Y7_N30
\servo_pwm|COUNTING|counter_i[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[13]~50_combout\ = (\servo_pwm|COUNTING|counter_i\(13) & (\servo_pwm|COUNTING|counter_i[12]~49\ $ (GND))) # (!\servo_pwm|COUNTING|counter_i\(13) & (!\servo_pwm|COUNTING|counter_i[12]~49\ & VCC))
-- \servo_pwm|COUNTING|counter_i[13]~51\ = CARRY((\servo_pwm|COUNTING|counter_i\(13) & !\servo_pwm|COUNTING|counter_i[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|COUNTING|counter_i\(13),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[12]~49\,
	combout => \servo_pwm|COUNTING|counter_i[13]~50_combout\,
	cout => \servo_pwm|COUNTING|counter_i[13]~51\);

-- Location: FF_X17_Y7_N31
\servo_pwm|COUNTING|counter_i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[13]~50_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(13));

-- Location: LCCOMB_X17_Y6_N0
\servo_pwm|COUNTING|counter_i[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[14]~52_combout\ = (\servo_pwm|COUNTING|counter_i\(14) & (!\servo_pwm|COUNTING|counter_i[13]~51\)) # (!\servo_pwm|COUNTING|counter_i\(14) & ((\servo_pwm|COUNTING|counter_i[13]~51\) # (GND)))
-- \servo_pwm|COUNTING|counter_i[14]~53\ = CARRY((!\servo_pwm|COUNTING|counter_i[13]~51\) # (!\servo_pwm|COUNTING|counter_i\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(14),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[13]~51\,
	combout => \servo_pwm|COUNTING|counter_i[14]~52_combout\,
	cout => \servo_pwm|COUNTING|counter_i[14]~53\);

-- Location: FF_X17_Y6_N1
\servo_pwm|COUNTING|counter_i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[14]~52_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(14));

-- Location: LCCOMB_X17_Y6_N2
\servo_pwm|COUNTING|counter_i[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[15]~54_combout\ = (\servo_pwm|COUNTING|counter_i\(15) & (\servo_pwm|COUNTING|counter_i[14]~53\ $ (GND))) # (!\servo_pwm|COUNTING|counter_i\(15) & (!\servo_pwm|COUNTING|counter_i[14]~53\ & VCC))
-- \servo_pwm|COUNTING|counter_i[15]~55\ = CARRY((\servo_pwm|COUNTING|counter_i\(15) & !\servo_pwm|COUNTING|counter_i[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(15),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[14]~53\,
	combout => \servo_pwm|COUNTING|counter_i[15]~54_combout\,
	cout => \servo_pwm|COUNTING|counter_i[15]~55\);

-- Location: FF_X17_Y6_N3
\servo_pwm|COUNTING|counter_i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[15]~54_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(15));

-- Location: LCCOMB_X17_Y6_N4
\servo_pwm|COUNTING|counter_i[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[16]~56_combout\ = (\servo_pwm|COUNTING|counter_i\(16) & (!\servo_pwm|COUNTING|counter_i[15]~55\)) # (!\servo_pwm|COUNTING|counter_i\(16) & ((\servo_pwm|COUNTING|counter_i[15]~55\) # (GND)))
-- \servo_pwm|COUNTING|counter_i[16]~57\ = CARRY((!\servo_pwm|COUNTING|counter_i[15]~55\) # (!\servo_pwm|COUNTING|counter_i\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(16),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[15]~55\,
	combout => \servo_pwm|COUNTING|counter_i[16]~56_combout\,
	cout => \servo_pwm|COUNTING|counter_i[16]~57\);

-- Location: FF_X17_Y6_N5
\servo_pwm|COUNTING|counter_i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[16]~56_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(16));

-- Location: LCCOMB_X17_Y6_N6
\servo_pwm|COUNTING|counter_i[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[17]~58_combout\ = (\servo_pwm|COUNTING|counter_i\(17) & (\servo_pwm|COUNTING|counter_i[16]~57\ $ (GND))) # (!\servo_pwm|COUNTING|counter_i\(17) & (!\servo_pwm|COUNTING|counter_i[16]~57\ & VCC))
-- \servo_pwm|COUNTING|counter_i[17]~59\ = CARRY((\servo_pwm|COUNTING|counter_i\(17) & !\servo_pwm|COUNTING|counter_i[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|COUNTING|counter_i\(17),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[16]~57\,
	combout => \servo_pwm|COUNTING|counter_i[17]~58_combout\,
	cout => \servo_pwm|COUNTING|counter_i[17]~59\);

-- Location: FF_X17_Y6_N7
\servo_pwm|COUNTING|counter_i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[17]~58_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(17));

-- Location: LCCOMB_X17_Y6_N8
\servo_pwm|COUNTING|counter_i[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[18]~60_combout\ = (\servo_pwm|COUNTING|counter_i\(18) & (!\servo_pwm|COUNTING|counter_i[17]~59\)) # (!\servo_pwm|COUNTING|counter_i\(18) & ((\servo_pwm|COUNTING|counter_i[17]~59\) # (GND)))
-- \servo_pwm|COUNTING|counter_i[18]~61\ = CARRY((!\servo_pwm|COUNTING|counter_i[17]~59\) # (!\servo_pwm|COUNTING|counter_i\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(18),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[17]~59\,
	combout => \servo_pwm|COUNTING|counter_i[18]~60_combout\,
	cout => \servo_pwm|COUNTING|counter_i[18]~61\);

-- Location: FF_X17_Y6_N9
\servo_pwm|COUNTING|counter_i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[18]~60_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(18));

-- Location: LCCOMB_X17_Y6_N10
\servo_pwm|COUNTING|counter_i[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[19]~62_combout\ = (\servo_pwm|COUNTING|counter_i\(19) & (\servo_pwm|COUNTING|counter_i[18]~61\ $ (GND))) # (!\servo_pwm|COUNTING|counter_i\(19) & (!\servo_pwm|COUNTING|counter_i[18]~61\ & VCC))
-- \servo_pwm|COUNTING|counter_i[19]~63\ = CARRY((\servo_pwm|COUNTING|counter_i\(19) & !\servo_pwm|COUNTING|counter_i[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|COUNTING|counter_i\(19),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[18]~61\,
	combout => \servo_pwm|COUNTING|counter_i[19]~62_combout\,
	cout => \servo_pwm|COUNTING|counter_i[19]~63\);

-- Location: FF_X17_Y6_N11
\servo_pwm|COUNTING|counter_i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[19]~62_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(19));

-- Location: LCCOMB_X17_Y6_N12
\servo_pwm|COUNTING|counter_i[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[20]~64_combout\ = (\servo_pwm|COUNTING|counter_i\(20) & (!\servo_pwm|COUNTING|counter_i[19]~63\)) # (!\servo_pwm|COUNTING|counter_i\(20) & ((\servo_pwm|COUNTING|counter_i[19]~63\) # (GND)))
-- \servo_pwm|COUNTING|counter_i[20]~65\ = CARRY((!\servo_pwm|COUNTING|counter_i[19]~63\) # (!\servo_pwm|COUNTING|counter_i\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|COUNTING|counter_i\(20),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[19]~63\,
	combout => \servo_pwm|COUNTING|counter_i[20]~64_combout\,
	cout => \servo_pwm|COUNTING|counter_i[20]~65\);

-- Location: FF_X17_Y6_N13
\servo_pwm|COUNTING|counter_i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[20]~64_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(20));

-- Location: LCCOMB_X17_Y6_N14
\servo_pwm|COUNTING|counter_i[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[21]~66_combout\ = (\servo_pwm|COUNTING|counter_i\(21) & (\servo_pwm|COUNTING|counter_i[20]~65\ $ (GND))) # (!\servo_pwm|COUNTING|counter_i\(21) & (!\servo_pwm|COUNTING|counter_i[20]~65\ & VCC))
-- \servo_pwm|COUNTING|counter_i[21]~67\ = CARRY((\servo_pwm|COUNTING|counter_i\(21) & !\servo_pwm|COUNTING|counter_i[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(21),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[20]~65\,
	combout => \servo_pwm|COUNTING|counter_i[21]~66_combout\,
	cout => \servo_pwm|COUNTING|counter_i[21]~67\);

-- Location: FF_X17_Y6_N15
\servo_pwm|COUNTING|counter_i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[21]~66_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(21));

-- Location: LCCOMB_X17_Y6_N16
\servo_pwm|COUNTING|counter_i[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[22]~68_combout\ = (\servo_pwm|COUNTING|counter_i\(22) & (!\servo_pwm|COUNTING|counter_i[21]~67\)) # (!\servo_pwm|COUNTING|counter_i\(22) & ((\servo_pwm|COUNTING|counter_i[21]~67\) # (GND)))
-- \servo_pwm|COUNTING|counter_i[22]~69\ = CARRY((!\servo_pwm|COUNTING|counter_i[21]~67\) # (!\servo_pwm|COUNTING|counter_i\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(22),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[21]~67\,
	combout => \servo_pwm|COUNTING|counter_i[22]~68_combout\,
	cout => \servo_pwm|COUNTING|counter_i[22]~69\);

-- Location: FF_X17_Y6_N17
\servo_pwm|COUNTING|counter_i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[22]~68_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(22));

-- Location: LCCOMB_X17_Y6_N18
\servo_pwm|COUNTING|counter_i[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[23]~70_combout\ = (\servo_pwm|COUNTING|counter_i\(23) & (\servo_pwm|COUNTING|counter_i[22]~69\ $ (GND))) # (!\servo_pwm|COUNTING|counter_i\(23) & (!\servo_pwm|COUNTING|counter_i[22]~69\ & VCC))
-- \servo_pwm|COUNTING|counter_i[23]~71\ = CARRY((\servo_pwm|COUNTING|counter_i\(23) & !\servo_pwm|COUNTING|counter_i[22]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(23),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[22]~69\,
	combout => \servo_pwm|COUNTING|counter_i[23]~70_combout\,
	cout => \servo_pwm|COUNTING|counter_i[23]~71\);

-- Location: FF_X17_Y6_N19
\servo_pwm|COUNTING|counter_i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[23]~70_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(23));

-- Location: LCCOMB_X17_Y6_N20
\servo_pwm|COUNTING|counter_i[24]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[24]~72_combout\ = (\servo_pwm|COUNTING|counter_i\(24) & (!\servo_pwm|COUNTING|counter_i[23]~71\)) # (!\servo_pwm|COUNTING|counter_i\(24) & ((\servo_pwm|COUNTING|counter_i[23]~71\) # (GND)))
-- \servo_pwm|COUNTING|counter_i[24]~73\ = CARRY((!\servo_pwm|COUNTING|counter_i[23]~71\) # (!\servo_pwm|COUNTING|counter_i\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(24),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[23]~71\,
	combout => \servo_pwm|COUNTING|counter_i[24]~72_combout\,
	cout => \servo_pwm|COUNTING|counter_i[24]~73\);

-- Location: FF_X17_Y6_N21
\servo_pwm|COUNTING|counter_i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[24]~72_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(24));

-- Location: LCCOMB_X17_Y6_N22
\servo_pwm|COUNTING|counter_i[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[25]~74_combout\ = (\servo_pwm|COUNTING|counter_i\(25) & (\servo_pwm|COUNTING|counter_i[24]~73\ $ (GND))) # (!\servo_pwm|COUNTING|counter_i\(25) & (!\servo_pwm|COUNTING|counter_i[24]~73\ & VCC))
-- \servo_pwm|COUNTING|counter_i[25]~75\ = CARRY((\servo_pwm|COUNTING|counter_i\(25) & !\servo_pwm|COUNTING|counter_i[24]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|COUNTING|counter_i\(25),
	datad => VCC,
	cin => \servo_pwm|COUNTING|counter_i[24]~73\,
	combout => \servo_pwm|COUNTING|counter_i[25]~74_combout\,
	cout => \servo_pwm|COUNTING|counter_i[25]~75\);

-- Location: FF_X17_Y6_N23
\servo_pwm|COUNTING|counter_i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[25]~74_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(25));

-- Location: LCCOMB_X17_Y6_N24
\servo_pwm|COUNTING|counter_i[26]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|COUNTING|counter_i[26]~76_combout\ = \servo_pwm|COUNTING|counter_i\(26) $ (\servo_pwm|COUNTING|counter_i[25]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|COUNTING|counter_i\(26),
	cin => \servo_pwm|COUNTING|counter_i[25]~75\,
	combout => \servo_pwm|COUNTING|counter_i[26]~76_combout\);

-- Location: FF_X17_Y6_N25
\servo_pwm|COUNTING|counter_i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|COUNTING|counter_i[26]~76_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|COUNTING|counter_i\(26));

-- Location: M9K_X15_Y6_N0
\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"001F00079001D80073001C0006D001A8006700190006100174005A00160005500148004F00130004900118004300104003E000EC0039000D80034000C4002F00",
	mem_init1 => X"0B0002A000A000250008C00210007C001D0006C00190005C001500050001200044000F00038000C0002C000A0002400070001800050001400040000C00020000800010000400010000000000000000000000000000000000010000400010000800020000C000400014000500018000700024000A0002C000C00038000F0004400120005000150005C00190006C001D0007C00210008C0025000A0002A000B0002F000C40034000D80039000EC003E00104004300118004900130004F00148005500160005A001740061001900067001A8006D001C00073001D80079001F000800020C008600224008C0023C00920025400980026C009E0028800A50029C00AA0",
	mem_init0 => X"02B400B0002CC00B6002E400BC002F800C10031000C60032400CB0033800D00034C00D50035C00DA0037000DE0038000E20039000E6003A000EA003AC00ED003B800F0003C400F3003D000F5003D800F8003E400FA003E800FB003F000FD003F400FE003F800FE003FC00FF003FC00FF003FC00FF003FC00FE003F800FE003F400FD003F000FB003E800FA003E400F8003D800F5003D000F3003C400F0003B800ED003AC00EA003A000E60039000E20038000DE0037000DA0035C00D50034C00D00033800CB0032400C60031000C1002F800BC002E400B6002CC00B0002B400AA0029C00A500288009E0026C00980025400920023C008C0022400860020C0080",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "projekt2.Top_design0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Servo:servo_pwm|sine_rom:SINE|altsyncram:Mux7_rtl_0|altsyncram_kvv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y6_N4
\servo_pwm|SERVO|Mult0|mult_core|romout[1][12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|romout[1][12]~0_combout\ = (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ & ((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\) # ((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ & 
-- \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\,
	datab => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\,
	datac => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datad => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|romout[1][12]~0_combout\);

-- Location: LCCOMB_X16_Y6_N6
\servo_pwm|SERVO|Mult0|mult_core|romout[1][11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|romout[1][11]~1_combout\ = (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ & (((!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ & \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\)))) # 
-- (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ & (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ & ((!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\) # (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\,
	datab => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\,
	datac => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datad => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|romout[1][11]~1_combout\);

-- Location: LCCOMB_X16_Y6_N0
\servo_pwm|SERVO|Mult0|mult_core|romout[1][10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|romout[1][10]~2_combout\ = (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ $ (((!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ & 
-- \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\))))) # (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & ((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ & ((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\) # 
-- (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\))) # (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ & (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datab => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\,
	datac => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\,
	datad => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|romout[1][10]~2_combout\);

-- Location: LCCOMB_X14_Y6_N30
\servo_pwm|SERVO|Mult0|mult_core|romout[1][9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|romout[1][9]~3_combout\ = \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ $ (((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & ((!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\))) # 
-- (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ & \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datab => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\,
	datac => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\,
	datad => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|romout[1][9]~3_combout\);

-- Location: LCCOMB_X14_Y6_N26
\servo_pwm|SERVO|Mult0|mult_core|romout[0][12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|romout[0][12]~5_combout\ = (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\ & ((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\) # ((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & 
-- \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\,
	datac => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\,
	datad => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|romout[0][12]~5_combout\);

-- Location: LCCOMB_X14_Y6_N28
\servo_pwm|SERVO|Mult0|mult_core|romout[1][8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|romout[1][8]~4_combout\ = \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ $ (((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ & !\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\,
	datac => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datad => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|romout[1][8]~4_combout\);

-- Location: LCCOMB_X16_Y6_N22
\servo_pwm|SERVO|Mult0|mult_core|romout[1][7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|romout[1][7]~6_combout\ = \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ $ (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datad => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|romout[1][7]~6_combout\);

-- Location: LCCOMB_X14_Y6_N24
\servo_pwm|SERVO|Mult0|mult_core|romout[0][11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|romout[0][11]~7_combout\ = (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ & (((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\ & !\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\)))) # 
-- (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ & (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\ & ((!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\) # (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\,
	datac => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\,
	datad => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|romout[0][11]~7_combout\);

-- Location: LCCOMB_X14_Y6_N22
\servo_pwm|SERVO|Mult0|mult_core|romout[0][10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|romout[0][10]~8_combout\ = (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ & ((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\ & ((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\) # 
-- (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\))) # (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\ & ((!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\))))) # (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ & 
-- (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\ $ (((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\,
	datac => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\,
	datad => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|romout[0][10]~8_combout\);

-- Location: LCCOMB_X14_Y6_N20
\servo_pwm|SERVO|Mult0|mult_core|romout[0][9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|romout[0][9]~9_combout\ = \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ $ (((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\ & 
-- \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\)) # (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\,
	datac => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\,
	datad => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|romout[0][9]~9_combout\);

-- Location: LCCOMB_X14_Y6_N18
\servo_pwm|SERVO|Mult0|mult_core|romout[0][8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|romout[0][8]~10_combout\ = \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\ $ (((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & !\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\,
	datad => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|romout[0][8]~10_combout\);

-- Location: LCCOMB_X14_Y6_N0
\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ & (\servo_pwm|SERVO|Mult0|mult_core|romout[0][8]~10_combout\ $ (VCC))) # 
-- (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ & (\servo_pwm|SERVO|Mult0|mult_core|romout[0][8]~10_combout\ & VCC))
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ & \servo_pwm|SERVO|Mult0|mult_core|romout[0][8]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\,
	datab => \servo_pwm|SERVO|Mult0|mult_core|romout[0][8]~10_combout\,
	datad => VCC,
	combout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X14_Y6_N2
\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\servo_pwm|SERVO|Mult0|mult_core|romout[0][9]~9_combout\ & ((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & 
-- (\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|romout[0][9]~9_combout\ & ((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & ((\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\servo_pwm|SERVO|Mult0|mult_core|romout[0][9]~9_combout\ & (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & 
-- !\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\servo_pwm|SERVO|Mult0|mult_core|romout[0][9]~9_combout\ & ((!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # 
-- (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|Mult0|mult_core|romout[0][9]~9_combout\,
	datab => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\,
	datad => VCC,
	cin => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X14_Y6_N4
\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\servo_pwm|SERVO|Mult0|mult_core|romout[0][10]~8_combout\ $ (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ $ 
-- (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\servo_pwm|SERVO|Mult0|mult_core|romout[0][10]~8_combout\ & ((\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # (!\servo_pwm|SERVO|Mult0|mult_core|romout[0][10]~8_combout\ & (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ & 
-- !\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|Mult0|mult_core|romout[0][10]~8_combout\,
	datab => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\,
	datad => VCC,
	cin => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X14_Y6_N6
\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\servo_pwm|SERVO|Mult0|mult_core|romout[1][7]~6_combout\ & ((\servo_pwm|SERVO|Mult0|mult_core|romout[0][11]~7_combout\ & 
-- (\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\servo_pwm|SERVO|Mult0|mult_core|romout[0][11]~7_combout\ & (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|romout[1][7]~6_combout\ & ((\servo_pwm|SERVO|Mult0|mult_core|romout[0][11]~7_combout\ & (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|romout[0][11]~7_combout\ & ((\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\servo_pwm|SERVO|Mult0|mult_core|romout[1][7]~6_combout\ & (!\servo_pwm|SERVO|Mult0|mult_core|romout[0][11]~7_combout\ & 
-- !\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\servo_pwm|SERVO|Mult0|mult_core|romout[1][7]~6_combout\ & ((!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|romout[0][11]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|Mult0|mult_core|romout[1][7]~6_combout\,
	datab => \servo_pwm|SERVO|Mult0|mult_core|romout[0][11]~7_combout\,
	datad => VCC,
	cin => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X14_Y6_N8
\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\servo_pwm|SERVO|Mult0|mult_core|romout[0][12]~5_combout\ $ (\servo_pwm|SERVO|Mult0|mult_core|romout[1][8]~4_combout\ $ 
-- (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\servo_pwm|SERVO|Mult0|mult_core|romout[0][12]~5_combout\ & ((\servo_pwm|SERVO|Mult0|mult_core|romout[1][8]~4_combout\) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # (!\servo_pwm|SERVO|Mult0|mult_core|romout[0][12]~5_combout\ & (\servo_pwm|SERVO|Mult0|mult_core|romout[1][8]~4_combout\ & 
-- !\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|Mult0|mult_core|romout[0][12]~5_combout\,
	datab => \servo_pwm|SERVO|Mult0|mult_core|romout[1][8]~4_combout\,
	datad => VCC,
	cin => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X14_Y6_N10
\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\servo_pwm|SERVO|Mult0|mult_core|romout[1][9]~3_combout\ & (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|romout[1][9]~3_combout\ & ((\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\servo_pwm|SERVO|Mult0|mult_core|romout[1][9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|Mult0|mult_core|romout[1][9]~3_combout\,
	datad => VCC,
	cin => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X14_Y6_N12
\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = (\servo_pwm|SERVO|Mult0|mult_core|romout[1][10]~2_combout\ & (\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (GND))) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|romout[1][10]~2_combout\ & (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & VCC))
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\servo_pwm|SERVO|Mult0|mult_core|romout[1][10]~2_combout\ & !\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|Mult0|mult_core|romout[1][10]~2_combout\,
	datad => VCC,
	cin => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X14_Y6_N14
\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\servo_pwm|SERVO|Mult0|mult_core|romout[1][11]~1_combout\ & (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|romout[1][11]~1_combout\ & ((\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\servo_pwm|SERVO|Mult0|mult_core|romout[1][11]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|Mult0|mult_core|romout[1][11]~1_combout\,
	datad => VCC,
	cin => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X14_Y6_N16
\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ $ (!\servo_pwm|SERVO|Mult0|mult_core|romout[1][12]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \servo_pwm|SERVO|Mult0|mult_core|romout[1][12]~0_combout\,
	cin => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\);

-- Location: LCCOMB_X13_Y6_N26
\servo_pwm|SERVO|Mult0|mult_core|romout[0][7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|Mult0|mult_core|romout[0][7]~11_combout\ = \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\ $ (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\,
	datad => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \servo_pwm|SERVO|Mult0|mult_core|romout[0][7]~11_combout\);

-- Location: LCCOMB_X13_Y6_N2
\servo_pwm|SERVO|duty_cycle[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|duty_cycle[5]~12_combout\ = \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\ $ (VCC)
-- \servo_pwm|SERVO|duty_cycle[5]~13\ = CARRY(\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\,
	datad => VCC,
	combout => \servo_pwm|SERVO|duty_cycle[5]~12_combout\,
	cout => \servo_pwm|SERVO|duty_cycle[5]~13\);

-- Location: LCCOMB_X13_Y6_N4
\servo_pwm|SERVO|duty_cycle[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|duty_cycle[6]~14_combout\ = (\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ & (!\servo_pwm|SERVO|duty_cycle[5]~13\)) # (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ & ((\servo_pwm|SERVO|duty_cycle[5]~13\) # (GND)))
-- \servo_pwm|SERVO|duty_cycle[6]~15\ = CARRY((!\servo_pwm|SERVO|duty_cycle[5]~13\) # (!\servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\,
	datad => VCC,
	cin => \servo_pwm|SERVO|duty_cycle[5]~13\,
	combout => \servo_pwm|SERVO|duty_cycle[6]~14_combout\,
	cout => \servo_pwm|SERVO|duty_cycle[6]~15\);

-- Location: LCCOMB_X13_Y6_N6
\servo_pwm|SERVO|duty_cycle[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|duty_cycle[7]~16_combout\ = (\servo_pwm|SERVO|Mult0|mult_core|romout[0][7]~11_combout\ & (\servo_pwm|SERVO|duty_cycle[6]~15\ $ (GND))) # (!\servo_pwm|SERVO|Mult0|mult_core|romout[0][7]~11_combout\ & (!\servo_pwm|SERVO|duty_cycle[6]~15\ & 
-- VCC))
-- \servo_pwm|SERVO|duty_cycle[7]~17\ = CARRY((\servo_pwm|SERVO|Mult0|mult_core|romout[0][7]~11_combout\ & !\servo_pwm|SERVO|duty_cycle[6]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|Mult0|mult_core|romout[0][7]~11_combout\,
	datad => VCC,
	cin => \servo_pwm|SERVO|duty_cycle[6]~15\,
	combout => \servo_pwm|SERVO|duty_cycle[7]~16_combout\,
	cout => \servo_pwm|SERVO|duty_cycle[7]~17\);

-- Location: LCCOMB_X13_Y6_N8
\servo_pwm|SERVO|duty_cycle[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|duty_cycle[8]~18_combout\ = (\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (!\servo_pwm|SERVO|duty_cycle[7]~17\)) # (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & 
-- ((\servo_pwm|SERVO|duty_cycle[7]~17\) # (GND)))
-- \servo_pwm|SERVO|duty_cycle[8]~19\ = CARRY((!\servo_pwm|SERVO|duty_cycle[7]~17\) # (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \servo_pwm|SERVO|duty_cycle[7]~17\,
	combout => \servo_pwm|SERVO|duty_cycle[8]~18_combout\,
	cout => \servo_pwm|SERVO|duty_cycle[8]~19\);

-- Location: LCCOMB_X13_Y6_N10
\servo_pwm|SERVO|duty_cycle[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|duty_cycle[9]~20_combout\ = (\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((GND) # (!\servo_pwm|SERVO|duty_cycle[8]~19\))) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\servo_pwm|SERVO|duty_cycle[8]~19\ $ (GND)))
-- \servo_pwm|SERVO|duty_cycle[9]~21\ = CARRY((\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\) # (!\servo_pwm|SERVO|duty_cycle[8]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \servo_pwm|SERVO|duty_cycle[8]~19\,
	combout => \servo_pwm|SERVO|duty_cycle[9]~20_combout\,
	cout => \servo_pwm|SERVO|duty_cycle[9]~21\);

-- Location: LCCOMB_X13_Y6_N12
\servo_pwm|SERVO|duty_cycle[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|duty_cycle[10]~22_combout\ = (\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\servo_pwm|SERVO|duty_cycle[9]~21\ & VCC)) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\servo_pwm|SERVO|duty_cycle[9]~21\))
-- \servo_pwm|SERVO|duty_cycle[10]~23\ = CARRY((!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\servo_pwm|SERVO|duty_cycle[9]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \servo_pwm|SERVO|duty_cycle[9]~21\,
	combout => \servo_pwm|SERVO|duty_cycle[10]~22_combout\,
	cout => \servo_pwm|SERVO|duty_cycle[10]~23\);

-- Location: LCCOMB_X13_Y6_N14
\servo_pwm|SERVO|duty_cycle[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|duty_cycle[11]~24_combout\ = (\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((GND) # (!\servo_pwm|SERVO|duty_cycle[10]~23\))) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\servo_pwm|SERVO|duty_cycle[10]~23\ $ (GND)))
-- \servo_pwm|SERVO|duty_cycle[11]~25\ = CARRY((\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\) # (!\servo_pwm|SERVO|duty_cycle[10]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \servo_pwm|SERVO|duty_cycle[10]~23\,
	combout => \servo_pwm|SERVO|duty_cycle[11]~24_combout\,
	cout => \servo_pwm|SERVO|duty_cycle[11]~25\);

-- Location: LCCOMB_X13_Y6_N16
\servo_pwm|SERVO|duty_cycle[12]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|duty_cycle[12]~26_combout\ = (\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\servo_pwm|SERVO|duty_cycle[11]~25\)) # (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- ((\servo_pwm|SERVO|duty_cycle[11]~25\) # (GND)))
-- \servo_pwm|SERVO|duty_cycle[12]~27\ = CARRY((!\servo_pwm|SERVO|duty_cycle[11]~25\) # (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \servo_pwm|SERVO|duty_cycle[11]~25\,
	combout => \servo_pwm|SERVO|duty_cycle[12]~26_combout\,
	cout => \servo_pwm|SERVO|duty_cycle[12]~27\);

-- Location: LCCOMB_X13_Y6_N18
\servo_pwm|SERVO|duty_cycle[13]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|duty_cycle[13]~28_combout\ = (\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\servo_pwm|SERVO|duty_cycle[12]~27\ $ (GND))) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\servo_pwm|SERVO|duty_cycle[12]~27\ & VCC))
-- \servo_pwm|SERVO|duty_cycle[13]~29\ = CARRY((\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & !\servo_pwm|SERVO|duty_cycle[12]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \servo_pwm|SERVO|duty_cycle[12]~27\,
	combout => \servo_pwm|SERVO|duty_cycle[13]~28_combout\,
	cout => \servo_pwm|SERVO|duty_cycle[13]~29\);

-- Location: LCCOMB_X13_Y6_N20
\servo_pwm|SERVO|duty_cycle[14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|duty_cycle[14]~30_combout\ = (\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (\servo_pwm|SERVO|duty_cycle[13]~29\ & VCC)) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (!\servo_pwm|SERVO|duty_cycle[13]~29\))
-- \servo_pwm|SERVO|duty_cycle[14]~31\ = CARRY((!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & !\servo_pwm|SERVO|duty_cycle[13]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \servo_pwm|SERVO|duty_cycle[13]~29\,
	combout => \servo_pwm|SERVO|duty_cycle[14]~30_combout\,
	cout => \servo_pwm|SERVO|duty_cycle[14]~31\);

-- Location: LCCOMB_X13_Y6_N22
\servo_pwm|SERVO|duty_cycle[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|duty_cycle[15]~32_combout\ = (\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (\servo_pwm|SERVO|duty_cycle[14]~31\ $ (GND))) # 
-- (!\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\servo_pwm|SERVO|duty_cycle[14]~31\ & VCC))
-- \servo_pwm|SERVO|duty_cycle[15]~33\ = CARRY((\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & !\servo_pwm|SERVO|duty_cycle[14]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \servo_pwm|SERVO|duty_cycle[14]~31\,
	combout => \servo_pwm|SERVO|duty_cycle[15]~32_combout\,
	cout => \servo_pwm|SERVO|duty_cycle[15]~33\);

-- Location: LCCOMB_X13_Y6_N24
\servo_pwm|SERVO|duty_cycle[16]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|duty_cycle[16]~34_combout\ = \servo_pwm|SERVO|duty_cycle[15]~33\ $ (\servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \servo_pwm|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cin => \servo_pwm|SERVO|duty_cycle[15]~33\,
	combout => \servo_pwm|SERVO|duty_cycle[16]~34_combout\);

-- Location: LCCOMB_X13_Y6_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X13_Y6_N25
\servo_pwm|SERVO|duty_cycle[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|duty_cycle[16]~34_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|duty_cycle\(16));

-- Location: FF_X13_Y6_N23
\servo_pwm|SERVO|duty_cycle[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|duty_cycle[15]~32_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|duty_cycle\(15));

-- Location: FF_X13_Y6_N21
\servo_pwm|SERVO|duty_cycle[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|duty_cycle[14]~30_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|duty_cycle\(14));

-- Location: FF_X13_Y6_N19
\servo_pwm|SERVO|duty_cycle[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|duty_cycle[13]~28_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|duty_cycle\(13));

-- Location: FF_X13_Y6_N17
\servo_pwm|SERVO|duty_cycle[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|duty_cycle[12]~26_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|duty_cycle\(12));

-- Location: FF_X13_Y6_N15
\servo_pwm|SERVO|duty_cycle[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|duty_cycle[11]~24_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|duty_cycle\(11));

-- Location: FF_X13_Y6_N13
\servo_pwm|SERVO|duty_cycle[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|duty_cycle[10]~22_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|duty_cycle\(10));

-- Location: FF_X13_Y6_N11
\servo_pwm|SERVO|duty_cycle[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|duty_cycle[9]~20_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|duty_cycle\(9));

-- Location: FF_X13_Y6_N9
\servo_pwm|SERVO|duty_cycle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|duty_cycle[8]~18_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|duty_cycle\(8));

-- Location: FF_X13_Y6_N7
\servo_pwm|SERVO|duty_cycle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|duty_cycle[7]~16_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|duty_cycle\(7));

-- Location: FF_X13_Y6_N5
\servo_pwm|SERVO|duty_cycle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|duty_cycle[6]~14_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|duty_cycle\(6));

-- Location: FF_X13_Y6_N3
\servo_pwm|SERVO|duty_cycle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|duty_cycle[5]~12_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|duty_cycle\(5));

-- Location: LCCOMB_X13_Y6_N28
\servo_pwm|SERVO|duty_cycle~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|duty_cycle~36_combout\ = (\reset~input_o\ & \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \servo_pwm|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \servo_pwm|SERVO|duty_cycle~36_combout\);

-- Location: FF_X13_Y6_N29
\servo_pwm|SERVO|duty_cycle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|duty_cycle~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|duty_cycle\(4));

-- Location: LCCOMB_X12_Y10_N0
\servo_pwm|SERVO|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~2_cout\ = CARRY((!\servo_pwm|SERVO|count\(4) & \servo_pwm|SERVO|duty_cycle\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(4),
	datab => \servo_pwm|SERVO|duty_cycle\(4),
	datad => VCC,
	cout => \servo_pwm|SERVO|LessThan1~2_cout\);

-- Location: LCCOMB_X12_Y10_N2
\servo_pwm|SERVO|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~4_cout\ = CARRY((\servo_pwm|SERVO|duty_cycle\(5) & (\servo_pwm|SERVO|count\(5) & !\servo_pwm|SERVO|LessThan1~2_cout\)) # (!\servo_pwm|SERVO|duty_cycle\(5) & ((\servo_pwm|SERVO|count\(5)) # 
-- (!\servo_pwm|SERVO|LessThan1~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|duty_cycle\(5),
	datab => \servo_pwm|SERVO|count\(5),
	datad => VCC,
	cin => \servo_pwm|SERVO|LessThan1~2_cout\,
	cout => \servo_pwm|SERVO|LessThan1~4_cout\);

-- Location: LCCOMB_X12_Y10_N4
\servo_pwm|SERVO|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~6_cout\ = CARRY((\servo_pwm|SERVO|count\(6) & (\servo_pwm|SERVO|duty_cycle\(6) & !\servo_pwm|SERVO|LessThan1~4_cout\)) # (!\servo_pwm|SERVO|count\(6) & ((\servo_pwm|SERVO|duty_cycle\(6)) # 
-- (!\servo_pwm|SERVO|LessThan1~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(6),
	datab => \servo_pwm|SERVO|duty_cycle\(6),
	datad => VCC,
	cin => \servo_pwm|SERVO|LessThan1~4_cout\,
	cout => \servo_pwm|SERVO|LessThan1~6_cout\);

-- Location: LCCOMB_X12_Y10_N6
\servo_pwm|SERVO|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~8_cout\ = CARRY((\servo_pwm|SERVO|duty_cycle\(7) & (\servo_pwm|SERVO|count\(7) & !\servo_pwm|SERVO|LessThan1~6_cout\)) # (!\servo_pwm|SERVO|duty_cycle\(7) & ((\servo_pwm|SERVO|count\(7)) # 
-- (!\servo_pwm|SERVO|LessThan1~6_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|duty_cycle\(7),
	datab => \servo_pwm|SERVO|count\(7),
	datad => VCC,
	cin => \servo_pwm|SERVO|LessThan1~6_cout\,
	cout => \servo_pwm|SERVO|LessThan1~8_cout\);

-- Location: LCCOMB_X12_Y10_N8
\servo_pwm|SERVO|LessThan1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~10_cout\ = CARRY((\servo_pwm|SERVO|duty_cycle\(8) & ((!\servo_pwm|SERVO|LessThan1~8_cout\) # (!\servo_pwm|SERVO|count\(8)))) # (!\servo_pwm|SERVO|duty_cycle\(8) & (!\servo_pwm|SERVO|count\(8) & 
-- !\servo_pwm|SERVO|LessThan1~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|duty_cycle\(8),
	datab => \servo_pwm|SERVO|count\(8),
	datad => VCC,
	cin => \servo_pwm|SERVO|LessThan1~8_cout\,
	cout => \servo_pwm|SERVO|LessThan1~10_cout\);

-- Location: LCCOMB_X12_Y10_N10
\servo_pwm|SERVO|LessThan1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~12_cout\ = CARRY((\servo_pwm|SERVO|count\(9) & ((!\servo_pwm|SERVO|LessThan1~10_cout\) # (!\servo_pwm|SERVO|duty_cycle\(9)))) # (!\servo_pwm|SERVO|count\(9) & (!\servo_pwm|SERVO|duty_cycle\(9) & 
-- !\servo_pwm|SERVO|LessThan1~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(9),
	datab => \servo_pwm|SERVO|duty_cycle\(9),
	datad => VCC,
	cin => \servo_pwm|SERVO|LessThan1~10_cout\,
	cout => \servo_pwm|SERVO|LessThan1~12_cout\);

-- Location: LCCOMB_X12_Y10_N12
\servo_pwm|SERVO|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~14_cout\ = CARRY((\servo_pwm|SERVO|duty_cycle\(10) & ((!\servo_pwm|SERVO|LessThan1~12_cout\) # (!\servo_pwm|SERVO|count\(10)))) # (!\servo_pwm|SERVO|duty_cycle\(10) & (!\servo_pwm|SERVO|count\(10) & 
-- !\servo_pwm|SERVO|LessThan1~12_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|duty_cycle\(10),
	datab => \servo_pwm|SERVO|count\(10),
	datad => VCC,
	cin => \servo_pwm|SERVO|LessThan1~12_cout\,
	cout => \servo_pwm|SERVO|LessThan1~14_cout\);

-- Location: LCCOMB_X12_Y10_N14
\servo_pwm|SERVO|LessThan1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~16_cout\ = CARRY((\servo_pwm|SERVO|duty_cycle\(11) & (\servo_pwm|SERVO|count\(11) & !\servo_pwm|SERVO|LessThan1~14_cout\)) # (!\servo_pwm|SERVO|duty_cycle\(11) & ((\servo_pwm|SERVO|count\(11)) # 
-- (!\servo_pwm|SERVO|LessThan1~14_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|duty_cycle\(11),
	datab => \servo_pwm|SERVO|count\(11),
	datad => VCC,
	cin => \servo_pwm|SERVO|LessThan1~14_cout\,
	cout => \servo_pwm|SERVO|LessThan1~16_cout\);

-- Location: LCCOMB_X12_Y10_N16
\servo_pwm|SERVO|LessThan1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~18_cout\ = CARRY((\servo_pwm|SERVO|count\(12) & (\servo_pwm|SERVO|duty_cycle\(12) & !\servo_pwm|SERVO|LessThan1~16_cout\)) # (!\servo_pwm|SERVO|count\(12) & ((\servo_pwm|SERVO|duty_cycle\(12)) # 
-- (!\servo_pwm|SERVO|LessThan1~16_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(12),
	datab => \servo_pwm|SERVO|duty_cycle\(12),
	datad => VCC,
	cin => \servo_pwm|SERVO|LessThan1~16_cout\,
	cout => \servo_pwm|SERVO|LessThan1~18_cout\);

-- Location: LCCOMB_X12_Y10_N18
\servo_pwm|SERVO|LessThan1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~20_cout\ = CARRY((\servo_pwm|SERVO|count\(13) & ((!\servo_pwm|SERVO|LessThan1~18_cout\) # (!\servo_pwm|SERVO|duty_cycle\(13)))) # (!\servo_pwm|SERVO|count\(13) & (!\servo_pwm|SERVO|duty_cycle\(13) & 
-- !\servo_pwm|SERVO|LessThan1~18_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(13),
	datab => \servo_pwm|SERVO|duty_cycle\(13),
	datad => VCC,
	cin => \servo_pwm|SERVO|LessThan1~18_cout\,
	cout => \servo_pwm|SERVO|LessThan1~20_cout\);

-- Location: LCCOMB_X12_Y10_N20
\servo_pwm|SERVO|LessThan1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~22_cout\ = CARRY((\servo_pwm|SERVO|duty_cycle\(14) & ((!\servo_pwm|SERVO|LessThan1~20_cout\) # (!\servo_pwm|SERVO|count\(14)))) # (!\servo_pwm|SERVO|duty_cycle\(14) & (!\servo_pwm|SERVO|count\(14) & 
-- !\servo_pwm|SERVO|LessThan1~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|duty_cycle\(14),
	datab => \servo_pwm|SERVO|count\(14),
	datad => VCC,
	cin => \servo_pwm|SERVO|LessThan1~20_cout\,
	cout => \servo_pwm|SERVO|LessThan1~22_cout\);

-- Location: LCCOMB_X12_Y10_N22
\servo_pwm|SERVO|LessThan1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~24_cout\ = CARRY((\servo_pwm|SERVO|duty_cycle\(15) & (\servo_pwm|SERVO|count\(15) & !\servo_pwm|SERVO|LessThan1~22_cout\)) # (!\servo_pwm|SERVO|duty_cycle\(15) & ((\servo_pwm|SERVO|count\(15)) # 
-- (!\servo_pwm|SERVO|LessThan1~22_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|duty_cycle\(15),
	datab => \servo_pwm|SERVO|count\(15),
	datad => VCC,
	cin => \servo_pwm|SERVO|LessThan1~22_cout\,
	cout => \servo_pwm|SERVO|LessThan1~24_cout\);

-- Location: LCCOMB_X12_Y10_N24
\servo_pwm|SERVO|LessThan1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~25_combout\ = (\servo_pwm|SERVO|duty_cycle\(16) & ((!\servo_pwm|SERVO|LessThan1~24_cout\) # (!\servo_pwm|SERVO|count\(16)))) # (!\servo_pwm|SERVO|duty_cycle\(16) & (!\servo_pwm|SERVO|count\(16) & 
-- !\servo_pwm|SERVO|LessThan1~24_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|duty_cycle\(16),
	datab => \servo_pwm|SERVO|count\(16),
	cin => \servo_pwm|SERVO|LessThan1~24_cout\,
	combout => \servo_pwm|SERVO|LessThan1~25_combout\);

-- Location: LCCOMB_X12_Y10_N26
\servo_pwm|SERVO|LessThan1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo_pwm|SERVO|LessThan1~27_combout\ = (!\servo_pwm|SERVO|count\(20) & (\servo_pwm|SERVO|LessThan1~0_combout\ & (!\servo_pwm|SERVO|count\(17) & \servo_pwm|SERVO|LessThan1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo_pwm|SERVO|count\(20),
	datab => \servo_pwm|SERVO|LessThan1~0_combout\,
	datac => \servo_pwm|SERVO|count\(17),
	datad => \servo_pwm|SERVO|LessThan1~25_combout\,
	combout => \servo_pwm|SERVO|LessThan1~27_combout\);

-- Location: FF_X12_Y10_N27
\servo_pwm|SERVO|pwm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \servo_pwm|SERVO|LessThan1~27_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm|SERVO|pwm~q\);

-- Location: LCCOMB_X32_Y10_N0
\segment_driver|uut1|count[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[0]~45_combout\ = !\segment_driver|uut1|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|uut1|count\(0),
	combout => \segment_driver|uut1|count[0]~45_combout\);

-- Location: FF_X32_Y10_N1
\segment_driver|uut1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(0));

-- Location: LCCOMB_X32_Y10_N2
\segment_driver|uut1|count[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[1]~15_combout\ = (\segment_driver|uut1|count\(0) & (\segment_driver|uut1|count\(1) $ (VCC))) # (!\segment_driver|uut1|count\(0) & (\segment_driver|uut1|count\(1) & VCC))
-- \segment_driver|uut1|count[1]~16\ = CARRY((\segment_driver|uut1|count\(0) & \segment_driver|uut1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|uut1|count\(0),
	datab => \segment_driver|uut1|count\(1),
	datad => VCC,
	combout => \segment_driver|uut1|count[1]~15_combout\,
	cout => \segment_driver|uut1|count[1]~16\);

-- Location: FF_X32_Y10_N3
\segment_driver|uut1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(1));

-- Location: LCCOMB_X32_Y10_N4
\segment_driver|uut1|count[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[2]~17_combout\ = (\segment_driver|uut1|count\(2) & (!\segment_driver|uut1|count[1]~16\)) # (!\segment_driver|uut1|count\(2) & ((\segment_driver|uut1|count[1]~16\) # (GND)))
-- \segment_driver|uut1|count[2]~18\ = CARRY((!\segment_driver|uut1|count[1]~16\) # (!\segment_driver|uut1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|uut1|count\(2),
	datad => VCC,
	cin => \segment_driver|uut1|count[1]~16\,
	combout => \segment_driver|uut1|count[2]~17_combout\,
	cout => \segment_driver|uut1|count[2]~18\);

-- Location: FF_X32_Y10_N5
\segment_driver|uut1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(2));

-- Location: LCCOMB_X32_Y10_N6
\segment_driver|uut1|count[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[3]~19_combout\ = (\segment_driver|uut1|count\(3) & (\segment_driver|uut1|count[2]~18\ $ (GND))) # (!\segment_driver|uut1|count\(3) & (!\segment_driver|uut1|count[2]~18\ & VCC))
-- \segment_driver|uut1|count[3]~20\ = CARRY((\segment_driver|uut1|count\(3) & !\segment_driver|uut1|count[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|uut1|count\(3),
	datad => VCC,
	cin => \segment_driver|uut1|count[2]~18\,
	combout => \segment_driver|uut1|count[3]~19_combout\,
	cout => \segment_driver|uut1|count[3]~20\);

-- Location: FF_X32_Y10_N7
\segment_driver|uut1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(3));

-- Location: LCCOMB_X32_Y10_N8
\segment_driver|uut1|count[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[4]~21_combout\ = (\segment_driver|uut1|count\(4) & (!\segment_driver|uut1|count[3]~20\)) # (!\segment_driver|uut1|count\(4) & ((\segment_driver|uut1|count[3]~20\) # (GND)))
-- \segment_driver|uut1|count[4]~22\ = CARRY((!\segment_driver|uut1|count[3]~20\) # (!\segment_driver|uut1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|uut1|count\(4),
	datad => VCC,
	cin => \segment_driver|uut1|count[3]~20\,
	combout => \segment_driver|uut1|count[4]~21_combout\,
	cout => \segment_driver|uut1|count[4]~22\);

-- Location: FF_X32_Y10_N9
\segment_driver|uut1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(4));

-- Location: LCCOMB_X32_Y10_N10
\segment_driver|uut1|count[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[5]~23_combout\ = (\segment_driver|uut1|count\(5) & (\segment_driver|uut1|count[4]~22\ $ (GND))) # (!\segment_driver|uut1|count\(5) & (!\segment_driver|uut1|count[4]~22\ & VCC))
-- \segment_driver|uut1|count[5]~24\ = CARRY((\segment_driver|uut1|count\(5) & !\segment_driver|uut1|count[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|uut1|count\(5),
	datad => VCC,
	cin => \segment_driver|uut1|count[4]~22\,
	combout => \segment_driver|uut1|count[5]~23_combout\,
	cout => \segment_driver|uut1|count[5]~24\);

-- Location: FF_X32_Y10_N11
\segment_driver|uut1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[5]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(5));

-- Location: LCCOMB_X32_Y10_N12
\segment_driver|uut1|count[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[6]~25_combout\ = (\segment_driver|uut1|count\(6) & (!\segment_driver|uut1|count[5]~24\)) # (!\segment_driver|uut1|count\(6) & ((\segment_driver|uut1|count[5]~24\) # (GND)))
-- \segment_driver|uut1|count[6]~26\ = CARRY((!\segment_driver|uut1|count[5]~24\) # (!\segment_driver|uut1|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|uut1|count\(6),
	datad => VCC,
	cin => \segment_driver|uut1|count[5]~24\,
	combout => \segment_driver|uut1|count[6]~25_combout\,
	cout => \segment_driver|uut1|count[6]~26\);

-- Location: FF_X32_Y10_N13
\segment_driver|uut1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(6));

-- Location: LCCOMB_X32_Y10_N14
\segment_driver|uut1|count[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[7]~27_combout\ = (\segment_driver|uut1|count\(7) & (\segment_driver|uut1|count[6]~26\ $ (GND))) # (!\segment_driver|uut1|count\(7) & (!\segment_driver|uut1|count[6]~26\ & VCC))
-- \segment_driver|uut1|count[7]~28\ = CARRY((\segment_driver|uut1|count\(7) & !\segment_driver|uut1|count[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|uut1|count\(7),
	datad => VCC,
	cin => \segment_driver|uut1|count[6]~26\,
	combout => \segment_driver|uut1|count[7]~27_combout\,
	cout => \segment_driver|uut1|count[7]~28\);

-- Location: FF_X32_Y10_N15
\segment_driver|uut1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(7));

-- Location: LCCOMB_X32_Y10_N16
\segment_driver|uut1|count[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[8]~29_combout\ = (\segment_driver|uut1|count\(8) & (!\segment_driver|uut1|count[7]~28\)) # (!\segment_driver|uut1|count\(8) & ((\segment_driver|uut1|count[7]~28\) # (GND)))
-- \segment_driver|uut1|count[8]~30\ = CARRY((!\segment_driver|uut1|count[7]~28\) # (!\segment_driver|uut1|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|uut1|count\(8),
	datad => VCC,
	cin => \segment_driver|uut1|count[7]~28\,
	combout => \segment_driver|uut1|count[8]~29_combout\,
	cout => \segment_driver|uut1|count[8]~30\);

-- Location: FF_X32_Y10_N17
\segment_driver|uut1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(8));

-- Location: LCCOMB_X32_Y10_N18
\segment_driver|uut1|count[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[9]~31_combout\ = (\segment_driver|uut1|count\(9) & (\segment_driver|uut1|count[8]~30\ $ (GND))) # (!\segment_driver|uut1|count\(9) & (!\segment_driver|uut1|count[8]~30\ & VCC))
-- \segment_driver|uut1|count[9]~32\ = CARRY((\segment_driver|uut1|count\(9) & !\segment_driver|uut1|count[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|uut1|count\(9),
	datad => VCC,
	cin => \segment_driver|uut1|count[8]~30\,
	combout => \segment_driver|uut1|count[9]~31_combout\,
	cout => \segment_driver|uut1|count[9]~32\);

-- Location: FF_X32_Y10_N19
\segment_driver|uut1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(9));

-- Location: LCCOMB_X32_Y10_N20
\segment_driver|uut1|count[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[10]~33_combout\ = (\segment_driver|uut1|count\(10) & (!\segment_driver|uut1|count[9]~32\)) # (!\segment_driver|uut1|count\(10) & ((\segment_driver|uut1|count[9]~32\) # (GND)))
-- \segment_driver|uut1|count[10]~34\ = CARRY((!\segment_driver|uut1|count[9]~32\) # (!\segment_driver|uut1|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|uut1|count\(10),
	datad => VCC,
	cin => \segment_driver|uut1|count[9]~32\,
	combout => \segment_driver|uut1|count[10]~33_combout\,
	cout => \segment_driver|uut1|count[10]~34\);

-- Location: FF_X32_Y10_N21
\segment_driver|uut1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(10));

-- Location: LCCOMB_X32_Y10_N22
\segment_driver|uut1|count[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[11]~35_combout\ = (\segment_driver|uut1|count\(11) & (\segment_driver|uut1|count[10]~34\ $ (GND))) # (!\segment_driver|uut1|count\(11) & (!\segment_driver|uut1|count[10]~34\ & VCC))
-- \segment_driver|uut1|count[11]~36\ = CARRY((\segment_driver|uut1|count\(11) & !\segment_driver|uut1|count[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|uut1|count\(11),
	datad => VCC,
	cin => \segment_driver|uut1|count[10]~34\,
	combout => \segment_driver|uut1|count[11]~35_combout\,
	cout => \segment_driver|uut1|count[11]~36\);

-- Location: FF_X32_Y10_N23
\segment_driver|uut1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(11));

-- Location: LCCOMB_X32_Y10_N24
\segment_driver|uut1|count[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[12]~37_combout\ = (\segment_driver|uut1|count\(12) & (!\segment_driver|uut1|count[11]~36\)) # (!\segment_driver|uut1|count\(12) & ((\segment_driver|uut1|count[11]~36\) # (GND)))
-- \segment_driver|uut1|count[12]~38\ = CARRY((!\segment_driver|uut1|count[11]~36\) # (!\segment_driver|uut1|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|uut1|count\(12),
	datad => VCC,
	cin => \segment_driver|uut1|count[11]~36\,
	combout => \segment_driver|uut1|count[12]~37_combout\,
	cout => \segment_driver|uut1|count[12]~38\);

-- Location: FF_X32_Y10_N25
\segment_driver|uut1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(12));

-- Location: LCCOMB_X32_Y10_N26
\segment_driver|uut1|count[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[13]~39_combout\ = (\segment_driver|uut1|count\(13) & (\segment_driver|uut1|count[12]~38\ $ (GND))) # (!\segment_driver|uut1|count\(13) & (!\segment_driver|uut1|count[12]~38\ & VCC))
-- \segment_driver|uut1|count[13]~40\ = CARRY((\segment_driver|uut1|count\(13) & !\segment_driver|uut1|count[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|uut1|count\(13),
	datad => VCC,
	cin => \segment_driver|uut1|count[12]~38\,
	combout => \segment_driver|uut1|count[13]~39_combout\,
	cout => \segment_driver|uut1|count[13]~40\);

-- Location: FF_X32_Y10_N27
\segment_driver|uut1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(13));

-- Location: LCCOMB_X32_Y10_N28
\segment_driver|uut1|count[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[14]~41_combout\ = (\segment_driver|uut1|count\(14) & (!\segment_driver|uut1|count[13]~40\)) # (!\segment_driver|uut1|count\(14) & ((\segment_driver|uut1|count[13]~40\) # (GND)))
-- \segment_driver|uut1|count[14]~42\ = CARRY((!\segment_driver|uut1|count[13]~40\) # (!\segment_driver|uut1|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|uut1|count\(14),
	datad => VCC,
	cin => \segment_driver|uut1|count[13]~40\,
	combout => \segment_driver|uut1|count[14]~41_combout\,
	cout => \segment_driver|uut1|count[14]~42\);

-- Location: FF_X32_Y10_N29
\segment_driver|uut1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[14]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(14));

-- Location: LCCOMB_X32_Y10_N30
\segment_driver|uut1|count[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[15]~43_combout\ = \segment_driver|uut1|count\(15) $ (!\segment_driver|uut1|count[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|uut1|count\(15),
	cin => \segment_driver|uut1|count[14]~42\,
	combout => \segment_driver|uut1|count[15]~43_combout\);

-- Location: FF_X32_Y10_N31
\segment_driver|uut1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \segment_driver|uut1|count[15]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|uut1|count\(15));

-- Location: CLKCTRL_G9
\segment_driver|uut1|count[15]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \segment_driver|uut1|count[15]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \segment_driver|uut1|count[15]~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y18_N20
\segment_driver|Display_Selection[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Display_Selection[0]~1_combout\ = !\segment_driver|Display_Selection\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Display_Selection\(0),
	combout => \segment_driver|Display_Selection[0]~1_combout\);

-- Location: FF_X11_Y18_N21
\segment_driver|Display_Selection[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \segment_driver|uut1|count[15]~clkctrl_outclk\,
	d => \segment_driver|Display_Selection[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|Display_Selection\(0));

-- Location: LCCOMB_X11_Y18_N14
\segment_driver|Display_Selection[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Display_Selection[1]~0_combout\ = \segment_driver|Display_Selection\(1) $ (\segment_driver|Display_Selection\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Display_Selection\(1),
	datad => \segment_driver|Display_Selection\(0),
	combout => \segment_driver|Display_Selection[1]~0_combout\);

-- Location: FF_X11_Y18_N15
\segment_driver|Display_Selection[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \segment_driver|uut1|count[15]~clkctrl_outclk\,
	d => \segment_driver|Display_Selection[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|Display_Selection\(1));

-- Location: LCCOMB_X10_Y18_N20
\segment_driver|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Mux4~0_combout\ = (\segment_driver|Display_Selection\(0)) # (\segment_driver|Display_Selection\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Display_Selection\(0),
	datac => \segment_driver|Display_Selection\(1),
	combout => \segment_driver|Mux4~0_combout\);

-- Location: FF_X10_Y18_N21
\segment_driver|select_Display_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \segment_driver|uut1|count[15]~clkctrl_outclk\,
	d => \segment_driver|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|select_Display_A~q\);

-- Location: LCCOMB_X11_Y18_N30
\segment_driver|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Mux5~0_combout\ = (\segment_driver|Display_Selection\(1)) # (!\segment_driver|Display_Selection\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Display_Selection\(1),
	datad => \segment_driver|Display_Selection\(0),
	combout => \segment_driver|Mux5~0_combout\);

-- Location: FF_X11_Y18_N31
\segment_driver|select_Display_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \segment_driver|uut1|count[15]~clkctrl_outclk\,
	d => \segment_driver|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|select_Display_B~q\);

-- Location: LCCOMB_X11_Y18_N12
\segment_driver|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Mux6~0_combout\ = (\segment_driver|Display_Selection\(0)) # (!\segment_driver|Display_Selection\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Display_Selection\(1),
	datad => \segment_driver|Display_Selection\(0),
	combout => \segment_driver|Mux6~0_combout\);

-- Location: FF_X11_Y18_N13
\segment_driver|select_Display_C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \segment_driver|uut1|count[15]~clkctrl_outclk\,
	d => \segment_driver|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|select_Display_C~q\);

-- Location: LCCOMB_X10_Y18_N26
\segment_driver|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~0_combout\ = (!\segment_driver|Display_Selection\(1)) # (!\segment_driver|Display_Selection\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Display_Selection\(0),
	datac => \segment_driver|Display_Selection\(1),
	combout => \segment_driver|Add3~0_combout\);

-- Location: FF_X10_Y18_N27
\segment_driver|select_Display_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \segment_driver|uut1|count[15]~clkctrl_outclk\,
	d => \segment_driver|Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|select_Display_D~q\);

-- Location: IOIBUF_X34_Y17_N15
\pulse~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulse,
	o => \pulse~input_o\);

-- Location: LCCOMB_X25_Y18_N4
\Pulse_width|Counter_pulse|counter_i[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[0]~60_combout\ = \Pulse_width|Counter_pulse|counter_i\(0) $ (\pulse~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(0),
	datad => \pulse~input_o\,
	combout => \Pulse_width|Counter_pulse|counter_i[0]~60_combout\);

-- Location: LCCOMB_X25_Y18_N6
\Pulse_width|Counter_pulse|counter_i[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[0]~feeder_combout\ = \Pulse_width|Counter_pulse|counter_i[0]~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i[0]~60_combout\,
	combout => \Pulse_width|Counter_pulse|counter_i[0]~feeder_combout\);

-- Location: FF_X25_Y18_N7
\Pulse_width|Counter_pulse|counter_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[0]~feeder_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(0));

-- Location: LCCOMB_X25_Y18_N12
\Pulse_width|Counter_pulse|counter_i[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[1]~20_combout\ = (\Pulse_width|Counter_pulse|counter_i\(1) & (\Pulse_width|Counter_pulse|counter_i\(0) $ (VCC))) # (!\Pulse_width|Counter_pulse|counter_i\(1) & (\Pulse_width|Counter_pulse|counter_i\(0) & VCC))
-- \Pulse_width|Counter_pulse|counter_i[1]~21\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(1) & \Pulse_width|Counter_pulse|counter_i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(1),
	datab => \Pulse_width|Counter_pulse|counter_i\(0),
	datad => VCC,
	combout => \Pulse_width|Counter_pulse|counter_i[1]~20_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[1]~21\);

-- Location: FF_X25_Y18_N13
\Pulse_width|Counter_pulse|counter_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[1]~20_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(1));

-- Location: LCCOMB_X25_Y18_N14
\Pulse_width|Counter_pulse|counter_i[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[2]~22_combout\ = (\Pulse_width|Counter_pulse|counter_i\(2) & (!\Pulse_width|Counter_pulse|counter_i[1]~21\)) # (!\Pulse_width|Counter_pulse|counter_i\(2) & ((\Pulse_width|Counter_pulse|counter_i[1]~21\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[2]~23\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[1]~21\) # (!\Pulse_width|Counter_pulse|counter_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(2),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[1]~21\,
	combout => \Pulse_width|Counter_pulse|counter_i[2]~22_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[2]~23\);

-- Location: FF_X25_Y18_N15
\Pulse_width|Counter_pulse|counter_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[2]~22_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(2));

-- Location: LCCOMB_X25_Y18_N16
\Pulse_width|Counter_pulse|counter_i[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[3]~24_combout\ = (\Pulse_width|Counter_pulse|counter_i\(3) & (\Pulse_width|Counter_pulse|counter_i[2]~23\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(3) & (!\Pulse_width|Counter_pulse|counter_i[2]~23\ & VCC))
-- \Pulse_width|Counter_pulse|counter_i[3]~25\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(3) & !\Pulse_width|Counter_pulse|counter_i[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(3),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[2]~23\,
	combout => \Pulse_width|Counter_pulse|counter_i[3]~24_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[3]~25\);

-- Location: FF_X25_Y18_N17
\Pulse_width|Counter_pulse|counter_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[3]~24_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(3));

-- Location: LCCOMB_X25_Y18_N18
\Pulse_width|Counter_pulse|counter_i[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[4]~26_combout\ = (\Pulse_width|Counter_pulse|counter_i\(4) & (!\Pulse_width|Counter_pulse|counter_i[3]~25\)) # (!\Pulse_width|Counter_pulse|counter_i\(4) & ((\Pulse_width|Counter_pulse|counter_i[3]~25\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[4]~27\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[3]~25\) # (!\Pulse_width|Counter_pulse|counter_i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(4),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[3]~25\,
	combout => \Pulse_width|Counter_pulse|counter_i[4]~26_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[4]~27\);

-- Location: FF_X25_Y18_N19
\Pulse_width|Counter_pulse|counter_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[4]~26_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(4));

-- Location: LCCOMB_X25_Y18_N20
\Pulse_width|Counter_pulse|counter_i[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[5]~28_combout\ = (\Pulse_width|Counter_pulse|counter_i\(5) & (\Pulse_width|Counter_pulse|counter_i[4]~27\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(5) & (!\Pulse_width|Counter_pulse|counter_i[4]~27\ & VCC))
-- \Pulse_width|Counter_pulse|counter_i[5]~29\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(5) & !\Pulse_width|Counter_pulse|counter_i[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(5),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[4]~27\,
	combout => \Pulse_width|Counter_pulse|counter_i[5]~28_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[5]~29\);

-- Location: FF_X25_Y18_N21
\Pulse_width|Counter_pulse|counter_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[5]~28_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(5));

-- Location: LCCOMB_X25_Y18_N22
\Pulse_width|Counter_pulse|counter_i[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[6]~30_combout\ = (\Pulse_width|Counter_pulse|counter_i\(6) & (!\Pulse_width|Counter_pulse|counter_i[5]~29\)) # (!\Pulse_width|Counter_pulse|counter_i\(6) & ((\Pulse_width|Counter_pulse|counter_i[5]~29\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[6]~31\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[5]~29\) # (!\Pulse_width|Counter_pulse|counter_i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(6),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[5]~29\,
	combout => \Pulse_width|Counter_pulse|counter_i[6]~30_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[6]~31\);

-- Location: FF_X25_Y18_N23
\Pulse_width|Counter_pulse|counter_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[6]~30_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(6));

-- Location: LCCOMB_X25_Y18_N24
\Pulse_width|Counter_pulse|counter_i[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[7]~32_combout\ = (\Pulse_width|Counter_pulse|counter_i\(7) & (\Pulse_width|Counter_pulse|counter_i[6]~31\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(7) & (!\Pulse_width|Counter_pulse|counter_i[6]~31\ & VCC))
-- \Pulse_width|Counter_pulse|counter_i[7]~33\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(7) & !\Pulse_width|Counter_pulse|counter_i[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(7),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[6]~31\,
	combout => \Pulse_width|Counter_pulse|counter_i[7]~32_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[7]~33\);

-- Location: FF_X25_Y18_N25
\Pulse_width|Counter_pulse|counter_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[7]~32_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(7));

-- Location: LCCOMB_X25_Y18_N26
\Pulse_width|Counter_pulse|counter_i[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[8]~34_combout\ = (\Pulse_width|Counter_pulse|counter_i\(8) & (!\Pulse_width|Counter_pulse|counter_i[7]~33\)) # (!\Pulse_width|Counter_pulse|counter_i\(8) & ((\Pulse_width|Counter_pulse|counter_i[7]~33\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[8]~35\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[7]~33\) # (!\Pulse_width|Counter_pulse|counter_i\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(8),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[7]~33\,
	combout => \Pulse_width|Counter_pulse|counter_i[8]~34_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[8]~35\);

-- Location: FF_X25_Y18_N27
\Pulse_width|Counter_pulse|counter_i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[8]~34_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(8));

-- Location: LCCOMB_X25_Y18_N28
\Pulse_width|Counter_pulse|counter_i[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[9]~36_combout\ = (\Pulse_width|Counter_pulse|counter_i\(9) & (\Pulse_width|Counter_pulse|counter_i[8]~35\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(9) & (!\Pulse_width|Counter_pulse|counter_i[8]~35\ & VCC))
-- \Pulse_width|Counter_pulse|counter_i[9]~37\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(9) & !\Pulse_width|Counter_pulse|counter_i[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(9),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[8]~35\,
	combout => \Pulse_width|Counter_pulse|counter_i[9]~36_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[9]~37\);

-- Location: FF_X25_Y18_N29
\Pulse_width|Counter_pulse|counter_i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[9]~36_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(9));

-- Location: LCCOMB_X25_Y18_N30
\Pulse_width|Counter_pulse|counter_i[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[10]~38_combout\ = (\Pulse_width|Counter_pulse|counter_i\(10) & (!\Pulse_width|Counter_pulse|counter_i[9]~37\)) # (!\Pulse_width|Counter_pulse|counter_i\(10) & ((\Pulse_width|Counter_pulse|counter_i[9]~37\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[10]~39\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[9]~37\) # (!\Pulse_width|Counter_pulse|counter_i\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(10),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[9]~37\,
	combout => \Pulse_width|Counter_pulse|counter_i[10]~38_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[10]~39\);

-- Location: FF_X25_Y18_N31
\Pulse_width|Counter_pulse|counter_i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[10]~38_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(10));

-- Location: LCCOMB_X25_Y17_N0
\Pulse_width|Counter_pulse|counter_i[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[11]~40_combout\ = (\Pulse_width|Counter_pulse|counter_i\(11) & (\Pulse_width|Counter_pulse|counter_i[10]~39\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(11) & (!\Pulse_width|Counter_pulse|counter_i[10]~39\ & 
-- VCC))
-- \Pulse_width|Counter_pulse|counter_i[11]~41\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(11) & !\Pulse_width|Counter_pulse|counter_i[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(11),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[10]~39\,
	combout => \Pulse_width|Counter_pulse|counter_i[11]~40_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[11]~41\);

-- Location: FF_X25_Y17_N1
\Pulse_width|Counter_pulse|counter_i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[11]~40_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(11));

-- Location: LCCOMB_X25_Y17_N2
\Pulse_width|Counter_pulse|counter_i[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[12]~42_combout\ = (\Pulse_width|Counter_pulse|counter_i\(12) & (!\Pulse_width|Counter_pulse|counter_i[11]~41\)) # (!\Pulse_width|Counter_pulse|counter_i\(12) & ((\Pulse_width|Counter_pulse|counter_i[11]~41\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[12]~43\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[11]~41\) # (!\Pulse_width|Counter_pulse|counter_i\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(12),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[11]~41\,
	combout => \Pulse_width|Counter_pulse|counter_i[12]~42_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[12]~43\);

-- Location: FF_X25_Y17_N3
\Pulse_width|Counter_pulse|counter_i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[12]~42_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(12));

-- Location: LCCOMB_X25_Y17_N4
\Pulse_width|Counter_pulse|counter_i[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[13]~44_combout\ = (\Pulse_width|Counter_pulse|counter_i\(13) & (\Pulse_width|Counter_pulse|counter_i[12]~43\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(13) & (!\Pulse_width|Counter_pulse|counter_i[12]~43\ & 
-- VCC))
-- \Pulse_width|Counter_pulse|counter_i[13]~45\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(13) & !\Pulse_width|Counter_pulse|counter_i[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(13),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[12]~43\,
	combout => \Pulse_width|Counter_pulse|counter_i[13]~44_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[13]~45\);

-- Location: FF_X25_Y17_N5
\Pulse_width|Counter_pulse|counter_i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[13]~44_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(13));

-- Location: LCCOMB_X25_Y17_N6
\Pulse_width|Counter_pulse|counter_i[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[14]~46_combout\ = (\Pulse_width|Counter_pulse|counter_i\(14) & (!\Pulse_width|Counter_pulse|counter_i[13]~45\)) # (!\Pulse_width|Counter_pulse|counter_i\(14) & ((\Pulse_width|Counter_pulse|counter_i[13]~45\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[14]~47\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[13]~45\) # (!\Pulse_width|Counter_pulse|counter_i\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(14),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[13]~45\,
	combout => \Pulse_width|Counter_pulse|counter_i[14]~46_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[14]~47\);

-- Location: FF_X25_Y17_N7
\Pulse_width|Counter_pulse|counter_i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[14]~46_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(14));

-- Location: LCCOMB_X25_Y17_N8
\Pulse_width|Counter_pulse|counter_i[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[15]~48_combout\ = (\Pulse_width|Counter_pulse|counter_i\(15) & (\Pulse_width|Counter_pulse|counter_i[14]~47\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(15) & (!\Pulse_width|Counter_pulse|counter_i[14]~47\ & 
-- VCC))
-- \Pulse_width|Counter_pulse|counter_i[15]~49\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(15) & !\Pulse_width|Counter_pulse|counter_i[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[14]~47\,
	combout => \Pulse_width|Counter_pulse|counter_i[15]~48_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[15]~49\);

-- Location: FF_X25_Y17_N9
\Pulse_width|Counter_pulse|counter_i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[15]~48_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(15));

-- Location: LCCOMB_X25_Y17_N10
\Pulse_width|Counter_pulse|counter_i[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[16]~50_combout\ = (\Pulse_width|Counter_pulse|counter_i\(16) & (!\Pulse_width|Counter_pulse|counter_i[15]~49\)) # (!\Pulse_width|Counter_pulse|counter_i\(16) & ((\Pulse_width|Counter_pulse|counter_i[15]~49\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[16]~51\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[15]~49\) # (!\Pulse_width|Counter_pulse|counter_i\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(16),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[15]~49\,
	combout => \Pulse_width|Counter_pulse|counter_i[16]~50_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[16]~51\);

-- Location: FF_X25_Y17_N11
\Pulse_width|Counter_pulse|counter_i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[16]~50_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(16));

-- Location: LCCOMB_X25_Y17_N12
\Pulse_width|Counter_pulse|counter_i[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[17]~52_combout\ = (\Pulse_width|Counter_pulse|counter_i\(17) & (\Pulse_width|Counter_pulse|counter_i[16]~51\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(17) & (!\Pulse_width|Counter_pulse|counter_i[16]~51\ & 
-- VCC))
-- \Pulse_width|Counter_pulse|counter_i[17]~53\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(17) & !\Pulse_width|Counter_pulse|counter_i[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(17),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[16]~51\,
	combout => \Pulse_width|Counter_pulse|counter_i[17]~52_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[17]~53\);

-- Location: FF_X25_Y17_N13
\Pulse_width|Counter_pulse|counter_i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[17]~52_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(17));

-- Location: LCCOMB_X25_Y17_N14
\Pulse_width|Counter_pulse|counter_i[18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[18]~54_combout\ = (\Pulse_width|Counter_pulse|counter_i\(18) & (!\Pulse_width|Counter_pulse|counter_i[17]~53\)) # (!\Pulse_width|Counter_pulse|counter_i\(18) & ((\Pulse_width|Counter_pulse|counter_i[17]~53\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[18]~55\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[17]~53\) # (!\Pulse_width|Counter_pulse|counter_i\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(18),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[17]~53\,
	combout => \Pulse_width|Counter_pulse|counter_i[18]~54_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[18]~55\);

-- Location: FF_X25_Y17_N15
\Pulse_width|Counter_pulse|counter_i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[18]~54_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(18));

-- Location: LCCOMB_X25_Y17_N16
\Pulse_width|Counter_pulse|counter_i[19]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[19]~56_combout\ = (\Pulse_width|Counter_pulse|counter_i\(19) & (\Pulse_width|Counter_pulse|counter_i[18]~55\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(19) & (!\Pulse_width|Counter_pulse|counter_i[18]~55\ & 
-- VCC))
-- \Pulse_width|Counter_pulse|counter_i[19]~57\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(19) & !\Pulse_width|Counter_pulse|counter_i[18]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(19),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[18]~55\,
	combout => \Pulse_width|Counter_pulse|counter_i[19]~56_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[19]~57\);

-- Location: FF_X25_Y17_N17
\Pulse_width|Counter_pulse|counter_i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[19]~56_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(19));

-- Location: LCCOMB_X26_Y17_N14
\Pulse_width|Mult0|mult_core|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|_~0_combout\ = (\Pulse_width|Counter_pulse|counter_i\(19) & \Pulse_width|Counter_pulse|counter_i\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Counter_pulse|counter_i\(19),
	datad => \Pulse_width|Counter_pulse|counter_i\(18),
	combout => \Pulse_width|Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X26_Y17_N4
\Pulse_width|Mult0|mult_core|romout[1][11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][11]~16_combout\ = (\Pulse_width|Counter_pulse|counter_i\(19) & ((!\Pulse_width|Counter_pulse|counter_i\(18)))) # (!\Pulse_width|Counter_pulse|counter_i\(19) & (\Pulse_width|Counter_pulse|counter_i\(17) & 
-- \Pulse_width|Counter_pulse|counter_i\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(17),
	datac => \Pulse_width|Counter_pulse|counter_i\(19),
	datad => \Pulse_width|Counter_pulse|counter_i\(18),
	combout => \Pulse_width|Mult0|mult_core|romout[1][11]~16_combout\);

-- Location: LCCOMB_X26_Y17_N26
\Pulse_width|Mult0|mult_core|romout[1][10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][10]~15_combout\ = (\Pulse_width|Counter_pulse|counter_i\(18) & ((\Pulse_width|Counter_pulse|counter_i\(19) & (\Pulse_width|Counter_pulse|counter_i\(16) & \Pulse_width|Counter_pulse|counter_i\(17))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(19) & ((!\Pulse_width|Counter_pulse|counter_i\(17)))))) # (!\Pulse_width|Counter_pulse|counter_i\(18) & ((\Pulse_width|Counter_pulse|counter_i\(16) & ((\Pulse_width|Counter_pulse|counter_i\(19)) # 
-- (\Pulse_width|Counter_pulse|counter_i\(17)))) # (!\Pulse_width|Counter_pulse|counter_i\(16) & (\Pulse_width|Counter_pulse|counter_i\(19) & \Pulse_width|Counter_pulse|counter_i\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(16),
	datab => \Pulse_width|Counter_pulse|counter_i\(18),
	datac => \Pulse_width|Counter_pulse|counter_i\(19),
	datad => \Pulse_width|Counter_pulse|counter_i\(17),
	combout => \Pulse_width|Mult0|mult_core|romout[1][10]~15_combout\);

-- Location: LCCOMB_X26_Y17_N12
\Pulse_width|Mult0|mult_core|romout[1][9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][9]~7_combout\ = (\Pulse_width|Counter_pulse|counter_i\(16) & ((\Pulse_width|Counter_pulse|counter_i\(18) & ((!\Pulse_width|Counter_pulse|counter_i\(17)))) # (!\Pulse_width|Counter_pulse|counter_i\(18) & 
-- (\Pulse_width|Counter_pulse|counter_i\(19) & \Pulse_width|Counter_pulse|counter_i\(17))))) # (!\Pulse_width|Counter_pulse|counter_i\(16) & ((\Pulse_width|Counter_pulse|counter_i\(18) & (\Pulse_width|Counter_pulse|counter_i\(19) & 
-- \Pulse_width|Counter_pulse|counter_i\(17))) # (!\Pulse_width|Counter_pulse|counter_i\(18) & ((\Pulse_width|Counter_pulse|counter_i\(19)) # (\Pulse_width|Counter_pulse|counter_i\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(16),
	datab => \Pulse_width|Counter_pulse|counter_i\(18),
	datac => \Pulse_width|Counter_pulse|counter_i\(19),
	datad => \Pulse_width|Counter_pulse|counter_i\(17),
	combout => \Pulse_width|Mult0|mult_core|romout[1][9]~7_combout\);

-- Location: LCCOMB_X26_Y17_N16
\Pulse_width|Mult0|mult_core|romout[0][12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][12]~9_combout\ = (\Pulse_width|Counter_pulse|counter_i\(14) & \Pulse_width|Counter_pulse|counter_i\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Counter_pulse|counter_i\(14),
	datad => \Pulse_width|Counter_pulse|counter_i\(15),
	combout => \Pulse_width|Mult0|mult_core|romout[0][12]~9_combout\);

-- Location: LCCOMB_X26_Y17_N10
\Pulse_width|Mult0|mult_core|romout[1][8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][8]~8_combout\ = (\Pulse_width|Counter_pulse|counter_i\(17) & ((\Pulse_width|Counter_pulse|counter_i\(18) & ((\Pulse_width|Counter_pulse|counter_i\(19)) # (\Pulse_width|Counter_pulse|counter_i\(16)))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(18) & (\Pulse_width|Counter_pulse|counter_i\(19) & \Pulse_width|Counter_pulse|counter_i\(16))))) # (!\Pulse_width|Counter_pulse|counter_i\(17) & (\Pulse_width|Counter_pulse|counter_i\(19) $ 
-- (((\Pulse_width|Counter_pulse|counter_i\(18)) # (\Pulse_width|Counter_pulse|counter_i\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(17),
	datab => \Pulse_width|Counter_pulse|counter_i\(18),
	datac => \Pulse_width|Counter_pulse|counter_i\(19),
	datad => \Pulse_width|Counter_pulse|counter_i\(16),
	combout => \Pulse_width|Mult0|mult_core|romout[1][8]~8_combout\);

-- Location: LCCOMB_X26_Y17_N0
\Pulse_width|Mult0|mult_core|romout[0][11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\ = (\Pulse_width|Counter_pulse|counter_i\(14) & (\Pulse_width|Counter_pulse|counter_i\(13) & !\Pulse_width|Counter_pulse|counter_i\(15))) # (!\Pulse_width|Counter_pulse|counter_i\(14) & 
-- ((\Pulse_width|Counter_pulse|counter_i\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(13),
	datac => \Pulse_width|Counter_pulse|counter_i\(14),
	datad => \Pulse_width|Counter_pulse|counter_i\(15),
	combout => \Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\);

-- Location: LCCOMB_X26_Y17_N18
\Pulse_width|Mult0|mult_core|romout[1][7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\ = (\Pulse_width|Counter_pulse|counter_i\(18) & (\Pulse_width|Counter_pulse|counter_i\(16) $ (((\Pulse_width|Counter_pulse|counter_i\(19)) # (!\Pulse_width|Counter_pulse|counter_i\(17)))))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(18) & ((\Pulse_width|Counter_pulse|counter_i\(17) & (!\Pulse_width|Counter_pulse|counter_i\(19) & !\Pulse_width|Counter_pulse|counter_i\(16))) # (!\Pulse_width|Counter_pulse|counter_i\(17) & 
-- (\Pulse_width|Counter_pulse|counter_i\(19) & \Pulse_width|Counter_pulse|counter_i\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(17),
	datab => \Pulse_width|Counter_pulse|counter_i\(18),
	datac => \Pulse_width|Counter_pulse|counter_i\(19),
	datad => \Pulse_width|Counter_pulse|counter_i\(16),
	combout => \Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\);

-- Location: LCCOMB_X26_Y17_N22
\Pulse_width|Mult0|mult_core|romout[1][6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][6]~12_combout\ = (\Pulse_width|Counter_pulse|counter_i\(17) & (\Pulse_width|Counter_pulse|counter_i\(19) $ (((\Pulse_width|Counter_pulse|counter_i\(18)) # (!\Pulse_width|Counter_pulse|counter_i\(16)))))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(17) & ((\Pulse_width|Counter_pulse|counter_i\(18) & (\Pulse_width|Counter_pulse|counter_i\(19) & !\Pulse_width|Counter_pulse|counter_i\(16))) # (!\Pulse_width|Counter_pulse|counter_i\(18) & 
-- (!\Pulse_width|Counter_pulse|counter_i\(19) & \Pulse_width|Counter_pulse|counter_i\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(17),
	datab => \Pulse_width|Counter_pulse|counter_i\(18),
	datac => \Pulse_width|Counter_pulse|counter_i\(19),
	datad => \Pulse_width|Counter_pulse|counter_i\(16),
	combout => \Pulse_width|Mult0|mult_core|romout[1][6]~12_combout\);

-- Location: LCCOMB_X25_Y17_N28
\Pulse_width|Mult0|mult_core|romout[0][10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][10]~13_combout\ = (\Pulse_width|Counter_pulse|counter_i\(14) & ((\Pulse_width|Counter_pulse|counter_i\(13) & (\Pulse_width|Counter_pulse|counter_i\(15) & \Pulse_width|Counter_pulse|counter_i\(12))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(13) & (!\Pulse_width|Counter_pulse|counter_i\(15))))) # (!\Pulse_width|Counter_pulse|counter_i\(14) & ((\Pulse_width|Counter_pulse|counter_i\(13) & ((\Pulse_width|Counter_pulse|counter_i\(15)) # 
-- (\Pulse_width|Counter_pulse|counter_i\(12)))) # (!\Pulse_width|Counter_pulse|counter_i\(13) & (\Pulse_width|Counter_pulse|counter_i\(15) & \Pulse_width|Counter_pulse|counter_i\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(14),
	datab => \Pulse_width|Counter_pulse|counter_i\(13),
	datac => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => \Pulse_width|Counter_pulse|counter_i\(12),
	combout => \Pulse_width|Mult0|mult_core|romout[0][10]~13_combout\);

-- Location: LCCOMB_X26_Y17_N20
\Pulse_width|Mult0|mult_core|romout[1][5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\ = (\Pulse_width|Counter_pulse|counter_i\(17) & (\Pulse_width|Counter_pulse|counter_i\(18) $ (((\Pulse_width|Counter_pulse|counter_i\(16)))))) # (!\Pulse_width|Counter_pulse|counter_i\(17) & 
-- ((\Pulse_width|Counter_pulse|counter_i\(18) & (\Pulse_width|Counter_pulse|counter_i\(19) & \Pulse_width|Counter_pulse|counter_i\(16))) # (!\Pulse_width|Counter_pulse|counter_i\(18) & (\Pulse_width|Counter_pulse|counter_i\(19) $ 
-- (\Pulse_width|Counter_pulse|counter_i\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(17),
	datab => \Pulse_width|Counter_pulse|counter_i\(18),
	datac => \Pulse_width|Counter_pulse|counter_i\(19),
	datad => \Pulse_width|Counter_pulse|counter_i\(16),
	combout => \Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\);

-- Location: LCCOMB_X25_Y17_N22
\Pulse_width|Mult0|mult_core|romout[0][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][9]~combout\ = (\Pulse_width|Counter_pulse|counter_i\(14) & ((\Pulse_width|Counter_pulse|counter_i\(13) & (\Pulse_width|Counter_pulse|counter_i\(15) & !\Pulse_width|Counter_pulse|counter_i\(12))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(13) & ((\Pulse_width|Counter_pulse|counter_i\(12)))))) # (!\Pulse_width|Counter_pulse|counter_i\(14) & ((\Pulse_width|Counter_pulse|counter_i\(13) & ((\Pulse_width|Counter_pulse|counter_i\(15)) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(12)))) # (!\Pulse_width|Counter_pulse|counter_i\(13) & (\Pulse_width|Counter_pulse|counter_i\(15) & !\Pulse_width|Counter_pulse|counter_i\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(14),
	datab => \Pulse_width|Counter_pulse|counter_i\(13),
	datac => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => \Pulse_width|Counter_pulse|counter_i\(12),
	combout => \Pulse_width|Mult0|mult_core|romout[0][9]~combout\);

-- Location: LCCOMB_X25_Y17_N24
\Pulse_width|Mult0|mult_core|romout[0][8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][8]~1_combout\ = (\Pulse_width|Counter_pulse|counter_i\(13) & ((\Pulse_width|Counter_pulse|counter_i\(14) & ((\Pulse_width|Counter_pulse|counter_i\(15)) # (\Pulse_width|Counter_pulse|counter_i\(12)))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(14) & (\Pulse_width|Counter_pulse|counter_i\(15) & \Pulse_width|Counter_pulse|counter_i\(12))))) # (!\Pulse_width|Counter_pulse|counter_i\(13) & (\Pulse_width|Counter_pulse|counter_i\(15) $ 
-- (((\Pulse_width|Counter_pulse|counter_i\(14)) # (\Pulse_width|Counter_pulse|counter_i\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(14),
	datab => \Pulse_width|Counter_pulse|counter_i\(13),
	datac => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => \Pulse_width|Counter_pulse|counter_i\(12),
	combout => \Pulse_width|Mult0|mult_core|romout[0][8]~1_combout\);

-- Location: LCCOMB_X24_Y17_N4
\Pulse_width|Mult0|mult_core|romout[1][4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][4]~0_combout\ = (\Pulse_width|Counter_pulse|counter_i\(17) & (\Pulse_width|Counter_pulse|counter_i\(16) & ((!\Pulse_width|Counter_pulse|counter_i\(19))))) # (!\Pulse_width|Counter_pulse|counter_i\(17) & 
-- ((\Pulse_width|Counter_pulse|counter_i\(19)) # ((!\Pulse_width|Counter_pulse|counter_i\(16) & \Pulse_width|Counter_pulse|counter_i\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(17),
	datab => \Pulse_width|Counter_pulse|counter_i\(16),
	datac => \Pulse_width|Counter_pulse|counter_i\(18),
	datad => \Pulse_width|Counter_pulse|counter_i\(19),
	combout => \Pulse_width|Mult0|mult_core|romout[1][4]~0_combout\);

-- Location: LCCOMB_X25_Y17_N30
\Pulse_width|Mult0|mult_core|romout[0][7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][7]~3_combout\ = (\Pulse_width|Counter_pulse|counter_i\(14) & (\Pulse_width|Counter_pulse|counter_i\(12) $ (((\Pulse_width|Counter_pulse|counter_i\(15)) # (!\Pulse_width|Counter_pulse|counter_i\(13)))))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(14) & ((\Pulse_width|Counter_pulse|counter_i\(13) & (!\Pulse_width|Counter_pulse|counter_i\(15) & !\Pulse_width|Counter_pulse|counter_i\(12))) # (!\Pulse_width|Counter_pulse|counter_i\(13) & 
-- (\Pulse_width|Counter_pulse|counter_i\(15) & \Pulse_width|Counter_pulse|counter_i\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(14),
	datab => \Pulse_width|Counter_pulse|counter_i\(13),
	datac => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => \Pulse_width|Counter_pulse|counter_i\(12),
	combout => \Pulse_width|Mult0|mult_core|romout[0][7]~3_combout\);

-- Location: LCCOMB_X26_Y17_N8
\Pulse_width|Mult0|mult_core|romout[1][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][3]~2_combout\ = \Pulse_width|Counter_pulse|counter_i\(19) $ (((!\Pulse_width|Counter_pulse|counter_i\(16) & ((\Pulse_width|Counter_pulse|counter_i\(18)) # (\Pulse_width|Counter_pulse|counter_i\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(16),
	datab => \Pulse_width|Counter_pulse|counter_i\(18),
	datac => \Pulse_width|Counter_pulse|counter_i\(19),
	datad => \Pulse_width|Counter_pulse|counter_i\(17),
	combout => \Pulse_width|Mult0|mult_core|romout[1][3]~2_combout\);

-- Location: LCCOMB_X26_Y17_N30
\Pulse_width|Mult0|mult_core|romout[0][6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][6]~4_combout\ = (\Pulse_width|Counter_pulse|counter_i\(13) & (\Pulse_width|Counter_pulse|counter_i\(15) $ (((\Pulse_width|Counter_pulse|counter_i\(14)) # (!\Pulse_width|Counter_pulse|counter_i\(12)))))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(13) & ((\Pulse_width|Counter_pulse|counter_i\(12) & (!\Pulse_width|Counter_pulse|counter_i\(14) & !\Pulse_width|Counter_pulse|counter_i\(15))) # (!\Pulse_width|Counter_pulse|counter_i\(12) & 
-- (\Pulse_width|Counter_pulse|counter_i\(14) & \Pulse_width|Counter_pulse|counter_i\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(12),
	datab => \Pulse_width|Counter_pulse|counter_i\(14),
	datac => \Pulse_width|Counter_pulse|counter_i\(13),
	datad => \Pulse_width|Counter_pulse|counter_i\(15),
	combout => \Pulse_width|Mult0|mult_core|romout[0][6]~4_combout\);

-- Location: LCCOMB_X24_Y17_N2
\Pulse_width|Mult0|mult_core|romout[1][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][2]~combout\ = \Pulse_width|Counter_pulse|counter_i\(18) $ (((\Pulse_width|Counter_pulse|counter_i\(17)) # (\Pulse_width|Counter_pulse|counter_i\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(17),
	datac => \Pulse_width|Counter_pulse|counter_i\(18),
	datad => \Pulse_width|Counter_pulse|counter_i\(16),
	combout => \Pulse_width|Mult0|mult_core|romout[1][2]~combout\);

-- Location: LCCOMB_X25_Y17_N20
\Pulse_width|Mult0|mult_core|romout[0][5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][5]~6_combout\ = (\Pulse_width|Counter_pulse|counter_i\(14) & ((\Pulse_width|Counter_pulse|counter_i\(13) & ((!\Pulse_width|Counter_pulse|counter_i\(12)))) # (!\Pulse_width|Counter_pulse|counter_i\(13) & 
-- (\Pulse_width|Counter_pulse|counter_i\(15) & \Pulse_width|Counter_pulse|counter_i\(12))))) # (!\Pulse_width|Counter_pulse|counter_i\(14) & (\Pulse_width|Counter_pulse|counter_i\(12) $ (((\Pulse_width|Counter_pulse|counter_i\(15) & 
-- !\Pulse_width|Counter_pulse|counter_i\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(14),
	datab => \Pulse_width|Counter_pulse|counter_i\(15),
	datac => \Pulse_width|Counter_pulse|counter_i\(13),
	datad => \Pulse_width|Counter_pulse|counter_i\(12),
	combout => \Pulse_width|Mult0|mult_core|romout[0][5]~6_combout\);

-- Location: LCCOMB_X24_Y17_N0
\Pulse_width|Mult0|mult_core|romout[1][1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][1]~5_combout\ = \Pulse_width|Counter_pulse|counter_i\(17) $ (\Pulse_width|Counter_pulse|counter_i\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(17),
	datac => \Pulse_width|Counter_pulse|counter_i\(16),
	combout => \Pulse_width|Mult0|mult_core|romout[1][1]~5_combout\);

-- Location: LCCOMB_X25_Y17_N26
\Pulse_width|Mult0|mult_core|romout[0][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][4]~combout\ = (\Pulse_width|Counter_pulse|counter_i\(13) & (((!\Pulse_width|Counter_pulse|counter_i\(15) & \Pulse_width|Counter_pulse|counter_i\(12))))) # (!\Pulse_width|Counter_pulse|counter_i\(13) & 
-- ((\Pulse_width|Counter_pulse|counter_i\(15)) # ((\Pulse_width|Counter_pulse|counter_i\(14) & !\Pulse_width|Counter_pulse|counter_i\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(14),
	datab => \Pulse_width|Counter_pulse|counter_i\(13),
	datac => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => \Pulse_width|Counter_pulse|counter_i\(12),
	combout => \Pulse_width|Mult0|mult_core|romout[0][4]~combout\);

-- Location: LCCOMB_X24_Y17_N6
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(16) & \Pulse_width|Mult0|mult_core|romout[0][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(16),
	datab => \Pulse_width|Mult0|mult_core|romout[0][4]~combout\,
	datad => VCC,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X24_Y17_N8
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ = CARRY((\Pulse_width|Mult0|mult_core|romout[0][5]~6_combout\ & (!\Pulse_width|Mult0|mult_core|romout[1][1]~5_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\)) # (!\Pulse_width|Mult0|mult_core|romout[0][5]~6_combout\ & ((!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\) # 
-- (!\Pulse_width|Mult0|mult_core|romout[1][1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[0][5]~6_combout\,
	datab => \Pulse_width|Mult0|mult_core|romout[1][1]~5_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X24_Y17_N10
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\ = CARRY((\Pulse_width|Mult0|mult_core|romout[0][6]~4_combout\ & ((\Pulse_width|Mult0|mult_core|romout[1][2]~combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\))) # (!\Pulse_width|Mult0|mult_core|romout[0][6]~4_combout\ & (\Pulse_width|Mult0|mult_core|romout[1][2]~combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[0][6]~4_combout\,
	datab => \Pulse_width|Mult0|mult_core|romout[1][2]~combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X24_Y17_N12
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ = CARRY((\Pulse_width|Mult0|mult_core|romout[0][7]~3_combout\ & (!\Pulse_width|Mult0|mult_core|romout[1][3]~2_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\)) # (!\Pulse_width|Mult0|mult_core|romout[0][7]~3_combout\ & ((!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\) # 
-- (!\Pulse_width|Mult0|mult_core|romout[1][3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[0][7]~3_combout\,
	datab => \Pulse_width|Mult0|mult_core|romout[1][3]~2_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X24_Y17_N14
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Pulse_width|Mult0|mult_core|romout[0][8]~1_combout\ $ (\Pulse_width|Mult0|mult_core|romout[1][4]~0_combout\ $ 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))) # (GND)
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Pulse_width|Mult0|mult_core|romout[0][8]~1_combout\ & ((\Pulse_width|Mult0|mult_core|romout[1][4]~0_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\))) # (!\Pulse_width|Mult0|mult_core|romout[0][8]~1_combout\ & (\Pulse_width|Mult0|mult_core|romout[1][4]~0_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[0][8]~1_combout\,
	datab => \Pulse_width|Mult0|mult_core|romout[1][4]~0_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X24_Y17_N16
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\ & ((\Pulse_width|Mult0|mult_core|romout[0][9]~combout\ & 
-- (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\Pulse_width|Mult0|mult_core|romout[0][9]~combout\ & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\ & ((\Pulse_width|Mult0|mult_core|romout[0][9]~combout\ & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Pulse_width|Mult0|mult_core|romout[0][9]~combout\ & 
-- ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\ & (!\Pulse_width|Mult0|mult_core|romout[0][9]~combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\ & ((!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # 
-- (!\Pulse_width|Mult0|mult_core|romout[0][9]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\,
	datab => \Pulse_width|Mult0|mult_core|romout[0][9]~combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X24_Y17_N18
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\Pulse_width|Mult0|mult_core|romout[1][6]~12_combout\ $ (\Pulse_width|Mult0|mult_core|romout[0][10]~13_combout\ $ 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\Pulse_width|Mult0|mult_core|romout[1][6]~12_combout\ & ((\Pulse_width|Mult0|mult_core|romout[0][10]~13_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # (!\Pulse_width|Mult0|mult_core|romout[1][6]~12_combout\ & (\Pulse_width|Mult0|mult_core|romout[0][10]~13_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[1][6]~12_combout\,
	datab => \Pulse_width|Mult0|mult_core|romout[0][10]~13_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X24_Y17_N20
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\ & ((\Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\ & 
-- (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # (!\Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\ & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # 
-- (!\Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\ & ((\Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\ & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\ & 
-- ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\ & (!\Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\ & ((!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # 
-- (!\Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\,
	datab => \Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X24_Y17_N22
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = ((\Pulse_width|Mult0|mult_core|romout[0][12]~9_combout\ $ (\Pulse_width|Mult0|mult_core|romout[1][8]~8_combout\ $ 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\Pulse_width|Mult0|mult_core|romout[0][12]~9_combout\ & ((\Pulse_width|Mult0|mult_core|romout[1][8]~8_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))) # (!\Pulse_width|Mult0|mult_core|romout[0][12]~9_combout\ & (\Pulse_width|Mult0|mult_core|romout[1][8]~8_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[0][12]~9_combout\,
	datab => \Pulse_width|Mult0|mult_core|romout[1][8]~8_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X24_Y17_N24
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\Pulse_width|Mult0|mult_core|romout[1][9]~7_combout\ & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # 
-- (!\Pulse_width|Mult0|mult_core|romout[1][9]~7_combout\ & ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\Pulse_width|Mult0|mult_core|romout[1][9]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Mult0|mult_core|romout[1][9]~7_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X24_Y17_N26
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = (\Pulse_width|Mult0|mult_core|romout[1][10]~15_combout\ & (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ $ (GND))) # 
-- (!\Pulse_width|Mult0|mult_core|romout[1][10]~15_combout\ & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ & VCC))
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ = CARRY((\Pulse_width|Mult0|mult_core|romout[1][10]~15_combout\ & !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Mult0|mult_core|romout[1][10]~15_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X24_Y17_N28
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ = (\Pulse_width|Mult0|mult_core|romout[1][11]~16_combout\ & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # 
-- (!\Pulse_width|Mult0|mult_core|romout[1][11]~16_combout\ & ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (GND)))
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ = CARRY((!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (!\Pulse_width|Mult0|mult_core|romout[1][11]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Mult0|mult_core|romout[1][11]~16_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X24_Y17_N30
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ = \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ $ (!\Pulse_width|Mult0|mult_core|_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Pulse_width|Mult0|mult_core|_~0_combout\,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\);

-- Location: LCCOMB_X25_Y17_N18
\Pulse_width|Counter_pulse|counter_i[20]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[20]~58_combout\ = \Pulse_width|Counter_pulse|counter_i[19]~57\ $ (\Pulse_width|Counter_pulse|counter_i\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Pulse_width|Counter_pulse|counter_i\(20),
	cin => \Pulse_width|Counter_pulse|counter_i[19]~57\,
	combout => \Pulse_width|Counter_pulse|counter_i[20]~58_combout\);

-- Location: FF_X25_Y17_N19
\Pulse_width|Counter_pulse|counter_i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[20]~58_combout\,
	clrn => \servo_pwm|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(20));

-- Location: LCCOMB_X23_Y17_N4
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\Pulse_width|Counter_pulse|counter_i\(20) & (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (VCC))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(20) & (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & VCC))
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(20) & \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(20),
	datab => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X23_Y17_N6
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\Pulse_width|Counter_pulse|counter_i\(20) & ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # (!\Pulse_width|Counter_pulse|counter_i\(20) & ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (GND)))))
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(20) & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\Pulse_width|Counter_pulse|counter_i\(20) & ((!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(20),
	datab => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X23_Y17_N8
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\Pulse_width|Counter_pulse|counter_i\(20) $ (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(20) & ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\Pulse_width|Counter_pulse|counter_i\(20) & (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(20),
	datab => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X23_Y17_N10
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X23_Y17_N12
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ $ 
-- (GND))) # (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ & VCC))
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & !\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X23_Y17_N14
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\Pulse_width|Counter_pulse|counter_i\(20) & ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # (!\Pulse_width|Counter_pulse|counter_i\(20) & ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (GND)))))
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(20) & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\Pulse_width|Counter_pulse|counter_i\(20) & ((!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(20),
	datab => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X23_Y17_N16
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = ((\Pulse_width|Counter_pulse|counter_i\(20) $ (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ $ 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(20) & ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))) # (!\Pulse_width|Counter_pulse|counter_i\(20) & (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(20),
	datab => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X23_Y17_N18
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) 
-- # (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (GND)))
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ = CARRY((!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X23_Y17_N20
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ = \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ $ (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ $ 
-- (!\Pulse_width|Counter_pulse|counter_i\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	datad => \Pulse_width|Counter_pulse|counter_i\(20),
	cin => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\);

-- Location: LCCOMB_X23_Y17_N2
\Pulse_width|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|LessThan0~0_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\) # ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\) # 
-- ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\) # (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	combout => \Pulse_width|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y17_N28
\Pulse_width|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|LessThan0~1_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\) # ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\) # 
-- ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & \Pulse_width|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => \Pulse_width|LessThan0~0_combout\,
	combout => \Pulse_width|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y17_N28
\Pulse_width|Distance~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~17_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (((!\Pulse_width|LessThan0~1_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\)) # (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~17_combout\);

-- Location: FF_X22_Y17_N29
\Pulse_width|Distance[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(3));

-- Location: LCCOMB_X22_Y17_N24
\Pulse_width|Distance~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~15_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & ((!\Pulse_width|LessThan0~1_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~15_combout\);

-- Location: FF_X22_Y17_N25
\Pulse_width|Distance[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(8));

-- Location: LCCOMB_X22_Y17_N18
\Pulse_width|Distance~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~12_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & ((!\Pulse_width|LessThan0~1_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~12_combout\);

-- Location: FF_X22_Y17_N19
\Pulse_width|Distance[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(7));

-- Location: LCCOMB_X22_Y17_N16
\Pulse_width|Distance~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~13_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & (((!\Pulse_width|LessThan0~1_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)) # (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~13_combout\);

-- Location: FF_X22_Y17_N17
\Pulse_width|Distance[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(6));

-- Location: LCCOMB_X22_Y17_N26
\Pulse_width|Distance~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~16_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (((!\Pulse_width|LessThan0~1_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\)) # (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~16_combout\);

-- Location: FF_X22_Y17_N27
\Pulse_width|Distance[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(5));

-- Location: LCCOMB_X23_Y17_N26
\Pulse_width|Distance~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~20_combout\ = ((!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & 
-- !\Pulse_width|LessThan0~0_combout\))) # (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datac => \Pulse_width|LessThan0~0_combout\,
	datad => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	combout => \Pulse_width|Distance~20_combout\);

-- Location: LCCOMB_X23_Y17_N30
\Pulse_width|Distance~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~21_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & ((\Pulse_width|Distance~20_combout\) # 
-- ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & !\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datac => \Pulse_width|Distance~20_combout\,
	datad => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	combout => \Pulse_width|Distance~21_combout\);

-- Location: FF_X23_Y17_N31
\Pulse_width|Distance[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(4));

-- Location: LCCOMB_X22_Y17_N2
\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \Pulse_width|Distance\(4) $ (VCC)
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\Pulse_width|Distance\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(4),
	datad => VCC,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X22_Y17_N4
\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\Pulse_width|Distance\(5) & (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\Pulse_width|Distance\(5) & 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\Pulse_width|Distance\(5) & !\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(5),
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X22_Y17_N6
\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\Pulse_width|Distance\(6) & ((GND) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\Pulse_width|Distance\(6) & 
-- (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\Pulse_width|Distance\(6)) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Distance\(6),
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X22_Y17_N8
\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\Pulse_width|Distance\(7) & (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\Pulse_width|Distance\(7) & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\Pulse_width|Distance\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Distance\(7),
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X22_Y17_N10
\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\Pulse_width|Distance\(8) & (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\Pulse_width|Distance\(8) & 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\Pulse_width|Distance\(8) & !\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Distance\(8),
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X22_Y17_N12
\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X21_Y17_N30
\segment_driver|Div0|auto_generated|divider|divider|StageOut[54]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[54]~33_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[54]~33_combout\);

-- Location: LCCOMB_X21_Y17_N0
\segment_driver|Div0|auto_generated|divider|divider|StageOut[54]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[54]~32_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Pulse_width|Distance\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Pulse_width|Distance\(8),
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[54]~32_combout\);

-- Location: LCCOMB_X21_Y17_N26
\segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~35_combout\ = (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~35_combout\);

-- Location: LCCOMB_X21_Y17_N28
\segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~34_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Pulse_width|Distance\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Pulse_width|Distance\(7),
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~34_combout\);

-- Location: LCCOMB_X21_Y17_N24
\segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\ = (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\);

-- Location: LCCOMB_X21_Y17_N8
\segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~36_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Pulse_width|Distance\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Pulse_width|Distance\(6),
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~36_combout\);

-- Location: LCCOMB_X22_Y17_N20
\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\ = (\Pulse_width|Distance\(5) & \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Distance\(5),
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\);

-- Location: LCCOMB_X21_Y17_N2
\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39_combout\ = (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39_combout\);

-- Location: LCCOMB_X22_Y17_N30
\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~40_combout\ = (\Pulse_width|Distance\(4) & \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Distance\(4),
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~40_combout\);

-- Location: LCCOMB_X21_Y17_N4
\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41_combout\ = (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41_combout\);

-- Location: LCCOMB_X21_Y17_N6
\segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~42_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Pulse_width|Distance\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Pulse_width|Distance\(3),
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~42_combout\);

-- Location: LCCOMB_X22_Y17_N22
\segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~43_combout\ = (\Pulse_width|Distance\(3) & !\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Distance\(3),
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~43_combout\);

-- Location: LCCOMB_X21_Y17_N10
\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~42_combout\) # (\segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~43_combout\)))
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~42_combout\) # (\segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~42_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~43_combout\,
	datad => VCC,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X21_Y17_N12
\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~40_combout\) # 
-- (\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41_combout\)))) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~40_combout\ & 
-- (!\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41_combout\)))
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~40_combout\ & (!\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~40_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X21_Y17_N14
\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\) # 
-- (\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39_combout\))))) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\) # 
-- ((\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39_combout\) # (GND))))
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\) # ((\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39_combout\) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X21_Y17_N16
\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\ & (((!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) 
-- # (!\segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\ & ((\segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~36_combout\ & (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~36_combout\ & ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\ & !\segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~36_combout\)) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~36_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X21_Y17_N18
\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~35_combout\) # 
-- (\segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~34_combout\)))) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~35_combout\) # 
-- (\segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~34_combout\)))))
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~35_combout\) # 
-- (\segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~35_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~34_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X21_Y17_N20
\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\segment_driver|Div0|auto_generated|divider|divider|StageOut[54]~33_combout\ & (!\segment_driver|Div0|auto_generated|divider|divider|StageOut[54]~32_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[54]~33_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[54]~32_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X21_Y17_N22
\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X18_Y17_N30
\segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~54_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Pulse_width|Distance\(7)))) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datab => \Pulse_width|Distance\(7),
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~54_combout\);

-- Location: LCCOMB_X18_Y17_N18
\segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~44_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~44_combout\);

-- Location: LCCOMB_X18_Y17_N28
\segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~45_combout\ = (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~45_combout\);

-- Location: LCCOMB_X18_Y17_N24
\segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~55_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Pulse_width|Distance\(6))) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(6),
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~55_combout\);

-- Location: LCCOMB_X18_Y17_N26
\segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~56_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Pulse_width|Distance\(5))) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(5),
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~56_combout\);

-- Location: LCCOMB_X18_Y17_N14
\segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~46_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~46_combout\);

-- Location: LCCOMB_X19_Y17_N20
\segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~57_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Pulse_width|Distance\(4))) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(4),
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~57_combout\);

-- Location: LCCOMB_X18_Y17_N16
\segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~47_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~47_combout\);

-- Location: LCCOMB_X18_Y17_N22
\segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~49_combout\ = (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~49_combout\);

-- Location: LCCOMB_X19_Y17_N22
\segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~48_combout\ = (\Pulse_width|Distance\(3) & \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Distance\(3),
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~48_combout\);

-- Location: LCCOMB_X23_Y17_N22
\Pulse_width|Distance~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~18_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & (((!\Pulse_width|LessThan0~1_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)) # (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~18_combout\);

-- Location: FF_X23_Y17_N23
\Pulse_width|Distance[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(2));

-- Location: LCCOMB_X19_Y17_N26
\segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~51_combout\ = (\Pulse_width|Distance\(2) & \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Distance\(2),
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~51_combout\);

-- Location: LCCOMB_X19_Y17_N12
\segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~52_combout\ = (\Pulse_width|Distance\(2) & !\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Distance\(2),
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~52_combout\);

-- Location: LCCOMB_X19_Y17_N8
\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~51_combout\) # (\segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~51_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~52_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X19_Y17_N6
\segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~53_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~53_combout\);

-- Location: LCCOMB_X19_Y17_N0
\segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~50_combout\ = (\Pulse_width|Distance\(2) & \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Distance\(2),
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~50_combout\);

-- Location: LCCOMB_X18_Y17_N0
\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\ = CARRY((\segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~53_combout\) # (\segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~53_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~50_combout\,
	datad => VCC,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\);

-- Location: LCCOMB_X18_Y17_N2
\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\ = CARRY((!\segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~49_combout\ & (!\segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~48_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~48_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\);

-- Location: LCCOMB_X18_Y17_N4
\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\ = CARRY((\segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~57_combout\) # ((\segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~47_combout\) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~57_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\);

-- Location: LCCOMB_X18_Y17_N6
\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\ = CARRY(((!\segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~56_combout\ & !\segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~46_combout\)) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~56_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~46_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\);

-- Location: LCCOMB_X18_Y17_N8
\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\ = CARRY((!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~45_combout\) # (\segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~45_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~55_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\);

-- Location: LCCOMB_X18_Y17_N10
\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ = CARRY((!\segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~54_combout\ & (!\segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~44_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~54_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~44_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\);

-- Location: LCCOMB_X18_Y17_N12
\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\);

-- Location: LCCOMB_X17_Y17_N28
\segment_driver|Mult0|mult_core|romout[0][8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Mult0|mult_core|romout[0][8]~1_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Mult0|mult_core|romout[0][8]~1_combout\);

-- Location: LCCOMB_X18_Y17_N20
\segment_driver|Mult0|mult_core|romout[0][7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Mult0|mult_core|romout[0][7]~2_combout\ = \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ $ (((\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \segment_driver|Mult0|mult_core|romout[0][7]~2_combout\);

-- Location: LCCOMB_X17_Y17_N26
\segment_driver|Mult0|mult_core|romout[0][6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Mult0|mult_core|romout[0][6]~3_combout\ = \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ $ (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Mult0|mult_core|romout[0][6]~3_combout\);

-- Location: LCCOMB_X17_Y17_N4
\segment_driver|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add0~0_combout\ = (\Pulse_width|Distance\(2) & ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\) # (GND))) # (!\Pulse_width|Distance\(2) & 
-- (\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ $ (VCC)))
-- \segment_driver|Add0~1\ = CARRY((\Pulse_width|Distance\(2)) # (\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(2),
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => VCC,
	combout => \segment_driver|Add0~0_combout\,
	cout => \segment_driver|Add0~1\);

-- Location: LCCOMB_X17_Y17_N6
\segment_driver|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add0~2_combout\ = (\Pulse_width|Distance\(3) & ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\segment_driver|Add0~1\ & VCC)) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\segment_driver|Add0~1\)))) # (!\Pulse_width|Distance\(3) & ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (!\segment_driver|Add0~1\)) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\segment_driver|Add0~1\) # (GND)))))
-- \segment_driver|Add0~3\ = CARRY((\Pulse_width|Distance\(3) & (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\segment_driver|Add0~1\)) # (!\Pulse_width|Distance\(3) & ((!\segment_driver|Add0~1\) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(3),
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => VCC,
	cin => \segment_driver|Add0~1\,
	combout => \segment_driver|Add0~2_combout\,
	cout => \segment_driver|Add0~3\);

-- Location: LCCOMB_X17_Y17_N8
\segment_driver|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add0~4_combout\ = ((\Pulse_width|Distance\(4) $ (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ $ (!\segment_driver|Add0~3\)))) # (GND)
-- \segment_driver|Add0~5\ = CARRY((\Pulse_width|Distance\(4) & ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\) # (!\segment_driver|Add0~3\))) # (!\Pulse_width|Distance\(4) & 
-- (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\segment_driver|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(4),
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => VCC,
	cin => \segment_driver|Add0~3\,
	combout => \segment_driver|Add0~4_combout\,
	cout => \segment_driver|Add0~5\);

-- Location: LCCOMB_X17_Y17_N10
\segment_driver|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add0~6_combout\ = (\Pulse_width|Distance\(5) & ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (\segment_driver|Add0~5\ & VCC)) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (!\segment_driver|Add0~5\)))) # (!\Pulse_width|Distance\(5) & ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- (!\segment_driver|Add0~5\)) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\segment_driver|Add0~5\) # (GND)))))
-- \segment_driver|Add0~7\ = CARRY((\Pulse_width|Distance\(5) & (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & !\segment_driver|Add0~5\)) # (!\Pulse_width|Distance\(5) & ((!\segment_driver|Add0~5\) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(5),
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => VCC,
	cin => \segment_driver|Add0~5\,
	combout => \segment_driver|Add0~6_combout\,
	cout => \segment_driver|Add0~7\);

-- Location: LCCOMB_X17_Y17_N12
\segment_driver|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add0~8_combout\ = ((\segment_driver|Mult0|mult_core|romout[0][6]~3_combout\ $ (\Pulse_width|Distance\(6) $ (\segment_driver|Add0~7\)))) # (GND)
-- \segment_driver|Add0~9\ = CARRY((\segment_driver|Mult0|mult_core|romout[0][6]~3_combout\ & (\Pulse_width|Distance\(6) & !\segment_driver|Add0~7\)) # (!\segment_driver|Mult0|mult_core|romout[0][6]~3_combout\ & ((\Pulse_width|Distance\(6)) # 
-- (!\segment_driver|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Mult0|mult_core|romout[0][6]~3_combout\,
	datab => \Pulse_width|Distance\(6),
	datad => VCC,
	cin => \segment_driver|Add0~7\,
	combout => \segment_driver|Add0~8_combout\,
	cout => \segment_driver|Add0~9\);

-- Location: LCCOMB_X17_Y17_N14
\segment_driver|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add0~10_combout\ = (\segment_driver|Mult0|mult_core|romout[0][7]~2_combout\ & ((\Pulse_width|Distance\(7) & (!\segment_driver|Add0~9\)) # (!\Pulse_width|Distance\(7) & ((\segment_driver|Add0~9\) # (GND))))) # 
-- (!\segment_driver|Mult0|mult_core|romout[0][7]~2_combout\ & ((\Pulse_width|Distance\(7) & (\segment_driver|Add0~9\ & VCC)) # (!\Pulse_width|Distance\(7) & (!\segment_driver|Add0~9\))))
-- \segment_driver|Add0~11\ = CARRY((\segment_driver|Mult0|mult_core|romout[0][7]~2_combout\ & ((!\segment_driver|Add0~9\) # (!\Pulse_width|Distance\(7)))) # (!\segment_driver|Mult0|mult_core|romout[0][7]~2_combout\ & (!\Pulse_width|Distance\(7) & 
-- !\segment_driver|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Mult0|mult_core|romout[0][7]~2_combout\,
	datab => \Pulse_width|Distance\(7),
	datad => VCC,
	cin => \segment_driver|Add0~9\,
	combout => \segment_driver|Add0~10_combout\,
	cout => \segment_driver|Add0~11\);

-- Location: LCCOMB_X17_Y17_N16
\segment_driver|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add0~12_combout\ = ((\Pulse_width|Distance\(8) $ (\segment_driver|Mult0|mult_core|romout[0][8]~1_combout\ $ (\segment_driver|Add0~11\)))) # (GND)
-- \segment_driver|Add0~13\ = CARRY((\Pulse_width|Distance\(8) & ((!\segment_driver|Add0~11\) # (!\segment_driver|Mult0|mult_core|romout[0][8]~1_combout\))) # (!\Pulse_width|Distance\(8) & (!\segment_driver|Mult0|mult_core|romout[0][8]~1_combout\ & 
-- !\segment_driver|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(8),
	datab => \segment_driver|Mult0|mult_core|romout[0][8]~1_combout\,
	datad => VCC,
	cin => \segment_driver|Add0~11\,
	combout => \segment_driver|Add0~12_combout\,
	cout => \segment_driver|Add0~13\);

-- Location: LCCOMB_X22_Y17_N0
\segment_driver|Mult0|mult_core|romout[0][9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Mult0|mult_core|romout[0][9]~0_combout\ = (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Mult0|mult_core|romout[0][9]~0_combout\);

-- Location: LCCOMB_X17_Y17_N18
\segment_driver|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add0~14_combout\ = (\segment_driver|Mult0|mult_core|romout[0][9]~0_combout\ & ((\segment_driver|Add0~13\) # (GND))) # (!\segment_driver|Mult0|mult_core|romout[0][9]~0_combout\ & (!\segment_driver|Add0~13\))
-- \segment_driver|Add0~15\ = CARRY((\segment_driver|Mult0|mult_core|romout[0][9]~0_combout\) # (!\segment_driver|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Mult0|mult_core|romout[0][9]~0_combout\,
	datad => VCC,
	cin => \segment_driver|Add0~13\,
	combout => \segment_driver|Add0~14_combout\,
	cout => \segment_driver|Add0~15\);

-- Location: LCCOMB_X17_Y17_N20
\segment_driver|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add0~16_combout\ = \segment_driver|Add0~15\ $ (GND)
-- \segment_driver|Add0~17\ = CARRY(!\segment_driver|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \segment_driver|Add0~15\,
	combout => \segment_driver|Add0~16_combout\,
	cout => \segment_driver|Add0~17\);

-- Location: LCCOMB_X17_Y17_N22
\segment_driver|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add0~18_combout\ = !\segment_driver|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \segment_driver|Add0~17\,
	combout => \segment_driver|Add0~18_combout\);

-- Location: LCCOMB_X17_Y17_N30
\segment_driver|Div1|auto_generated|divider|my_abs_num|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|_~1_combout\ = \segment_driver|Add0~18_combout\ $ (\segment_driver|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Add0~18_combout\,
	datad => \segment_driver|Add0~8_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~1_combout\);

-- Location: LCCOMB_X17_Y17_N24
\segment_driver|Div1|auto_generated|divider|my_abs_num|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|_~0_combout\ = \segment_driver|Add0~18_combout\ $ (\segment_driver|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Add0~18_combout\,
	datad => \segment_driver|Add0~6_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~0_combout\);

-- Location: LCCOMB_X17_Y17_N0
\segment_driver|Div1|auto_generated|divider|my_abs_num|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|_~2_combout\ = \segment_driver|Add0~10_combout\ $ (\segment_driver|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Add0~10_combout\,
	datad => \segment_driver|Add0~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~2_combout\);

-- Location: LCCOMB_X23_Y17_N24
\Pulse_width|Distance~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~14_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & (((!\Pulse_width|LessThan0~1_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\)) # (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~14_combout\);

-- Location: FF_X23_Y17_N25
\Pulse_width|Distance[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(0));

-- Location: LCCOMB_X23_Y17_N0
\Pulse_width|Distance~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~19_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (((!\Pulse_width|LessThan0~1_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)) # (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~19_combout\);

-- Location: FF_X23_Y17_N1
\Pulse_width|Distance[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pulse~input_o\,
	d => \Pulse_width|Distance~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Distance\(1));

-- Location: LCCOMB_X16_Y18_N12
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\ = (!\Pulse_width|Distance\(0) & (!\segment_driver|Add0~0_combout\ & !\Pulse_width|Distance\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(0),
	datac => \segment_driver|Add0~0_combout\,
	datad => \Pulse_width|Distance\(1),
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\);

-- Location: LCCOMB_X16_Y18_N26
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\ & (!\segment_driver|Add0~2_combout\ & (!\segment_driver|Add0~4_combout\ & 
-- \segment_driver|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\,
	datab => \segment_driver|Add0~2_combout\,
	datac => \segment_driver|Add0~4_combout\,
	datad => \segment_driver|Add0~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\);

-- Location: LCCOMB_X17_Y17_N2
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|_~1_combout\ & (\segment_driver|Div1|auto_generated|divider|my_abs_num|_~0_combout\ & 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|_~2_combout\ & \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~1_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~0_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\);

-- Location: LCCOMB_X18_Y19_N30
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\ = \segment_driver|Add0~14_combout\ $ (((\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\ & (\segment_driver|Add0~12_combout\)) # 
-- (!\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\ & ((\segment_driver|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~12_combout\,
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Add0~14_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\);

-- Location: LCCOMB_X18_Y19_N12
\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\ $ (VCC)
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X18_Y19_N22
\segment_driver|Div1|auto_generated|divider|my_abs_num|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|_~4_combout\ = \segment_driver|Add0~14_combout\ $ (\segment_driver|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Add0~14_combout\,
	datad => \segment_driver|Add0~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~4_combout\);

-- Location: LCCOMB_X18_Y19_N28
\segment_driver|Div1|auto_generated|divider|my_abs_num|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|_~5_combout\ = \segment_driver|Add0~18_combout\ $ (\segment_driver|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Add0~18_combout\,
	datad => \segment_driver|Add0~16_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~5_combout\);

-- Location: LCCOMB_X18_Y19_N8
\segment_driver|Div1|auto_generated|divider|my_abs_num|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|_~3_combout\ = \segment_driver|Add0~12_combout\ $ (\segment_driver|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Add0~12_combout\,
	datad => \segment_driver|Add0~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~3_combout\);

-- Location: LCCOMB_X18_Y19_N2
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|_~4_combout\ & (\segment_driver|Div1|auto_generated|divider|my_abs_num|_~5_combout\ & 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|_~3_combout\ & \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~4_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~5_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~3_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\);

-- Location: LCCOMB_X18_Y19_N4
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~14_combout\ = \segment_driver|Div1|auto_generated|divider|my_abs_num|_~5_combout\ $ (((\segment_driver|Div1|auto_generated|divider|my_abs_num|_~4_combout\ & 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|_~3_combout\ & \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~4_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~5_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~3_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~14_combout\);

-- Location: LCCOMB_X18_Y19_N14
\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~14_combout\ & (\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) 
-- # (!\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~14_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~14_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~14_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X18_Y19_N16
\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\ & (\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ 
-- (GND))) # (!\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X18_Y19_N18
\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = !\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY(!\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X18_Y19_N20
\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X17_Y19_N12
\segment_driver|Div1|auto_generated|divider|divider|StageOut[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[28]~90_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[28]~90_combout\);

-- Location: LCCOMB_X17_Y19_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~91_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~91_combout\);

-- Location: LCCOMB_X17_Y19_N4
\segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~92_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~92_combout\);

-- Location: LCCOMB_X18_Y19_N6
\segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~93_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~14_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~14_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~93_combout\);

-- Location: LCCOMB_X18_Y19_N24
\segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~94_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~94_combout\);

-- Location: LCCOMB_X17_Y19_N6
\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96_combout\);

-- Location: LCCOMB_X18_Y19_N10
\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~95_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~95_combout\);

-- Location: LCCOMB_X17_Y19_N10
\segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~142_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\ $ 
-- (\segment_driver|Add0~18_combout\ $ (\segment_driver|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\,
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \segment_driver|Add0~12_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~142_combout\);

-- Location: LCCOMB_X17_Y19_N8
\segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~143_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\ $ 
-- (\segment_driver|Add0~18_combout\ $ (\segment_driver|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\,
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \segment_driver|Add0~12_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~143_combout\);

-- Location: LCCOMB_X17_Y19_N18
\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~142_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~143_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~142_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~142_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~143_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X17_Y19_N20
\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~95_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~95_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~95_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~95_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X17_Y19_N22
\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~93_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~94_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~93_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~94_combout\)))))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~93_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~93_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~94_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X17_Y19_N24
\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~91_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~92_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~91_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~92_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~91_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~92_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~91_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~92_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X17_Y19_N26
\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[28]~90_combout\) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[28]~90_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X17_Y19_N28
\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X18_Y18_N10
\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\)) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\);

-- Location: LCCOMB_X18_Y18_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~163_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\))) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~163_combout\);

-- Location: LCCOMB_X18_Y18_N28
\segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~97_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~97_combout\);

-- Location: LCCOMB_X18_Y18_N26
\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98_combout\);

-- Location: LCCOMB_X18_Y18_N8
\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~14_combout\)) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~14_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\);

-- Location: LCCOMB_X18_Y18_N0
\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99_combout\);

-- Location: LCCOMB_X18_Y18_N6
\segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\segment_driver|Add0~12_combout\ $ (\segment_driver|Add0~18_combout\ $ 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~12_combout\,
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144_combout\);

-- Location: LCCOMB_X18_Y18_N2
\segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~100_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~100_combout\);

-- Location: LCCOMB_X16_Y18_N24
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\ = \segment_driver|Div1|auto_generated|divider|my_abs_num|_~2_combout\ $ (((\segment_driver|Div1|auto_generated|divider|my_abs_num|_~0_combout\ & 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|_~1_combout\ & \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~0_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~2_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~1_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\);

-- Location: LCCOMB_X16_Y18_N6
\segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~102_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~102_combout\);

-- Location: LCCOMB_X17_Y19_N16
\segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~101_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~101_combout\);

-- Location: LCCOMB_X18_Y18_N14
\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~102_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~101_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~102_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~102_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~101_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X18_Y18_N16
\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~100_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~100_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~100_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~100_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X18_Y18_N18
\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99_combout\)))))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X18_Y18_N20
\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X18_Y18_N22
\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~163_combout\) # ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~97_combout\) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~163_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~97_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X18_Y18_N24
\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\);

-- Location: LCCOMB_X18_Y18_N4
\segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\) # 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146_combout\);

-- Location: LCCOMB_X17_Y18_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~145_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~145_combout\);

-- Location: LCCOMB_X18_Y18_N12
\segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~103_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~103_combout\);

-- Location: LCCOMB_X17_Y18_N24
\segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~104_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~104_combout\);

-- Location: LCCOMB_X17_Y18_N4
\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144_combout\) # 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\);

-- Location: LCCOMB_X17_Y18_N18
\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105_combout\);

-- Location: LCCOMB_X16_Y18_N16
\segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~106_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~106_combout\);

-- Location: LCCOMB_X17_Y18_N0
\segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~107_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~107_combout\);

-- Location: LCCOMB_X16_Y18_N14
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\ = \segment_driver|Add0~8_combout\ $ (((\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ & ((\segment_driver|Add0~6_combout\))) # 
-- (!\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ & (\segment_driver|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~8_combout\,
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Add0~6_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\);

-- Location: LCCOMB_X17_Y18_N26
\segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~108_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~108_combout\);

-- Location: LCCOMB_X17_Y18_N28
\segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~109_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~109_combout\);

-- Location: LCCOMB_X17_Y18_N6
\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~108_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~109_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~108_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~108_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~109_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X17_Y18_N8
\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~106_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~107_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~106_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~107_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~106_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~107_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~106_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~107_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X17_Y18_N10
\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105_combout\)))))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X17_Y18_N12
\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~104_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~104_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~104_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~104_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X17_Y18_N14
\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~145_combout\) # ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~103_combout\) 
-- # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~145_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~103_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X17_Y18_N16
\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = !\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\);

-- Location: LCCOMB_X16_Y17_N26
\segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~148_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~148_combout\);

-- Location: LCCOMB_X16_Y17_N0
\segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~110_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~110_combout\);

-- Location: LCCOMB_X17_Y18_N22
\segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149_combout\);

-- Location: LCCOMB_X16_Y17_N2
\segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~111_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~111_combout\);

-- Location: LCCOMB_X17_Y18_N2
\segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\)) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166_combout\);

-- Location: LCCOMB_X16_Y17_N4
\segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~112_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~112_combout\);

-- Location: LCCOMB_X16_Y17_N10
\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113_combout\);

-- Location: LCCOMB_X16_Y17_N24
\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114_combout\);

-- Location: LCCOMB_X16_Y18_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~150_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ $ 
-- (\segment_driver|Add0~18_combout\ $ (\segment_driver|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Add0~6_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~150_combout\);

-- Location: LCCOMB_X16_Y18_N28
\segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~151_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ $ 
-- (\segment_driver|Add0~18_combout\ $ (\segment_driver|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Add0~6_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~151_combout\);

-- Location: LCCOMB_X16_Y17_N12
\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~150_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~151_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~150_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~150_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~151_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X16_Y17_N14
\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X16_Y17_N16
\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~112_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~112_combout\)))))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~112_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X16_Y17_N18
\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~111_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~111_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~111_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~111_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X16_Y17_N20
\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~148_combout\) # ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~110_combout\) 
-- # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~148_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~110_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\);

-- Location: LCCOMB_X16_Y17_N22
\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = !\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\);

-- Location: LCCOMB_X14_Y17_N20
\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\);

-- Location: LCCOMB_X17_Y18_N20
\segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~152_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149_combout\) # 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~152_combout\);

-- Location: LCCOMB_X14_Y17_N24
\segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~115_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~115_combout\);

-- Location: LCCOMB_X16_Y17_N6
\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~116_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~116_combout\);

-- Location: LCCOMB_X14_Y17_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\)) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\);

-- Location: LCCOMB_X14_Y17_N14
\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117_combout\);

-- Location: LCCOMB_X16_Y17_N28
\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & (\segment_driver|Add0~18_combout\ $ 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ $ (\segment_driver|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \segment_driver|Add0~6_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\);

-- Location: LCCOMB_X16_Y17_N8
\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118_combout\);

-- Location: LCCOMB_X16_Y18_N18
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\ = (!\Pulse_width|Distance\(0) & (!\Pulse_width|Distance\(1) & (!\segment_driver|Add0~0_combout\ & \segment_driver|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(0),
	datab => \Pulse_width|Distance\(1),
	datac => \segment_driver|Add0~0_combout\,
	datad => \segment_driver|Add0~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\);

-- Location: LCCOMB_X16_Y18_N4
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\ = \segment_driver|Add0~4_combout\ $ (((\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\ & ((\segment_driver|Add0~2_combout\))) # 
-- (!\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\ & (\segment_driver|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \segment_driver|Add0~2_combout\,
	datac => \segment_driver|Add0~4_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\);

-- Location: LCCOMB_X14_Y17_N26
\segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~120_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~120_combout\);

-- Location: LCCOMB_X14_Y17_N16
\segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~119_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~119_combout\);

-- Location: LCCOMB_X14_Y17_N2
\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~120_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~119_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~120_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~120_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~119_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X14_Y17_N4
\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X14_Y17_N6
\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117_combout\)))))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X14_Y17_N8
\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~116_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~116_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~116_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~116_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X14_Y17_N10
\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~152_combout\) # ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~115_combout\) 
-- # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~152_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~115_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\);

-- Location: LCCOMB_X14_Y17_N12
\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = !\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\);

-- Location: LCCOMB_X14_Y17_N18
\segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~155_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~155_combout\);

-- Location: LCCOMB_X14_Y17_N28
\segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~121_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~121_combout\);

-- Location: LCCOMB_X14_Y18_N12
\segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~122_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~122_combout\);

-- Location: LCCOMB_X14_Y17_N0
\segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~156_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~156_combout\);

-- Location: LCCOMB_X14_Y18_N26
\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123_combout\);

-- Location: LCCOMB_X16_Y17_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\) # 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\);

-- Location: LCCOMB_X14_Y17_N22
\segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~125_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~125_combout\);

-- Location: LCCOMB_X14_Y18_N4
\segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~124_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~124_combout\);

-- Location: LCCOMB_X16_Y18_N22
\segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~126_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\segment_driver|Add0~18_combout\ $ 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\ $ (\segment_driver|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\,
	datac => \segment_driver|Add0~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~126_combout\);

-- Location: LCCOMB_X13_Y17_N16
\segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~127_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\segment_driver|Add0~2_combout\ $ 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\ $ (\segment_driver|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~2_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \segment_driver|Add0~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~127_combout\);

-- Location: LCCOMB_X14_Y18_N14
\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~126_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~127_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~126_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~126_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~127_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X14_Y18_N16
\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~125_combout\) 
-- # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~124_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~125_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~124_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~125_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~124_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~125_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~124_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X14_Y18_N18
\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123_combout\) 
-- # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\)))))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X14_Y18_N20
\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~122_combout\) 
-- # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~156_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~122_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~156_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~122_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~156_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~122_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~156_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X14_Y18_N22
\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~155_combout\) # ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~121_combout\) 
-- # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~155_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~121_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\);

-- Location: LCCOMB_X14_Y18_N24
\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ = !\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\);

-- Location: LCCOMB_X13_Y18_N10
\segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~158_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~156_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~156_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~158_combout\);

-- Location: LCCOMB_X14_Y18_N10
\segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~128_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~128_combout\);

-- Location: LCCOMB_X14_Y18_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\);

-- Location: LCCOMB_X14_Y18_N28
\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129_combout\);

-- Location: LCCOMB_X14_Y18_N6
\segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~130_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~130_combout\);

-- Location: LCCOMB_X13_Y18_N2
\segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\))) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168_combout\);

-- Location: LCCOMB_X14_Y18_N2
\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132_combout\);

-- Location: LCCOMB_X14_Y18_N8
\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (\segment_driver|Add0~18_combout\ $ 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\ $ (\segment_driver|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\,
	datac => \segment_driver|Add0~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\);

-- Location: LCCOMB_X16_Y18_N20
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\ = \segment_driver|Add0~0_combout\ $ (((\segment_driver|Add0~18_combout\ & ((\Pulse_width|Distance\(0)) # (\Pulse_width|Distance\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(0),
	datab => \Pulse_width|Distance\(1),
	datac => \segment_driver|Add0~0_combout\,
	datad => \segment_driver|Add0~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\);

-- Location: LCCOMB_X13_Y18_N12
\segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~133_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~133_combout\);

-- Location: LCCOMB_X14_Y18_N0
\segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~134_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~134_combout\);

-- Location: LCCOMB_X13_Y18_N16
\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~133_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~134_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~133_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~133_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~134_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X13_Y18_N18
\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132_combout\) 
-- # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X13_Y18_N20
\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~130_combout\) 
-- # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~130_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168_combout\)))))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~130_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~130_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X13_Y18_N22
\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\) 
-- # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X13_Y18_N24
\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~158_combout\) # ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~128_combout\) 
-- # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~158_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~128_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\);

-- Location: LCCOMB_X13_Y18_N26
\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ = !\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\);

-- Location: LCCOMB_X12_Y18_N12
\segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~135_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~135_combout\);

-- Location: LCCOMB_X13_Y18_N28
\segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~160_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~160_combout\);

-- Location: LCCOMB_X13_Y18_N6
\segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~136_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~136_combout\);

-- Location: LCCOMB_X13_Y18_N14
\segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168_combout\) # 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\);

-- Location: LCCOMB_X13_Y18_N4
\segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\);

-- Location: LCCOMB_X13_Y18_N0
\segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~137_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~137_combout\);

-- Location: LCCOMB_X13_Y18_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~138_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~138_combout\);

-- Location: LCCOMB_X13_Y18_N8
\segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~139_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~139_combout\);

-- Location: LCCOMB_X16_Y18_N10
\segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~140_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (\Pulse_width|Distance\(1) $ (((\Pulse_width|Distance\(0) & 
-- \segment_driver|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(0),
	datab => \Pulse_width|Distance\(1),
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \segment_driver|Add0~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~140_combout\);

-- Location: LCCOMB_X16_Y18_N8
\segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~141_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (\Pulse_width|Distance\(1) $ (((\Pulse_width|Distance\(0) & 
-- \segment_driver|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(0),
	datab => \Pulse_width|Distance\(1),
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \segment_driver|Add0~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~141_combout\);

-- Location: LCCOMB_X12_Y18_N0
\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~140_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~140_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~141_combout\,
	datad => VCC,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\);

-- Location: LCCOMB_X12_Y18_N2
\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~138_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~139_combout\ 
-- & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~138_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~139_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\);

-- Location: LCCOMB_X12_Y18_N4
\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~137_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\);

-- Location: LCCOMB_X12_Y18_N6
\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~136_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\ 
-- & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~136_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\);

-- Location: LCCOMB_X12_Y18_N8
\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~135_combout\) # ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~160_combout\) 
-- # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~135_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~160_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\);

-- Location: LCCOMB_X12_Y18_N10
\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ = !\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\);

-- Location: LCCOMB_X12_Y18_N22
\segment_driver|Div1|auto_generated|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|op_1~0_combout\ = \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ $ (VCC)
-- \segment_driver|Div1|auto_generated|divider|op_1~1\ = CARRY(\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|op_1~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X12_Y18_N24
\segment_driver|Div1|auto_generated|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|op_1~2_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (!\segment_driver|Div1|auto_generated|divider|op_1~1\)) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|op_1~1\) # (GND)))
-- \segment_driver|Div1|auto_generated|divider|op_1~3\ = CARRY((!\segment_driver|Div1|auto_generated|divider|op_1~1\) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|op_1~1\,
	combout => \segment_driver|Div1|auto_generated|divider|op_1~2_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X12_Y18_N26
\segment_driver|Div1|auto_generated|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|op_1~4_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (\segment_driver|Div1|auto_generated|divider|op_1~3\ $ (GND))) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (!\segment_driver|Div1|auto_generated|divider|op_1~3\ & VCC))
-- \segment_driver|Div1|auto_generated|divider|op_1~5\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & !\segment_driver|Div1|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|op_1~3\,
	combout => \segment_driver|Div1|auto_generated|divider|op_1~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X12_Y18_N30
\segment_driver|Div1|auto_generated|divider|quotient[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\ = (\segment_driver|Add0~18_combout\ & (\segment_driver|Div1|auto_generated|divider|op_1~0_combout\)) # (!\segment_driver|Add0~18_combout\ & 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|op_1~0_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\);

-- Location: LCCOMB_X12_Y18_N14
\segment_driver|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add1~0_combout\ = \segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\ $ (((\segment_driver|Add0~18_combout\ & ((\segment_driver|Div1|auto_generated|divider|op_1~4_combout\))) # (!\segment_driver|Add0~18_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|op_1~4_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\,
	combout => \segment_driver|Add1~0_combout\);

-- Location: LCCOMB_X12_Y18_N20
\segment_driver|Div1|auto_generated|divider|quotient[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|quotient[1]~1_combout\ = (\segment_driver|Add0~18_combout\ & ((\segment_driver|Div1|auto_generated|divider|op_1~2_combout\))) # (!\segment_driver|Add0~18_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datac => \segment_driver|Add0~18_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|op_1~2_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|quotient[1]~1_combout\);

-- Location: LCCOMB_X12_Y18_N16
\segment_driver|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add2~0_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (\segment_driver|Div1|auto_generated|divider|quotient[1]~1_combout\ & VCC)) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (\segment_driver|Div1|auto_generated|divider|quotient[1]~1_combout\ $ (VCC)))
-- \segment_driver|Add2~1\ = CARRY((!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \segment_driver|Div1|auto_generated|divider|quotient[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|quotient[1]~1_combout\,
	datad => VCC,
	combout => \segment_driver|Add2~0_combout\,
	cout => \segment_driver|Add2~1\);

-- Location: LCCOMB_X12_Y18_N18
\segment_driver|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add2~2_combout\ = \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (\segment_driver|Add2~1\ $ (!\segment_driver|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \segment_driver|Add1~0_combout\,
	cin => \segment_driver|Add2~1\,
	combout => \segment_driver|Add2~2_combout\);

-- Location: LCCOMB_X11_Y18_N0
\segment_driver|Add3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~3_combout\ = (\segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\ & (\Pulse_width|Distance\(1) $ (VCC))) # (!\segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\ & ((\Pulse_width|Distance\(1)) # (GND)))
-- \segment_driver|Add3~4\ = CARRY((\Pulse_width|Distance\(1)) # (!\segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\,
	datab => \Pulse_width|Distance\(1),
	datad => VCC,
	combout => \segment_driver|Add3~3_combout\,
	cout => \segment_driver|Add3~4\);

-- Location: LCCOMB_X11_Y18_N2
\segment_driver|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~8_combout\ = (\Pulse_width|Distance\(2) & ((\segment_driver|Add2~0_combout\ & (!\segment_driver|Add3~4\)) # (!\segment_driver|Add2~0_combout\ & (\segment_driver|Add3~4\ & VCC)))) # (!\Pulse_width|Distance\(2) & 
-- ((\segment_driver|Add2~0_combout\ & ((\segment_driver|Add3~4\) # (GND))) # (!\segment_driver|Add2~0_combout\ & (!\segment_driver|Add3~4\))))
-- \segment_driver|Add3~9\ = CARRY((\Pulse_width|Distance\(2) & (\segment_driver|Add2~0_combout\ & !\segment_driver|Add3~4\)) # (!\Pulse_width|Distance\(2) & ((\segment_driver|Add2~0_combout\) # (!\segment_driver|Add3~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(2),
	datab => \segment_driver|Add2~0_combout\,
	datad => VCC,
	cin => \segment_driver|Add3~4\,
	combout => \segment_driver|Add3~8_combout\,
	cout => \segment_driver|Add3~9\);

-- Location: LCCOMB_X11_Y18_N4
\segment_driver|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~12_combout\ = \Pulse_width|Distance\(3) $ (\segment_driver|Add3~9\ $ (\segment_driver|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Distance\(3),
	datad => \segment_driver|Add2~2_combout\,
	cin => \segment_driver|Add3~9\,
	combout => \segment_driver|Add3~12_combout\);

-- Location: LCCOMB_X12_Y18_N28
\segment_driver|Div1|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|op_1~6_combout\ = \segment_driver|Div1|auto_generated|divider|op_1~5\ $ (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	cin => \segment_driver|Div1|auto_generated|divider|op_1~5\,
	combout => \segment_driver|Div1|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X11_Y18_N18
\segment_driver|Add3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~11_combout\ = (!\segment_driver|Display_Selection\(0) & ((\segment_driver|Add0~18_combout\ & (!\segment_driver|Div1|auto_generated|divider|op_1~6_combout\)) # (!\segment_driver|Add0~18_combout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|op_1~6_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \segment_driver|Display_Selection\(0),
	combout => \segment_driver|Add3~11_combout\);

-- Location: LCCOMB_X11_Y18_N16
\segment_driver|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~14_combout\ = (\segment_driver|Display_Selection\(1) & (!\segment_driver|Add3~11_combout\ & ((\segment_driver|Add3~12_combout\) # (!\segment_driver|Display_Selection\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Display_Selection\(0),
	datab => \segment_driver|Display_Selection\(1),
	datac => \segment_driver|Add3~12_combout\,
	datad => \segment_driver|Add3~11_combout\,
	combout => \segment_driver|Add3~14_combout\);

-- Location: FF_X11_Y18_N17
\segment_driver|temporary_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \segment_driver|uut1|count[15]~clkctrl_outclk\,
	d => \segment_driver|Add3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|temporary_data\(3));

-- Location: LCCOMB_X11_Y18_N28
\segment_driver|Add3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~5_combout\ = (\segment_driver|Display_Selection\(1) & ((\segment_driver|Add3~3_combout\))) # (!\segment_driver|Display_Selection\(1) & (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \segment_driver|Add3~3_combout\,
	datac => \segment_driver|Display_Selection\(1),
	combout => \segment_driver|Add3~5_combout\);

-- Location: LCCOMB_X11_Y18_N8
\segment_driver|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~6_combout\ = (\segment_driver|Display_Selection\(0) & (((\segment_driver|Add3~5_combout\)))) # (!\segment_driver|Display_Selection\(0) & (\segment_driver|Display_Selection\(1) & 
-- (\segment_driver|Div1|auto_generated|divider|quotient[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Display_Selection\(0),
	datab => \segment_driver|Display_Selection\(1),
	datac => \segment_driver|Div1|auto_generated|divider|quotient[1]~1_combout\,
	datad => \segment_driver|Add3~5_combout\,
	combout => \segment_driver|Add3~6_combout\);

-- Location: FF_X11_Y18_N9
\segment_driver|temporary_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \segment_driver|uut1|count[15]~clkctrl_outclk\,
	d => \segment_driver|Add3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|temporary_data\(1));

-- Location: LCCOMB_X11_Y18_N22
\segment_driver|Div1|auto_generated|divider|quotient[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|quotient[2]~2_combout\ = (\segment_driver|Add0~18_combout\ & ((\segment_driver|Div1|auto_generated|divider|op_1~4_combout\))) # (!\segment_driver|Add0~18_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|op_1~4_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|quotient[2]~2_combout\);

-- Location: LCCOMB_X11_Y18_N24
\segment_driver|Add3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~7_combout\ = (\segment_driver|Display_Selection\(1) & (\segment_driver|Div1|auto_generated|divider|quotient[2]~2_combout\ & ((!\segment_driver|Display_Selection\(0))))) # (!\segment_driver|Display_Selection\(1) & 
-- (((!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \segment_driver|Display_Selection\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \segment_driver|Display_Selection\(1),
	datad => \segment_driver|Display_Selection\(0),
	combout => \segment_driver|Add3~7_combout\);

-- Location: LCCOMB_X11_Y18_N26
\segment_driver|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~10_combout\ = (\segment_driver|Add3~7_combout\) # ((\segment_driver|Display_Selection\(0) & (\segment_driver|Add3~8_combout\ & \segment_driver|Display_Selection\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Display_Selection\(0),
	datab => \segment_driver|Add3~8_combout\,
	datac => \segment_driver|Display_Selection\(1),
	datad => \segment_driver|Add3~7_combout\,
	combout => \segment_driver|Add3~10_combout\);

-- Location: FF_X11_Y18_N27
\segment_driver|temporary_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \segment_driver|uut1|count[15]~clkctrl_outclk\,
	d => \segment_driver|Add3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|temporary_data\(2));

-- Location: LCCOMB_X11_Y18_N10
\segment_driver|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~1_combout\ = (\segment_driver|Display_Selection\(1) & ((\segment_driver|Display_Selection\(0) & ((\Pulse_width|Distance\(0)))) # (!\segment_driver|Display_Selection\(0) & 
-- (\segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\,
	datab => \Pulse_width|Distance\(0),
	datac => \segment_driver|Display_Selection\(1),
	datad => \segment_driver|Display_Selection\(0),
	combout => \segment_driver|Add3~1_combout\);

-- Location: LCCOMB_X11_Y18_N6
\segment_driver|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~2_combout\ = (\segment_driver|Display_Selection\(1) & (((\segment_driver|Add3~1_combout\)))) # (!\segment_driver|Display_Selection\(1) & (\segment_driver|Display_Selection\(0) & ((\segment_driver|Add3~1_combout\) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \segment_driver|Display_Selection\(0),
	datac => \segment_driver|Display_Selection\(1),
	datad => \segment_driver|Add3~1_combout\,
	combout => \segment_driver|Add3~2_combout\);

-- Location: FF_X11_Y18_N7
\segment_driver|temporary_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \segment_driver|uut1|count[15]~clkctrl_outclk\,
	d => \segment_driver|Add3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment_driver|temporary_data\(0));

-- Location: LCCOMB_X16_Y21_N0
\segment_driver|uut|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut|Mux0~0_combout\ = (\segment_driver|temporary_data\(3) & (\segment_driver|temporary_data\(0) & (\segment_driver|temporary_data\(1) $ (\segment_driver|temporary_data\(2))))) # (!\segment_driver|temporary_data\(3) & 
-- (!\segment_driver|temporary_data\(1) & (\segment_driver|temporary_data\(2) $ (\segment_driver|temporary_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|temporary_data\(3),
	datab => \segment_driver|temporary_data\(1),
	datac => \segment_driver|temporary_data\(2),
	datad => \segment_driver|temporary_data\(0),
	combout => \segment_driver|uut|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y21_N26
\segment_driver|uut|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut|Mux1~0_combout\ = (\segment_driver|temporary_data\(3) & ((\segment_driver|temporary_data\(0) & (\segment_driver|temporary_data\(1))) # (!\segment_driver|temporary_data\(0) & ((\segment_driver|temporary_data\(2)))))) # 
-- (!\segment_driver|temporary_data\(3) & (\segment_driver|temporary_data\(2) & (\segment_driver|temporary_data\(1) $ (\segment_driver|temporary_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|temporary_data\(3),
	datab => \segment_driver|temporary_data\(1),
	datac => \segment_driver|temporary_data\(2),
	datad => \segment_driver|temporary_data\(0),
	combout => \segment_driver|uut|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y21_N24
\segment_driver|uut|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut|Mux2~0_combout\ = (\segment_driver|temporary_data\(3) & (\segment_driver|temporary_data\(2) & ((\segment_driver|temporary_data\(1)) # (!\segment_driver|temporary_data\(0))))) # (!\segment_driver|temporary_data\(3) & 
-- (\segment_driver|temporary_data\(1) & (!\segment_driver|temporary_data\(2) & !\segment_driver|temporary_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|temporary_data\(3),
	datab => \segment_driver|temporary_data\(1),
	datac => \segment_driver|temporary_data\(2),
	datad => \segment_driver|temporary_data\(0),
	combout => \segment_driver|uut|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y21_N22
\segment_driver|uut|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut|Mux3~0_combout\ = (\segment_driver|temporary_data\(1) & (((\segment_driver|temporary_data\(2) & \segment_driver|temporary_data\(0))))) # (!\segment_driver|temporary_data\(1) & (!\segment_driver|temporary_data\(3) & 
-- (\segment_driver|temporary_data\(2) $ (\segment_driver|temporary_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|temporary_data\(3),
	datab => \segment_driver|temporary_data\(1),
	datac => \segment_driver|temporary_data\(2),
	datad => \segment_driver|temporary_data\(0),
	combout => \segment_driver|uut|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y21_N8
\segment_driver|uut|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut|Mux4~0_combout\ = (\segment_driver|temporary_data\(1) & (!\segment_driver|temporary_data\(3) & ((\segment_driver|temporary_data\(0))))) # (!\segment_driver|temporary_data\(1) & ((\segment_driver|temporary_data\(2) & 
-- (!\segment_driver|temporary_data\(3))) # (!\segment_driver|temporary_data\(2) & ((\segment_driver|temporary_data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|temporary_data\(3),
	datab => \segment_driver|temporary_data\(1),
	datac => \segment_driver|temporary_data\(2),
	datad => \segment_driver|temporary_data\(0),
	combout => \segment_driver|uut|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y21_N2
\segment_driver|uut|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut|Mux5~0_combout\ = (\segment_driver|temporary_data\(0) & (\segment_driver|temporary_data\(3) $ (((\segment_driver|temporary_data\(1)) # (!\segment_driver|temporary_data\(2)))))) # (!\segment_driver|temporary_data\(0) & 
-- (((\segment_driver|temporary_data\(1) & !\segment_driver|temporary_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|temporary_data\(3),
	datab => \segment_driver|temporary_data\(1),
	datac => \segment_driver|temporary_data\(2),
	datad => \segment_driver|temporary_data\(0),
	combout => \segment_driver|uut|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y21_N12
\segment_driver|uut|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut|Mux6~0_combout\ = (\segment_driver|temporary_data\(0) & ((\segment_driver|temporary_data\(3)) # (\segment_driver|temporary_data\(1) $ (\segment_driver|temporary_data\(2))))) # (!\segment_driver|temporary_data\(0) & 
-- ((\segment_driver|temporary_data\(1)) # (\segment_driver|temporary_data\(3) $ (\segment_driver|temporary_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|temporary_data\(3),
	datab => \segment_driver|temporary_data\(1),
	datac => \segment_driver|temporary_data\(2),
	datad => \segment_driver|temporary_data\(0),
	combout => \segment_driver|uut|Mux6~0_combout\);

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


