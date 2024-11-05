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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/28/2024 13:39:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Range_Sensor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Range_Sensor_vhd_vec_tst IS
END Range_Sensor_vhd_vec_tst;
ARCHITECTURE Range_Sensor_arch OF Range_Sensor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL fpgaclk : STD_LOGIC;
SIGNAL pulse : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL servo_out : STD_LOGIC;
SIGNAL topseg_A : STD_LOGIC;
SIGNAL topseg_B : STD_LOGIC;
SIGNAL topseg_C : STD_LOGIC;
SIGNAL topseg_D : STD_LOGIC;
SIGNAL topseg_E : STD_LOGIC;
SIGNAL topseg_F : STD_LOGIC;
SIGNAL topseg_G : STD_LOGIC;
SIGNAL topseldispA : STD_LOGIC;
SIGNAL topseldispB : STD_LOGIC;
SIGNAL topseldispC : STD_LOGIC;
SIGNAL topseldispD : STD_LOGIC;
SIGNAL trigger_out : STD_LOGIC;
COMPONENT Range_Sensor
	PORT (
	fpgaclk : IN STD_LOGIC;
	pulse : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	servo_out : BUFFER STD_LOGIC;
	topseg_A : BUFFER STD_LOGIC;
	topseg_B : BUFFER STD_LOGIC;
	topseg_C : BUFFER STD_LOGIC;
	topseg_D : BUFFER STD_LOGIC;
	topseg_E : BUFFER STD_LOGIC;
	topseg_F : BUFFER STD_LOGIC;
	topseg_G : BUFFER STD_LOGIC;
	topseldispA : BUFFER STD_LOGIC;
	topseldispB : BUFFER STD_LOGIC;
	topseldispC : BUFFER STD_LOGIC;
	topseldispD : BUFFER STD_LOGIC;
	trigger_out : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Range_Sensor
	PORT MAP (
-- list connections between master ports and signals
	fpgaclk => fpgaclk,
	pulse => pulse,
	reset => reset,
	servo_out => servo_out,
	topseg_A => topseg_A,
	topseg_B => topseg_B,
	topseg_C => topseg_C,
	topseg_D => topseg_D,
	topseg_E => topseg_E,
	topseg_F => topseg_F,
	topseg_G => topseg_G,
	topseldispA => topseldispA,
	topseldispB => topseldispB,
	topseldispC => topseldispC,
	topseldispD => topseldispD,
	trigger_out => trigger_out
	);

-- fpgaclk
t_prcs_fpgaclk: PROCESS
BEGIN
	fpgaclk <= '0';
WAIT;
END PROCESS t_prcs_fpgaclk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END Range_Sensor_arch;
