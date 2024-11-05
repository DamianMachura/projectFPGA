-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "07/24/2024 15:51:50"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TopDesign IS
    PORT (
	pulse_pin : IN std_logic;
	trigger_pin : BUFFER std_logic;
	clk : IN std_logic;
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
END TopDesign;

-- Design Ports Information
-- pulse_pin	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trigger_pin	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseldispA	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseldispB	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseldispC	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseldispD	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseg_A	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseg_B	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseg_C	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseg_D	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseg_E	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseg_F	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- topseg_G	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TopDesign IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pulse_pin : std_logic;
SIGNAL ww_trigger_pin : std_logic;
SIGNAL ww_clk : std_logic;
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
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pulse_pin~input_o\ : std_logic;
SIGNAL \trigger_pin~output_o\ : std_logic;
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
SIGNAL \uut4|trigger_gen|trigg|counter_reg[0]~69_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[3]~28\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[4]~29_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[4]~30\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[5]~31_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[5]~32\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[6]~33_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[6]~34\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[7]~35_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[7]~36\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[8]~37_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[8]~38\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[9]~39_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[9]~40\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[10]~41_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[10]~42\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[11]~43_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[11]~44\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[12]~45_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[12]~46\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[13]~47_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[13]~48\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[14]~49_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|Equal0~7_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|Equal0~0_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|Equal0~4_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[14]~50\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[15]~51_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[15]~52\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[16]~53_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[16]~54\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[17]~55_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[17]~56\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[18]~57_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[18]~58\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[19]~59_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[19]~60\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[20]~61_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[20]~62\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[21]~63_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[21]~64\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[22]~65_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[22]~66\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[23]~67_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|Equal0~2_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|Equal0~5_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|Equal0~1_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|Equal0~6_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|Equal0~8_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[1]~23_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[1]~24\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[2]~25_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[2]~26\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg[3]~27_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|LessThan1~1_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigger~1_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|LessThan1~0_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|LessThan1~2_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigger~2_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|LessThan0~0_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|LessThan0~1_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|Equal0~3_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigger~0_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigger~3_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|trigg|counter_reg\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \uut4|trigger_gen|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \uut4|trigger_gen|ALT_INV_trigger~3_combout\ : std_logic;

BEGIN

ww_pulse_pin <= pulse_pin;
trigger_pin <= ww_trigger_pin;
ww_clk <= clk;
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

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\uut4|trigger_gen|ALT_INV_Equal0~8_combout\ <= NOT \uut4|trigger_gen|Equal0~8_combout\;
\uut4|trigger_gen|ALT_INV_trigger~3_combout\ <= NOT \uut4|trigger_gen|trigger~3_combout\;

-- Location: IOOBUF_X34_Y9_N23
\trigger_pin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut4|trigger_gen|ALT_INV_trigger~3_combout\,
	devoe => ww_devoe,
	o => \trigger_pin~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\topseldispA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \topseldispA~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\topseldispB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \topseldispB~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\topseldispC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \topseldispC~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\topseldispD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => GND,
	devoe => ww_devoe,
	o => \topseg_G~output_o\);

-- Location: IOIBUF_X34_Y12_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X24_Y12_N6
\uut4|trigger_gen|trigg|counter_reg[0]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[0]~69_combout\ = !\uut4|trigger_gen|trigg|counter_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut4|trigger_gen|trigg|counter_reg\(0),
	combout => \uut4|trigger_gen|trigg|counter_reg[0]~69_combout\);

-- Location: LCCOMB_X24_Y12_N14
\uut4|trigger_gen|trigg|counter_reg[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[3]~27_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(3) & (\uut4|trigger_gen|trigg|counter_reg[2]~26\ $ (GND))) # (!\uut4|trigger_gen|trigg|counter_reg\(3) & (!\uut4|trigger_gen|trigg|counter_reg[2]~26\ & VCC))
-- \uut4|trigger_gen|trigg|counter_reg[3]~28\ = CARRY((\uut4|trigger_gen|trigg|counter_reg\(3) & !\uut4|trigger_gen|trigg|counter_reg[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(3),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[2]~26\,
	combout => \uut4|trigger_gen|trigg|counter_reg[3]~27_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[3]~28\);

-- Location: LCCOMB_X24_Y12_N16
\uut4|trigger_gen|trigg|counter_reg[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[4]~29_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(4) & (!\uut4|trigger_gen|trigg|counter_reg[3]~28\)) # (!\uut4|trigger_gen|trigg|counter_reg\(4) & ((\uut4|trigger_gen|trigg|counter_reg[3]~28\) # (GND)))
-- \uut4|trigger_gen|trigg|counter_reg[4]~30\ = CARRY((!\uut4|trigger_gen|trigg|counter_reg[3]~28\) # (!\uut4|trigger_gen|trigg|counter_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(4),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[3]~28\,
	combout => \uut4|trigger_gen|trigg|counter_reg[4]~29_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[4]~30\);

-- Location: FF_X24_Y12_N17
\uut4|trigger_gen|trigg|counter_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[4]~29_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(4));

-- Location: LCCOMB_X24_Y12_N18
\uut4|trigger_gen|trigg|counter_reg[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[5]~31_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(5) & (\uut4|trigger_gen|trigg|counter_reg[4]~30\ $ (GND))) # (!\uut4|trigger_gen|trigg|counter_reg\(5) & (!\uut4|trigger_gen|trigg|counter_reg[4]~30\ & VCC))
-- \uut4|trigger_gen|trigg|counter_reg[5]~32\ = CARRY((\uut4|trigger_gen|trigg|counter_reg\(5) & !\uut4|trigger_gen|trigg|counter_reg[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(5),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[4]~30\,
	combout => \uut4|trigger_gen|trigg|counter_reg[5]~31_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[5]~32\);

-- Location: FF_X24_Y12_N19
\uut4|trigger_gen|trigg|counter_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[5]~31_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(5));

-- Location: LCCOMB_X24_Y12_N20
\uut4|trigger_gen|trigg|counter_reg[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[6]~33_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(6) & (!\uut4|trigger_gen|trigg|counter_reg[5]~32\)) # (!\uut4|trigger_gen|trigg|counter_reg\(6) & ((\uut4|trigger_gen|trigg|counter_reg[5]~32\) # (GND)))
-- \uut4|trigger_gen|trigg|counter_reg[6]~34\ = CARRY((!\uut4|trigger_gen|trigg|counter_reg[5]~32\) # (!\uut4|trigger_gen|trigg|counter_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(6),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[5]~32\,
	combout => \uut4|trigger_gen|trigg|counter_reg[6]~33_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[6]~34\);

-- Location: FF_X24_Y12_N21
\uut4|trigger_gen|trigg|counter_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[6]~33_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(6));

-- Location: LCCOMB_X24_Y12_N22
\uut4|trigger_gen|trigg|counter_reg[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[7]~35_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(7) & (\uut4|trigger_gen|trigg|counter_reg[6]~34\ $ (GND))) # (!\uut4|trigger_gen|trigg|counter_reg\(7) & (!\uut4|trigger_gen|trigg|counter_reg[6]~34\ & VCC))
-- \uut4|trigger_gen|trigg|counter_reg[7]~36\ = CARRY((\uut4|trigger_gen|trigg|counter_reg\(7) & !\uut4|trigger_gen|trigg|counter_reg[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(7),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[6]~34\,
	combout => \uut4|trigger_gen|trigg|counter_reg[7]~35_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[7]~36\);

-- Location: FF_X24_Y12_N23
\uut4|trigger_gen|trigg|counter_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[7]~35_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(7));

-- Location: LCCOMB_X24_Y12_N24
\uut4|trigger_gen|trigg|counter_reg[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[8]~37_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(8) & (!\uut4|trigger_gen|trigg|counter_reg[7]~36\)) # (!\uut4|trigger_gen|trigg|counter_reg\(8) & ((\uut4|trigger_gen|trigg|counter_reg[7]~36\) # (GND)))
-- \uut4|trigger_gen|trigg|counter_reg[8]~38\ = CARRY((!\uut4|trigger_gen|trigg|counter_reg[7]~36\) # (!\uut4|trigger_gen|trigg|counter_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(8),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[7]~36\,
	combout => \uut4|trigger_gen|trigg|counter_reg[8]~37_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[8]~38\);

-- Location: FF_X24_Y12_N25
\uut4|trigger_gen|trigg|counter_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[8]~37_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(8));

-- Location: LCCOMB_X24_Y12_N26
\uut4|trigger_gen|trigg|counter_reg[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[9]~39_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(9) & (\uut4|trigger_gen|trigg|counter_reg[8]~38\ $ (GND))) # (!\uut4|trigger_gen|trigg|counter_reg\(9) & (!\uut4|trigger_gen|trigg|counter_reg[8]~38\ & VCC))
-- \uut4|trigger_gen|trigg|counter_reg[9]~40\ = CARRY((\uut4|trigger_gen|trigg|counter_reg\(9) & !\uut4|trigger_gen|trigg|counter_reg[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(9),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[8]~38\,
	combout => \uut4|trigger_gen|trigg|counter_reg[9]~39_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[9]~40\);

-- Location: FF_X24_Y12_N27
\uut4|trigger_gen|trigg|counter_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[9]~39_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(9));

-- Location: LCCOMB_X24_Y12_N28
\uut4|trigger_gen|trigg|counter_reg[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[10]~41_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(10) & (!\uut4|trigger_gen|trigg|counter_reg[9]~40\)) # (!\uut4|trigger_gen|trigg|counter_reg\(10) & ((\uut4|trigger_gen|trigg|counter_reg[9]~40\) # (GND)))
-- \uut4|trigger_gen|trigg|counter_reg[10]~42\ = CARRY((!\uut4|trigger_gen|trigg|counter_reg[9]~40\) # (!\uut4|trigger_gen|trigg|counter_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(10),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[9]~40\,
	combout => \uut4|trigger_gen|trigg|counter_reg[10]~41_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[10]~42\);

-- Location: FF_X24_Y12_N29
\uut4|trigger_gen|trigg|counter_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[10]~41_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(10));

-- Location: LCCOMB_X24_Y12_N30
\uut4|trigger_gen|trigg|counter_reg[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[11]~43_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(11) & (\uut4|trigger_gen|trigg|counter_reg[10]~42\ $ (GND))) # (!\uut4|trigger_gen|trigg|counter_reg\(11) & (!\uut4|trigger_gen|trigg|counter_reg[10]~42\ & VCC))
-- \uut4|trigger_gen|trigg|counter_reg[11]~44\ = CARRY((\uut4|trigger_gen|trigg|counter_reg\(11) & !\uut4|trigger_gen|trigg|counter_reg[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(11),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[10]~42\,
	combout => \uut4|trigger_gen|trigg|counter_reg[11]~43_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[11]~44\);

-- Location: FF_X24_Y12_N31
\uut4|trigger_gen|trigg|counter_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[11]~43_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(11));

-- Location: LCCOMB_X24_Y11_N0
\uut4|trigger_gen|trigg|counter_reg[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[12]~45_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(12) & (!\uut4|trigger_gen|trigg|counter_reg[11]~44\)) # (!\uut4|trigger_gen|trigg|counter_reg\(12) & ((\uut4|trigger_gen|trigg|counter_reg[11]~44\) # (GND)))
-- \uut4|trigger_gen|trigg|counter_reg[12]~46\ = CARRY((!\uut4|trigger_gen|trigg|counter_reg[11]~44\) # (!\uut4|trigger_gen|trigg|counter_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(12),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[11]~44\,
	combout => \uut4|trigger_gen|trigg|counter_reg[12]~45_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[12]~46\);

-- Location: FF_X24_Y11_N1
\uut4|trigger_gen|trigg|counter_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[12]~45_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(12));

-- Location: LCCOMB_X24_Y11_N2
\uut4|trigger_gen|trigg|counter_reg[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[13]~47_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(13) & (\uut4|trigger_gen|trigg|counter_reg[12]~46\ $ (GND))) # (!\uut4|trigger_gen|trigg|counter_reg\(13) & (!\uut4|trigger_gen|trigg|counter_reg[12]~46\ & VCC))
-- \uut4|trigger_gen|trigg|counter_reg[13]~48\ = CARRY((\uut4|trigger_gen|trigg|counter_reg\(13) & !\uut4|trigger_gen|trigg|counter_reg[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(13),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[12]~46\,
	combout => \uut4|trigger_gen|trigg|counter_reg[13]~47_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[13]~48\);

-- Location: FF_X24_Y11_N3
\uut4|trigger_gen|trigg|counter_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[13]~47_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(13));

-- Location: LCCOMB_X24_Y11_N4
\uut4|trigger_gen|trigg|counter_reg[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[14]~49_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(14) & (!\uut4|trigger_gen|trigg|counter_reg[13]~48\)) # (!\uut4|trigger_gen|trigg|counter_reg\(14) & ((\uut4|trigger_gen|trigg|counter_reg[13]~48\) # (GND)))
-- \uut4|trigger_gen|trigg|counter_reg[14]~50\ = CARRY((!\uut4|trigger_gen|trigg|counter_reg[13]~48\) # (!\uut4|trigger_gen|trigg|counter_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(14),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[13]~48\,
	combout => \uut4|trigger_gen|trigg|counter_reg[14]~49_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[14]~50\);

-- Location: FF_X24_Y11_N5
\uut4|trigger_gen|trigg|counter_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[14]~49_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(14));

-- Location: LCCOMB_X23_Y11_N4
\uut4|trigger_gen|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|Equal0~7_combout\ = (!\uut4|trigger_gen|trigg|counter_reg\(2) & (!\uut4|trigger_gen|trigg|counter_reg\(12) & (!\uut4|trigger_gen|trigg|counter_reg\(4) & !\uut4|trigger_gen|trigg|counter_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(2),
	datab => \uut4|trigger_gen|trigg|counter_reg\(12),
	datac => \uut4|trigger_gen|trigg|counter_reg\(4),
	datad => \uut4|trigger_gen|trigg|counter_reg\(6),
	combout => \uut4|trigger_gen|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y12_N0
\uut4|trigger_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|Equal0~0_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(11) & (\uut4|trigger_gen|trigg|counter_reg\(10) & (\uut4|trigger_gen|trigg|counter_reg\(7) & \uut4|trigger_gen|trigg|counter_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(11),
	datab => \uut4|trigger_gen|trigg|counter_reg\(10),
	datac => \uut4|trigger_gen|trigg|counter_reg\(7),
	datad => \uut4|trigger_gen|trigg|counter_reg\(8),
	combout => \uut4|trigger_gen|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y11_N8
\uut4|trigger_gen|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|Equal0~4_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(9) & (!\uut4|trigger_gen|trigg|counter_reg\(13) & \uut4|trigger_gen|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(9),
	datac => \uut4|trigger_gen|trigg|counter_reg\(13),
	datad => \uut4|trigger_gen|Equal0~0_combout\,
	combout => \uut4|trigger_gen|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y11_N6
\uut4|trigger_gen|trigg|counter_reg[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[15]~51_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(15) & (\uut4|trigger_gen|trigg|counter_reg[14]~50\ $ (GND))) # (!\uut4|trigger_gen|trigg|counter_reg\(15) & (!\uut4|trigger_gen|trigg|counter_reg[14]~50\ & VCC))
-- \uut4|trigger_gen|trigg|counter_reg[15]~52\ = CARRY((\uut4|trigger_gen|trigg|counter_reg\(15) & !\uut4|trigger_gen|trigg|counter_reg[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(15),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[14]~50\,
	combout => \uut4|trigger_gen|trigg|counter_reg[15]~51_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[15]~52\);

-- Location: FF_X24_Y11_N7
\uut4|trigger_gen|trigg|counter_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[15]~51_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(15));

-- Location: LCCOMB_X24_Y11_N8
\uut4|trigger_gen|trigg|counter_reg[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[16]~53_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(16) & (!\uut4|trigger_gen|trigg|counter_reg[15]~52\)) # (!\uut4|trigger_gen|trigg|counter_reg\(16) & ((\uut4|trigger_gen|trigg|counter_reg[15]~52\) # (GND)))
-- \uut4|trigger_gen|trigg|counter_reg[16]~54\ = CARRY((!\uut4|trigger_gen|trigg|counter_reg[15]~52\) # (!\uut4|trigger_gen|trigg|counter_reg\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(16),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[15]~52\,
	combout => \uut4|trigger_gen|trigg|counter_reg[16]~53_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[16]~54\);

-- Location: FF_X24_Y11_N9
\uut4|trigger_gen|trigg|counter_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[16]~53_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(16));

-- Location: LCCOMB_X24_Y11_N10
\uut4|trigger_gen|trigg|counter_reg[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[17]~55_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(17) & (\uut4|trigger_gen|trigg|counter_reg[16]~54\ $ (GND))) # (!\uut4|trigger_gen|trigg|counter_reg\(17) & (!\uut4|trigger_gen|trigg|counter_reg[16]~54\ & VCC))
-- \uut4|trigger_gen|trigg|counter_reg[17]~56\ = CARRY((\uut4|trigger_gen|trigg|counter_reg\(17) & !\uut4|trigger_gen|trigg|counter_reg[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(17),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[16]~54\,
	combout => \uut4|trigger_gen|trigg|counter_reg[17]~55_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[17]~56\);

-- Location: FF_X24_Y11_N11
\uut4|trigger_gen|trigg|counter_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[17]~55_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(17));

-- Location: LCCOMB_X24_Y11_N12
\uut4|trigger_gen|trigg|counter_reg[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[18]~57_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(18) & (!\uut4|trigger_gen|trigg|counter_reg[17]~56\)) # (!\uut4|trigger_gen|trigg|counter_reg\(18) & ((\uut4|trigger_gen|trigg|counter_reg[17]~56\) # (GND)))
-- \uut4|trigger_gen|trigg|counter_reg[18]~58\ = CARRY((!\uut4|trigger_gen|trigg|counter_reg[17]~56\) # (!\uut4|trigger_gen|trigg|counter_reg\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(18),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[17]~56\,
	combout => \uut4|trigger_gen|trigg|counter_reg[18]~57_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[18]~58\);

-- Location: FF_X24_Y11_N13
\uut4|trigger_gen|trigg|counter_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[18]~57_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(18));

-- Location: LCCOMB_X24_Y11_N14
\uut4|trigger_gen|trigg|counter_reg[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[19]~59_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(19) & (\uut4|trigger_gen|trigg|counter_reg[18]~58\ $ (GND))) # (!\uut4|trigger_gen|trigg|counter_reg\(19) & (!\uut4|trigger_gen|trigg|counter_reg[18]~58\ & VCC))
-- \uut4|trigger_gen|trigg|counter_reg[19]~60\ = CARRY((\uut4|trigger_gen|trigg|counter_reg\(19) & !\uut4|trigger_gen|trigg|counter_reg[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(19),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[18]~58\,
	combout => \uut4|trigger_gen|trigg|counter_reg[19]~59_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[19]~60\);

-- Location: FF_X24_Y11_N15
\uut4|trigger_gen|trigg|counter_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[19]~59_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(19));

-- Location: LCCOMB_X24_Y11_N16
\uut4|trigger_gen|trigg|counter_reg[20]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[20]~61_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(20) & (!\uut4|trigger_gen|trigg|counter_reg[19]~60\)) # (!\uut4|trigger_gen|trigg|counter_reg\(20) & ((\uut4|trigger_gen|trigg|counter_reg[19]~60\) # (GND)))
-- \uut4|trigger_gen|trigg|counter_reg[20]~62\ = CARRY((!\uut4|trigger_gen|trigg|counter_reg[19]~60\) # (!\uut4|trigger_gen|trigg|counter_reg\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(20),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[19]~60\,
	combout => \uut4|trigger_gen|trigg|counter_reg[20]~61_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[20]~62\);

-- Location: FF_X24_Y11_N17
\uut4|trigger_gen|trigg|counter_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[20]~61_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(20));

-- Location: LCCOMB_X24_Y11_N18
\uut4|trigger_gen|trigg|counter_reg[21]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[21]~63_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(21) & (\uut4|trigger_gen|trigg|counter_reg[20]~62\ $ (GND))) # (!\uut4|trigger_gen|trigg|counter_reg\(21) & (!\uut4|trigger_gen|trigg|counter_reg[20]~62\ & VCC))
-- \uut4|trigger_gen|trigg|counter_reg[21]~64\ = CARRY((\uut4|trigger_gen|trigg|counter_reg\(21) & !\uut4|trigger_gen|trigg|counter_reg[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(21),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[20]~62\,
	combout => \uut4|trigger_gen|trigg|counter_reg[21]~63_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[21]~64\);

-- Location: FF_X24_Y11_N19
\uut4|trigger_gen|trigg|counter_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[21]~63_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(21));

-- Location: LCCOMB_X24_Y11_N20
\uut4|trigger_gen|trigg|counter_reg[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[22]~65_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(22) & (!\uut4|trigger_gen|trigg|counter_reg[21]~64\)) # (!\uut4|trigger_gen|trigg|counter_reg\(22) & ((\uut4|trigger_gen|trigg|counter_reg[21]~64\) # (GND)))
-- \uut4|trigger_gen|trigg|counter_reg[22]~66\ = CARRY((!\uut4|trigger_gen|trigg|counter_reg[21]~64\) # (!\uut4|trigger_gen|trigg|counter_reg\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|trigg|counter_reg\(22),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[21]~64\,
	combout => \uut4|trigger_gen|trigg|counter_reg[22]~65_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[22]~66\);

-- Location: FF_X24_Y11_N21
\uut4|trigger_gen|trigg|counter_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[22]~65_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(22));

-- Location: LCCOMB_X24_Y11_N22
\uut4|trigger_gen|trigg|counter_reg[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[23]~67_combout\ = \uut4|trigger_gen|trigg|counter_reg\(23) $ (!\uut4|trigger_gen|trigg|counter_reg[22]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(23),
	cin => \uut4|trigger_gen|trigg|counter_reg[22]~66\,
	combout => \uut4|trigger_gen|trigg|counter_reg[23]~67_combout\);

-- Location: FF_X24_Y11_N23
\uut4|trigger_gen|trigg|counter_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[23]~67_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(23));

-- Location: LCCOMB_X24_Y11_N24
\uut4|trigger_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|Equal0~2_combout\ = (!\uut4|trigger_gen|trigg|counter_reg\(22) & (\uut4|trigger_gen|trigg|counter_reg\(20) & (\uut4|trigger_gen|trigg|counter_reg\(19) & \uut4|trigger_gen|trigg|counter_reg\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(22),
	datab => \uut4|trigger_gen|trigg|counter_reg\(20),
	datac => \uut4|trigger_gen|trigg|counter_reg\(19),
	datad => \uut4|trigger_gen|trigg|counter_reg\(21),
	combout => \uut4|trigger_gen|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y12_N2
\uut4|trigger_gen|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|Equal0~5_combout\ = (!\uut4|trigger_gen|trigg|counter_reg\(0) & (\uut4|trigger_gen|trigg|counter_reg\(5) & (\uut4|trigger_gen|trigg|counter_reg\(3) & !\uut4|trigger_gen|trigg|counter_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(0),
	datab => \uut4|trigger_gen|trigg|counter_reg\(5),
	datac => \uut4|trigger_gen|trigg|counter_reg\(3),
	datad => \uut4|trigger_gen|trigg|counter_reg\(1),
	combout => \uut4|trigger_gen|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y11_N30
\uut4|trigger_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|Equal0~1_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(15) & (!\uut4|trigger_gen|trigg|counter_reg\(16) & (\uut4|trigger_gen|trigg|counter_reg\(17) & \uut4|trigger_gen|trigg|counter_reg\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(15),
	datab => \uut4|trigger_gen|trigg|counter_reg\(16),
	datac => \uut4|trigger_gen|trigg|counter_reg\(17),
	datad => \uut4|trigger_gen|trigg|counter_reg\(18),
	combout => \uut4|trigger_gen|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y11_N18
\uut4|trigger_gen|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|Equal0~6_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(23) & (\uut4|trigger_gen|Equal0~2_combout\ & (\uut4|trigger_gen|Equal0~5_combout\ & \uut4|trigger_gen|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(23),
	datab => \uut4|trigger_gen|Equal0~2_combout\,
	datac => \uut4|trigger_gen|Equal0~5_combout\,
	datad => \uut4|trigger_gen|Equal0~1_combout\,
	combout => \uut4|trigger_gen|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y11_N2
\uut4|trigger_gen|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|Equal0~8_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(14) & (\uut4|trigger_gen|Equal0~7_combout\ & (\uut4|trigger_gen|Equal0~4_combout\ & \uut4|trigger_gen|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(14),
	datab => \uut4|trigger_gen|Equal0~7_combout\,
	datac => \uut4|trigger_gen|Equal0~4_combout\,
	datad => \uut4|trigger_gen|Equal0~6_combout\,
	combout => \uut4|trigger_gen|Equal0~8_combout\);

-- Location: FF_X24_Y12_N7
\uut4|trigger_gen|trigg|counter_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[0]~69_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(0));

-- Location: LCCOMB_X24_Y12_N10
\uut4|trigger_gen|trigg|counter_reg[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[1]~23_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(1) & (\uut4|trigger_gen|trigg|counter_reg\(0) $ (VCC))) # (!\uut4|trigger_gen|trigg|counter_reg\(1) & (\uut4|trigger_gen|trigg|counter_reg\(0) & VCC))
-- \uut4|trigger_gen|trigg|counter_reg[1]~24\ = CARRY((\uut4|trigger_gen|trigg|counter_reg\(1) & \uut4|trigger_gen|trigg|counter_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(1),
	datab => \uut4|trigger_gen|trigg|counter_reg\(0),
	datad => VCC,
	combout => \uut4|trigger_gen|trigg|counter_reg[1]~23_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[1]~24\);

-- Location: FF_X24_Y12_N11
\uut4|trigger_gen|trigg|counter_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[1]~23_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(1));

-- Location: LCCOMB_X24_Y12_N12
\uut4|trigger_gen|trigg|counter_reg[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigg|counter_reg[2]~25_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(2) & (!\uut4|trigger_gen|trigg|counter_reg[1]~24\)) # (!\uut4|trigger_gen|trigg|counter_reg\(2) & ((\uut4|trigger_gen|trigg|counter_reg[1]~24\) # (GND)))
-- \uut4|trigger_gen|trigg|counter_reg[2]~26\ = CARRY((!\uut4|trigger_gen|trigg|counter_reg[1]~24\) # (!\uut4|trigger_gen|trigg|counter_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(2),
	datad => VCC,
	cin => \uut4|trigger_gen|trigg|counter_reg[1]~24\,
	combout => \uut4|trigger_gen|trigg|counter_reg[2]~25_combout\,
	cout => \uut4|trigger_gen|trigg|counter_reg[2]~26\);

-- Location: FF_X24_Y12_N13
\uut4|trigger_gen|trigg|counter_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[2]~25_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(2));

-- Location: FF_X24_Y12_N15
\uut4|trigger_gen|trigg|counter_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut4|trigger_gen|trigg|counter_reg[3]~27_combout\,
	clrn => \uut4|trigger_gen|ALT_INV_Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut4|trigger_gen|trigg|counter_reg\(3));

-- Location: LCCOMB_X23_Y11_N26
\uut4|trigger_gen|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|LessThan1~1_combout\ = (!\uut4|trigger_gen|trigg|counter_reg\(6) & (((!\uut4|trigger_gen|trigg|counter_reg\(3) & !\uut4|trigger_gen|trigg|counter_reg\(4))) # (!\uut4|trigger_gen|trigg|counter_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(3),
	datab => \uut4|trigger_gen|trigg|counter_reg\(5),
	datac => \uut4|trigger_gen|trigg|counter_reg\(4),
	datad => \uut4|trigger_gen|trigg|counter_reg\(6),
	combout => \uut4|trigger_gen|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y11_N16
\uut4|trigger_gen|trigger~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigger~1_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(14) & (\uut4|trigger_gen|trigg|counter_reg\(13))) # (!\uut4|trigger_gen|trigg|counter_reg\(14) & ((!\uut4|trigger_gen|trigg|counter_reg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(13),
	datab => \uut4|trigger_gen|trigg|counter_reg\(14),
	datac => \uut4|trigger_gen|trigg|counter_reg\(12),
	combout => \uut4|trigger_gen|trigger~1_combout\);

-- Location: LCCOMB_X24_Y12_N4
\uut4|trigger_gen|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|LessThan1~0_combout\ = ((!\uut4|trigger_gen|trigg|counter_reg\(0) & (!\uut4|trigger_gen|trigg|counter_reg\(2) & !\uut4|trigger_gen|trigg|counter_reg\(1)))) # (!\uut4|trigger_gen|trigg|counter_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(0),
	datab => \uut4|trigger_gen|trigg|counter_reg\(2),
	datac => \uut4|trigger_gen|trigg|counter_reg\(1),
	datad => \uut4|trigger_gen|trigg|counter_reg\(5),
	combout => \uut4|trigger_gen|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y11_N20
\uut4|trigger_gen|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|LessThan1~2_combout\ = (!\uut4|trigger_gen|trigg|counter_reg\(9) & (!\uut4|trigger_gen|trigg|counter_reg\(7) & (!\uut4|trigger_gen|trigg|counter_reg\(14) & !\uut4|trigger_gen|trigg|counter_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(9),
	datab => \uut4|trigger_gen|trigg|counter_reg\(7),
	datac => \uut4|trigger_gen|trigg|counter_reg\(14),
	datad => \uut4|trigger_gen|trigg|counter_reg\(8),
	combout => \uut4|trigger_gen|LessThan1~2_combout\);

-- Location: LCCOMB_X23_Y11_N10
\uut4|trigger_gen|trigger~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigger~2_combout\ = (\uut4|trigger_gen|trigger~1_combout\) # ((\uut4|trigger_gen|LessThan1~1_combout\ & (\uut4|trigger_gen|LessThan1~0_combout\ & \uut4|trigger_gen|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|LessThan1~1_combout\,
	datab => \uut4|trigger_gen|trigger~1_combout\,
	datac => \uut4|trigger_gen|LessThan1~0_combout\,
	datad => \uut4|trigger_gen|LessThan1~2_combout\,
	combout => \uut4|trigger_gen|trigger~2_combout\);

-- Location: LCCOMB_X23_Y11_N28
\uut4|trigger_gen|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|LessThan0~0_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(6)) # ((\uut4|trigger_gen|trigg|counter_reg\(5) & ((\uut4|trigger_gen|trigg|counter_reg\(3)) # (\uut4|trigger_gen|trigg|counter_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(3),
	datab => \uut4|trigger_gen|trigg|counter_reg\(5),
	datac => \uut4|trigger_gen|trigg|counter_reg\(4),
	datad => \uut4|trigger_gen|trigg|counter_reg\(6),
	combout => \uut4|trigger_gen|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y11_N30
\uut4|trigger_gen|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|LessThan0~1_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(9) & (\uut4|trigger_gen|LessThan0~0_combout\ & (!\uut4|trigger_gen|trigg|counter_reg\(13) & \uut4|trigger_gen|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(9),
	datab => \uut4|trigger_gen|LessThan0~0_combout\,
	datac => \uut4|trigger_gen|trigg|counter_reg\(13),
	datad => \uut4|trigger_gen|Equal0~0_combout\,
	combout => \uut4|trigger_gen|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y11_N24
\uut4|trigger_gen|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|Equal0~3_combout\ = (\uut4|trigger_gen|Equal0~2_combout\ & (\uut4|trigger_gen|Equal0~1_combout\ & \uut4|trigger_gen|trigg|counter_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut4|trigger_gen|Equal0~2_combout\,
	datac => \uut4|trigger_gen|Equal0~1_combout\,
	datad => \uut4|trigger_gen|trigg|counter_reg\(23),
	combout => \uut4|trigger_gen|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y11_N28
\uut4|trigger_gen|trigger~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigger~0_combout\ = (\uut4|trigger_gen|trigg|counter_reg\(12) & (((!\uut4|trigger_gen|trigg|counter_reg\(11)) # (!\uut4|trigger_gen|trigg|counter_reg\(13))) # (!\uut4|trigger_gen|trigg|counter_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigg|counter_reg\(10),
	datab => \uut4|trigger_gen|trigg|counter_reg\(13),
	datac => \uut4|trigger_gen|trigg|counter_reg\(11),
	datad => \uut4|trigger_gen|trigg|counter_reg\(12),
	combout => \uut4|trigger_gen|trigger~0_combout\);

-- Location: LCCOMB_X23_Y11_N22
\uut4|trigger_gen|trigger~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut4|trigger_gen|trigger~3_combout\ = (\uut4|trigger_gen|trigger~2_combout\) # ((\uut4|trigger_gen|LessThan0~1_combout\) # ((\uut4|trigger_gen|trigger~0_combout\) # (!\uut4|trigger_gen|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut4|trigger_gen|trigger~2_combout\,
	datab => \uut4|trigger_gen|LessThan0~1_combout\,
	datac => \uut4|trigger_gen|Equal0~3_combout\,
	datad => \uut4|trigger_gen|trigger~0_combout\,
	combout => \uut4|trigger_gen|trigger~3_combout\);

-- Location: IOIBUF_X34_Y7_N8
\pulse_pin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulse_pin,
	o => \pulse_pin~input_o\);

ww_trigger_pin <= \trigger_pin~output_o\;

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


