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

-- DATE "12/17/2024 21:01:17"

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
SIGNAL \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
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
SIGNAL \Measurementcontrol|count[0]~21_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[15]~52\ : std_logic;
SIGNAL \Measurementcontrol|count[16]~53_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[16]~54\ : std_logic;
SIGNAL \Measurementcontrol|count[17]~55_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[17]~56\ : std_logic;
SIGNAL \Measurementcontrol|count[18]~57_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[18]~58\ : std_logic;
SIGNAL \Measurementcontrol|count[19]~59_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[19]~60\ : std_logic;
SIGNAL \Measurementcontrol|count[20]~61_combout\ : std_logic;
SIGNAL \Measurementcontrol|LessThan1~6_combout\ : std_logic;
SIGNAL \Measurementcontrol|LessThan0~0_combout\ : std_logic;
SIGNAL \Measurementcontrol|LessThan0~1_combout\ : std_logic;
SIGNAL \Measurementcontrol|LessThan0~2_combout\ : std_logic;
SIGNAL \Measurementcontrol|LessThan0~3_combout\ : std_logic;
SIGNAL \Measurementcontrol|LessThan0~4_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[0]~22\ : std_logic;
SIGNAL \Measurementcontrol|count[1]~23_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[1]~24\ : std_logic;
SIGNAL \Measurementcontrol|count[2]~25_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[2]~26\ : std_logic;
SIGNAL \Measurementcontrol|count[3]~27_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[3]~28\ : std_logic;
SIGNAL \Measurementcontrol|count[4]~29_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[4]~30\ : std_logic;
SIGNAL \Measurementcontrol|count[5]~31_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[5]~32\ : std_logic;
SIGNAL \Measurementcontrol|count[6]~33_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[6]~34\ : std_logic;
SIGNAL \Measurementcontrol|count[7]~35_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[7]~36\ : std_logic;
SIGNAL \Measurementcontrol|count[8]~37_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[8]~38\ : std_logic;
SIGNAL \Measurementcontrol|count[9]~39_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[9]~40\ : std_logic;
SIGNAL \Measurementcontrol|count[10]~41_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[10]~42\ : std_logic;
SIGNAL \Measurementcontrol|count[11]~43_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[11]~44\ : std_logic;
SIGNAL \Measurementcontrol|count[12]~45_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[12]~46\ : std_logic;
SIGNAL \Measurementcontrol|count[13]~47_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[13]~48\ : std_logic;
SIGNAL \Measurementcontrol|count[14]~49_combout\ : std_logic;
SIGNAL \Measurementcontrol|count[14]~50\ : std_logic;
SIGNAL \Measurementcontrol|count[15]~51_combout\ : std_logic;
SIGNAL \Measurementcontrol|LessThan1~3_combout\ : std_logic;
SIGNAL \Measurementcontrol|LessThan1~0_combout\ : std_logic;
SIGNAL \Measurementcontrol|LessThan1~1_combout\ : std_logic;
SIGNAL \Measurementcontrol|LessThan1~2_combout\ : std_logic;
SIGNAL \Measurementcontrol|LessThan1~4_combout\ : std_logic;
SIGNAL \Measurementcontrol|LessThan1~5_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[0]~21_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan0~2_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan0~3_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan0~4_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan0~5_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan0~6_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[17]~56\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[18]~57_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[18]~58\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[19]~60_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~0_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[19]~61\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[20]~62_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[2]~59_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[0]~22\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[1]~23_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[1]~24\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[2]~25_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[2]~26\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[3]~27_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[3]~28\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[4]~29_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[4]~30\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[5]~31_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[5]~32\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[6]~33_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[6]~34\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[7]~35_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[7]~36\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[8]~37_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[8]~38\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[9]~39_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[9]~40\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[10]~41_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[10]~42\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[11]~43_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[11]~44\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[12]~45_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[12]~46\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[13]~47_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[13]~48\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[14]~49_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[14]~50\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[15]~51_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[15]~52\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[16]~53_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[16]~54\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|count[17]~55_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan0~7_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|step_done~q\ : std_logic;
SIGNAL \Measurementcontrol|COUNTING|counter_i[0]~5_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Measurementcontrol|COUNTING|counter_i[1]~6_combout\ : std_logic;
SIGNAL \Measurementcontrol|rom_addr[1]~0_combout\ : std_logic;
SIGNAL \Measurementcontrol|COUNTING|counter_i[1]~7\ : std_logic;
SIGNAL \Measurementcontrol|COUNTING|counter_i[2]~8_combout\ : std_logic;
SIGNAL \Measurementcontrol|rom_addr[1]~1\ : std_logic;
SIGNAL \Measurementcontrol|rom_addr[2]~2_combout\ : std_logic;
SIGNAL \Measurementcontrol|COUNTING|counter_i[2]~9\ : std_logic;
SIGNAL \Measurementcontrol|COUNTING|counter_i[3]~10_combout\ : std_logic;
SIGNAL \Measurementcontrol|rom_addr[2]~3\ : std_logic;
SIGNAL \Measurementcontrol|rom_addr[3]~4_combout\ : std_logic;
SIGNAL \Measurementcontrol|COUNTING|counter_i[3]~11\ : std_logic;
SIGNAL \Measurementcontrol|COUNTING|counter_i[4]~12_combout\ : std_logic;
SIGNAL \Measurementcontrol|rom_addr[3]~5\ : std_logic;
SIGNAL \Measurementcontrol|rom_addr[4]~6_combout\ : std_logic;
SIGNAL \Measurementcontrol|COUNTING|counter_i[4]~13\ : std_logic;
SIGNAL \Measurementcontrol|COUNTING|counter_i[5]~14_combout\ : std_logic;
SIGNAL \Measurementcontrol|rom_addr[4]~7\ : std_logic;
SIGNAL \Measurementcontrol|rom_addr[5]~8_combout\ : std_logic;
SIGNAL \Measurementcontrol|rom_addr[5]~9\ : std_logic;
SIGNAL \Measurementcontrol|rom_addr[6]~10_combout\ : std_logic;
SIGNAL \Measurementcontrol|rom_addr[6]~11\ : std_logic;
SIGNAL \Measurementcontrol|Add0~0_combout\ : std_logic;
SIGNAL \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][12]~0_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][11]~1_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][10]~2_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][9]~3_combout\ : std_logic;
SIGNAL \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][12]~5_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][8]~4_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][7]~6_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][11]~7_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][10]~8_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][9]~9_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][8]~10_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][7]~11_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[5]~13\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[6]~15\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[7]~17\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[8]~19\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[9]~21\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[10]~23\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[11]~25\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[12]~27\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[13]~29\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[14]~31\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[15]~33\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[16]~34_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[15]~32_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[14]~30_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[13]~28_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[12]~26_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[11]~24_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[10]~22_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[9]~20_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[8]~18_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[7]~16_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[6]~14_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle[5]~12_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|duty_cycle~36_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~2_cout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~4_cout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~6_cout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~8_cout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~10_cout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~12_cout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~14_cout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~16_cout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~18_cout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~20_cout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~22_cout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~24_cout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~25_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|LessThan1~27_combout\ : std_logic;
SIGNAL \Measurementcontrol|SERVO|pwm~q\ : std_logic;
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
SIGNAL \Pulse_width|Counter_pulse|counter_i[0]~63_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[0]~feeder_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[1]~21_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[1]~22\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[2]~23_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[2]~24\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[3]~25_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[3]~26\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[4]~27_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[4]~28\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[5]~29_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[5]~30\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[6]~31_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[6]~32\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[7]~33_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[7]~34\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[8]~35_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[8]~36\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[9]~37_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[9]~38\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[10]~39_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[10]~40\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[11]~41_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[11]~42\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[12]~43_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[12]~44\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[13]~45_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[13]~46\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[14]~47_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[14]~48\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[15]~49_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[15]~50\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[16]~51_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[16]~52\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[17]~53_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[17]~54\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[18]~55_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[18]~56\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[19]~57_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[19]~58\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[20]~59_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][11]~16_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][10]~15_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][9]~7_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][8]~8_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][12]~9_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][10]~13_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][6]~12_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][9]~combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][4]~0_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][8]~1_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[1][3]~2_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|romout[0][7]~3_combout\ : std_logic;
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
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[20]~60\ : std_logic;
SIGNAL \Pulse_width|Counter_pulse|counter_i[21]~61_combout\ : std_logic;
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
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Pulse_width|LessThan0~0_combout\ : std_logic;
SIGNAL \Pulse_width|LessThan0~1_combout\ : std_logic;
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
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~40_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~17_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~43_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~42_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~44_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~54_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~45_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~55_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~46_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~56_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~47_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~57_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~49_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~48_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~18_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~52_combout\ : std_logic;
SIGNAL \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~51_combout\ : std_logic;
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
SIGNAL \segment_driver|Mult0|mult_core|romout[0][9]~0_combout\ : std_logic;
SIGNAL \segment_driver|Mult0|mult_core|romout[0][8]~1_combout\ : std_logic;
SIGNAL \segment_driver|Mult0|mult_core|romout[0][7]~2_combout\ : std_logic;
SIGNAL \segment_driver|Mult0|mult_core|romout[0][6]~3_combout\ : std_logic;
SIGNAL \segment_driver|Add0~1\ : std_logic;
SIGNAL \segment_driver|Add0~3\ : std_logic;
SIGNAL \segment_driver|Add0~5\ : std_logic;
SIGNAL \segment_driver|Add0~7\ : std_logic;
SIGNAL \segment_driver|Add0~9\ : std_logic;
SIGNAL \segment_driver|Add0~11\ : std_logic;
SIGNAL \segment_driver|Add0~13\ : std_logic;
SIGNAL \segment_driver|Add0~15\ : std_logic;
SIGNAL \segment_driver|Add0~17\ : std_logic;
SIGNAL \segment_driver|Add0~18_combout\ : std_logic;
SIGNAL \segment_driver|Add0~14_combout\ : std_logic;
SIGNAL \segment_driver|Add0~12_combout\ : std_logic;
SIGNAL \segment_driver|Add0~8_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|_~1_combout\ : std_logic;
SIGNAL \segment_driver|Add0~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|_~2_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~14_combout\ : std_logic;
SIGNAL \segment_driver|Add0~0_combout\ : std_logic;
SIGNAL \Pulse_width|Distance~19_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\ : std_logic;
SIGNAL \segment_driver|Add0~2_combout\ : std_logic;
SIGNAL \segment_driver|Add0~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ : std_logic;
SIGNAL \segment_driver|Add0~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|_~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\ : std_logic;
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
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~95_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~143_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~142_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[28]~90_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~91_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~92_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~94_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~93_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~163_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~97_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~100_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~101_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~102_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~145_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~103_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~104_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~106_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~107_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~109_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~108_combout\ : std_logic;
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
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~151_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~150_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~119_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~120_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~115_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~152_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~116_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~156_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~155_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~121_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~122_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~125_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~124_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~127_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~126_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~158_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~128_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~130_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132_combout\ : std_logic;
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
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~136_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~137_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~138_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~139_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~141_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~140_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|quotient[1]~1_combout\ : std_logic;
SIGNAL \segment_driver|Add2~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\ : std_logic;
SIGNAL \segment_driver|Add3~4\ : std_logic;
SIGNAL \segment_driver|Add3~8_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|quotient[2]~2_combout\ : std_logic;
SIGNAL \segment_driver|Add3~7_combout\ : std_logic;
SIGNAL \segment_driver|Add3~10_combout\ : std_logic;
SIGNAL \segment_driver|Add3~3_combout\ : std_logic;
SIGNAL \segment_driver|Add3~5_combout\ : std_logic;
SIGNAL \segment_driver|Add3~6_combout\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \segment_driver|Div1|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \segment_driver|Add3~11_combout\ : std_logic;
SIGNAL \segment_driver|Add1~0_combout\ : std_logic;
SIGNAL \segment_driver|Add2~1\ : std_logic;
SIGNAL \segment_driver|Add2~2_combout\ : std_logic;
SIGNAL \segment_driver|Add3~9\ : std_logic;
SIGNAL \segment_driver|Add3~12_combout\ : std_logic;
SIGNAL \segment_driver|Add3~14_combout\ : std_logic;
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
SIGNAL \Measurementcontrol|SERVO|count\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \Measurementcontrol|count\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \segment_driver|temporary_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Measurementcontrol|COUNTING|counter_i\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Measurementcontrol|SERVO|duty_cycle\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \Pulse_width|Counter_pulse|counter_i\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \Pulse_width|Distance\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_pulse~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \segment_driver|uut|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Measurementcontrol|ALT_INV_LessThan1~5_combout\ : std_logic;

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

\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Measurementcontrol|Add0~0_combout\ & \Measurementcontrol|rom_addr[6]~10_combout\ & \Measurementcontrol|rom_addr[5]~8_combout\ & \Measurementcontrol|rom_addr[4]~6_combout\
& \Measurementcontrol|rom_addr[3]~4_combout\ & \Measurementcontrol|rom_addr[2]~2_combout\ & \Measurementcontrol|rom_addr[1]~0_combout\ & \Measurementcontrol|COUNTING|counter_i\(0));

\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\ <= \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ <= \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\ <= \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ <= \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ <= \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ <= \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ <= \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\segment_driver|uut1|count[15]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \segment_driver|uut1|count\(15));

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_pulse~input_o\ <= NOT \pulse~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\segment_driver|uut|ALT_INV_Mux6~0_combout\ <= NOT \segment_driver|uut|Mux6~0_combout\;
\Measurementcontrol|ALT_INV_LessThan1~5_combout\ <= NOT \Measurementcontrol|LessThan1~5_combout\;
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
	i => \Measurementcontrol|LessThan1~5_combout\,
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
	i => \Measurementcontrol|SERVO|pwm~q\,
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

-- Location: LCCOMB_X29_Y18_N12
\Measurementcontrol|count[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[0]~21_combout\ = \Measurementcontrol|count\(0) $ (VCC)
-- \Measurementcontrol|count[0]~22\ = CARRY(\Measurementcontrol|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(0),
	datad => VCC,
	combout => \Measurementcontrol|count[0]~21_combout\,
	cout => \Measurementcontrol|count[0]~22\);

-- Location: LCCOMB_X29_Y17_N10
\Measurementcontrol|count[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[15]~51_combout\ = (\Measurementcontrol|count\(15) & (!\Measurementcontrol|count[14]~50\)) # (!\Measurementcontrol|count\(15) & ((\Measurementcontrol|count[14]~50\) # (GND)))
-- \Measurementcontrol|count[15]~52\ = CARRY((!\Measurementcontrol|count[14]~50\) # (!\Measurementcontrol|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|count\(15),
	datad => VCC,
	cin => \Measurementcontrol|count[14]~50\,
	combout => \Measurementcontrol|count[15]~51_combout\,
	cout => \Measurementcontrol|count[15]~52\);

-- Location: LCCOMB_X29_Y17_N12
\Measurementcontrol|count[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[16]~53_combout\ = (\Measurementcontrol|count\(16) & (\Measurementcontrol|count[15]~52\ $ (GND))) # (!\Measurementcontrol|count\(16) & (!\Measurementcontrol|count[15]~52\ & VCC))
-- \Measurementcontrol|count[16]~54\ = CARRY((\Measurementcontrol|count\(16) & !\Measurementcontrol|count[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(16),
	datad => VCC,
	cin => \Measurementcontrol|count[15]~52\,
	combout => \Measurementcontrol|count[16]~53_combout\,
	cout => \Measurementcontrol|count[16]~54\);

-- Location: FF_X29_Y17_N13
\Measurementcontrol|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[16]~53_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(16));

-- Location: LCCOMB_X29_Y17_N14
\Measurementcontrol|count[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[17]~55_combout\ = (\Measurementcontrol|count\(17) & (!\Measurementcontrol|count[16]~54\)) # (!\Measurementcontrol|count\(17) & ((\Measurementcontrol|count[16]~54\) # (GND)))
-- \Measurementcontrol|count[17]~56\ = CARRY((!\Measurementcontrol|count[16]~54\) # (!\Measurementcontrol|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|count\(17),
	datad => VCC,
	cin => \Measurementcontrol|count[16]~54\,
	combout => \Measurementcontrol|count[17]~55_combout\,
	cout => \Measurementcontrol|count[17]~56\);

-- Location: FF_X29_Y17_N15
\Measurementcontrol|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[17]~55_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(17));

-- Location: LCCOMB_X29_Y17_N16
\Measurementcontrol|count[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[18]~57_combout\ = (\Measurementcontrol|count\(18) & (\Measurementcontrol|count[17]~56\ $ (GND))) # (!\Measurementcontrol|count\(18) & (!\Measurementcontrol|count[17]~56\ & VCC))
-- \Measurementcontrol|count[18]~58\ = CARRY((\Measurementcontrol|count\(18) & !\Measurementcontrol|count[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(18),
	datad => VCC,
	cin => \Measurementcontrol|count[17]~56\,
	combout => \Measurementcontrol|count[18]~57_combout\,
	cout => \Measurementcontrol|count[18]~58\);

-- Location: FF_X29_Y17_N17
\Measurementcontrol|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[18]~57_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(18));

-- Location: LCCOMB_X29_Y17_N18
\Measurementcontrol|count[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[19]~59_combout\ = (\Measurementcontrol|count\(19) & (!\Measurementcontrol|count[18]~58\)) # (!\Measurementcontrol|count\(19) & ((\Measurementcontrol|count[18]~58\) # (GND)))
-- \Measurementcontrol|count[19]~60\ = CARRY((!\Measurementcontrol|count[18]~58\) # (!\Measurementcontrol|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(19),
	datad => VCC,
	cin => \Measurementcontrol|count[18]~58\,
	combout => \Measurementcontrol|count[19]~59_combout\,
	cout => \Measurementcontrol|count[19]~60\);

-- Location: FF_X29_Y17_N19
\Measurementcontrol|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[19]~59_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(19));

-- Location: LCCOMB_X29_Y17_N20
\Measurementcontrol|count[20]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[20]~61_combout\ = \Measurementcontrol|count\(20) $ (!\Measurementcontrol|count[19]~60\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|count\(20),
	cin => \Measurementcontrol|count[19]~60\,
	combout => \Measurementcontrol|count[20]~61_combout\);

-- Location: FF_X29_Y17_N21
\Measurementcontrol|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[20]~61_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(20));

-- Location: LCCOMB_X29_Y17_N28
\Measurementcontrol|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|LessThan1~6_combout\ = (!\Measurementcontrol|count\(15) & (!\Measurementcontrol|count\(14) & !\Measurementcontrol|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|count\(15),
	datac => \Measurementcontrol|count\(14),
	datad => \Measurementcontrol|count\(13),
	combout => \Measurementcontrol|LessThan1~6_combout\);

-- Location: LCCOMB_X29_Y18_N8
\Measurementcontrol|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|LessThan0~0_combout\ = (((!\Measurementcontrol|count\(5) & !\Measurementcontrol|count\(4))) # (!\Measurementcontrol|count\(6))) # (!\Measurementcontrol|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(5),
	datab => \Measurementcontrol|count\(4),
	datac => \Measurementcontrol|count\(7),
	datad => \Measurementcontrol|count\(6),
	combout => \Measurementcontrol|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y18_N10
\Measurementcontrol|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|LessThan0~1_combout\ = ((!\Measurementcontrol|count\(8) & \Measurementcontrol|LessThan0~0_combout\)) # (!\Measurementcontrol|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(9),
	datab => \Measurementcontrol|count\(8),
	datac => \Measurementcontrol|LessThan0~0_combout\,
	combout => \Measurementcontrol|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y17_N22
\Measurementcontrol|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|LessThan0~2_combout\ = ((!\Measurementcontrol|count\(10) & (!\Measurementcontrol|count\(11) & \Measurementcontrol|LessThan0~1_combout\))) # (!\Measurementcontrol|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(10),
	datab => \Measurementcontrol|count\(12),
	datac => \Measurementcontrol|count\(11),
	datad => \Measurementcontrol|LessThan0~1_combout\,
	combout => \Measurementcontrol|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y17_N24
\Measurementcontrol|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|LessThan0~3_combout\ = (((\Measurementcontrol|LessThan1~6_combout\ & \Measurementcontrol|LessThan0~2_combout\)) # (!\Measurementcontrol|count\(17))) # (!\Measurementcontrol|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(16),
	datab => \Measurementcontrol|LessThan1~6_combout\,
	datac => \Measurementcontrol|LessThan0~2_combout\,
	datad => \Measurementcontrol|count\(17),
	combout => \Measurementcontrol|LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y17_N26
\Measurementcontrol|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|LessThan0~4_combout\ = (\Measurementcontrol|count\(20) & ((\Measurementcontrol|count\(18)) # ((\Measurementcontrol|count\(19)) # (!\Measurementcontrol|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(18),
	datab => \Measurementcontrol|count\(20),
	datac => \Measurementcontrol|count\(19),
	datad => \Measurementcontrol|LessThan0~3_combout\,
	combout => \Measurementcontrol|LessThan0~4_combout\);

-- Location: FF_X29_Y18_N13
\Measurementcontrol|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[0]~21_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(0));

-- Location: LCCOMB_X29_Y18_N14
\Measurementcontrol|count[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[1]~23_combout\ = (\Measurementcontrol|count\(1) & (!\Measurementcontrol|count[0]~22\)) # (!\Measurementcontrol|count\(1) & ((\Measurementcontrol|count[0]~22\) # (GND)))
-- \Measurementcontrol|count[1]~24\ = CARRY((!\Measurementcontrol|count[0]~22\) # (!\Measurementcontrol|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|count\(1),
	datad => VCC,
	cin => \Measurementcontrol|count[0]~22\,
	combout => \Measurementcontrol|count[1]~23_combout\,
	cout => \Measurementcontrol|count[1]~24\);

-- Location: FF_X29_Y18_N15
\Measurementcontrol|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[1]~23_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(1));

-- Location: LCCOMB_X29_Y18_N16
\Measurementcontrol|count[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[2]~25_combout\ = (\Measurementcontrol|count\(2) & (\Measurementcontrol|count[1]~24\ $ (GND))) # (!\Measurementcontrol|count\(2) & (!\Measurementcontrol|count[1]~24\ & VCC))
-- \Measurementcontrol|count[2]~26\ = CARRY((\Measurementcontrol|count\(2) & !\Measurementcontrol|count[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(2),
	datad => VCC,
	cin => \Measurementcontrol|count[1]~24\,
	combout => \Measurementcontrol|count[2]~25_combout\,
	cout => \Measurementcontrol|count[2]~26\);

-- Location: FF_X29_Y18_N17
\Measurementcontrol|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[2]~25_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(2));

-- Location: LCCOMB_X29_Y18_N18
\Measurementcontrol|count[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[3]~27_combout\ = (\Measurementcontrol|count\(3) & (!\Measurementcontrol|count[2]~26\)) # (!\Measurementcontrol|count\(3) & ((\Measurementcontrol|count[2]~26\) # (GND)))
-- \Measurementcontrol|count[3]~28\ = CARRY((!\Measurementcontrol|count[2]~26\) # (!\Measurementcontrol|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|count\(3),
	datad => VCC,
	cin => \Measurementcontrol|count[2]~26\,
	combout => \Measurementcontrol|count[3]~27_combout\,
	cout => \Measurementcontrol|count[3]~28\);

-- Location: FF_X29_Y18_N19
\Measurementcontrol|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[3]~27_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(3));

-- Location: LCCOMB_X29_Y18_N20
\Measurementcontrol|count[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[4]~29_combout\ = (\Measurementcontrol|count\(4) & (\Measurementcontrol|count[3]~28\ $ (GND))) # (!\Measurementcontrol|count\(4) & (!\Measurementcontrol|count[3]~28\ & VCC))
-- \Measurementcontrol|count[4]~30\ = CARRY((\Measurementcontrol|count\(4) & !\Measurementcontrol|count[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(4),
	datad => VCC,
	cin => \Measurementcontrol|count[3]~28\,
	combout => \Measurementcontrol|count[4]~29_combout\,
	cout => \Measurementcontrol|count[4]~30\);

-- Location: FF_X29_Y18_N21
\Measurementcontrol|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[4]~29_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(4));

-- Location: LCCOMB_X29_Y18_N22
\Measurementcontrol|count[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[5]~31_combout\ = (\Measurementcontrol|count\(5) & (!\Measurementcontrol|count[4]~30\)) # (!\Measurementcontrol|count\(5) & ((\Measurementcontrol|count[4]~30\) # (GND)))
-- \Measurementcontrol|count[5]~32\ = CARRY((!\Measurementcontrol|count[4]~30\) # (!\Measurementcontrol|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(5),
	datad => VCC,
	cin => \Measurementcontrol|count[4]~30\,
	combout => \Measurementcontrol|count[5]~31_combout\,
	cout => \Measurementcontrol|count[5]~32\);

-- Location: FF_X29_Y18_N23
\Measurementcontrol|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[5]~31_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(5));

-- Location: LCCOMB_X29_Y18_N24
\Measurementcontrol|count[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[6]~33_combout\ = (\Measurementcontrol|count\(6) & (\Measurementcontrol|count[5]~32\ $ (GND))) # (!\Measurementcontrol|count\(6) & (!\Measurementcontrol|count[5]~32\ & VCC))
-- \Measurementcontrol|count[6]~34\ = CARRY((\Measurementcontrol|count\(6) & !\Measurementcontrol|count[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(6),
	datad => VCC,
	cin => \Measurementcontrol|count[5]~32\,
	combout => \Measurementcontrol|count[6]~33_combout\,
	cout => \Measurementcontrol|count[6]~34\);

-- Location: FF_X29_Y18_N25
\Measurementcontrol|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[6]~33_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(6));

-- Location: LCCOMB_X29_Y18_N26
\Measurementcontrol|count[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[7]~35_combout\ = (\Measurementcontrol|count\(7) & (!\Measurementcontrol|count[6]~34\)) # (!\Measurementcontrol|count\(7) & ((\Measurementcontrol|count[6]~34\) # (GND)))
-- \Measurementcontrol|count[7]~36\ = CARRY((!\Measurementcontrol|count[6]~34\) # (!\Measurementcontrol|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|count\(7),
	datad => VCC,
	cin => \Measurementcontrol|count[6]~34\,
	combout => \Measurementcontrol|count[7]~35_combout\,
	cout => \Measurementcontrol|count[7]~36\);

-- Location: FF_X29_Y18_N27
\Measurementcontrol|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[7]~35_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(7));

-- Location: LCCOMB_X29_Y18_N28
\Measurementcontrol|count[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[8]~37_combout\ = (\Measurementcontrol|count\(8) & (\Measurementcontrol|count[7]~36\ $ (GND))) # (!\Measurementcontrol|count\(8) & (!\Measurementcontrol|count[7]~36\ & VCC))
-- \Measurementcontrol|count[8]~38\ = CARRY((\Measurementcontrol|count\(8) & !\Measurementcontrol|count[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(8),
	datad => VCC,
	cin => \Measurementcontrol|count[7]~36\,
	combout => \Measurementcontrol|count[8]~37_combout\,
	cout => \Measurementcontrol|count[8]~38\);

-- Location: FF_X29_Y18_N29
\Measurementcontrol|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[8]~37_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(8));

-- Location: LCCOMB_X29_Y18_N30
\Measurementcontrol|count[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[9]~39_combout\ = (\Measurementcontrol|count\(9) & (!\Measurementcontrol|count[8]~38\)) # (!\Measurementcontrol|count\(9) & ((\Measurementcontrol|count[8]~38\) # (GND)))
-- \Measurementcontrol|count[9]~40\ = CARRY((!\Measurementcontrol|count[8]~38\) # (!\Measurementcontrol|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(9),
	datad => VCC,
	cin => \Measurementcontrol|count[8]~38\,
	combout => \Measurementcontrol|count[9]~39_combout\,
	cout => \Measurementcontrol|count[9]~40\);

-- Location: FF_X29_Y18_N31
\Measurementcontrol|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[9]~39_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(9));

-- Location: LCCOMB_X29_Y17_N0
\Measurementcontrol|count[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[10]~41_combout\ = (\Measurementcontrol|count\(10) & (\Measurementcontrol|count[9]~40\ $ (GND))) # (!\Measurementcontrol|count\(10) & (!\Measurementcontrol|count[9]~40\ & VCC))
-- \Measurementcontrol|count[10]~42\ = CARRY((\Measurementcontrol|count\(10) & !\Measurementcontrol|count[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|count\(10),
	datad => VCC,
	cin => \Measurementcontrol|count[9]~40\,
	combout => \Measurementcontrol|count[10]~41_combout\,
	cout => \Measurementcontrol|count[10]~42\);

-- Location: FF_X29_Y17_N1
\Measurementcontrol|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[10]~41_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(10));

-- Location: LCCOMB_X29_Y17_N2
\Measurementcontrol|count[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[11]~43_combout\ = (\Measurementcontrol|count\(11) & (!\Measurementcontrol|count[10]~42\)) # (!\Measurementcontrol|count\(11) & ((\Measurementcontrol|count[10]~42\) # (GND)))
-- \Measurementcontrol|count[11]~44\ = CARRY((!\Measurementcontrol|count[10]~42\) # (!\Measurementcontrol|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|count\(11),
	datad => VCC,
	cin => \Measurementcontrol|count[10]~42\,
	combout => \Measurementcontrol|count[11]~43_combout\,
	cout => \Measurementcontrol|count[11]~44\);

-- Location: FF_X29_Y17_N3
\Measurementcontrol|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[11]~43_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(11));

-- Location: LCCOMB_X29_Y17_N4
\Measurementcontrol|count[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[12]~45_combout\ = (\Measurementcontrol|count\(12) & (\Measurementcontrol|count[11]~44\ $ (GND))) # (!\Measurementcontrol|count\(12) & (!\Measurementcontrol|count[11]~44\ & VCC))
-- \Measurementcontrol|count[12]~46\ = CARRY((\Measurementcontrol|count\(12) & !\Measurementcontrol|count[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|count\(12),
	datad => VCC,
	cin => \Measurementcontrol|count[11]~44\,
	combout => \Measurementcontrol|count[12]~45_combout\,
	cout => \Measurementcontrol|count[12]~46\);

-- Location: FF_X29_Y17_N5
\Measurementcontrol|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[12]~45_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(12));

-- Location: LCCOMB_X29_Y17_N6
\Measurementcontrol|count[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[13]~47_combout\ = (\Measurementcontrol|count\(13) & (!\Measurementcontrol|count[12]~46\)) # (!\Measurementcontrol|count\(13) & ((\Measurementcontrol|count[12]~46\) # (GND)))
-- \Measurementcontrol|count[13]~48\ = CARRY((!\Measurementcontrol|count[12]~46\) # (!\Measurementcontrol|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|count\(13),
	datad => VCC,
	cin => \Measurementcontrol|count[12]~46\,
	combout => \Measurementcontrol|count[13]~47_combout\,
	cout => \Measurementcontrol|count[13]~48\);

-- Location: FF_X29_Y17_N7
\Measurementcontrol|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[13]~47_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(13));

-- Location: LCCOMB_X29_Y17_N8
\Measurementcontrol|count[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|count[14]~49_combout\ = (\Measurementcontrol|count\(14) & (\Measurementcontrol|count[13]~48\ $ (GND))) # (!\Measurementcontrol|count\(14) & (!\Measurementcontrol|count[13]~48\ & VCC))
-- \Measurementcontrol|count[14]~50\ = CARRY((\Measurementcontrol|count\(14) & !\Measurementcontrol|count[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|count\(14),
	datad => VCC,
	cin => \Measurementcontrol|count[13]~48\,
	combout => \Measurementcontrol|count[14]~49_combout\,
	cout => \Measurementcontrol|count[14]~50\);

-- Location: FF_X29_Y17_N9
\Measurementcontrol|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[14]~49_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(14));

-- Location: FF_X29_Y17_N11
\Measurementcontrol|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|count[15]~51_combout\,
	sclr => \Measurementcontrol|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|count\(15));

-- Location: LCCOMB_X30_Y18_N22
\Measurementcontrol|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|LessThan1~3_combout\ = (!\Measurementcontrol|count\(15) & (!\Measurementcontrol|count\(9) & (!\Measurementcontrol|count\(13) & !\Measurementcontrol|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(15),
	datab => \Measurementcontrol|count\(9),
	datac => \Measurementcontrol|count\(13),
	datad => \Measurementcontrol|count\(14),
	combout => \Measurementcontrol|LessThan1~3_combout\);

-- Location: LCCOMB_X30_Y18_N8
\Measurementcontrol|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|LessThan1~0_combout\ = (!\Measurementcontrol|count\(17) & (!\Measurementcontrol|count\(20) & (!\Measurementcontrol|count\(12) & !\Measurementcontrol|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(17),
	datab => \Measurementcontrol|count\(20),
	datac => \Measurementcontrol|count\(12),
	datad => \Measurementcontrol|count\(16),
	combout => \Measurementcontrol|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y18_N0
\Measurementcontrol|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|LessThan1~1_combout\ = (((!\Measurementcontrol|count\(3) & !\Measurementcontrol|count\(2))) # (!\Measurementcontrol|count\(7))) # (!\Measurementcontrol|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(6),
	datab => \Measurementcontrol|count\(3),
	datac => \Measurementcontrol|count\(7),
	datad => \Measurementcontrol|count\(2),
	combout => \Measurementcontrol|LessThan1~1_combout\);

-- Location: LCCOMB_X29_Y18_N6
\Measurementcontrol|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|LessThan1~2_combout\ = (((\Measurementcontrol|LessThan1~1_combout\) # (!\Measurementcontrol|count\(5))) # (!\Measurementcontrol|count\(8))) # (!\Measurementcontrol|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(4),
	datab => \Measurementcontrol|count\(8),
	datac => \Measurementcontrol|count\(5),
	datad => \Measurementcontrol|LessThan1~1_combout\,
	combout => \Measurementcontrol|LessThan1~2_combout\);

-- Location: LCCOMB_X29_Y17_N30
\Measurementcontrol|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|LessThan1~4_combout\ = (!\Measurementcontrol|count\(19) & (!\Measurementcontrol|count\(10) & (!\Measurementcontrol|count\(11) & !\Measurementcontrol|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|count\(19),
	datab => \Measurementcontrol|count\(10),
	datac => \Measurementcontrol|count\(11),
	datad => \Measurementcontrol|count\(18),
	combout => \Measurementcontrol|LessThan1~4_combout\);

-- Location: LCCOMB_X30_Y18_N28
\Measurementcontrol|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|LessThan1~5_combout\ = (\Measurementcontrol|LessThan1~3_combout\ & (\Measurementcontrol|LessThan1~0_combout\ & (\Measurementcontrol|LessThan1~2_combout\ & \Measurementcontrol|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|LessThan1~3_combout\,
	datab => \Measurementcontrol|LessThan1~0_combout\,
	datac => \Measurementcontrol|LessThan1~2_combout\,
	datad => \Measurementcontrol|LessThan1~4_combout\,
	combout => \Measurementcontrol|LessThan1~5_combout\);

-- Location: LCCOMB_X12_Y11_N12
\Measurementcontrol|SERVO|count[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[0]~21_combout\ = \Measurementcontrol|SERVO|count\(0) $ (VCC)
-- \Measurementcontrol|SERVO|count[0]~22\ = CARRY(\Measurementcontrol|SERVO|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(0),
	datad => VCC,
	combout => \Measurementcontrol|SERVO|count[0]~21_combout\,
	cout => \Measurementcontrol|SERVO|count[0]~22\);

-- Location: LCCOMB_X12_Y10_N26
\Measurementcontrol|SERVO|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan0~2_combout\ = (!\Measurementcontrol|SERVO|count\(15) & (!\Measurementcontrol|SERVO|count\(14) & !\Measurementcontrol|SERVO|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(15),
	datac => \Measurementcontrol|SERVO|count\(14),
	datad => \Measurementcontrol|SERVO|count\(13),
	combout => \Measurementcontrol|SERVO|LessThan0~2_combout\);

-- Location: LCCOMB_X12_Y11_N4
\Measurementcontrol|SERVO|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan0~3_combout\ = (((!\Measurementcontrol|SERVO|count\(5) & !\Measurementcontrol|SERVO|count\(4))) # (!\Measurementcontrol|SERVO|count\(6))) # (!\Measurementcontrol|SERVO|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(7),
	datab => \Measurementcontrol|SERVO|count\(6),
	datac => \Measurementcontrol|SERVO|count\(5),
	datad => \Measurementcontrol|SERVO|count\(4),
	combout => \Measurementcontrol|SERVO|LessThan0~3_combout\);

-- Location: LCCOMB_X12_Y11_N10
\Measurementcontrol|SERVO|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan0~4_combout\ = (\Measurementcontrol|SERVO|count\(9) & ((\Measurementcontrol|SERVO|count\(8)) # (!\Measurementcontrol|SERVO|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|LessThan0~3_combout\,
	datac => \Measurementcontrol|SERVO|count\(9),
	datad => \Measurementcontrol|SERVO|count\(8),
	combout => \Measurementcontrol|SERVO|LessThan0~4_combout\);

-- Location: LCCOMB_X12_Y10_N24
\Measurementcontrol|SERVO|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan0~5_combout\ = (\Measurementcontrol|SERVO|count\(12) & ((\Measurementcontrol|SERVO|count\(10)) # ((\Measurementcontrol|SERVO|LessThan0~4_combout\) # (\Measurementcontrol|SERVO|count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(10),
	datab => \Measurementcontrol|SERVO|count\(12),
	datac => \Measurementcontrol|SERVO|LessThan0~4_combout\,
	datad => \Measurementcontrol|SERVO|count\(11),
	combout => \Measurementcontrol|SERVO|LessThan0~5_combout\);

-- Location: LCCOMB_X12_Y10_N22
\Measurementcontrol|SERVO|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan0~6_combout\ = (((\Measurementcontrol|SERVO|LessThan0~2_combout\ & !\Measurementcontrol|SERVO|LessThan0~5_combout\)) # (!\Measurementcontrol|SERVO|count\(16))) # (!\Measurementcontrol|SERVO|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|LessThan0~2_combout\,
	datab => \Measurementcontrol|SERVO|LessThan0~5_combout\,
	datac => \Measurementcontrol|SERVO|count\(17),
	datad => \Measurementcontrol|SERVO|count\(16),
	combout => \Measurementcontrol|SERVO|LessThan0~6_combout\);

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

-- Location: LCCOMB_X12_Y10_N14
\Measurementcontrol|SERVO|count[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[17]~55_combout\ = (\Measurementcontrol|SERVO|count\(17) & (!\Measurementcontrol|SERVO|count[16]~54\)) # (!\Measurementcontrol|SERVO|count\(17) & ((\Measurementcontrol|SERVO|count[16]~54\) # (GND)))
-- \Measurementcontrol|SERVO|count[17]~56\ = CARRY((!\Measurementcontrol|SERVO|count[16]~54\) # (!\Measurementcontrol|SERVO|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(17),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[16]~54\,
	combout => \Measurementcontrol|SERVO|count[17]~55_combout\,
	cout => \Measurementcontrol|SERVO|count[17]~56\);

-- Location: LCCOMB_X12_Y10_N16
\Measurementcontrol|SERVO|count[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[18]~57_combout\ = (\Measurementcontrol|SERVO|count\(18) & (\Measurementcontrol|SERVO|count[17]~56\ $ (GND))) # (!\Measurementcontrol|SERVO|count\(18) & (!\Measurementcontrol|SERVO|count[17]~56\ & VCC))
-- \Measurementcontrol|SERVO|count[18]~58\ = CARRY((\Measurementcontrol|SERVO|count\(18) & !\Measurementcontrol|SERVO|count[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(18),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[17]~56\,
	combout => \Measurementcontrol|SERVO|count[18]~57_combout\,
	cout => \Measurementcontrol|SERVO|count[18]~58\);

-- Location: FF_X12_Y10_N17
\Measurementcontrol|SERVO|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[18]~57_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(18));

-- Location: LCCOMB_X12_Y10_N18
\Measurementcontrol|SERVO|count[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[19]~60_combout\ = (\Measurementcontrol|SERVO|count\(19) & (!\Measurementcontrol|SERVO|count[18]~58\)) # (!\Measurementcontrol|SERVO|count\(19) & ((\Measurementcontrol|SERVO|count[18]~58\) # (GND)))
-- \Measurementcontrol|SERVO|count[19]~61\ = CARRY((!\Measurementcontrol|SERVO|count[18]~58\) # (!\Measurementcontrol|SERVO|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(19),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[18]~58\,
	combout => \Measurementcontrol|SERVO|count[19]~60_combout\,
	cout => \Measurementcontrol|SERVO|count[19]~61\);

-- Location: FF_X12_Y10_N19
\Measurementcontrol|SERVO|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[19]~60_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(19));

-- Location: LCCOMB_X11_Y10_N16
\Measurementcontrol|SERVO|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~0_combout\ = (!\Measurementcontrol|SERVO|count\(19) & !\Measurementcontrol|SERVO|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(19),
	datad => \Measurementcontrol|SERVO|count\(18),
	combout => \Measurementcontrol|SERVO|LessThan1~0_combout\);

-- Location: LCCOMB_X12_Y10_N20
\Measurementcontrol|SERVO|count[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[20]~62_combout\ = \Measurementcontrol|SERVO|count\(20) $ (!\Measurementcontrol|SERVO|count[19]~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(20),
	cin => \Measurementcontrol|SERVO|count[19]~61\,
	combout => \Measurementcontrol|SERVO|count[20]~62_combout\);

-- Location: FF_X12_Y10_N21
\Measurementcontrol|SERVO|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[20]~62_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(20));

-- Location: LCCOMB_X12_Y10_N28
\Measurementcontrol|SERVO|count[2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[2]~59_combout\ = ((\Measurementcontrol|SERVO|count\(20) & ((!\Measurementcontrol|SERVO|LessThan1~0_combout\) # (!\Measurementcontrol|SERVO|LessThan0~6_combout\)))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|LessThan0~6_combout\,
	datab => \reset~input_o\,
	datac => \Measurementcontrol|SERVO|LessThan1~0_combout\,
	datad => \Measurementcontrol|SERVO|count\(20),
	combout => \Measurementcontrol|SERVO|count[2]~59_combout\);

-- Location: FF_X12_Y11_N13
\Measurementcontrol|SERVO|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[0]~21_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(0));

-- Location: LCCOMB_X12_Y11_N14
\Measurementcontrol|SERVO|count[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[1]~23_combout\ = (\Measurementcontrol|SERVO|count\(1) & (!\Measurementcontrol|SERVO|count[0]~22\)) # (!\Measurementcontrol|SERVO|count\(1) & ((\Measurementcontrol|SERVO|count[0]~22\) # (GND)))
-- \Measurementcontrol|SERVO|count[1]~24\ = CARRY((!\Measurementcontrol|SERVO|count[0]~22\) # (!\Measurementcontrol|SERVO|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(1),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[0]~22\,
	combout => \Measurementcontrol|SERVO|count[1]~23_combout\,
	cout => \Measurementcontrol|SERVO|count[1]~24\);

-- Location: FF_X12_Y11_N15
\Measurementcontrol|SERVO|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[1]~23_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(1));

-- Location: LCCOMB_X12_Y11_N16
\Measurementcontrol|SERVO|count[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[2]~25_combout\ = (\Measurementcontrol|SERVO|count\(2) & (\Measurementcontrol|SERVO|count[1]~24\ $ (GND))) # (!\Measurementcontrol|SERVO|count\(2) & (!\Measurementcontrol|SERVO|count[1]~24\ & VCC))
-- \Measurementcontrol|SERVO|count[2]~26\ = CARRY((\Measurementcontrol|SERVO|count\(2) & !\Measurementcontrol|SERVO|count[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(2),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[1]~24\,
	combout => \Measurementcontrol|SERVO|count[2]~25_combout\,
	cout => \Measurementcontrol|SERVO|count[2]~26\);

-- Location: FF_X12_Y11_N17
\Measurementcontrol|SERVO|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[2]~25_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(2));

-- Location: LCCOMB_X12_Y11_N18
\Measurementcontrol|SERVO|count[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[3]~27_combout\ = (\Measurementcontrol|SERVO|count\(3) & (!\Measurementcontrol|SERVO|count[2]~26\)) # (!\Measurementcontrol|SERVO|count\(3) & ((\Measurementcontrol|SERVO|count[2]~26\) # (GND)))
-- \Measurementcontrol|SERVO|count[3]~28\ = CARRY((!\Measurementcontrol|SERVO|count[2]~26\) # (!\Measurementcontrol|SERVO|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(3),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[2]~26\,
	combout => \Measurementcontrol|SERVO|count[3]~27_combout\,
	cout => \Measurementcontrol|SERVO|count[3]~28\);

-- Location: FF_X12_Y11_N19
\Measurementcontrol|SERVO|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[3]~27_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(3));

-- Location: LCCOMB_X12_Y11_N20
\Measurementcontrol|SERVO|count[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[4]~29_combout\ = (\Measurementcontrol|SERVO|count\(4) & (\Measurementcontrol|SERVO|count[3]~28\ $ (GND))) # (!\Measurementcontrol|SERVO|count\(4) & (!\Measurementcontrol|SERVO|count[3]~28\ & VCC))
-- \Measurementcontrol|SERVO|count[4]~30\ = CARRY((\Measurementcontrol|SERVO|count\(4) & !\Measurementcontrol|SERVO|count[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(4),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[3]~28\,
	combout => \Measurementcontrol|SERVO|count[4]~29_combout\,
	cout => \Measurementcontrol|SERVO|count[4]~30\);

-- Location: FF_X12_Y11_N21
\Measurementcontrol|SERVO|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[4]~29_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(4));

-- Location: LCCOMB_X12_Y11_N22
\Measurementcontrol|SERVO|count[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[5]~31_combout\ = (\Measurementcontrol|SERVO|count\(5) & (!\Measurementcontrol|SERVO|count[4]~30\)) # (!\Measurementcontrol|SERVO|count\(5) & ((\Measurementcontrol|SERVO|count[4]~30\) # (GND)))
-- \Measurementcontrol|SERVO|count[5]~32\ = CARRY((!\Measurementcontrol|SERVO|count[4]~30\) # (!\Measurementcontrol|SERVO|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(5),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[4]~30\,
	combout => \Measurementcontrol|SERVO|count[5]~31_combout\,
	cout => \Measurementcontrol|SERVO|count[5]~32\);

-- Location: FF_X12_Y11_N23
\Measurementcontrol|SERVO|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[5]~31_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(5));

-- Location: LCCOMB_X12_Y11_N24
\Measurementcontrol|SERVO|count[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[6]~33_combout\ = (\Measurementcontrol|SERVO|count\(6) & (\Measurementcontrol|SERVO|count[5]~32\ $ (GND))) # (!\Measurementcontrol|SERVO|count\(6) & (!\Measurementcontrol|SERVO|count[5]~32\ & VCC))
-- \Measurementcontrol|SERVO|count[6]~34\ = CARRY((\Measurementcontrol|SERVO|count\(6) & !\Measurementcontrol|SERVO|count[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(6),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[5]~32\,
	combout => \Measurementcontrol|SERVO|count[6]~33_combout\,
	cout => \Measurementcontrol|SERVO|count[6]~34\);

-- Location: FF_X12_Y11_N25
\Measurementcontrol|SERVO|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[6]~33_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(6));

-- Location: LCCOMB_X12_Y11_N26
\Measurementcontrol|SERVO|count[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[7]~35_combout\ = (\Measurementcontrol|SERVO|count\(7) & (!\Measurementcontrol|SERVO|count[6]~34\)) # (!\Measurementcontrol|SERVO|count\(7) & ((\Measurementcontrol|SERVO|count[6]~34\) # (GND)))
-- \Measurementcontrol|SERVO|count[7]~36\ = CARRY((!\Measurementcontrol|SERVO|count[6]~34\) # (!\Measurementcontrol|SERVO|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(7),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[6]~34\,
	combout => \Measurementcontrol|SERVO|count[7]~35_combout\,
	cout => \Measurementcontrol|SERVO|count[7]~36\);

-- Location: FF_X12_Y11_N27
\Measurementcontrol|SERVO|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[7]~35_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(7));

-- Location: LCCOMB_X12_Y11_N28
\Measurementcontrol|SERVO|count[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[8]~37_combout\ = (\Measurementcontrol|SERVO|count\(8) & (\Measurementcontrol|SERVO|count[7]~36\ $ (GND))) # (!\Measurementcontrol|SERVO|count\(8) & (!\Measurementcontrol|SERVO|count[7]~36\ & VCC))
-- \Measurementcontrol|SERVO|count[8]~38\ = CARRY((\Measurementcontrol|SERVO|count\(8) & !\Measurementcontrol|SERVO|count[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(8),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[7]~36\,
	combout => \Measurementcontrol|SERVO|count[8]~37_combout\,
	cout => \Measurementcontrol|SERVO|count[8]~38\);

-- Location: FF_X12_Y11_N29
\Measurementcontrol|SERVO|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[8]~37_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(8));

-- Location: LCCOMB_X12_Y11_N30
\Measurementcontrol|SERVO|count[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[9]~39_combout\ = (\Measurementcontrol|SERVO|count\(9) & (!\Measurementcontrol|SERVO|count[8]~38\)) # (!\Measurementcontrol|SERVO|count\(9) & ((\Measurementcontrol|SERVO|count[8]~38\) # (GND)))
-- \Measurementcontrol|SERVO|count[9]~40\ = CARRY((!\Measurementcontrol|SERVO|count[8]~38\) # (!\Measurementcontrol|SERVO|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(9),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[8]~38\,
	combout => \Measurementcontrol|SERVO|count[9]~39_combout\,
	cout => \Measurementcontrol|SERVO|count[9]~40\);

-- Location: FF_X12_Y11_N31
\Measurementcontrol|SERVO|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[9]~39_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(9));

-- Location: LCCOMB_X12_Y10_N0
\Measurementcontrol|SERVO|count[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[10]~41_combout\ = (\Measurementcontrol|SERVO|count\(10) & (\Measurementcontrol|SERVO|count[9]~40\ $ (GND))) # (!\Measurementcontrol|SERVO|count\(10) & (!\Measurementcontrol|SERVO|count[9]~40\ & VCC))
-- \Measurementcontrol|SERVO|count[10]~42\ = CARRY((\Measurementcontrol|SERVO|count\(10) & !\Measurementcontrol|SERVO|count[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(10),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[9]~40\,
	combout => \Measurementcontrol|SERVO|count[10]~41_combout\,
	cout => \Measurementcontrol|SERVO|count[10]~42\);

-- Location: FF_X12_Y10_N1
\Measurementcontrol|SERVO|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[10]~41_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(10));

-- Location: LCCOMB_X12_Y10_N2
\Measurementcontrol|SERVO|count[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[11]~43_combout\ = (\Measurementcontrol|SERVO|count\(11) & (!\Measurementcontrol|SERVO|count[10]~42\)) # (!\Measurementcontrol|SERVO|count\(11) & ((\Measurementcontrol|SERVO|count[10]~42\) # (GND)))
-- \Measurementcontrol|SERVO|count[11]~44\ = CARRY((!\Measurementcontrol|SERVO|count[10]~42\) # (!\Measurementcontrol|SERVO|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(11),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[10]~42\,
	combout => \Measurementcontrol|SERVO|count[11]~43_combout\,
	cout => \Measurementcontrol|SERVO|count[11]~44\);

-- Location: FF_X12_Y10_N3
\Measurementcontrol|SERVO|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[11]~43_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(11));

-- Location: LCCOMB_X12_Y10_N4
\Measurementcontrol|SERVO|count[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[12]~45_combout\ = (\Measurementcontrol|SERVO|count\(12) & (\Measurementcontrol|SERVO|count[11]~44\ $ (GND))) # (!\Measurementcontrol|SERVO|count\(12) & (!\Measurementcontrol|SERVO|count[11]~44\ & VCC))
-- \Measurementcontrol|SERVO|count[12]~46\ = CARRY((\Measurementcontrol|SERVO|count\(12) & !\Measurementcontrol|SERVO|count[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(12),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[11]~44\,
	combout => \Measurementcontrol|SERVO|count[12]~45_combout\,
	cout => \Measurementcontrol|SERVO|count[12]~46\);

-- Location: FF_X12_Y10_N5
\Measurementcontrol|SERVO|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[12]~45_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(12));

-- Location: LCCOMB_X12_Y10_N6
\Measurementcontrol|SERVO|count[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[13]~47_combout\ = (\Measurementcontrol|SERVO|count\(13) & (!\Measurementcontrol|SERVO|count[12]~46\)) # (!\Measurementcontrol|SERVO|count\(13) & ((\Measurementcontrol|SERVO|count[12]~46\) # (GND)))
-- \Measurementcontrol|SERVO|count[13]~48\ = CARRY((!\Measurementcontrol|SERVO|count[12]~46\) # (!\Measurementcontrol|SERVO|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(13),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[12]~46\,
	combout => \Measurementcontrol|SERVO|count[13]~47_combout\,
	cout => \Measurementcontrol|SERVO|count[13]~48\);

-- Location: FF_X12_Y10_N7
\Measurementcontrol|SERVO|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[13]~47_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(13));

-- Location: LCCOMB_X12_Y10_N8
\Measurementcontrol|SERVO|count[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[14]~49_combout\ = (\Measurementcontrol|SERVO|count\(14) & (\Measurementcontrol|SERVO|count[13]~48\ $ (GND))) # (!\Measurementcontrol|SERVO|count\(14) & (!\Measurementcontrol|SERVO|count[13]~48\ & VCC))
-- \Measurementcontrol|SERVO|count[14]~50\ = CARRY((\Measurementcontrol|SERVO|count\(14) & !\Measurementcontrol|SERVO|count[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(14),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[13]~48\,
	combout => \Measurementcontrol|SERVO|count[14]~49_combout\,
	cout => \Measurementcontrol|SERVO|count[14]~50\);

-- Location: FF_X12_Y10_N9
\Measurementcontrol|SERVO|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[14]~49_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(14));

-- Location: LCCOMB_X12_Y10_N10
\Measurementcontrol|SERVO|count[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[15]~51_combout\ = (\Measurementcontrol|SERVO|count\(15) & (!\Measurementcontrol|SERVO|count[14]~50\)) # (!\Measurementcontrol|SERVO|count\(15) & ((\Measurementcontrol|SERVO|count[14]~50\) # (GND)))
-- \Measurementcontrol|SERVO|count[15]~52\ = CARRY((!\Measurementcontrol|SERVO|count[14]~50\) # (!\Measurementcontrol|SERVO|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(15),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[14]~50\,
	combout => \Measurementcontrol|SERVO|count[15]~51_combout\,
	cout => \Measurementcontrol|SERVO|count[15]~52\);

-- Location: FF_X12_Y10_N11
\Measurementcontrol|SERVO|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[15]~51_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(15));

-- Location: LCCOMB_X12_Y10_N12
\Measurementcontrol|SERVO|count[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|count[16]~53_combout\ = (\Measurementcontrol|SERVO|count\(16) & (\Measurementcontrol|SERVO|count[15]~52\ $ (GND))) # (!\Measurementcontrol|SERVO|count\(16) & (!\Measurementcontrol|SERVO|count[15]~52\ & VCC))
-- \Measurementcontrol|SERVO|count[16]~54\ = CARRY((\Measurementcontrol|SERVO|count\(16) & !\Measurementcontrol|SERVO|count[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(16),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|count[15]~52\,
	combout => \Measurementcontrol|SERVO|count[16]~53_combout\,
	cout => \Measurementcontrol|SERVO|count[16]~54\);

-- Location: FF_X12_Y10_N13
\Measurementcontrol|SERVO|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[16]~53_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(16));

-- Location: FF_X12_Y10_N15
\Measurementcontrol|SERVO|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|count[17]~55_combout\,
	sclr => \Measurementcontrol|SERVO|count[2]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|count\(17));

-- Location: LCCOMB_X12_Y10_N30
\Measurementcontrol|SERVO|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan0~7_combout\ = (\Measurementcontrol|SERVO|count\(20) & ((\Measurementcontrol|SERVO|count\(19)) # ((\Measurementcontrol|SERVO|count\(18)) # (!\Measurementcontrol|SERVO|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(19),
	datab => \Measurementcontrol|SERVO|count\(18),
	datac => \Measurementcontrol|SERVO|LessThan0~6_combout\,
	datad => \Measurementcontrol|SERVO|count\(20),
	combout => \Measurementcontrol|SERVO|LessThan0~7_combout\);

-- Location: FF_X12_Y10_N31
\Measurementcontrol|SERVO|step_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|LessThan0~7_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|step_done~q\);

-- Location: LCCOMB_X14_Y10_N20
\Measurementcontrol|COUNTING|counter_i[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|COUNTING|counter_i[0]~5_combout\ = \Measurementcontrol|SERVO|step_done~q\ $ (\Measurementcontrol|COUNTING|counter_i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|step_done~q\,
	datac => \Measurementcontrol|COUNTING|counter_i\(0),
	combout => \Measurementcontrol|COUNTING|counter_i[0]~5_combout\);

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

-- Location: FF_X14_Y10_N21
\Measurementcontrol|COUNTING|counter_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|COUNTING|counter_i[0]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|COUNTING|counter_i\(0));

-- Location: LCCOMB_X14_Y10_N22
\Measurementcontrol|COUNTING|counter_i[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|COUNTING|counter_i[1]~6_combout\ = (\Measurementcontrol|COUNTING|counter_i\(1) & (\Measurementcontrol|COUNTING|counter_i\(0) $ (VCC))) # (!\Measurementcontrol|COUNTING|counter_i\(1) & (\Measurementcontrol|COUNTING|counter_i\(0) & VCC))
-- \Measurementcontrol|COUNTING|counter_i[1]~7\ = CARRY((\Measurementcontrol|COUNTING|counter_i\(1) & \Measurementcontrol|COUNTING|counter_i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|COUNTING|counter_i\(1),
	datab => \Measurementcontrol|COUNTING|counter_i\(0),
	datad => VCC,
	combout => \Measurementcontrol|COUNTING|counter_i[1]~6_combout\,
	cout => \Measurementcontrol|COUNTING|counter_i[1]~7\);

-- Location: FF_X14_Y10_N23
\Measurementcontrol|COUNTING|counter_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|COUNTING|counter_i[1]~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Measurementcontrol|SERVO|step_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|COUNTING|counter_i\(1));

-- Location: LCCOMB_X14_Y10_N2
\Measurementcontrol|rom_addr[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|rom_addr[1]~0_combout\ = (\Measurementcontrol|COUNTING|counter_i\(1) & (\Measurementcontrol|COUNTING|counter_i\(0) $ (VCC))) # (!\Measurementcontrol|COUNTING|counter_i\(1) & (\Measurementcontrol|COUNTING|counter_i\(0) & VCC))
-- \Measurementcontrol|rom_addr[1]~1\ = CARRY((\Measurementcontrol|COUNTING|counter_i\(1) & \Measurementcontrol|COUNTING|counter_i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|COUNTING|counter_i\(1),
	datab => \Measurementcontrol|COUNTING|counter_i\(0),
	datad => VCC,
	combout => \Measurementcontrol|rom_addr[1]~0_combout\,
	cout => \Measurementcontrol|rom_addr[1]~1\);

-- Location: LCCOMB_X14_Y10_N24
\Measurementcontrol|COUNTING|counter_i[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|COUNTING|counter_i[2]~8_combout\ = (\Measurementcontrol|COUNTING|counter_i\(2) & (!\Measurementcontrol|COUNTING|counter_i[1]~7\)) # (!\Measurementcontrol|COUNTING|counter_i\(2) & ((\Measurementcontrol|COUNTING|counter_i[1]~7\) # 
-- (GND)))
-- \Measurementcontrol|COUNTING|counter_i[2]~9\ = CARRY((!\Measurementcontrol|COUNTING|counter_i[1]~7\) # (!\Measurementcontrol|COUNTING|counter_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|COUNTING|counter_i\(2),
	datad => VCC,
	cin => \Measurementcontrol|COUNTING|counter_i[1]~7\,
	combout => \Measurementcontrol|COUNTING|counter_i[2]~8_combout\,
	cout => \Measurementcontrol|COUNTING|counter_i[2]~9\);

-- Location: FF_X14_Y10_N25
\Measurementcontrol|COUNTING|counter_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|COUNTING|counter_i[2]~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Measurementcontrol|SERVO|step_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|COUNTING|counter_i\(2));

-- Location: LCCOMB_X14_Y10_N4
\Measurementcontrol|rom_addr[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|rom_addr[2]~2_combout\ = (\Measurementcontrol|COUNTING|counter_i\(1) & ((\Measurementcontrol|COUNTING|counter_i\(2) & (\Measurementcontrol|rom_addr[1]~1\ & VCC)) # (!\Measurementcontrol|COUNTING|counter_i\(2) & 
-- (!\Measurementcontrol|rom_addr[1]~1\)))) # (!\Measurementcontrol|COUNTING|counter_i\(1) & ((\Measurementcontrol|COUNTING|counter_i\(2) & (!\Measurementcontrol|rom_addr[1]~1\)) # (!\Measurementcontrol|COUNTING|counter_i\(2) & 
-- ((\Measurementcontrol|rom_addr[1]~1\) # (GND)))))
-- \Measurementcontrol|rom_addr[2]~3\ = CARRY((\Measurementcontrol|COUNTING|counter_i\(1) & (!\Measurementcontrol|COUNTING|counter_i\(2) & !\Measurementcontrol|rom_addr[1]~1\)) # (!\Measurementcontrol|COUNTING|counter_i\(1) & 
-- ((!\Measurementcontrol|rom_addr[1]~1\) # (!\Measurementcontrol|COUNTING|counter_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|COUNTING|counter_i\(1),
	datab => \Measurementcontrol|COUNTING|counter_i\(2),
	datad => VCC,
	cin => \Measurementcontrol|rom_addr[1]~1\,
	combout => \Measurementcontrol|rom_addr[2]~2_combout\,
	cout => \Measurementcontrol|rom_addr[2]~3\);

-- Location: LCCOMB_X14_Y10_N26
\Measurementcontrol|COUNTING|counter_i[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|COUNTING|counter_i[3]~10_combout\ = (\Measurementcontrol|COUNTING|counter_i\(3) & (\Measurementcontrol|COUNTING|counter_i[2]~9\ $ (GND))) # (!\Measurementcontrol|COUNTING|counter_i\(3) & (!\Measurementcontrol|COUNTING|counter_i[2]~9\ & 
-- VCC))
-- \Measurementcontrol|COUNTING|counter_i[3]~11\ = CARRY((\Measurementcontrol|COUNTING|counter_i\(3) & !\Measurementcontrol|COUNTING|counter_i[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|COUNTING|counter_i\(3),
	datad => VCC,
	cin => \Measurementcontrol|COUNTING|counter_i[2]~9\,
	combout => \Measurementcontrol|COUNTING|counter_i[3]~10_combout\,
	cout => \Measurementcontrol|COUNTING|counter_i[3]~11\);

-- Location: FF_X14_Y10_N27
\Measurementcontrol|COUNTING|counter_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|COUNTING|counter_i[3]~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Measurementcontrol|SERVO|step_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|COUNTING|counter_i\(3));

-- Location: LCCOMB_X14_Y10_N6
\Measurementcontrol|rom_addr[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|rom_addr[3]~4_combout\ = ((\Measurementcontrol|COUNTING|counter_i\(3) $ (\Measurementcontrol|COUNTING|counter_i\(2) $ (!\Measurementcontrol|rom_addr[2]~3\)))) # (GND)
-- \Measurementcontrol|rom_addr[3]~5\ = CARRY((\Measurementcontrol|COUNTING|counter_i\(3) & ((\Measurementcontrol|COUNTING|counter_i\(2)) # (!\Measurementcontrol|rom_addr[2]~3\))) # (!\Measurementcontrol|COUNTING|counter_i\(3) & 
-- (\Measurementcontrol|COUNTING|counter_i\(2) & !\Measurementcontrol|rom_addr[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|COUNTING|counter_i\(3),
	datab => \Measurementcontrol|COUNTING|counter_i\(2),
	datad => VCC,
	cin => \Measurementcontrol|rom_addr[2]~3\,
	combout => \Measurementcontrol|rom_addr[3]~4_combout\,
	cout => \Measurementcontrol|rom_addr[3]~5\);

-- Location: LCCOMB_X14_Y10_N28
\Measurementcontrol|COUNTING|counter_i[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|COUNTING|counter_i[4]~12_combout\ = (\Measurementcontrol|COUNTING|counter_i\(4) & (!\Measurementcontrol|COUNTING|counter_i[3]~11\)) # (!\Measurementcontrol|COUNTING|counter_i\(4) & ((\Measurementcontrol|COUNTING|counter_i[3]~11\) # 
-- (GND)))
-- \Measurementcontrol|COUNTING|counter_i[4]~13\ = CARRY((!\Measurementcontrol|COUNTING|counter_i[3]~11\) # (!\Measurementcontrol|COUNTING|counter_i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|COUNTING|counter_i\(4),
	datad => VCC,
	cin => \Measurementcontrol|COUNTING|counter_i[3]~11\,
	combout => \Measurementcontrol|COUNTING|counter_i[4]~12_combout\,
	cout => \Measurementcontrol|COUNTING|counter_i[4]~13\);

-- Location: FF_X14_Y10_N29
\Measurementcontrol|COUNTING|counter_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|COUNTING|counter_i[4]~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Measurementcontrol|SERVO|step_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|COUNTING|counter_i\(4));

-- Location: LCCOMB_X14_Y10_N8
\Measurementcontrol|rom_addr[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|rom_addr[4]~6_combout\ = (\Measurementcontrol|COUNTING|counter_i\(3) & ((\Measurementcontrol|COUNTING|counter_i\(4) & (\Measurementcontrol|rom_addr[3]~5\ & VCC)) # (!\Measurementcontrol|COUNTING|counter_i\(4) & 
-- (!\Measurementcontrol|rom_addr[3]~5\)))) # (!\Measurementcontrol|COUNTING|counter_i\(3) & ((\Measurementcontrol|COUNTING|counter_i\(4) & (!\Measurementcontrol|rom_addr[3]~5\)) # (!\Measurementcontrol|COUNTING|counter_i\(4) & 
-- ((\Measurementcontrol|rom_addr[3]~5\) # (GND)))))
-- \Measurementcontrol|rom_addr[4]~7\ = CARRY((\Measurementcontrol|COUNTING|counter_i\(3) & (!\Measurementcontrol|COUNTING|counter_i\(4) & !\Measurementcontrol|rom_addr[3]~5\)) # (!\Measurementcontrol|COUNTING|counter_i\(3) & 
-- ((!\Measurementcontrol|rom_addr[3]~5\) # (!\Measurementcontrol|COUNTING|counter_i\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|COUNTING|counter_i\(3),
	datab => \Measurementcontrol|COUNTING|counter_i\(4),
	datad => VCC,
	cin => \Measurementcontrol|rom_addr[3]~5\,
	combout => \Measurementcontrol|rom_addr[4]~6_combout\,
	cout => \Measurementcontrol|rom_addr[4]~7\);

-- Location: LCCOMB_X14_Y10_N30
\Measurementcontrol|COUNTING|counter_i[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|COUNTING|counter_i[5]~14_combout\ = \Measurementcontrol|COUNTING|counter_i\(5) $ (!\Measurementcontrol|COUNTING|counter_i[4]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|COUNTING|counter_i\(5),
	cin => \Measurementcontrol|COUNTING|counter_i[4]~13\,
	combout => \Measurementcontrol|COUNTING|counter_i[5]~14_combout\);

-- Location: FF_X14_Y10_N31
\Measurementcontrol|COUNTING|counter_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|COUNTING|counter_i[5]~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Measurementcontrol|SERVO|step_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|COUNTING|counter_i\(5));

-- Location: LCCOMB_X14_Y10_N10
\Measurementcontrol|rom_addr[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|rom_addr[5]~8_combout\ = ((\Measurementcontrol|COUNTING|counter_i\(5) $ (\Measurementcontrol|COUNTING|counter_i\(4) $ (!\Measurementcontrol|rom_addr[4]~7\)))) # (GND)
-- \Measurementcontrol|rom_addr[5]~9\ = CARRY((\Measurementcontrol|COUNTING|counter_i\(5) & ((\Measurementcontrol|COUNTING|counter_i\(4)) # (!\Measurementcontrol|rom_addr[4]~7\))) # (!\Measurementcontrol|COUNTING|counter_i\(5) & 
-- (\Measurementcontrol|COUNTING|counter_i\(4) & !\Measurementcontrol|rom_addr[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|COUNTING|counter_i\(5),
	datab => \Measurementcontrol|COUNTING|counter_i\(4),
	datad => VCC,
	cin => \Measurementcontrol|rom_addr[4]~7\,
	combout => \Measurementcontrol|rom_addr[5]~8_combout\,
	cout => \Measurementcontrol|rom_addr[5]~9\);

-- Location: LCCOMB_X14_Y10_N12
\Measurementcontrol|rom_addr[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|rom_addr[6]~10_combout\ = (\Measurementcontrol|COUNTING|counter_i\(5) & (!\Measurementcontrol|rom_addr[5]~9\)) # (!\Measurementcontrol|COUNTING|counter_i\(5) & ((\Measurementcontrol|rom_addr[5]~9\) # (GND)))
-- \Measurementcontrol|rom_addr[6]~11\ = CARRY((!\Measurementcontrol|rom_addr[5]~9\) # (!\Measurementcontrol|COUNTING|counter_i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|COUNTING|counter_i\(5),
	datad => VCC,
	cin => \Measurementcontrol|rom_addr[5]~9\,
	combout => \Measurementcontrol|rom_addr[6]~10_combout\,
	cout => \Measurementcontrol|rom_addr[6]~11\);

-- Location: LCCOMB_X14_Y10_N14
\Measurementcontrol|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|Add0~0_combout\ = !\Measurementcontrol|rom_addr[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Measurementcontrol|rom_addr[6]~11\,
	combout => \Measurementcontrol|Add0~0_combout\);

-- Location: M9K_X15_Y9_N0
\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"001F00079001D80073001C0006D001A8006700190006100174005A00160005500148004F00130004900118004300104003E000EC0039000D80034000C4002F00",
	mem_init1 => X"0B0002A000A000250008C00210007C001D0006C00190005C001500050001200044000F00038000C0002C000A0002400070001800050001400040000C00020000800010000400010000000000000000000000000000000000010000400010000800020000C000400014000500018000700024000A0002C000C00038000F0004400120005000150005C00190006C001D0007C00210008C0025000A0002A000B0002F000C40034000D80039000EC003E00104004300118004900130004F00148005500160005A001740061001900067001A8006D001C00073001D80079001F000800020C008600224008C0023C00920025400980026C009E0028800A50029C00AA0",
	mem_init0 => X"02B400B0002CC00B6002E400BC002F800C10031000C60032400CB0033800D00034C00D50035C00DA0037000DE0038000E20039000E6003A000EA003AC00ED003B800F0003C400F3003D000F5003D800F8003E400FA003E800FB003F000FD003F400FE003F800FE003FC00FF003FC00FF003FC00FF003FC00FE003F800FE003F400FD003F000FB003E800FA003E400F8003D800F5003D000F3003C400F0003B800ED003AC00EA003A000E60039000E20038000DE0037000DA0035C00D50034C00D00033800CB0032400C60031000C1002F800BC002E400B6002CC00B0002B400AA0029C00A500288009E0026C00980025400920023C008C0022400860020C0080",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "projekt2.Top_design0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Measurement_control:Measurementcontrol|sine_rom:SINE|altsyncram:Mux7_rtl_0|altsyncram_kvv:auto_generated|ALTSYNCRAM",
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
	portaaddr => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y9_N8
\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][12]~0_combout\ = (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ & ((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\) # 
-- ((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ & \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\,
	datab => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datac => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\,
	datad => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][12]~0_combout\);

-- Location: LCCOMB_X16_Y9_N10
\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][11]~1_combout\ = (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ & (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ & 
-- ((!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\) # (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\)))) # (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ & 
-- (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\,
	datab => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datac => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\,
	datad => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][11]~1_combout\);

-- Location: LCCOMB_X16_Y9_N4
\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][10]~2_combout\ = (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ $ 
-- (((!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ & \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\))))) # (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & 
-- ((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ & ((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\) # (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\))) # 
-- (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ & (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\,
	datab => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datac => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\,
	datad => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][10]~2_combout\);

-- Location: LCCOMB_X14_Y9_N30
\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][9]~3_combout\ = \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ $ (((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & 
-- ((!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\))) # (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\ & 
-- \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datab => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\,
	datac => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\,
	datad => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][9]~3_combout\);

-- Location: LCCOMB_X14_Y9_N26
\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][12]~5_combout\ = (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\ & ((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\) # 
-- ((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\,
	datac => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\,
	datad => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][12]~5_combout\);

-- Location: LCCOMB_X14_Y9_N28
\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][8]~4_combout\ = \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ $ (((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ & 
-- !\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\,
	datac => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\,
	datad => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][8]~4_combout\);

-- Location: LCCOMB_X16_Y9_N2
\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][7]~6_combout\ = \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ $ (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\,
	datad => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a7\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][7]~6_combout\);

-- Location: LCCOMB_X14_Y9_N24
\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][11]~7_combout\ = (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ & (((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\ & 
-- !\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\)))) # (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ & (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\ & 
-- ((!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\) # (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\,
	datac => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\,
	datad => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][11]~7_combout\);

-- Location: LCCOMB_X14_Y9_N22
\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][10]~8_combout\ = (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\ & (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\ $ 
-- (((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & !\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\))))) # (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\ & 
-- ((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ & ((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\) # (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\))) # 
-- (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ & ((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\,
	datac => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\,
	datad => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][10]~8_combout\);

-- Location: LCCOMB_X14_Y9_N20
\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][9]~9_combout\ = \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ $ (((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & 
-- (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\ & \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\)) # (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & 
-- (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\,
	datac => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\,
	datad => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][9]~9_combout\);

-- Location: LCCOMB_X14_Y9_N18
\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][8]~10_combout\ = \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\ $ (((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & 
-- !\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\,
	datad => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][8]~10_combout\);

-- Location: LCCOMB_X14_Y9_N0
\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ & (\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][8]~10_combout\ $ (VCC))) # 
-- (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ & (\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][8]~10_combout\ & VCC))
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\ & \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][8]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a4\,
	datab => \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][8]~10_combout\,
	datad => VCC,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X14_Y9_N2
\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][9]~9_combout\ & ((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & 
-- (\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][9]~9_combout\ & ((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & ((\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][9]~9_combout\ & (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\ & 
-- !\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][9]~9_combout\ & ((!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # 
-- (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][9]~9_combout\,
	datab => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a5\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X14_Y9_N4
\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][10]~8_combout\ $ (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ $ 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][10]~8_combout\ & ((\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][10]~8_combout\ & (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\ & 
-- !\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][10]~8_combout\,
	datab => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a6\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X14_Y9_N6
\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][7]~6_combout\ & ((\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][11]~7_combout\ & 
-- (\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][11]~7_combout\ & (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][7]~6_combout\ & ((\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][11]~7_combout\ & (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][11]~7_combout\ & ((\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][7]~6_combout\ & (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][11]~7_combout\ & 
-- !\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][7]~6_combout\ & ((!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][11]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][7]~6_combout\,
	datab => \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][11]~7_combout\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X14_Y9_N8
\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][12]~5_combout\ $ (\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][8]~4_combout\ $ 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][12]~5_combout\ & ((\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][8]~4_combout\) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][12]~5_combout\ & (\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][8]~4_combout\ & 
-- !\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][12]~5_combout\,
	datab => \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][8]~4_combout\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X14_Y9_N10
\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][9]~3_combout\ & (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][9]~3_combout\ & ((\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][9]~3_combout\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X14_Y9_N12
\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = (\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][10]~2_combout\ & (\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (GND))) 
-- # (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][10]~2_combout\ & (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & VCC))
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][10]~2_combout\ & !\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][10]~2_combout\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X14_Y9_N14
\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][11]~1_combout\ & (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][11]~1_combout\ & ((\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][11]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][11]~1_combout\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X14_Y9_N16
\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ $ (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[1][12]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Measurementcontrol|SERVO|Mult0|mult_core|romout[1][12]~0_combout\,
	cin => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\);

-- Location: LCCOMB_X13_Y9_N26
\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][7]~11_combout\ = \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a3\,
	combout => \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][7]~11_combout\);

-- Location: LCCOMB_X13_Y9_N2
\Measurementcontrol|SERVO|duty_cycle[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|duty_cycle[5]~12_combout\ = \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\ $ (VCC)
-- \Measurementcontrol|SERVO|duty_cycle[5]~13\ = CARRY(\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a1\,
	datad => VCC,
	combout => \Measurementcontrol|SERVO|duty_cycle[5]~12_combout\,
	cout => \Measurementcontrol|SERVO|duty_cycle[5]~13\);

-- Location: LCCOMB_X13_Y9_N4
\Measurementcontrol|SERVO|duty_cycle[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|duty_cycle[6]~14_combout\ = (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ & (!\Measurementcontrol|SERVO|duty_cycle[5]~13\)) # (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\ & 
-- ((\Measurementcontrol|SERVO|duty_cycle[5]~13\) # (GND)))
-- \Measurementcontrol|SERVO|duty_cycle[6]~15\ = CARRY((!\Measurementcontrol|SERVO|duty_cycle[5]~13\) # (!\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a2\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|duty_cycle[5]~13\,
	combout => \Measurementcontrol|SERVO|duty_cycle[6]~14_combout\,
	cout => \Measurementcontrol|SERVO|duty_cycle[6]~15\);

-- Location: LCCOMB_X13_Y9_N6
\Measurementcontrol|SERVO|duty_cycle[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|duty_cycle[7]~16_combout\ = (\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][7]~11_combout\ & (\Measurementcontrol|SERVO|duty_cycle[6]~15\ $ (GND))) # (!\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][7]~11_combout\ & 
-- (!\Measurementcontrol|SERVO|duty_cycle[6]~15\ & VCC))
-- \Measurementcontrol|SERVO|duty_cycle[7]~17\ = CARRY((\Measurementcontrol|SERVO|Mult0|mult_core|romout[0][7]~11_combout\ & !\Measurementcontrol|SERVO|duty_cycle[6]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|Mult0|mult_core|romout[0][7]~11_combout\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|duty_cycle[6]~15\,
	combout => \Measurementcontrol|SERVO|duty_cycle[7]~16_combout\,
	cout => \Measurementcontrol|SERVO|duty_cycle[7]~17\);

-- Location: LCCOMB_X13_Y9_N8
\Measurementcontrol|SERVO|duty_cycle[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|duty_cycle[8]~18_combout\ = (\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (!\Measurementcontrol|SERVO|duty_cycle[7]~17\)) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((\Measurementcontrol|SERVO|duty_cycle[7]~17\) # (GND)))
-- \Measurementcontrol|SERVO|duty_cycle[8]~19\ = CARRY((!\Measurementcontrol|SERVO|duty_cycle[7]~17\) # (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|duty_cycle[7]~17\,
	combout => \Measurementcontrol|SERVO|duty_cycle[8]~18_combout\,
	cout => \Measurementcontrol|SERVO|duty_cycle[8]~19\);

-- Location: LCCOMB_X13_Y9_N10
\Measurementcontrol|SERVO|duty_cycle[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|duty_cycle[9]~20_combout\ = (\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((GND) # (!\Measurementcontrol|SERVO|duty_cycle[8]~19\))) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\Measurementcontrol|SERVO|duty_cycle[8]~19\ $ (GND)))
-- \Measurementcontrol|SERVO|duty_cycle[9]~21\ = CARRY((\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\) # (!\Measurementcontrol|SERVO|duty_cycle[8]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|duty_cycle[8]~19\,
	combout => \Measurementcontrol|SERVO|duty_cycle[9]~20_combout\,
	cout => \Measurementcontrol|SERVO|duty_cycle[9]~21\);

-- Location: LCCOMB_X13_Y9_N12
\Measurementcontrol|SERVO|duty_cycle[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|duty_cycle[10]~22_combout\ = (\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\Measurementcontrol|SERVO|duty_cycle[9]~21\ & VCC)) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\Measurementcontrol|SERVO|duty_cycle[9]~21\))
-- \Measurementcontrol|SERVO|duty_cycle[10]~23\ = CARRY((!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\Measurementcontrol|SERVO|duty_cycle[9]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|duty_cycle[9]~21\,
	combout => \Measurementcontrol|SERVO|duty_cycle[10]~22_combout\,
	cout => \Measurementcontrol|SERVO|duty_cycle[10]~23\);

-- Location: LCCOMB_X13_Y9_N14
\Measurementcontrol|SERVO|duty_cycle[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|duty_cycle[11]~24_combout\ = (\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((GND) # (!\Measurementcontrol|SERVO|duty_cycle[10]~23\))) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\Measurementcontrol|SERVO|duty_cycle[10]~23\ $ (GND)))
-- \Measurementcontrol|SERVO|duty_cycle[11]~25\ = CARRY((\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\) # (!\Measurementcontrol|SERVO|duty_cycle[10]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|duty_cycle[10]~23\,
	combout => \Measurementcontrol|SERVO|duty_cycle[11]~24_combout\,
	cout => \Measurementcontrol|SERVO|duty_cycle[11]~25\);

-- Location: LCCOMB_X13_Y9_N16
\Measurementcontrol|SERVO|duty_cycle[12]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|duty_cycle[12]~26_combout\ = (\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\Measurementcontrol|SERVO|duty_cycle[11]~25\)) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\Measurementcontrol|SERVO|duty_cycle[11]~25\) # (GND)))
-- \Measurementcontrol|SERVO|duty_cycle[12]~27\ = CARRY((!\Measurementcontrol|SERVO|duty_cycle[11]~25\) # (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|duty_cycle[11]~25\,
	combout => \Measurementcontrol|SERVO|duty_cycle[12]~26_combout\,
	cout => \Measurementcontrol|SERVO|duty_cycle[12]~27\);

-- Location: LCCOMB_X13_Y9_N18
\Measurementcontrol|SERVO|duty_cycle[13]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|duty_cycle[13]~28_combout\ = (\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\Measurementcontrol|SERVO|duty_cycle[12]~27\ $ (GND))) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Measurementcontrol|SERVO|duty_cycle[12]~27\ & VCC))
-- \Measurementcontrol|SERVO|duty_cycle[13]~29\ = CARRY((\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & !\Measurementcontrol|SERVO|duty_cycle[12]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|duty_cycle[12]~27\,
	combout => \Measurementcontrol|SERVO|duty_cycle[13]~28_combout\,
	cout => \Measurementcontrol|SERVO|duty_cycle[13]~29\);

-- Location: LCCOMB_X13_Y9_N20
\Measurementcontrol|SERVO|duty_cycle[14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|duty_cycle[14]~30_combout\ = (\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (\Measurementcontrol|SERVO|duty_cycle[13]~29\ & VCC)) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (!\Measurementcontrol|SERVO|duty_cycle[13]~29\))
-- \Measurementcontrol|SERVO|duty_cycle[14]~31\ = CARRY((!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & !\Measurementcontrol|SERVO|duty_cycle[13]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|duty_cycle[13]~29\,
	combout => \Measurementcontrol|SERVO|duty_cycle[14]~30_combout\,
	cout => \Measurementcontrol|SERVO|duty_cycle[14]~31\);

-- Location: LCCOMB_X13_Y9_N22
\Measurementcontrol|SERVO|duty_cycle[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|duty_cycle[15]~32_combout\ = (\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (\Measurementcontrol|SERVO|duty_cycle[14]~31\ $ (GND))) # 
-- (!\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\Measurementcontrol|SERVO|duty_cycle[14]~31\ & VCC))
-- \Measurementcontrol|SERVO|duty_cycle[15]~33\ = CARRY((\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & !\Measurementcontrol|SERVO|duty_cycle[14]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \Measurementcontrol|SERVO|duty_cycle[14]~31\,
	combout => \Measurementcontrol|SERVO|duty_cycle[15]~32_combout\,
	cout => \Measurementcontrol|SERVO|duty_cycle[15]~33\);

-- Location: LCCOMB_X13_Y9_N24
\Measurementcontrol|SERVO|duty_cycle[16]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|duty_cycle[16]~34_combout\ = \Measurementcontrol|SERVO|duty_cycle[15]~33\ $ (\Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Measurementcontrol|SERVO|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cin => \Measurementcontrol|SERVO|duty_cycle[15]~33\,
	combout => \Measurementcontrol|SERVO|duty_cycle[16]~34_combout\);

-- Location: LCCOMB_X13_Y9_N28
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

-- Location: FF_X13_Y9_N25
\Measurementcontrol|SERVO|duty_cycle[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|duty_cycle[16]~34_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|duty_cycle\(16));

-- Location: FF_X13_Y9_N23
\Measurementcontrol|SERVO|duty_cycle[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|duty_cycle[15]~32_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|duty_cycle\(15));

-- Location: FF_X13_Y9_N21
\Measurementcontrol|SERVO|duty_cycle[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|duty_cycle[14]~30_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|duty_cycle\(14));

-- Location: FF_X13_Y9_N19
\Measurementcontrol|SERVO|duty_cycle[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|duty_cycle[13]~28_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|duty_cycle\(13));

-- Location: FF_X13_Y9_N17
\Measurementcontrol|SERVO|duty_cycle[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|duty_cycle[12]~26_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|duty_cycle\(12));

-- Location: FF_X13_Y9_N15
\Measurementcontrol|SERVO|duty_cycle[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|duty_cycle[11]~24_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|duty_cycle\(11));

-- Location: FF_X13_Y9_N13
\Measurementcontrol|SERVO|duty_cycle[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|duty_cycle[10]~22_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|duty_cycle\(10));

-- Location: FF_X13_Y9_N11
\Measurementcontrol|SERVO|duty_cycle[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|duty_cycle[9]~20_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|duty_cycle\(9));

-- Location: FF_X13_Y9_N9
\Measurementcontrol|SERVO|duty_cycle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|duty_cycle[8]~18_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|duty_cycle\(8));

-- Location: FF_X13_Y9_N7
\Measurementcontrol|SERVO|duty_cycle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|duty_cycle[7]~16_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|duty_cycle\(7));

-- Location: FF_X13_Y9_N5
\Measurementcontrol|SERVO|duty_cycle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|duty_cycle[6]~14_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|duty_cycle\(6));

-- Location: FF_X13_Y9_N3
\Measurementcontrol|SERVO|duty_cycle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|duty_cycle[5]~12_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|duty_cycle\(5));

-- Location: LCCOMB_X13_Y9_N0
\Measurementcontrol|SERVO|duty_cycle~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|duty_cycle~36_combout\ = (\Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Measurementcontrol|SINE|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \reset~input_o\,
	combout => \Measurementcontrol|SERVO|duty_cycle~36_combout\);

-- Location: FF_X13_Y9_N1
\Measurementcontrol|SERVO|duty_cycle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|duty_cycle~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|duty_cycle\(4));

-- Location: LCCOMB_X12_Y9_N0
\Measurementcontrol|SERVO|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~2_cout\ = CARRY((!\Measurementcontrol|SERVO|count\(4) & \Measurementcontrol|SERVO|duty_cycle\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(4),
	datab => \Measurementcontrol|SERVO|duty_cycle\(4),
	datad => VCC,
	cout => \Measurementcontrol|SERVO|LessThan1~2_cout\);

-- Location: LCCOMB_X12_Y9_N2
\Measurementcontrol|SERVO|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~4_cout\ = CARRY((\Measurementcontrol|SERVO|duty_cycle\(5) & (\Measurementcontrol|SERVO|count\(5) & !\Measurementcontrol|SERVO|LessThan1~2_cout\)) # (!\Measurementcontrol|SERVO|duty_cycle\(5) & 
-- ((\Measurementcontrol|SERVO|count\(5)) # (!\Measurementcontrol|SERVO|LessThan1~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|duty_cycle\(5),
	datab => \Measurementcontrol|SERVO|count\(5),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|LessThan1~2_cout\,
	cout => \Measurementcontrol|SERVO|LessThan1~4_cout\);

-- Location: LCCOMB_X12_Y9_N4
\Measurementcontrol|SERVO|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~6_cout\ = CARRY((\Measurementcontrol|SERVO|duty_cycle\(6) & ((!\Measurementcontrol|SERVO|LessThan1~4_cout\) # (!\Measurementcontrol|SERVO|count\(6)))) # (!\Measurementcontrol|SERVO|duty_cycle\(6) & 
-- (!\Measurementcontrol|SERVO|count\(6) & !\Measurementcontrol|SERVO|LessThan1~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|duty_cycle\(6),
	datab => \Measurementcontrol|SERVO|count\(6),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|LessThan1~4_cout\,
	cout => \Measurementcontrol|SERVO|LessThan1~6_cout\);

-- Location: LCCOMB_X12_Y9_N6
\Measurementcontrol|SERVO|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~8_cout\ = CARRY((\Measurementcontrol|SERVO|duty_cycle\(7) & (\Measurementcontrol|SERVO|count\(7) & !\Measurementcontrol|SERVO|LessThan1~6_cout\)) # (!\Measurementcontrol|SERVO|duty_cycle\(7) & 
-- ((\Measurementcontrol|SERVO|count\(7)) # (!\Measurementcontrol|SERVO|LessThan1~6_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|duty_cycle\(7),
	datab => \Measurementcontrol|SERVO|count\(7),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|LessThan1~6_cout\,
	cout => \Measurementcontrol|SERVO|LessThan1~8_cout\);

-- Location: LCCOMB_X12_Y9_N8
\Measurementcontrol|SERVO|LessThan1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~10_cout\ = CARRY((\Measurementcontrol|SERVO|count\(8) & (\Measurementcontrol|SERVO|duty_cycle\(8) & !\Measurementcontrol|SERVO|LessThan1~8_cout\)) # (!\Measurementcontrol|SERVO|count\(8) & 
-- ((\Measurementcontrol|SERVO|duty_cycle\(8)) # (!\Measurementcontrol|SERVO|LessThan1~8_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(8),
	datab => \Measurementcontrol|SERVO|duty_cycle\(8),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|LessThan1~8_cout\,
	cout => \Measurementcontrol|SERVO|LessThan1~10_cout\);

-- Location: LCCOMB_X12_Y9_N10
\Measurementcontrol|SERVO|LessThan1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~12_cout\ = CARRY((\Measurementcontrol|SERVO|count\(9) & ((!\Measurementcontrol|SERVO|LessThan1~10_cout\) # (!\Measurementcontrol|SERVO|duty_cycle\(9)))) # (!\Measurementcontrol|SERVO|count\(9) & 
-- (!\Measurementcontrol|SERVO|duty_cycle\(9) & !\Measurementcontrol|SERVO|LessThan1~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(9),
	datab => \Measurementcontrol|SERVO|duty_cycle\(9),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|LessThan1~10_cout\,
	cout => \Measurementcontrol|SERVO|LessThan1~12_cout\);

-- Location: LCCOMB_X12_Y9_N12
\Measurementcontrol|SERVO|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~14_cout\ = CARRY((\Measurementcontrol|SERVO|count\(10) & (\Measurementcontrol|SERVO|duty_cycle\(10) & !\Measurementcontrol|SERVO|LessThan1~12_cout\)) # (!\Measurementcontrol|SERVO|count\(10) & 
-- ((\Measurementcontrol|SERVO|duty_cycle\(10)) # (!\Measurementcontrol|SERVO|LessThan1~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(10),
	datab => \Measurementcontrol|SERVO|duty_cycle\(10),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|LessThan1~12_cout\,
	cout => \Measurementcontrol|SERVO|LessThan1~14_cout\);

-- Location: LCCOMB_X12_Y9_N14
\Measurementcontrol|SERVO|LessThan1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~16_cout\ = CARRY((\Measurementcontrol|SERVO|count\(11) & ((!\Measurementcontrol|SERVO|LessThan1~14_cout\) # (!\Measurementcontrol|SERVO|duty_cycle\(11)))) # (!\Measurementcontrol|SERVO|count\(11) & 
-- (!\Measurementcontrol|SERVO|duty_cycle\(11) & !\Measurementcontrol|SERVO|LessThan1~14_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(11),
	datab => \Measurementcontrol|SERVO|duty_cycle\(11),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|LessThan1~14_cout\,
	cout => \Measurementcontrol|SERVO|LessThan1~16_cout\);

-- Location: LCCOMB_X12_Y9_N16
\Measurementcontrol|SERVO|LessThan1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~18_cout\ = CARRY((\Measurementcontrol|SERVO|duty_cycle\(12) & ((!\Measurementcontrol|SERVO|LessThan1~16_cout\) # (!\Measurementcontrol|SERVO|count\(12)))) # (!\Measurementcontrol|SERVO|duty_cycle\(12) & 
-- (!\Measurementcontrol|SERVO|count\(12) & !\Measurementcontrol|SERVO|LessThan1~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|duty_cycle\(12),
	datab => \Measurementcontrol|SERVO|count\(12),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|LessThan1~16_cout\,
	cout => \Measurementcontrol|SERVO|LessThan1~18_cout\);

-- Location: LCCOMB_X12_Y9_N18
\Measurementcontrol|SERVO|LessThan1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~20_cout\ = CARRY((\Measurementcontrol|SERVO|count\(13) & ((!\Measurementcontrol|SERVO|LessThan1~18_cout\) # (!\Measurementcontrol|SERVO|duty_cycle\(13)))) # (!\Measurementcontrol|SERVO|count\(13) & 
-- (!\Measurementcontrol|SERVO|duty_cycle\(13) & !\Measurementcontrol|SERVO|LessThan1~18_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(13),
	datab => \Measurementcontrol|SERVO|duty_cycle\(13),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|LessThan1~18_cout\,
	cout => \Measurementcontrol|SERVO|LessThan1~20_cout\);

-- Location: LCCOMB_X12_Y9_N20
\Measurementcontrol|SERVO|LessThan1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~22_cout\ = CARRY((\Measurementcontrol|SERVO|duty_cycle\(14) & ((!\Measurementcontrol|SERVO|LessThan1~20_cout\) # (!\Measurementcontrol|SERVO|count\(14)))) # (!\Measurementcontrol|SERVO|duty_cycle\(14) & 
-- (!\Measurementcontrol|SERVO|count\(14) & !\Measurementcontrol|SERVO|LessThan1~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|duty_cycle\(14),
	datab => \Measurementcontrol|SERVO|count\(14),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|LessThan1~20_cout\,
	cout => \Measurementcontrol|SERVO|LessThan1~22_cout\);

-- Location: LCCOMB_X12_Y9_N22
\Measurementcontrol|SERVO|LessThan1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~24_cout\ = CARRY((\Measurementcontrol|SERVO|count\(15) & ((!\Measurementcontrol|SERVO|LessThan1~22_cout\) # (!\Measurementcontrol|SERVO|duty_cycle\(15)))) # (!\Measurementcontrol|SERVO|count\(15) & 
-- (!\Measurementcontrol|SERVO|duty_cycle\(15) & !\Measurementcontrol|SERVO|LessThan1~22_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(15),
	datab => \Measurementcontrol|SERVO|duty_cycle\(15),
	datad => VCC,
	cin => \Measurementcontrol|SERVO|LessThan1~22_cout\,
	cout => \Measurementcontrol|SERVO|LessThan1~24_cout\);

-- Location: LCCOMB_X12_Y9_N24
\Measurementcontrol|SERVO|LessThan1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~25_combout\ = (\Measurementcontrol|SERVO|count\(16) & (!\Measurementcontrol|SERVO|LessThan1~24_cout\ & \Measurementcontrol|SERVO|duty_cycle\(16))) # (!\Measurementcontrol|SERVO|count\(16) & 
-- ((\Measurementcontrol|SERVO|duty_cycle\(16)) # (!\Measurementcontrol|SERVO|LessThan1~24_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Measurementcontrol|SERVO|count\(16),
	datad => \Measurementcontrol|SERVO|duty_cycle\(16),
	cin => \Measurementcontrol|SERVO|LessThan1~24_cout\,
	combout => \Measurementcontrol|SERVO|LessThan1~25_combout\);

-- Location: LCCOMB_X12_Y9_N26
\Measurementcontrol|SERVO|LessThan1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Measurementcontrol|SERVO|LessThan1~27_combout\ = (!\Measurementcontrol|SERVO|count\(17) & (\Measurementcontrol|SERVO|LessThan1~25_combout\ & (\Measurementcontrol|SERVO|LessThan1~0_combout\ & !\Measurementcontrol|SERVO|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Measurementcontrol|SERVO|count\(17),
	datab => \Measurementcontrol|SERVO|LessThan1~25_combout\,
	datac => \Measurementcontrol|SERVO|LessThan1~0_combout\,
	datad => \Measurementcontrol|SERVO|count\(20),
	combout => \Measurementcontrol|SERVO|LessThan1~27_combout\);

-- Location: FF_X12_Y9_N27
\Measurementcontrol|SERVO|pwm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Measurementcontrol|SERVO|LessThan1~27_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Measurementcontrol|SERVO|pwm~q\);

-- Location: LCCOMB_X33_Y12_N0
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

-- Location: FF_X33_Y12_N1
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

-- Location: LCCOMB_X33_Y12_N2
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

-- Location: FF_X33_Y12_N3
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

-- Location: LCCOMB_X33_Y12_N4
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

-- Location: FF_X33_Y12_N5
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

-- Location: LCCOMB_X33_Y12_N6
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

-- Location: FF_X33_Y12_N7
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

-- Location: LCCOMB_X33_Y12_N8
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

-- Location: FF_X33_Y12_N9
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

-- Location: LCCOMB_X33_Y12_N10
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

-- Location: FF_X33_Y12_N11
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

-- Location: LCCOMB_X33_Y12_N12
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

-- Location: FF_X33_Y12_N13
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

-- Location: LCCOMB_X33_Y12_N14
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

-- Location: FF_X33_Y12_N15
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

-- Location: LCCOMB_X33_Y12_N16
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

-- Location: FF_X33_Y12_N17
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

-- Location: LCCOMB_X33_Y12_N18
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

-- Location: FF_X33_Y12_N19
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

-- Location: LCCOMB_X33_Y12_N20
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

-- Location: FF_X33_Y12_N21
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

-- Location: LCCOMB_X33_Y12_N22
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

-- Location: FF_X33_Y12_N23
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

-- Location: LCCOMB_X33_Y12_N24
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

-- Location: FF_X33_Y12_N25
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

-- Location: LCCOMB_X33_Y12_N26
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

-- Location: FF_X33_Y12_N27
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

-- Location: LCCOMB_X33_Y12_N28
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

-- Location: FF_X33_Y12_N29
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

-- Location: LCCOMB_X33_Y12_N30
\segment_driver|uut1|count[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut1|count[15]~43_combout\ = \segment_driver|uut1|count\(15) $ (!\segment_driver|uut1|count[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|uut1|count\(15),
	cin => \segment_driver|uut1|count[14]~42\,
	combout => \segment_driver|uut1|count[15]~43_combout\);

-- Location: FF_X33_Y12_N31
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

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X26_Y14_N12
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

-- Location: FF_X26_Y14_N13
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

-- Location: LCCOMB_X26_Y14_N30
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

-- Location: FF_X26_Y14_N31
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

-- Location: LCCOMB_X28_Y14_N8
\segment_driver|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Mux4~0_combout\ = (\segment_driver|Display_Selection\(1)) # (\segment_driver|Display_Selection\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Display_Selection\(1),
	datad => \segment_driver|Display_Selection\(0),
	combout => \segment_driver|Mux4~0_combout\);

-- Location: FF_X28_Y14_N9
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

-- Location: LCCOMB_X26_Y14_N24
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

-- Location: FF_X26_Y14_N25
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

-- Location: LCCOMB_X26_Y14_N0
\segment_driver|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Mux6~0_combout\ = (\segment_driver|Display_Selection\(0)) # (!\segment_driver|Display_Selection\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Display_Selection\(0),
	datac => \segment_driver|Display_Selection\(1),
	combout => \segment_driver|Mux6~0_combout\);

-- Location: FF_X26_Y14_N1
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

-- Location: LCCOMB_X28_Y14_N2
\segment_driver|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~0_combout\ = (!\segment_driver|Display_Selection\(0)) # (!\segment_driver|Display_Selection\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Display_Selection\(1),
	datad => \segment_driver|Display_Selection\(0),
	combout => \segment_driver|Add3~0_combout\);

-- Location: FF_X28_Y14_N3
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

-- Location: LCCOMB_X30_Y17_N6
\Pulse_width|Counter_pulse|counter_i[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[0]~63_combout\ = \pulse~input_o\ $ (\Pulse_width|Counter_pulse|counter_i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse~input_o\,
	datad => \Pulse_width|Counter_pulse|counter_i\(0),
	combout => \Pulse_width|Counter_pulse|counter_i[0]~63_combout\);

-- Location: LCCOMB_X30_Y17_N4
\Pulse_width|Counter_pulse|counter_i[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[0]~feeder_combout\ = \Pulse_width|Counter_pulse|counter_i[0]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i[0]~63_combout\,
	combout => \Pulse_width|Counter_pulse|counter_i[0]~feeder_combout\);

-- Location: FF_X30_Y17_N5
\Pulse_width|Counter_pulse|counter_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[0]~feeder_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(0));

-- Location: LCCOMB_X30_Y17_N12
\Pulse_width|Counter_pulse|counter_i[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[1]~21_combout\ = (\Pulse_width|Counter_pulse|counter_i\(1) & (\Pulse_width|Counter_pulse|counter_i\(0) $ (VCC))) # (!\Pulse_width|Counter_pulse|counter_i\(1) & (\Pulse_width|Counter_pulse|counter_i\(0) & VCC))
-- \Pulse_width|Counter_pulse|counter_i[1]~22\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(1) & \Pulse_width|Counter_pulse|counter_i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(1),
	datab => \Pulse_width|Counter_pulse|counter_i\(0),
	datad => VCC,
	combout => \Pulse_width|Counter_pulse|counter_i[1]~21_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[1]~22\);

-- Location: FF_X30_Y17_N13
\Pulse_width|Counter_pulse|counter_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[1]~21_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(1));

-- Location: LCCOMB_X30_Y17_N14
\Pulse_width|Counter_pulse|counter_i[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[2]~23_combout\ = (\Pulse_width|Counter_pulse|counter_i\(2) & (!\Pulse_width|Counter_pulse|counter_i[1]~22\)) # (!\Pulse_width|Counter_pulse|counter_i\(2) & ((\Pulse_width|Counter_pulse|counter_i[1]~22\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[2]~24\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[1]~22\) # (!\Pulse_width|Counter_pulse|counter_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(2),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[1]~22\,
	combout => \Pulse_width|Counter_pulse|counter_i[2]~23_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[2]~24\);

-- Location: FF_X30_Y17_N15
\Pulse_width|Counter_pulse|counter_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[2]~23_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(2));

-- Location: LCCOMB_X30_Y17_N16
\Pulse_width|Counter_pulse|counter_i[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[3]~25_combout\ = (\Pulse_width|Counter_pulse|counter_i\(3) & (\Pulse_width|Counter_pulse|counter_i[2]~24\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(3) & (!\Pulse_width|Counter_pulse|counter_i[2]~24\ & VCC))
-- \Pulse_width|Counter_pulse|counter_i[3]~26\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(3) & !\Pulse_width|Counter_pulse|counter_i[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(3),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[2]~24\,
	combout => \Pulse_width|Counter_pulse|counter_i[3]~25_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[3]~26\);

-- Location: FF_X30_Y17_N17
\Pulse_width|Counter_pulse|counter_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[3]~25_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(3));

-- Location: LCCOMB_X30_Y17_N18
\Pulse_width|Counter_pulse|counter_i[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[4]~27_combout\ = (\Pulse_width|Counter_pulse|counter_i\(4) & (!\Pulse_width|Counter_pulse|counter_i[3]~26\)) # (!\Pulse_width|Counter_pulse|counter_i\(4) & ((\Pulse_width|Counter_pulse|counter_i[3]~26\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[4]~28\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[3]~26\) # (!\Pulse_width|Counter_pulse|counter_i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(4),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[3]~26\,
	combout => \Pulse_width|Counter_pulse|counter_i[4]~27_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[4]~28\);

-- Location: FF_X30_Y17_N19
\Pulse_width|Counter_pulse|counter_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[4]~27_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(4));

-- Location: LCCOMB_X30_Y17_N20
\Pulse_width|Counter_pulse|counter_i[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[5]~29_combout\ = (\Pulse_width|Counter_pulse|counter_i\(5) & (\Pulse_width|Counter_pulse|counter_i[4]~28\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(5) & (!\Pulse_width|Counter_pulse|counter_i[4]~28\ & VCC))
-- \Pulse_width|Counter_pulse|counter_i[5]~30\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(5) & !\Pulse_width|Counter_pulse|counter_i[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(5),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[4]~28\,
	combout => \Pulse_width|Counter_pulse|counter_i[5]~29_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[5]~30\);

-- Location: FF_X30_Y17_N21
\Pulse_width|Counter_pulse|counter_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[5]~29_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(5));

-- Location: LCCOMB_X30_Y17_N22
\Pulse_width|Counter_pulse|counter_i[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[6]~31_combout\ = (\Pulse_width|Counter_pulse|counter_i\(6) & (!\Pulse_width|Counter_pulse|counter_i[5]~30\)) # (!\Pulse_width|Counter_pulse|counter_i\(6) & ((\Pulse_width|Counter_pulse|counter_i[5]~30\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[6]~32\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[5]~30\) # (!\Pulse_width|Counter_pulse|counter_i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(6),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[5]~30\,
	combout => \Pulse_width|Counter_pulse|counter_i[6]~31_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[6]~32\);

-- Location: FF_X30_Y17_N23
\Pulse_width|Counter_pulse|counter_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[6]~31_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(6));

-- Location: LCCOMB_X30_Y17_N24
\Pulse_width|Counter_pulse|counter_i[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[7]~33_combout\ = (\Pulse_width|Counter_pulse|counter_i\(7) & (\Pulse_width|Counter_pulse|counter_i[6]~32\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(7) & (!\Pulse_width|Counter_pulse|counter_i[6]~32\ & VCC))
-- \Pulse_width|Counter_pulse|counter_i[7]~34\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(7) & !\Pulse_width|Counter_pulse|counter_i[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(7),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[6]~32\,
	combout => \Pulse_width|Counter_pulse|counter_i[7]~33_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[7]~34\);

-- Location: FF_X30_Y17_N25
\Pulse_width|Counter_pulse|counter_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[7]~33_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(7));

-- Location: LCCOMB_X30_Y17_N26
\Pulse_width|Counter_pulse|counter_i[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[8]~35_combout\ = (\Pulse_width|Counter_pulse|counter_i\(8) & (!\Pulse_width|Counter_pulse|counter_i[7]~34\)) # (!\Pulse_width|Counter_pulse|counter_i\(8) & ((\Pulse_width|Counter_pulse|counter_i[7]~34\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[8]~36\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[7]~34\) # (!\Pulse_width|Counter_pulse|counter_i\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(8),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[7]~34\,
	combout => \Pulse_width|Counter_pulse|counter_i[8]~35_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[8]~36\);

-- Location: FF_X30_Y17_N27
\Pulse_width|Counter_pulse|counter_i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[8]~35_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(8));

-- Location: LCCOMB_X30_Y17_N28
\Pulse_width|Counter_pulse|counter_i[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[9]~37_combout\ = (\Pulse_width|Counter_pulse|counter_i\(9) & (\Pulse_width|Counter_pulse|counter_i[8]~36\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(9) & (!\Pulse_width|Counter_pulse|counter_i[8]~36\ & VCC))
-- \Pulse_width|Counter_pulse|counter_i[9]~38\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(9) & !\Pulse_width|Counter_pulse|counter_i[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(9),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[8]~36\,
	combout => \Pulse_width|Counter_pulse|counter_i[9]~37_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[9]~38\);

-- Location: FF_X30_Y17_N29
\Pulse_width|Counter_pulse|counter_i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[9]~37_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(9));

-- Location: LCCOMB_X30_Y17_N30
\Pulse_width|Counter_pulse|counter_i[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[10]~39_combout\ = (\Pulse_width|Counter_pulse|counter_i\(10) & (!\Pulse_width|Counter_pulse|counter_i[9]~38\)) # (!\Pulse_width|Counter_pulse|counter_i\(10) & ((\Pulse_width|Counter_pulse|counter_i[9]~38\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[10]~40\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[9]~38\) # (!\Pulse_width|Counter_pulse|counter_i\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(10),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[9]~38\,
	combout => \Pulse_width|Counter_pulse|counter_i[10]~39_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[10]~40\);

-- Location: FF_X30_Y17_N31
\Pulse_width|Counter_pulse|counter_i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[10]~39_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(10));

-- Location: LCCOMB_X30_Y16_N0
\Pulse_width|Counter_pulse|counter_i[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[11]~41_combout\ = (\Pulse_width|Counter_pulse|counter_i\(11) & (\Pulse_width|Counter_pulse|counter_i[10]~40\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(11) & (!\Pulse_width|Counter_pulse|counter_i[10]~40\ & 
-- VCC))
-- \Pulse_width|Counter_pulse|counter_i[11]~42\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(11) & !\Pulse_width|Counter_pulse|counter_i[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(11),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[10]~40\,
	combout => \Pulse_width|Counter_pulse|counter_i[11]~41_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[11]~42\);

-- Location: FF_X30_Y16_N1
\Pulse_width|Counter_pulse|counter_i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[11]~41_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(11));

-- Location: LCCOMB_X30_Y16_N2
\Pulse_width|Counter_pulse|counter_i[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[12]~43_combout\ = (\Pulse_width|Counter_pulse|counter_i\(12) & (!\Pulse_width|Counter_pulse|counter_i[11]~42\)) # (!\Pulse_width|Counter_pulse|counter_i\(12) & ((\Pulse_width|Counter_pulse|counter_i[11]~42\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[12]~44\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[11]~42\) # (!\Pulse_width|Counter_pulse|counter_i\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(12),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[11]~42\,
	combout => \Pulse_width|Counter_pulse|counter_i[12]~43_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[12]~44\);

-- Location: FF_X30_Y16_N3
\Pulse_width|Counter_pulse|counter_i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[12]~43_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(12));

-- Location: LCCOMB_X30_Y16_N4
\Pulse_width|Counter_pulse|counter_i[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[13]~45_combout\ = (\Pulse_width|Counter_pulse|counter_i\(13) & (\Pulse_width|Counter_pulse|counter_i[12]~44\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(13) & (!\Pulse_width|Counter_pulse|counter_i[12]~44\ & 
-- VCC))
-- \Pulse_width|Counter_pulse|counter_i[13]~46\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(13) & !\Pulse_width|Counter_pulse|counter_i[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(13),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[12]~44\,
	combout => \Pulse_width|Counter_pulse|counter_i[13]~45_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[13]~46\);

-- Location: FF_X30_Y16_N5
\Pulse_width|Counter_pulse|counter_i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[13]~45_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(13));

-- Location: LCCOMB_X30_Y16_N6
\Pulse_width|Counter_pulse|counter_i[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[14]~47_combout\ = (\Pulse_width|Counter_pulse|counter_i\(14) & (!\Pulse_width|Counter_pulse|counter_i[13]~46\)) # (!\Pulse_width|Counter_pulse|counter_i\(14) & ((\Pulse_width|Counter_pulse|counter_i[13]~46\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[14]~48\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[13]~46\) # (!\Pulse_width|Counter_pulse|counter_i\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(14),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[13]~46\,
	combout => \Pulse_width|Counter_pulse|counter_i[14]~47_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[14]~48\);

-- Location: FF_X30_Y16_N7
\Pulse_width|Counter_pulse|counter_i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[14]~47_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(14));

-- Location: LCCOMB_X30_Y16_N8
\Pulse_width|Counter_pulse|counter_i[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[15]~49_combout\ = (\Pulse_width|Counter_pulse|counter_i\(15) & (\Pulse_width|Counter_pulse|counter_i[14]~48\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(15) & (!\Pulse_width|Counter_pulse|counter_i[14]~48\ & 
-- VCC))
-- \Pulse_width|Counter_pulse|counter_i[15]~50\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(15) & !\Pulse_width|Counter_pulse|counter_i[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[14]~48\,
	combout => \Pulse_width|Counter_pulse|counter_i[15]~49_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[15]~50\);

-- Location: FF_X30_Y16_N9
\Pulse_width|Counter_pulse|counter_i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[15]~49_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(15));

-- Location: LCCOMB_X30_Y16_N10
\Pulse_width|Counter_pulse|counter_i[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[16]~51_combout\ = (\Pulse_width|Counter_pulse|counter_i\(16) & (!\Pulse_width|Counter_pulse|counter_i[15]~50\)) # (!\Pulse_width|Counter_pulse|counter_i\(16) & ((\Pulse_width|Counter_pulse|counter_i[15]~50\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[16]~52\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[15]~50\) # (!\Pulse_width|Counter_pulse|counter_i\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(16),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[15]~50\,
	combout => \Pulse_width|Counter_pulse|counter_i[16]~51_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[16]~52\);

-- Location: FF_X30_Y16_N11
\Pulse_width|Counter_pulse|counter_i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[16]~51_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(16));

-- Location: LCCOMB_X30_Y16_N12
\Pulse_width|Counter_pulse|counter_i[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[17]~53_combout\ = (\Pulse_width|Counter_pulse|counter_i\(17) & (\Pulse_width|Counter_pulse|counter_i[16]~52\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(17) & (!\Pulse_width|Counter_pulse|counter_i[16]~52\ & 
-- VCC))
-- \Pulse_width|Counter_pulse|counter_i[17]~54\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(17) & !\Pulse_width|Counter_pulse|counter_i[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(17),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[16]~52\,
	combout => \Pulse_width|Counter_pulse|counter_i[17]~53_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[17]~54\);

-- Location: FF_X30_Y16_N13
\Pulse_width|Counter_pulse|counter_i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[17]~53_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(17));

-- Location: LCCOMB_X30_Y16_N14
\Pulse_width|Counter_pulse|counter_i[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[18]~55_combout\ = (\Pulse_width|Counter_pulse|counter_i\(18) & (!\Pulse_width|Counter_pulse|counter_i[17]~54\)) # (!\Pulse_width|Counter_pulse|counter_i\(18) & ((\Pulse_width|Counter_pulse|counter_i[17]~54\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[18]~56\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[17]~54\) # (!\Pulse_width|Counter_pulse|counter_i\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(18),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[17]~54\,
	combout => \Pulse_width|Counter_pulse|counter_i[18]~55_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[18]~56\);

-- Location: FF_X30_Y16_N15
\Pulse_width|Counter_pulse|counter_i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[18]~55_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(18));

-- Location: LCCOMB_X30_Y16_N16
\Pulse_width|Counter_pulse|counter_i[19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[19]~57_combout\ = (\Pulse_width|Counter_pulse|counter_i\(19) & (\Pulse_width|Counter_pulse|counter_i[18]~56\ $ (GND))) # (!\Pulse_width|Counter_pulse|counter_i\(19) & (!\Pulse_width|Counter_pulse|counter_i[18]~56\ & 
-- VCC))
-- \Pulse_width|Counter_pulse|counter_i[19]~58\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(19) & !\Pulse_width|Counter_pulse|counter_i[18]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(19),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[18]~56\,
	combout => \Pulse_width|Counter_pulse|counter_i[19]~57_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[19]~58\);

-- Location: FF_X30_Y16_N17
\Pulse_width|Counter_pulse|counter_i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[19]~57_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(19));

-- Location: LCCOMB_X30_Y16_N18
\Pulse_width|Counter_pulse|counter_i[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[20]~59_combout\ = (\Pulse_width|Counter_pulse|counter_i\(20) & (!\Pulse_width|Counter_pulse|counter_i[19]~58\)) # (!\Pulse_width|Counter_pulse|counter_i\(20) & ((\Pulse_width|Counter_pulse|counter_i[19]~58\) # (GND)))
-- \Pulse_width|Counter_pulse|counter_i[20]~60\ = CARRY((!\Pulse_width|Counter_pulse|counter_i[19]~58\) # (!\Pulse_width|Counter_pulse|counter_i\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(20),
	datad => VCC,
	cin => \Pulse_width|Counter_pulse|counter_i[19]~58\,
	combout => \Pulse_width|Counter_pulse|counter_i[20]~59_combout\,
	cout => \Pulse_width|Counter_pulse|counter_i[20]~60\);

-- Location: FF_X30_Y16_N19
\Pulse_width|Counter_pulse|counter_i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[20]~59_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(20));

-- Location: LCCOMB_X29_Y15_N4
\Pulse_width|Mult0|mult_core|romout[1][11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][11]~16_combout\ = (\Pulse_width|Counter_pulse|counter_i\(19) & (\Pulse_width|Counter_pulse|counter_i\(18) & !\Pulse_width|Counter_pulse|counter_i\(20))) # (!\Pulse_width|Counter_pulse|counter_i\(19) & 
-- ((\Pulse_width|Counter_pulse|counter_i\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(19),
	datac => \Pulse_width|Counter_pulse|counter_i\(18),
	datad => \Pulse_width|Counter_pulse|counter_i\(20),
	combout => \Pulse_width|Mult0|mult_core|romout[1][11]~16_combout\);

-- Location: LCCOMB_X29_Y15_N10
\Pulse_width|Mult0|mult_core|romout[1][10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][10]~15_combout\ = (\Pulse_width|Counter_pulse|counter_i\(19) & ((\Pulse_width|Counter_pulse|counter_i\(18) & (\Pulse_width|Counter_pulse|counter_i\(17) & \Pulse_width|Counter_pulse|counter_i\(20))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(18) & ((!\Pulse_width|Counter_pulse|counter_i\(20)))))) # (!\Pulse_width|Counter_pulse|counter_i\(19) & ((\Pulse_width|Counter_pulse|counter_i\(18) & ((\Pulse_width|Counter_pulse|counter_i\(17)) # 
-- (\Pulse_width|Counter_pulse|counter_i\(20)))) # (!\Pulse_width|Counter_pulse|counter_i\(18) & (\Pulse_width|Counter_pulse|counter_i\(17) & \Pulse_width|Counter_pulse|counter_i\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(19),
	datab => \Pulse_width|Counter_pulse|counter_i\(18),
	datac => \Pulse_width|Counter_pulse|counter_i\(17),
	datad => \Pulse_width|Counter_pulse|counter_i\(20),
	combout => \Pulse_width|Mult0|mult_core|romout[1][10]~15_combout\);

-- Location: LCCOMB_X29_Y15_N2
\Pulse_width|Mult0|mult_core|romout[1][9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][9]~7_combout\ = (\Pulse_width|Counter_pulse|counter_i\(19) & ((\Pulse_width|Counter_pulse|counter_i\(18) & (!\Pulse_width|Counter_pulse|counter_i\(17) & \Pulse_width|Counter_pulse|counter_i\(20))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(18) & (\Pulse_width|Counter_pulse|counter_i\(17))))) # (!\Pulse_width|Counter_pulse|counter_i\(19) & ((\Pulse_width|Counter_pulse|counter_i\(18) & ((\Pulse_width|Counter_pulse|counter_i\(20)) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(17)))) # (!\Pulse_width|Counter_pulse|counter_i\(18) & (!\Pulse_width|Counter_pulse|counter_i\(17) & \Pulse_width|Counter_pulse|counter_i\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(19),
	datab => \Pulse_width|Counter_pulse|counter_i\(18),
	datac => \Pulse_width|Counter_pulse|counter_i\(17),
	datad => \Pulse_width|Counter_pulse|counter_i\(20),
	combout => \Pulse_width|Mult0|mult_core|romout[1][9]~7_combout\);

-- Location: LCCOMB_X29_Y15_N20
\Pulse_width|Mult0|mult_core|romout[1][8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][8]~8_combout\ = (\Pulse_width|Counter_pulse|counter_i\(20) & (\Pulse_width|Counter_pulse|counter_i\(18) $ (((!\Pulse_width|Counter_pulse|counter_i\(19) & !\Pulse_width|Counter_pulse|counter_i\(17)))))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(20) & ((\Pulse_width|Counter_pulse|counter_i\(19) & ((\Pulse_width|Counter_pulse|counter_i\(17)) # (!\Pulse_width|Counter_pulse|counter_i\(18)))) # (!\Pulse_width|Counter_pulse|counter_i\(19) & 
-- (\Pulse_width|Counter_pulse|counter_i\(17) & !\Pulse_width|Counter_pulse|counter_i\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(19),
	datab => \Pulse_width|Counter_pulse|counter_i\(20),
	datac => \Pulse_width|Counter_pulse|counter_i\(17),
	datad => \Pulse_width|Counter_pulse|counter_i\(18),
	combout => \Pulse_width|Mult0|mult_core|romout[1][8]~8_combout\);

-- Location: LCCOMB_X26_Y16_N12
\Pulse_width|Mult0|mult_core|romout[0][12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][12]~9_combout\ = (\Pulse_width|Counter_pulse|counter_i\(15) & \Pulse_width|Counter_pulse|counter_i\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => \Pulse_width|Counter_pulse|counter_i\(16),
	combout => \Pulse_width|Mult0|mult_core|romout[0][12]~9_combout\);

-- Location: LCCOMB_X29_Y15_N18
\Pulse_width|Mult0|mult_core|romout[1][7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\ = (\Pulse_width|Counter_pulse|counter_i\(19) & (\Pulse_width|Counter_pulse|counter_i\(17) $ (((\Pulse_width|Counter_pulse|counter_i\(20)) # (!\Pulse_width|Counter_pulse|counter_i\(18)))))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(19) & ((\Pulse_width|Counter_pulse|counter_i\(20) & (\Pulse_width|Counter_pulse|counter_i\(17) & !\Pulse_width|Counter_pulse|counter_i\(18))) # (!\Pulse_width|Counter_pulse|counter_i\(20) & 
-- (!\Pulse_width|Counter_pulse|counter_i\(17) & \Pulse_width|Counter_pulse|counter_i\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(19),
	datab => \Pulse_width|Counter_pulse|counter_i\(20),
	datac => \Pulse_width|Counter_pulse|counter_i\(17),
	datad => \Pulse_width|Counter_pulse|counter_i\(18),
	combout => \Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\);

-- Location: LCCOMB_X26_Y16_N18
\Pulse_width|Mult0|mult_core|romout[0][11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\ = (\Pulse_width|Counter_pulse|counter_i\(15) & (\Pulse_width|Counter_pulse|counter_i\(14) & !\Pulse_width|Counter_pulse|counter_i\(16))) # (!\Pulse_width|Counter_pulse|counter_i\(15) & 
-- ((\Pulse_width|Counter_pulse|counter_i\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(14),
	datac => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => \Pulse_width|Counter_pulse|counter_i\(16),
	combout => \Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\);

-- Location: LCCOMB_X26_Y16_N4
\Pulse_width|Mult0|mult_core|romout[0][10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][10]~13_combout\ = (\Pulse_width|Counter_pulse|counter_i\(16) & ((\Pulse_width|Counter_pulse|counter_i\(13) & ((\Pulse_width|Counter_pulse|counter_i\(14)) # (!\Pulse_width|Counter_pulse|counter_i\(15)))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(13) & (!\Pulse_width|Counter_pulse|counter_i\(15) & \Pulse_width|Counter_pulse|counter_i\(14))))) # (!\Pulse_width|Counter_pulse|counter_i\(16) & ((\Pulse_width|Counter_pulse|counter_i\(15) & 
-- ((!\Pulse_width|Counter_pulse|counter_i\(14)))) # (!\Pulse_width|Counter_pulse|counter_i\(15) & (\Pulse_width|Counter_pulse|counter_i\(13) & \Pulse_width|Counter_pulse|counter_i\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(16),
	datab => \Pulse_width|Counter_pulse|counter_i\(13),
	datac => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => \Pulse_width|Counter_pulse|counter_i\(14),
	combout => \Pulse_width|Mult0|mult_core|romout[0][10]~13_combout\);

-- Location: LCCOMB_X29_Y15_N12
\Pulse_width|Mult0|mult_core|romout[1][6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][6]~12_combout\ = (\Pulse_width|Counter_pulse|counter_i\(20) & ((\Pulse_width|Counter_pulse|counter_i\(19) & (!\Pulse_width|Counter_pulse|counter_i\(17) & !\Pulse_width|Counter_pulse|counter_i\(18))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(19) & (\Pulse_width|Counter_pulse|counter_i\(17) & \Pulse_width|Counter_pulse|counter_i\(18))))) # (!\Pulse_width|Counter_pulse|counter_i\(20) & (\Pulse_width|Counter_pulse|counter_i\(18) $ 
-- (((!\Pulse_width|Counter_pulse|counter_i\(19) & \Pulse_width|Counter_pulse|counter_i\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(19),
	datab => \Pulse_width|Counter_pulse|counter_i\(20),
	datac => \Pulse_width|Counter_pulse|counter_i\(17),
	datad => \Pulse_width|Counter_pulse|counter_i\(18),
	combout => \Pulse_width|Mult0|mult_core|romout[1][6]~12_combout\);

-- Location: LCCOMB_X30_Y16_N26
\Pulse_width|Mult0|mult_core|romout[0][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][9]~combout\ = (\Pulse_width|Counter_pulse|counter_i\(14) & ((\Pulse_width|Counter_pulse|counter_i\(13) & (!\Pulse_width|Counter_pulse|counter_i\(15) & \Pulse_width|Counter_pulse|counter_i\(16))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(13) & ((\Pulse_width|Counter_pulse|counter_i\(16)) # (!\Pulse_width|Counter_pulse|counter_i\(15)))))) # (!\Pulse_width|Counter_pulse|counter_i\(14) & ((\Pulse_width|Counter_pulse|counter_i\(13) & 
-- (\Pulse_width|Counter_pulse|counter_i\(15))) # (!\Pulse_width|Counter_pulse|counter_i\(13) & (!\Pulse_width|Counter_pulse|counter_i\(15) & \Pulse_width|Counter_pulse|counter_i\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(14),
	datab => \Pulse_width|Counter_pulse|counter_i\(13),
	datac => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => \Pulse_width|Counter_pulse|counter_i\(16),
	combout => \Pulse_width|Mult0|mult_core|romout[0][9]~combout\);

-- Location: LCCOMB_X26_Y15_N4
\Pulse_width|Mult0|mult_core|romout[1][5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\ = (\Pulse_width|Counter_pulse|counter_i\(18) & ((\Pulse_width|Counter_pulse|counter_i\(19) $ (\Pulse_width|Counter_pulse|counter_i\(17))))) # (!\Pulse_width|Counter_pulse|counter_i\(18) & 
-- ((\Pulse_width|Counter_pulse|counter_i\(20) & (\Pulse_width|Counter_pulse|counter_i\(19) $ (!\Pulse_width|Counter_pulse|counter_i\(17)))) # (!\Pulse_width|Counter_pulse|counter_i\(20) & (!\Pulse_width|Counter_pulse|counter_i\(19) & 
-- \Pulse_width|Counter_pulse|counter_i\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(18),
	datab => \Pulse_width|Counter_pulse|counter_i\(20),
	datac => \Pulse_width|Counter_pulse|counter_i\(19),
	datad => \Pulse_width|Counter_pulse|counter_i\(17),
	combout => \Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\);

-- Location: LCCOMB_X30_Y16_N30
\Pulse_width|Mult0|mult_core|romout[1][4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][4]~0_combout\ = (\Pulse_width|Counter_pulse|counter_i\(17) & ((\Pulse_width|Counter_pulse|counter_i\(18) $ (\Pulse_width|Counter_pulse|counter_i\(20))))) # (!\Pulse_width|Counter_pulse|counter_i\(17) & 
-- (!\Pulse_width|Counter_pulse|counter_i\(18) & ((\Pulse_width|Counter_pulse|counter_i\(19)) # (\Pulse_width|Counter_pulse|counter_i\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(17),
	datab => \Pulse_width|Counter_pulse|counter_i\(19),
	datac => \Pulse_width|Counter_pulse|counter_i\(18),
	datad => \Pulse_width|Counter_pulse|counter_i\(20),
	combout => \Pulse_width|Mult0|mult_core|romout[1][4]~0_combout\);

-- Location: LCCOMB_X30_Y16_N24
\Pulse_width|Mult0|mult_core|romout[0][8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][8]~1_combout\ = (\Pulse_width|Counter_pulse|counter_i\(14) & ((\Pulse_width|Counter_pulse|counter_i\(13) & ((\Pulse_width|Counter_pulse|counter_i\(15)) # (\Pulse_width|Counter_pulse|counter_i\(16)))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(13) & (\Pulse_width|Counter_pulse|counter_i\(15) & \Pulse_width|Counter_pulse|counter_i\(16))))) # (!\Pulse_width|Counter_pulse|counter_i\(14) & (\Pulse_width|Counter_pulse|counter_i\(16) $ 
-- (((\Pulse_width|Counter_pulse|counter_i\(13)) # (\Pulse_width|Counter_pulse|counter_i\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(14),
	datab => \Pulse_width|Counter_pulse|counter_i\(13),
	datac => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => \Pulse_width|Counter_pulse|counter_i\(16),
	combout => \Pulse_width|Mult0|mult_core|romout[0][8]~1_combout\);

-- Location: LCCOMB_X29_Y15_N24
\Pulse_width|Mult0|mult_core|romout[1][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][3]~2_combout\ = \Pulse_width|Counter_pulse|counter_i\(20) $ (((!\Pulse_width|Counter_pulse|counter_i\(17) & ((\Pulse_width|Counter_pulse|counter_i\(19)) # (\Pulse_width|Counter_pulse|counter_i\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(19),
	datab => \Pulse_width|Counter_pulse|counter_i\(20),
	datac => \Pulse_width|Counter_pulse|counter_i\(17),
	datad => \Pulse_width|Counter_pulse|counter_i\(18),
	combout => \Pulse_width|Mult0|mult_core|romout[1][3]~2_combout\);

-- Location: LCCOMB_X26_Y16_N8
\Pulse_width|Mult0|mult_core|romout[0][7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][7]~3_combout\ = (\Pulse_width|Counter_pulse|counter_i\(13) & ((\Pulse_width|Counter_pulse|counter_i\(16) & (!\Pulse_width|Counter_pulse|counter_i\(15) & !\Pulse_width|Counter_pulse|counter_i\(14))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(16) & (\Pulse_width|Counter_pulse|counter_i\(15) & \Pulse_width|Counter_pulse|counter_i\(14))))) # (!\Pulse_width|Counter_pulse|counter_i\(13) & (\Pulse_width|Counter_pulse|counter_i\(15) $ 
-- (((!\Pulse_width|Counter_pulse|counter_i\(16) & \Pulse_width|Counter_pulse|counter_i\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(16),
	datab => \Pulse_width|Counter_pulse|counter_i\(13),
	datac => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => \Pulse_width|Counter_pulse|counter_i\(14),
	combout => \Pulse_width|Mult0|mult_core|romout[0][7]~3_combout\);

-- Location: LCCOMB_X26_Y16_N30
\Pulse_width|Mult0|mult_core|romout[0][6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][6]~4_combout\ = (\Pulse_width|Counter_pulse|counter_i\(14) & (\Pulse_width|Counter_pulse|counter_i\(16) $ (((\Pulse_width|Counter_pulse|counter_i\(15)) # (!\Pulse_width|Counter_pulse|counter_i\(13)))))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(14) & ((\Pulse_width|Counter_pulse|counter_i\(13) & (!\Pulse_width|Counter_pulse|counter_i\(15) & !\Pulse_width|Counter_pulse|counter_i\(16))) # (!\Pulse_width|Counter_pulse|counter_i\(13) & 
-- (\Pulse_width|Counter_pulse|counter_i\(15) & \Pulse_width|Counter_pulse|counter_i\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(14),
	datab => \Pulse_width|Counter_pulse|counter_i\(13),
	datac => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => \Pulse_width|Counter_pulse|counter_i\(16),
	combout => \Pulse_width|Mult0|mult_core|romout[0][6]~4_combout\);

-- Location: LCCOMB_X26_Y15_N0
\Pulse_width|Mult0|mult_core|romout[1][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][2]~combout\ = \Pulse_width|Counter_pulse|counter_i\(19) $ (((\Pulse_width|Counter_pulse|counter_i\(18)) # (\Pulse_width|Counter_pulse|counter_i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(18),
	datac => \Pulse_width|Counter_pulse|counter_i\(19),
	datad => \Pulse_width|Counter_pulse|counter_i\(17),
	combout => \Pulse_width|Mult0|mult_core|romout[1][2]~combout\);

-- Location: LCCOMB_X30_Y16_N22
\Pulse_width|Mult0|mult_core|romout[0][5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][5]~6_combout\ = (\Pulse_width|Counter_pulse|counter_i\(16) & (\Pulse_width|Counter_pulse|counter_i\(13) $ (\Pulse_width|Counter_pulse|counter_i\(15) $ (!\Pulse_width|Counter_pulse|counter_i\(14))))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(16) & ((\Pulse_width|Counter_pulse|counter_i\(13) & (!\Pulse_width|Counter_pulse|counter_i\(15))) # (!\Pulse_width|Counter_pulse|counter_i\(13) & (\Pulse_width|Counter_pulse|counter_i\(15) & 
-- \Pulse_width|Counter_pulse|counter_i\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(16),
	datab => \Pulse_width|Counter_pulse|counter_i\(13),
	datac => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => \Pulse_width|Counter_pulse|counter_i\(14),
	combout => \Pulse_width|Mult0|mult_core|romout[0][5]~6_combout\);

-- Location: LCCOMB_X26_Y15_N2
\Pulse_width|Mult0|mult_core|romout[1][1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[1][1]~5_combout\ = \Pulse_width|Counter_pulse|counter_i\(18) $ (\Pulse_width|Counter_pulse|counter_i\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Counter_pulse|counter_i\(18),
	datad => \Pulse_width|Counter_pulse|counter_i\(17),
	combout => \Pulse_width|Mult0|mult_core|romout[1][1]~5_combout\);

-- Location: LCCOMB_X30_Y16_N28
\Pulse_width|Mult0|mult_core|romout[0][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|romout[0][4]~combout\ = (\Pulse_width|Counter_pulse|counter_i\(14) & (\Pulse_width|Counter_pulse|counter_i\(13) & ((!\Pulse_width|Counter_pulse|counter_i\(16))))) # (!\Pulse_width|Counter_pulse|counter_i\(14) & 
-- ((\Pulse_width|Counter_pulse|counter_i\(16)) # ((!\Pulse_width|Counter_pulse|counter_i\(13) & \Pulse_width|Counter_pulse|counter_i\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(14),
	datab => \Pulse_width|Counter_pulse|counter_i\(13),
	datac => \Pulse_width|Counter_pulse|counter_i\(15),
	datad => \Pulse_width|Counter_pulse|counter_i\(16),
	combout => \Pulse_width|Mult0|mult_core|romout[0][4]~combout\);

-- Location: LCCOMB_X26_Y15_N6
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(17) & \Pulse_width|Mult0|mult_core|romout[0][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(17),
	datab => \Pulse_width|Mult0|mult_core|romout[0][4]~combout\,
	datad => VCC,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X26_Y15_N8
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

-- Location: LCCOMB_X26_Y15_N10
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

-- Location: LCCOMB_X26_Y15_N12
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ = CARRY((\Pulse_width|Mult0|mult_core|romout[1][3]~2_combout\ & (!\Pulse_width|Mult0|mult_core|romout[0][7]~3_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\)) # (!\Pulse_width|Mult0|mult_core|romout[1][3]~2_combout\ & ((!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\) # 
-- (!\Pulse_width|Mult0|mult_core|romout[0][7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[1][3]~2_combout\,
	datab => \Pulse_width|Mult0|mult_core|romout[0][7]~3_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X26_Y15_N14
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Pulse_width|Mult0|mult_core|romout[1][4]~0_combout\ $ (\Pulse_width|Mult0|mult_core|romout[0][8]~1_combout\ $ 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))) # (GND)
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Pulse_width|Mult0|mult_core|romout[1][4]~0_combout\ & ((\Pulse_width|Mult0|mult_core|romout[0][8]~1_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\))) # (!\Pulse_width|Mult0|mult_core|romout[1][4]~0_combout\ & (\Pulse_width|Mult0|mult_core|romout[0][8]~1_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[1][4]~0_combout\,
	datab => \Pulse_width|Mult0|mult_core|romout[0][8]~1_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X26_Y15_N16
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Pulse_width|Mult0|mult_core|romout[0][9]~combout\ & ((\Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\ & 
-- (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\ & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\Pulse_width|Mult0|mult_core|romout[0][9]~combout\ & ((\Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\ & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\ & 
-- ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\Pulse_width|Mult0|mult_core|romout[0][9]~combout\ & (!\Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Pulse_width|Mult0|mult_core|romout[0][9]~combout\ & ((!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # 
-- (!\Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[0][9]~combout\,
	datab => \Pulse_width|Mult0|mult_core|romout[1][5]~14_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X26_Y15_N18
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\Pulse_width|Mult0|mult_core|romout[0][10]~13_combout\ $ (\Pulse_width|Mult0|mult_core|romout[1][6]~12_combout\ $ 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\Pulse_width|Mult0|mult_core|romout[0][10]~13_combout\ & ((\Pulse_width|Mult0|mult_core|romout[1][6]~12_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # (!\Pulse_width|Mult0|mult_core|romout[0][10]~13_combout\ & (\Pulse_width|Mult0|mult_core|romout[1][6]~12_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[0][10]~13_combout\,
	datab => \Pulse_width|Mult0|mult_core|romout[1][6]~12_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X26_Y15_N20
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\ & ((\Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\ & 
-- (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # (!\Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\ & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # 
-- (!\Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\ & ((\Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\ & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\ & 
-- ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\ & (!\Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\ & ((!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # 
-- (!\Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[1][7]~10_combout\,
	datab => \Pulse_width|Mult0|mult_core|romout[0][11]~11_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X26_Y15_N22
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = ((\Pulse_width|Mult0|mult_core|romout[1][8]~8_combout\ $ (\Pulse_width|Mult0|mult_core|romout[0][12]~9_combout\ $ 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\Pulse_width|Mult0|mult_core|romout[1][8]~8_combout\ & ((\Pulse_width|Mult0|mult_core|romout[0][12]~9_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))) # (!\Pulse_width|Mult0|mult_core|romout[1][8]~8_combout\ & (\Pulse_width|Mult0|mult_core|romout[0][12]~9_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[1][8]~8_combout\,
	datab => \Pulse_width|Mult0|mult_core|romout[0][12]~9_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X26_Y15_N24
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

-- Location: LCCOMB_X26_Y15_N26
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = (\Pulse_width|Mult0|mult_core|romout[1][10]~15_combout\ & (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ $ (GND))) # 
-- (!\Pulse_width|Mult0|mult_core|romout[1][10]~15_combout\ & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ & VCC))
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ = CARRY((\Pulse_width|Mult0|mult_core|romout[1][10]~15_combout\ & !\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[1][10]~15_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X26_Y15_N28
\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ = (\Pulse_width|Mult0|mult_core|romout[1][11]~16_combout\ & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # 
-- (!\Pulse_width|Mult0|mult_core|romout[1][11]~16_combout\ & ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (GND)))
-- \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ = CARRY((!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (!\Pulse_width|Mult0|mult_core|romout[1][11]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|romout[1][11]~16_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\,
	combout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X30_Y16_N20
\Pulse_width|Counter_pulse|counter_i[21]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Counter_pulse|counter_i[21]~61_combout\ = \Pulse_width|Counter_pulse|counter_i\(21) $ (!\Pulse_width|Counter_pulse|counter_i[20]~60\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Counter_pulse|counter_i\(21),
	cin => \Pulse_width|Counter_pulse|counter_i[20]~60\,
	combout => \Pulse_width|Counter_pulse|counter_i[21]~61_combout\);

-- Location: FF_X30_Y16_N21
\Pulse_width|Counter_pulse|counter_i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Pulse_width|Counter_pulse|counter_i[21]~61_combout\,
	clrn => \Measurementcontrol|ALT_INV_LessThan1~5_combout\,
	ena => \pulse~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse_width|Counter_pulse|counter_i\(21));

-- Location: LCCOMB_X25_Y15_N14
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\Pulse_width|Counter_pulse|counter_i\(21) & (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (VCC))) # 
-- (!\Pulse_width|Counter_pulse|counter_i\(21) & (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & VCC))
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(21) & \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(21),
	datab => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X25_Y15_N16
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\Pulse_width|Counter_pulse|counter_i\(21) & ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # (!\Pulse_width|Counter_pulse|counter_i\(21) & ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (GND)))))
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(21) & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\Pulse_width|Counter_pulse|counter_i\(21) & ((!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(21),
	datab => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X25_Y15_N18
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\Pulse_width|Counter_pulse|counter_i\(21) $ (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(21) & ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\Pulse_width|Counter_pulse|counter_i\(21) & (\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(21),
	datab => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X25_Y15_N20
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

-- Location: LCCOMB_X25_Y15_N22
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

-- Location: LCCOMB_X25_Y15_N24
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\Pulse_width|Counter_pulse|counter_i\(21) & ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # (!\Pulse_width|Counter_pulse|counter_i\(21) & ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (GND)))))
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\Pulse_width|Counter_pulse|counter_i\(21) & (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- !\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\Pulse_width|Counter_pulse|counter_i\(21) & ((!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(21),
	datab => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X25_Y15_N26
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = ((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ $ (\Pulse_width|Counter_pulse|counter_i\(21) $ 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & ((\Pulse_width|Counter_pulse|counter_i\(21)) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))) # (!\Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & (\Pulse_width|Counter_pulse|counter_i\(21) & 
-- !\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datab => \Pulse_width|Counter_pulse|counter_i\(21),
	datad => VCC,
	cin => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X25_Y15_N28
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

-- Location: LCCOMB_X29_Y15_N22
\Pulse_width|Mult0|mult_core|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|_~0_combout\ = (\Pulse_width|Counter_pulse|counter_i\(19) & \Pulse_width|Counter_pulse|counter_i\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Counter_pulse|counter_i\(19),
	datad => \Pulse_width|Counter_pulse|counter_i\(20),
	combout => \Pulse_width|Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X26_Y15_N30
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

-- Location: LCCOMB_X25_Y15_N30
\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ = \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ $ (\Pulse_width|Counter_pulse|counter_i\(21) $ 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	datab => \Pulse_width|Counter_pulse|counter_i\(21),
	cin => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\,
	combout => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\);

-- Location: LCCOMB_X25_Y15_N0
\Pulse_width|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|LessThan0~0_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\) # ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\) # 
-- ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\) # (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	combout => \Pulse_width|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y15_N6
\Pulse_width|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|LessThan0~1_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\) # ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\) # 
-- ((\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & \Pulse_width|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datad => \Pulse_width|LessThan0~0_combout\,
	combout => \Pulse_width|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y15_N24
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

-- Location: FF_X24_Y15_N25
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

-- Location: LCCOMB_X24_Y15_N22
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

-- Location: FF_X24_Y15_N23
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

-- Location: LCCOMB_X24_Y15_N28
\Pulse_width|Distance~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~13_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & (((!\Pulse_width|LessThan0~1_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\)) # (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~13_combout\);

-- Location: FF_X24_Y15_N29
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

-- Location: LCCOMB_X24_Y15_N26
\Pulse_width|Distance~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~16_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (((!\Pulse_width|LessThan0~1_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)) # (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~16_combout\);

-- Location: FF_X24_Y15_N27
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

-- Location: LCCOMB_X25_Y15_N12
\Pulse_width|Distance~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~20_combout\ = ((!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & 
-- !\Pulse_width|LessThan0~0_combout\))) # (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => \Pulse_width|LessThan0~0_combout\,
	combout => \Pulse_width|Distance~20_combout\);

-- Location: LCCOMB_X25_Y15_N10
\Pulse_width|Distance~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~21_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & ((\Pulse_width|Distance~20_combout\) # 
-- ((!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => \Pulse_width|Distance~20_combout\,
	combout => \Pulse_width|Distance~21_combout\);

-- Location: FF_X25_Y15_N11
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

-- Location: LCCOMB_X24_Y15_N2
\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \Pulse_width|Distance\(4) $ (VCC)
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\Pulse_width|Distance\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Distance\(4),
	datad => VCC,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X24_Y15_N4
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

-- Location: LCCOMB_X24_Y15_N6
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

-- Location: LCCOMB_X24_Y15_N8
\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\Pulse_width|Distance\(7) & (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\Pulse_width|Distance\(7) & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\Pulse_width|Distance\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(7),
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X24_Y15_N10
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

-- Location: LCCOMB_X24_Y15_N12
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

-- Location: LCCOMB_X23_Y15_N30
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

-- Location: LCCOMB_X23_Y15_N8
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

-- Location: LCCOMB_X23_Y15_N26
\segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~35_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[53]~35_combout\);

-- Location: LCCOMB_X23_Y15_N0
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

-- Location: LCCOMB_X24_Y15_N20
\segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\);

-- Location: LCCOMB_X23_Y15_N28
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

-- Location: LCCOMB_X24_Y15_N14
\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39_combout\);

-- Location: LCCOMB_X19_Y15_N6
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

-- Location: LCCOMB_X24_Y15_N18
\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41_combout\);

-- Location: LCCOMB_X24_Y15_N16
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

-- Location: LCCOMB_X25_Y15_N8
\Pulse_width|Distance~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~17_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (((!\Pulse_width|LessThan0~1_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)) # (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~17_combout\);

-- Location: FF_X25_Y15_N9
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

-- Location: LCCOMB_X24_Y15_N30
\segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~43_combout\ = (\Pulse_width|Distance\(3) & !\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Distance\(3),
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~43_combout\);

-- Location: LCCOMB_X24_Y15_N0
\segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~42_combout\ = (\Pulse_width|Distance\(3) & \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Distance\(3),
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~42_combout\);

-- Location: LCCOMB_X23_Y15_N10
\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~43_combout\) # (\segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~42_combout\)))
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~43_combout\) # (\segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~43_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[49]~42_combout\,
	datad => VCC,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X23_Y15_N12
\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41_combout\) # 
-- (\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~40_combout\)))) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41_combout\ & 
-- (!\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~40_combout\)))
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41_combout\ & (!\segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~40_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~41_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[50]~40_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X23_Y15_N14
\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39_combout\) # 
-- (\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\))))) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39_combout\) # 
-- ((\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\) # (GND))))
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39_combout\) # ((\segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~39_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X23_Y15_N16
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

-- Location: LCCOMB_X23_Y15_N18
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

-- Location: LCCOMB_X23_Y15_N20
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

-- Location: LCCOMB_X23_Y15_N22
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

-- Location: LCCOMB_X21_Y15_N26
\segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~44_combout\ = (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~44_combout\);

-- Location: LCCOMB_X21_Y15_N20
\segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~54_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Pulse_width|Distance\(7))) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \Pulse_width|Distance\(7),
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~54_combout\);

-- Location: LCCOMB_X23_Y15_N4
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

-- Location: LCCOMB_X21_Y15_N18
\segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~55_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Pulse_width|Distance\(6))) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(6),
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[61]~55_combout\);

-- Location: LCCOMB_X23_Y15_N2
\segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~46_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~46_combout\);

-- Location: LCCOMB_X21_Y15_N16
\segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~56_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Pulse_width|Distance\(5))) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \Pulse_width|Distance\(5),
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~56_combout\);

-- Location: LCCOMB_X23_Y15_N24
\segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~47_combout\ = (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~47_combout\);

-- Location: LCCOMB_X21_Y15_N14
\segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~57_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Pulse_width|Distance\(4)))) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \Pulse_width|Distance\(4),
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~57_combout\);

-- Location: LCCOMB_X21_Y15_N22
\segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~49_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[58]~49_combout\);

-- Location: LCCOMB_X21_Y15_N24
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

-- Location: LCCOMB_X25_Y15_N2
\Pulse_width|Distance~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~18_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & (((!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)) # (!\Pulse_width|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|LessThan0~1_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	combout => \Pulse_width|Distance~18_combout\);

-- Location: FF_X25_Y15_N3
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

-- Location: LCCOMB_X19_Y15_N30
\segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~52_combout\ = (\Pulse_width|Distance\(2) & !\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Distance\(2),
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~52_combout\);

-- Location: LCCOMB_X19_Y15_N28
\segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~51_combout\ = (\Pulse_width|Distance\(2) & \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Distance\(2),
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~51_combout\);

-- Location: LCCOMB_X19_Y15_N24
\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~52_combout\) # (\segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~52_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|StageOut[48]~51_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X21_Y15_N30
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

-- Location: LCCOMB_X21_Y15_N28
\segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~50_combout\ = (\Pulse_width|Distance\(2) & \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse_width|Distance\(2),
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Div0|auto_generated|divider|divider|StageOut[57]~50_combout\);

-- Location: LCCOMB_X21_Y15_N0
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

-- Location: LCCOMB_X21_Y15_N2
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

-- Location: LCCOMB_X21_Y15_N4
\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\ = CARRY((\segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~47_combout\) # ((\segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~57_combout\) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[59]~57_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\);

-- Location: LCCOMB_X21_Y15_N6
\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\ = CARRY(((!\segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~46_combout\ & !\segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~56_combout\)) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~46_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[60]~56_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\);

-- Location: LCCOMB_X21_Y15_N8
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

-- Location: LCCOMB_X21_Y15_N10
\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ = CARRY((!\segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~44_combout\ & (!\segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~54_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~44_combout\,
	datab => \segment_driver|Div0|auto_generated|divider|divider|StageOut[62]~54_combout\,
	datad => VCC,
	cin => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\,
	cout => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\);

-- Location: LCCOMB_X21_Y15_N12
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

-- Location: LCCOMB_X23_Y15_N6
\segment_driver|Mult0|mult_core|romout[0][9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Mult0|mult_core|romout[0][9]~0_combout\ = (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \segment_driver|Mult0|mult_core|romout[0][9]~0_combout\);

-- Location: LCCOMB_X22_Y15_N28
\segment_driver|Mult0|mult_core|romout[0][8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Mult0|mult_core|romout[0][8]~1_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- !\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \segment_driver|Mult0|mult_core|romout[0][8]~1_combout\);

-- Location: LCCOMB_X22_Y15_N30
\segment_driver|Mult0|mult_core|romout[0][7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Mult0|mult_core|romout[0][7]~2_combout\ = \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ $ (((\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \segment_driver|Mult0|mult_core|romout[0][7]~2_combout\);

-- Location: LCCOMB_X22_Y15_N0
\segment_driver|Mult0|mult_core|romout[0][6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Mult0|mult_core|romout[0][6]~3_combout\ = \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \segment_driver|Mult0|mult_core|romout[0][6]~3_combout\);

-- Location: LCCOMB_X22_Y15_N4
\segment_driver|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add0~0_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\Pulse_width|Distance\(2)) # (GND))) # (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ 
-- & (\Pulse_width|Distance\(2) $ (VCC)))
-- \segment_driver|Add0~1\ = CARRY((\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\) # (\Pulse_width|Distance\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \Pulse_width|Distance\(2),
	datad => VCC,
	combout => \segment_driver|Add0~0_combout\,
	cout => \segment_driver|Add0~1\);

-- Location: LCCOMB_X22_Y15_N6
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

-- Location: LCCOMB_X22_Y15_N8
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

-- Location: LCCOMB_X22_Y15_N10
\segment_driver|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add0~6_combout\ = (\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\Pulse_width|Distance\(5) & (\segment_driver|Add0~5\ & VCC)) # (!\Pulse_width|Distance\(5) & (!\segment_driver|Add0~5\)))) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\Pulse_width|Distance\(5) & (!\segment_driver|Add0~5\)) # (!\Pulse_width|Distance\(5) & ((\segment_driver|Add0~5\) # (GND)))))
-- \segment_driver|Add0~7\ = CARRY((\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (!\Pulse_width|Distance\(5) & !\segment_driver|Add0~5\)) # 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((!\segment_driver|Add0~5\) # (!\Pulse_width|Distance\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \Pulse_width|Distance\(5),
	datad => VCC,
	cin => \segment_driver|Add0~5\,
	combout => \segment_driver|Add0~6_combout\,
	cout => \segment_driver|Add0~7\);

-- Location: LCCOMB_X22_Y15_N12
\segment_driver|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add0~8_combout\ = ((\Pulse_width|Distance\(6) $ (\segment_driver|Mult0|mult_core|romout[0][6]~3_combout\ $ (\segment_driver|Add0~7\)))) # (GND)
-- \segment_driver|Add0~9\ = CARRY((\Pulse_width|Distance\(6) & ((!\segment_driver|Add0~7\) # (!\segment_driver|Mult0|mult_core|romout[0][6]~3_combout\))) # (!\Pulse_width|Distance\(6) & (!\segment_driver|Mult0|mult_core|romout[0][6]~3_combout\ & 
-- !\segment_driver|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(6),
	datab => \segment_driver|Mult0|mult_core|romout[0][6]~3_combout\,
	datad => VCC,
	cin => \segment_driver|Add0~7\,
	combout => \segment_driver|Add0~8_combout\,
	cout => \segment_driver|Add0~9\);

-- Location: LCCOMB_X22_Y15_N14
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

-- Location: LCCOMB_X22_Y15_N16
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

-- Location: LCCOMB_X22_Y15_N18
\segment_driver|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add0~14_combout\ = (\segment_driver|Mult0|mult_core|romout[0][9]~0_combout\ & ((\segment_driver|Add0~13\) # (GND))) # (!\segment_driver|Mult0|mult_core|romout[0][9]~0_combout\ & (!\segment_driver|Add0~13\))
-- \segment_driver|Add0~15\ = CARRY((\segment_driver|Mult0|mult_core|romout[0][9]~0_combout\) # (!\segment_driver|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Mult0|mult_core|romout[0][9]~0_combout\,
	datad => VCC,
	cin => \segment_driver|Add0~13\,
	combout => \segment_driver|Add0~14_combout\,
	cout => \segment_driver|Add0~15\);

-- Location: LCCOMB_X22_Y15_N20
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

-- Location: LCCOMB_X22_Y15_N22
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

-- Location: LCCOMB_X22_Y15_N26
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

-- Location: LCCOMB_X22_Y15_N24
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

-- Location: LCCOMB_X25_Y15_N4
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

-- Location: FF_X25_Y15_N5
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

-- Location: LCCOMB_X28_Y15_N20
\Pulse_width|Distance~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse_width|Distance~19_combout\ = (\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (((!\Pulse_width|LessThan0~1_combout\) # 
-- (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\)) # (!\Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datab => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datac => \Pulse_width|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => \Pulse_width|LessThan0~1_combout\,
	combout => \Pulse_width|Distance~19_combout\);

-- Location: FF_X28_Y15_N21
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

-- Location: LCCOMB_X23_Y12_N12
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\ = (!\Pulse_width|Distance\(0) & (!\segment_driver|Add0~0_combout\ & !\Pulse_width|Distance\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse_width|Distance\(0),
	datac => \segment_driver|Add0~0_combout\,
	datad => \Pulse_width|Distance\(1),
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~10_combout\);

-- Location: LCCOMB_X23_Y12_N10
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

-- Location: LCCOMB_X23_Y12_N4
\segment_driver|Div1|auto_generated|divider|my_abs_num|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|_~0_combout\ = \segment_driver|Add0~6_combout\ $ (\segment_driver|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Add0~6_combout\,
	datad => \segment_driver|Add0~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~0_combout\);

-- Location: LCCOMB_X22_Y15_N2
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|_~1_combout\ & (\segment_driver|Div1|auto_generated|divider|my_abs_num|_~2_combout\ & 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ & \segment_driver|Div1|auto_generated|divider|my_abs_num|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~1_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~2_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~0_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\);

-- Location: LCCOMB_X21_Y11_N30
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\ = \segment_driver|Add0~14_combout\ $ (((\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\ & ((\segment_driver|Add0~12_combout\))) # 
-- (!\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\ & (\segment_driver|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \segment_driver|Add0~14_combout\,
	datac => \segment_driver|Add0~12_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\);

-- Location: LCCOMB_X21_Y11_N22
\segment_driver|Div1|auto_generated|divider|my_abs_num|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|_~4_combout\ = \segment_driver|Add0~18_combout\ $ (\segment_driver|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Add0~18_combout\,
	datad => \segment_driver|Add0~14_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~4_combout\);

-- Location: LCCOMB_X21_Y11_N28
\segment_driver|Div1|auto_generated|divider|my_abs_num|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|_~5_combout\ = \segment_driver|Add0~16_combout\ $ (\segment_driver|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Add0~16_combout\,
	datad => \segment_driver|Add0~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~5_combout\);

-- Location: LCCOMB_X21_Y11_N8
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

-- Location: LCCOMB_X21_Y11_N26
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

-- Location: LCCOMB_X21_Y11_N4
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

-- Location: LCCOMB_X21_Y11_N12
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

-- Location: LCCOMB_X21_Y11_N14
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

-- Location: LCCOMB_X21_Y11_N16
\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\ & (\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ 
-- (GND))) # (!\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X21_Y11_N18
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

-- Location: LCCOMB_X21_Y11_N20
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

-- Location: LCCOMB_X21_Y11_N10
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

-- Location: LCCOMB_X21_Y11_N24
\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96_combout\);

-- Location: LCCOMB_X22_Y11_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~143_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\segment_driver|Add0~18_combout\ $ (\segment_driver|Add0~12_combout\ $ 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \segment_driver|Add0~12_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~143_combout\);

-- Location: LCCOMB_X22_Y11_N8
\segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~142_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\segment_driver|Add0~18_combout\ $ (\segment_driver|Add0~12_combout\ $ 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \segment_driver|Add0~12_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~142_combout\);

-- Location: LCCOMB_X22_Y11_N18
\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~143_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~142_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~143_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~143_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[24]~142_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X22_Y11_N20
\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~95_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~95_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~95_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~95_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[25]~96_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X22_Y11_N12
\segment_driver|Div1|auto_generated|divider|divider|StageOut[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[28]~90_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[28]~90_combout\);

-- Location: LCCOMB_X22_Y11_N10
\segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~91_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~91_combout\);

-- Location: LCCOMB_X21_Y11_N6
\segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~92_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[27]~92_combout\);

-- Location: LCCOMB_X21_Y11_N0
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

-- Location: LCCOMB_X22_Y11_N0
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

-- Location: LCCOMB_X22_Y11_N22
\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~94_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~93_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~94_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~93_combout\)))))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~94_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~94_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[26]~93_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X22_Y11_N24
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

-- Location: LCCOMB_X22_Y11_N26
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

-- Location: LCCOMB_X22_Y11_N28
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

-- Location: LCCOMB_X23_Y11_N2
\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\))) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[9]~15_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\);

-- Location: LCCOMB_X23_Y11_N12
\segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~163_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\)) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~13_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~163_combout\);

-- Location: LCCOMB_X22_Y11_N6
\segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~97_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[34]~97_combout\);

-- Location: LCCOMB_X22_Y11_N2
\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~14_combout\))) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[10]~14_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\);

-- Location: LCCOMB_X22_Y11_N4
\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98_combout\);

-- Location: LCCOMB_X22_Y11_N14
\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99_combout\);

-- Location: LCCOMB_X22_Y11_N16
\segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\segment_driver|Add0~18_combout\ $ (\segment_driver|Add0~12_combout\ $ 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \segment_driver|Add0~12_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~12_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144_combout\);

-- Location: LCCOMB_X23_Y11_N4
\segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~100_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~100_combout\);

-- Location: LCCOMB_X23_Y12_N6
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\ = \segment_driver|Div1|auto_generated|divider|my_abs_num|_~2_combout\ $ (((\segment_driver|Div1|auto_generated|divider|my_abs_num|_~0_combout\ & 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ & \segment_driver|Div1|auto_generated|divider|my_abs_num|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~2_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~0_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|_~1_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\);

-- Location: LCCOMB_X23_Y12_N24
\segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~101_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~101_combout\);

-- Location: LCCOMB_X23_Y12_N2
\segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~102_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~102_combout\);

-- Location: LCCOMB_X23_Y11_N14
\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~101_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~102_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~101_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~101_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[30]~102_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X23_Y11_N16
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

-- Location: LCCOMB_X23_Y11_N18
\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\)))))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~99_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X23_Y11_N20
\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~98_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X23_Y11_N22
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

-- Location: LCCOMB_X23_Y11_N24
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

-- Location: LCCOMB_X23_Y11_N10
\segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\) # 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|StageOut[32]~165_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146_combout\);

-- Location: LCCOMB_X23_Y11_N8
\segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~145_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[33]~164_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[40]~145_combout\);

-- Location: LCCOMB_X23_Y11_N30
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

-- Location: LCCOMB_X24_Y11_N20
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

-- Location: LCCOMB_X24_Y11_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105_combout\);

-- Location: LCCOMB_X23_Y11_N28
\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|StageOut[31]~144_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\);

-- Location: LCCOMB_X23_Y11_N0
\segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~106_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[37]~106_combout\);

-- Location: LCCOMB_X23_Y11_N6
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

-- Location: LCCOMB_X24_Y11_N18
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\ = \segment_driver|Add0~8_combout\ $ (((\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ & ((\segment_driver|Add0~6_combout\))) # 
-- (!\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ & (\segment_driver|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \segment_driver|Add0~8_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	datad => \segment_driver|Add0~6_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\);

-- Location: LCCOMB_X24_Y11_N26
\segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~109_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~109_combout\);

-- Location: LCCOMB_X24_Y11_N4
\segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~108_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~108_combout\);

-- Location: LCCOMB_X24_Y11_N6
\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~109_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~108_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~109_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~109_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[36]~108_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X24_Y11_N8
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

-- Location: LCCOMB_X24_Y11_N10
\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\)))))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~105_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X24_Y11_N12
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

-- Location: LCCOMB_X24_Y11_N14
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

-- Location: LCCOMB_X24_Y11_N16
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

-- Location: LCCOMB_X23_Y11_N26
\segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~148_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146_combout\) # 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[39]~146_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~148_combout\);

-- Location: LCCOMB_X24_Y11_N0
\segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~110_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[46]~110_combout\);

-- Location: LCCOMB_X23_Y12_N26
\segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|StageOut[38]~147_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149_combout\);

-- Location: LCCOMB_X24_Y11_N22
\segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~111_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~111_combout\);

-- Location: LCCOMB_X23_Y12_N14
\segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\))) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[7]~16_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166_combout\);

-- Location: LCCOMB_X24_Y11_N28
\segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~112_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~112_combout\);

-- Location: LCCOMB_X24_Y11_N24
\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114_combout\);

-- Location: LCCOMB_X24_Y11_N2
\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113_combout\);

-- Location: LCCOMB_X23_Y13_N28
\segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~151_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\segment_driver|Add0~6_combout\ $ (\segment_driver|Add0~18_combout\ $ 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~6_combout\,
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~151_combout\);

-- Location: LCCOMB_X23_Y12_N20
\segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~150_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ $ 
-- (\segment_driver|Add0~6_combout\ $ (\segment_driver|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	datab => \segment_driver|Add0~6_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \segment_driver|Add0~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~150_combout\);

-- Location: LCCOMB_X24_Y12_N16
\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~151_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~150_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~151_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~151_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[42]~150_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X24_Y12_N18
\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~114_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[43]~113_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X24_Y12_N20
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

-- Location: LCCOMB_X24_Y12_N22
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

-- Location: LCCOMB_X24_Y12_N24
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

-- Location: LCCOMB_X24_Y12_N26
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

-- Location: LCCOMB_X24_Y12_N12
\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117_combout\);

-- Location: LCCOMB_X25_Y12_N14
\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\)) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[6]~20_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\);

-- Location: LCCOMB_X23_Y12_N0
\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118_combout\);

-- Location: LCCOMB_X23_Y12_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & (\segment_driver|Add0~18_combout\ $ 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ $ (\segment_driver|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	datac => \segment_driver|Add0~6_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\);

-- Location: LCCOMB_X23_Y14_N0
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\ = (!\Pulse_width|Distance\(1) & (!\Pulse_width|Distance\(0) & (!\segment_driver|Add0~0_combout\ & \segment_driver|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(1),
	datab => \Pulse_width|Distance\(0),
	datac => \segment_driver|Add0~0_combout\,
	datad => \segment_driver|Add0~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\);

-- Location: LCCOMB_X23_Y14_N18
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\ = \segment_driver|Add0~4_combout\ $ (((\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\ & ((\segment_driver|Add0~2_combout\))) # 
-- (!\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\ & (\segment_driver|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \segment_driver|Add0~4_combout\,
	datac => \segment_driver|Add0~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\);

-- Location: LCCOMB_X22_Y12_N24
\segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~119_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~119_combout\);

-- Location: LCCOMB_X22_Y12_N6
\segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~120_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~120_combout\);

-- Location: LCCOMB_X24_Y12_N0
\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~119_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~120_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~119_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~119_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[48]~120_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X24_Y12_N2
\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~118_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X24_Y12_N4
\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\)))))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~117_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[50]~167_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X24_Y12_N28
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

-- Location: LCCOMB_X23_Y12_N18
\segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~152_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149_combout\) # 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[45]~149_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~152_combout\);

-- Location: LCCOMB_X23_Y12_N16
\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166_combout\) # 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|StageOut[44]~166_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\);

-- Location: LCCOMB_X24_Y12_N14
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

-- Location: LCCOMB_X24_Y12_N6
\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~116_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~116_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~116_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~116_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X24_Y12_N8
\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~115_combout\) # ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~152_combout\) 
-- # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~115_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[52]~152_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\);

-- Location: LCCOMB_X24_Y12_N10
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

-- Location: LCCOMB_X25_Y12_N0
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

-- Location: LCCOMB_X25_Y12_N22
\segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~155_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|StageOut[51]~153_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~155_combout\);

-- Location: LCCOMB_X24_Y12_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~121_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[58]~121_combout\);

-- Location: LCCOMB_X25_Y12_N28
\segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~122_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~122_combout\);

-- Location: LCCOMB_X23_Y12_N8
\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\) # 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[49]~154_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\);

-- Location: LCCOMB_X25_Y12_N18
\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123_combout\);

-- Location: LCCOMB_X25_Y12_N26
\segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~125_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[55]~125_combout\);

-- Location: LCCOMB_X25_Y12_N16
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

-- Location: LCCOMB_X26_Y12_N2
\segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~127_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\segment_driver|Add0~18_combout\ $ 
-- (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\ $ (\segment_driver|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~17_combout\,
	datac => \segment_driver|Add0~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~127_combout\);

-- Location: LCCOMB_X26_Y12_N24
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

-- Location: LCCOMB_X25_Y12_N2
\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~127_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~126_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~127_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~127_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[54]~126_combout\,
	datad => VCC,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X25_Y12_N4
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

-- Location: LCCOMB_X25_Y12_N6
\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\) 
-- # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123_combout\)))))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\) # 
-- (\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~123_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X25_Y12_N8
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

-- Location: LCCOMB_X25_Y12_N10
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

-- Location: LCCOMB_X25_Y12_N12
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

-- Location: LCCOMB_X24_Y14_N12
\segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~158_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~156_combout\) # 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[57]~156_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~158_combout\);

-- Location: LCCOMB_X25_Y12_N20
\segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~128_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[64]~128_combout\);

-- Location: LCCOMB_X25_Y12_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129_combout\);

-- Location: LCCOMB_X23_Y12_N22
\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\) # 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|StageOut[56]~157_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\);

-- Location: LCCOMB_X25_Y12_N24
\segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~130_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~130_combout\);

-- Location: LCCOMB_X24_Y14_N2
\segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\))) # 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[4]~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168_combout\);

-- Location: LCCOMB_X23_Y14_N16
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

-- Location: LCCOMB_X24_Y14_N4
\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132_combout\);

-- Location: LCCOMB_X23_Y14_N26
\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\ = \segment_driver|Add0~0_combout\ $ (((\segment_driver|Add0~18_combout\ & ((\Pulse_width|Distance\(1)) # (\Pulse_width|Distance\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(1),
	datab => \Pulse_width|Distance\(0),
	datac => \segment_driver|Add0~0_combout\,
	datad => \segment_driver|Add0~18_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\);

-- Location: LCCOMB_X24_Y14_N26
\segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~133_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~133_combout\);

-- Location: LCCOMB_X24_Y14_N8
\segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~134_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[60]~134_combout\);

-- Location: LCCOMB_X24_Y14_N14
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

-- Location: LCCOMB_X24_Y14_N16
\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\) 
-- # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~132_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X24_Y14_N18
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

-- Location: LCCOMB_X24_Y14_N20
\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (((\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129_combout\) 
-- # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\)))) # (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\)))
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~129_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X24_Y14_N22
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

-- Location: LCCOMB_X24_Y14_N24
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

-- Location: LCCOMB_X24_Y14_N10
\segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~135_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & 
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~135_combout\);

-- Location: LCCOMB_X23_Y12_N28
\segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~160_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|StageOut[63]~159_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[70]~160_combout\);

-- Location: LCCOMB_X25_Y14_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168_combout\) # 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[62]~168_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\);

-- Location: LCCOMB_X24_Y14_N28
\segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~136_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~136_combout\);

-- Location: LCCOMB_X23_Y14_N24
\segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\) # 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[61]~131_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\);

-- Location: LCCOMB_X24_Y14_N30
\segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~137_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[68]~137_combout\);

-- Location: LCCOMB_X24_Y14_N0
\segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~138_combout\ = (\segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\ & \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|my_abs_num|cs2a[2]~19_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~138_combout\);

-- Location: LCCOMB_X24_Y14_N6
\segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~139_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ & 
-- !\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[67]~139_combout\);

-- Location: LCCOMB_X23_Y14_N6
\segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~141_combout\ = (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (\Pulse_width|Distance\(1) $ (((\segment_driver|Add0~18_combout\ & 
-- \Pulse_width|Distance\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \Pulse_width|Distance\(0),
	datac => \Pulse_width|Distance\(1),
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~141_combout\);

-- Location: LCCOMB_X23_Y14_N4
\segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~140_combout\ = (\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (\Pulse_width|Distance\(1) $ (((\segment_driver|Add0~18_combout\ & 
-- \Pulse_width|Distance\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add0~18_combout\,
	datab => \Pulse_width|Distance\(0),
	datac => \Pulse_width|Distance\(1),
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~140_combout\);

-- Location: LCCOMB_X25_Y14_N16
\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\ = CARRY((\segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~141_combout\) # (\segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~141_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[66]~140_combout\,
	datad => VCC,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\);

-- Location: LCCOMB_X25_Y14_N18
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

-- Location: LCCOMB_X25_Y14_N20
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

-- Location: LCCOMB_X25_Y14_N22
\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ = CARRY((!\segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\ & (!\segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~136_combout\ 
-- & !\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\,
	datab => \segment_driver|Div1|auto_generated|divider|divider|StageOut[69]~136_combout\,
	datad => VCC,
	cin => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\,
	cout => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y14_N24
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

-- Location: LCCOMB_X25_Y14_N26
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

-- Location: LCCOMB_X25_Y14_N6
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

-- Location: LCCOMB_X25_Y14_N8
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

-- Location: LCCOMB_X25_Y14_N14
\segment_driver|Div1|auto_generated|divider|quotient[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|quotient[1]~1_combout\ = (\segment_driver|Add0~18_combout\ & (\segment_driver|Div1|auto_generated|divider|op_1~2_combout\)) # (!\segment_driver|Add0~18_combout\ & 
-- ((!\segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|op_1~2_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|quotient[1]~1_combout\);

-- Location: LCCOMB_X25_Y14_N0
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

-- Location: LCCOMB_X25_Y14_N4
\segment_driver|Div1|auto_generated|divider|quotient[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\ = (\segment_driver|Add0~18_combout\ & ((\segment_driver|Div1|auto_generated|divider|op_1~0_combout\))) # (!\segment_driver|Add0~18_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|op_1~0_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\);

-- Location: LCCOMB_X26_Y14_N2
\segment_driver|Add3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~3_combout\ = (\Pulse_width|Distance\(1) & ((GND) # (!\segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\))) # (!\Pulse_width|Distance\(1) & (\segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\ $ (GND)))
-- \segment_driver|Add3~4\ = CARRY((\Pulse_width|Distance\(1)) # (!\segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse_width|Distance\(1),
	datab => \segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\,
	datad => VCC,
	combout => \segment_driver|Add3~3_combout\,
	cout => \segment_driver|Add3~4\);

-- Location: LCCOMB_X26_Y14_N4
\segment_driver|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~8_combout\ = (\segment_driver|Add2~0_combout\ & ((\Pulse_width|Distance\(2) & (!\segment_driver|Add3~4\)) # (!\Pulse_width|Distance\(2) & ((\segment_driver|Add3~4\) # (GND))))) # (!\segment_driver|Add2~0_combout\ & 
-- ((\Pulse_width|Distance\(2) & (\segment_driver|Add3~4\ & VCC)) # (!\Pulse_width|Distance\(2) & (!\segment_driver|Add3~4\))))
-- \segment_driver|Add3~9\ = CARRY((\segment_driver|Add2~0_combout\ & ((!\segment_driver|Add3~4\) # (!\Pulse_width|Distance\(2)))) # (!\segment_driver|Add2~0_combout\ & (!\Pulse_width|Distance\(2) & !\segment_driver|Add3~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Add2~0_combout\,
	datab => \Pulse_width|Distance\(2),
	datad => VCC,
	cin => \segment_driver|Add3~4\,
	combout => \segment_driver|Add3~8_combout\,
	cout => \segment_driver|Add3~9\);

-- Location: LCCOMB_X25_Y14_N10
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

-- Location: LCCOMB_X26_Y14_N18
\segment_driver|Div1|auto_generated|divider|quotient[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|quotient[2]~2_combout\ = (\segment_driver|Add0~18_combout\ & ((\segment_driver|Div1|auto_generated|divider|op_1~4_combout\))) # (!\segment_driver|Add0~18_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|op_1~4_combout\,
	combout => \segment_driver|Div1|auto_generated|divider|quotient[2]~2_combout\);

-- Location: LCCOMB_X26_Y14_N16
\segment_driver|Add3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~7_combout\ = (\segment_driver|Display_Selection\(1) & (((!\segment_driver|Display_Selection\(0) & \segment_driver|Div1|auto_generated|divider|quotient[2]~2_combout\)))) # (!\segment_driver|Display_Selection\(1) & 
-- (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\segment_driver|Display_Selection\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Display_Selection\(1),
	datab => \segment_driver|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \segment_driver|Display_Selection\(0),
	datad => \segment_driver|Div1|auto_generated|divider|quotient[2]~2_combout\,
	combout => \segment_driver|Add3~7_combout\);

-- Location: LCCOMB_X26_Y14_N14
\segment_driver|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~10_combout\ = (\segment_driver|Add3~7_combout\) # ((\segment_driver|Display_Selection\(1) & (\segment_driver|Display_Selection\(0) & \segment_driver|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Display_Selection\(1),
	datab => \segment_driver|Display_Selection\(0),
	datac => \segment_driver|Add3~8_combout\,
	datad => \segment_driver|Add3~7_combout\,
	combout => \segment_driver|Add3~10_combout\);

-- Location: FF_X26_Y14_N15
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

-- Location: LCCOMB_X26_Y14_N20
\segment_driver|Add3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~5_combout\ = (\segment_driver|Display_Selection\(1) & ((\segment_driver|Add3~3_combout\))) # (!\segment_driver|Display_Selection\(1) & (!\segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \segment_driver|Display_Selection\(1),
	datad => \segment_driver|Add3~3_combout\,
	combout => \segment_driver|Add3~5_combout\);

-- Location: LCCOMB_X26_Y14_N28
\segment_driver|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~6_combout\ = (\segment_driver|Display_Selection\(0) & (((\segment_driver|Add3~5_combout\)))) # (!\segment_driver|Display_Selection\(0) & (\segment_driver|Div1|auto_generated|divider|quotient[1]~1_combout\ & 
-- (\segment_driver|Display_Selection\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|quotient[1]~1_combout\,
	datab => \segment_driver|Display_Selection\(0),
	datac => \segment_driver|Display_Selection\(1),
	datad => \segment_driver|Add3~5_combout\,
	combout => \segment_driver|Add3~6_combout\);

-- Location: FF_X26_Y14_N29
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

-- Location: LCCOMB_X25_Y14_N12
\segment_driver|Div1|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Div1|auto_generated|divider|op_1~6_combout\ = \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ $ (\segment_driver|Div1|auto_generated|divider|op_1~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	cin => \segment_driver|Div1|auto_generated|divider|op_1~5\,
	combout => \segment_driver|Div1|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X26_Y14_N26
\segment_driver|Add3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~11_combout\ = (!\segment_driver|Display_Selection\(0) & ((\segment_driver|Add0~18_combout\ & (!\segment_driver|Div1|auto_generated|divider|op_1~6_combout\)) # (!\segment_driver|Add0~18_combout\ & 
-- ((\segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|op_1~6_combout\,
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \segment_driver|Display_Selection\(0),
	combout => \segment_driver|Add3~11_combout\);

-- Location: LCCOMB_X25_Y14_N28
\segment_driver|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add1~0_combout\ = \segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\ $ (((\segment_driver|Add0~18_combout\ & ((\segment_driver|Div1|auto_generated|divider|op_1~4_combout\))) # (!\segment_driver|Add0~18_combout\ & 
-- (!\segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datab => \segment_driver|Add0~18_combout\,
	datac => \segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\,
	datad => \segment_driver|Div1|auto_generated|divider|op_1~4_combout\,
	combout => \segment_driver|Add1~0_combout\);

-- Location: LCCOMB_X25_Y14_N2
\segment_driver|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add2~2_combout\ = \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (\segment_driver|Add2~1\ $ (!\segment_driver|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \segment_driver|Add1~0_combout\,
	cin => \segment_driver|Add2~1\,
	combout => \segment_driver|Add2~2_combout\);

-- Location: LCCOMB_X26_Y14_N6
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

-- Location: LCCOMB_X26_Y14_N8
\segment_driver|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~14_combout\ = (\segment_driver|Display_Selection\(1) & (!\segment_driver|Add3~11_combout\ & ((\segment_driver|Add3~12_combout\) # (!\segment_driver|Display_Selection\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Display_Selection\(1),
	datab => \segment_driver|Display_Selection\(0),
	datac => \segment_driver|Add3~11_combout\,
	datad => \segment_driver|Add3~12_combout\,
	combout => \segment_driver|Add3~14_combout\);

-- Location: FF_X26_Y14_N9
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

-- Location: LCCOMB_X26_Y14_N10
\segment_driver|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|Add3~1_combout\ = (\segment_driver|Display_Selection\(1) & ((\segment_driver|Display_Selection\(0) & (\Pulse_width|Distance\(0))) # (!\segment_driver|Display_Selection\(0) & 
-- ((\segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|Display_Selection\(1),
	datab => \Pulse_width|Distance\(0),
	datac => \segment_driver|Div1|auto_generated|divider|quotient[0]~0_combout\,
	datad => \segment_driver|Display_Selection\(0),
	combout => \segment_driver|Add3~1_combout\);

-- Location: LCCOMB_X26_Y14_N22
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

-- Location: FF_X26_Y14_N23
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

-- Location: LCCOMB_X18_Y21_N4
\segment_driver|uut|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut|Mux0~0_combout\ = (\segment_driver|temporary_data\(2) & (!\segment_driver|temporary_data\(1) & (\segment_driver|temporary_data\(3) $ (!\segment_driver|temporary_data\(0))))) # (!\segment_driver|temporary_data\(2) & 
-- (\segment_driver|temporary_data\(0) & (\segment_driver|temporary_data\(1) $ (!\segment_driver|temporary_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|temporary_data\(2),
	datab => \segment_driver|temporary_data\(1),
	datac => \segment_driver|temporary_data\(3),
	datad => \segment_driver|temporary_data\(0),
	combout => \segment_driver|uut|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y21_N10
\segment_driver|uut|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut|Mux1~0_combout\ = (\segment_driver|temporary_data\(1) & ((\segment_driver|temporary_data\(0) & ((\segment_driver|temporary_data\(3)))) # (!\segment_driver|temporary_data\(0) & (\segment_driver|temporary_data\(2))))) # 
-- (!\segment_driver|temporary_data\(1) & (\segment_driver|temporary_data\(2) & (\segment_driver|temporary_data\(3) $ (\segment_driver|temporary_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|temporary_data\(2),
	datab => \segment_driver|temporary_data\(1),
	datac => \segment_driver|temporary_data\(3),
	datad => \segment_driver|temporary_data\(0),
	combout => \segment_driver|uut|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y21_N0
\segment_driver|uut|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut|Mux2~0_combout\ = (\segment_driver|temporary_data\(2) & (\segment_driver|temporary_data\(3) & ((\segment_driver|temporary_data\(1)) # (!\segment_driver|temporary_data\(0))))) # (!\segment_driver|temporary_data\(2) & 
-- (\segment_driver|temporary_data\(1) & (!\segment_driver|temporary_data\(3) & !\segment_driver|temporary_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|temporary_data\(2),
	datab => \segment_driver|temporary_data\(1),
	datac => \segment_driver|temporary_data\(3),
	datad => \segment_driver|temporary_data\(0),
	combout => \segment_driver|uut|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y21_N26
\segment_driver|uut|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut|Mux3~0_combout\ = (\segment_driver|temporary_data\(1) & (\segment_driver|temporary_data\(2) & ((\segment_driver|temporary_data\(0))))) # (!\segment_driver|temporary_data\(1) & (!\segment_driver|temporary_data\(3) & 
-- (\segment_driver|temporary_data\(2) $ (\segment_driver|temporary_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|temporary_data\(2),
	datab => \segment_driver|temporary_data\(1),
	datac => \segment_driver|temporary_data\(3),
	datad => \segment_driver|temporary_data\(0),
	combout => \segment_driver|uut|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y21_N24
\segment_driver|uut|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut|Mux4~0_combout\ = (\segment_driver|temporary_data\(1) & (((!\segment_driver|temporary_data\(3) & \segment_driver|temporary_data\(0))))) # (!\segment_driver|temporary_data\(1) & ((\segment_driver|temporary_data\(2) & 
-- (!\segment_driver|temporary_data\(3))) # (!\segment_driver|temporary_data\(2) & ((\segment_driver|temporary_data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|temporary_data\(2),
	datab => \segment_driver|temporary_data\(1),
	datac => \segment_driver|temporary_data\(3),
	datad => \segment_driver|temporary_data\(0),
	combout => \segment_driver|uut|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y21_N22
\segment_driver|uut|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut|Mux5~0_combout\ = (\segment_driver|temporary_data\(0) & (\segment_driver|temporary_data\(3) $ (((\segment_driver|temporary_data\(1)) # (!\segment_driver|temporary_data\(2)))))) # (!\segment_driver|temporary_data\(0) & 
-- (!\segment_driver|temporary_data\(2) & (\segment_driver|temporary_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|temporary_data\(2),
	datab => \segment_driver|temporary_data\(1),
	datac => \segment_driver|temporary_data\(3),
	datad => \segment_driver|temporary_data\(0),
	combout => \segment_driver|uut|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y21_N12
\segment_driver|uut|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment_driver|uut|Mux6~0_combout\ = (\segment_driver|temporary_data\(0) & ((\segment_driver|temporary_data\(3)) # (\segment_driver|temporary_data\(2) $ (\segment_driver|temporary_data\(1))))) # (!\segment_driver|temporary_data\(0) & 
-- ((\segment_driver|temporary_data\(1)) # (\segment_driver|temporary_data\(2) $ (\segment_driver|temporary_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment_driver|temporary_data\(2),
	datab => \segment_driver|temporary_data\(1),
	datac => \segment_driver|temporary_data\(3),
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


