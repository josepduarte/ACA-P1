-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "11/20/2017 21:48:34"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CRC16_polynomial_sol IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	r : OUT std_logic_vector(7 DOWNTO 0);
	error : OUT std_logic
	);
END CRC16_polynomial_sol;

-- Design Ports Information
-- r[0]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[6]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[7]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CRC16_polynomial_sol IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_error : std_logic;
SIGNAL \r[0]~output_o\ : std_logic;
SIGNAL \r[1]~output_o\ : std_logic;
SIGNAL \r[2]~output_o\ : std_logic;
SIGNAL \r[3]~output_o\ : std_logic;
SIGNAL \r[4]~output_o\ : std_logic;
SIGNAL \r[5]~output_o\ : std_logic;
SIGNAL \r[6]~output_o\ : std_logic;
SIGNAL \r[7]~output_o\ : std_logic;
SIGNAL \error~output_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \encoder|r[1]~0_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \encoder|r[0]~1_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \encoder|r[1]~2_combout\ : std_logic;
SIGNAL \encoder|r[4]~3_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \encoder|r[2]~4_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \encoder|r[2]~5_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \encoder|r[5]~6_combout\ : std_logic;
SIGNAL \encoder|r[3]~7_combout\ : std_logic;
SIGNAL \encoder|r[6]~8_combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \encoder|r[4]~9_combout\ : std_logic;
SIGNAL \encoder|r[7]~10_combout\ : std_logic;
SIGNAL \encoder|r[7]~11_combout\ : std_logic;
SIGNAL \checker|and_8bits|y~1_combout\ : std_logic;
SIGNAL \checker|and_8bits|y~0_combout\ : std_logic;
SIGNAL \checker|and_8bits|y~2_combout\ : std_logic;
SIGNAL \encoder|r\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
r <= ww_r;
error <= ww_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y18_N23
\r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder|r\(0),
	devoe => ww_devoe,
	o => \r[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder|r\(1),
	devoe => ww_devoe,
	o => \r[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\r[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder|r[2]~5_combout\,
	devoe => ww_devoe,
	o => \r[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\r[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder|r[3]~7_combout\,
	devoe => ww_devoe,
	o => \r[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\r[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder|r[4]~9_combout\,
	devoe => ww_devoe,
	o => \r[4]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\r[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder|r\(5),
	devoe => ww_devoe,
	o => \r[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\r[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder|r\(6),
	devoe => ww_devoe,
	o => \r[6]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\r[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder|r\(7),
	devoe => ww_devoe,
	o => \r[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\error~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \checker|and_8bits|y~2_combout\,
	devoe => ww_devoe,
	o => \error~output_o\);

-- Location: IOIBUF_X1_Y0_N15
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X7_Y4_N24
\encoder|r[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[1]~0_combout\ = \a[15]~input_o\ $ (\a[7]~input_o\ $ (\a[8]~input_o\ $ (\a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \a[7]~input_o\,
	datac => \a[8]~input_o\,
	datad => \a[14]~input_o\,
	combout => \encoder|r[1]~0_combout\);

-- Location: IOIBUF_X7_Y0_N1
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X7_Y4_N2
\encoder|r[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[0]~1_combout\ = \a[13]~input_o\ $ (\a[1]~input_o\ $ (\a[3]~input_o\ $ (\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \a[0]~input_o\,
	combout => \encoder|r[0]~1_combout\);

-- Location: IOIBUF_X16_Y0_N1
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X7_Y4_N20
\encoder|r[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r\(0) = \encoder|r[1]~0_combout\ $ (\encoder|r[0]~1_combout\ $ (\a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|r[1]~0_combout\,
	datab => \encoder|r[0]~1_combout\,
	datac => \a[6]~input_o\,
	combout => \encoder|r\(0));

-- Location: IOIBUF_X0_Y11_N15
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X6_Y4_N24
\encoder|r[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[1]~2_combout\ = \a[9]~input_o\ $ (\a[4]~input_o\ $ (\a[2]~input_o\ $ (\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datab => \a[4]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \encoder|r[1]~2_combout\);

-- Location: LCCOMB_X6_Y4_N26
\encoder|r[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r\(1) = \encoder|r[1]~2_combout\ $ (\encoder|r[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|r[1]~2_combout\,
	datad => \encoder|r[1]~0_combout\,
	combout => \encoder|r\(1));

-- Location: LCCOMB_X7_Y4_N14
\encoder|r[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[4]~3_combout\ = \a[13]~input_o\ $ (\a[9]~input_o\ $ (\a[6]~input_o\ $ (\a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \a[9]~input_o\,
	datac => \a[6]~input_o\,
	datad => \a[14]~input_o\,
	combout => \encoder|r[4]~3_combout\);

-- Location: IOIBUF_X0_Y11_N22
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X7_Y4_N0
\encoder|r[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[2]~4_combout\ = \a[2]~input_o\ $ (\a[1]~input_o\ $ (\a[5]~input_o\ $ (\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[5]~input_o\,
	datad => \a[0]~input_o\,
	combout => \encoder|r[2]~4_combout\);

-- Location: IOIBUF_X16_Y0_N8
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X7_Y4_N10
\encoder|r[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[2]~5_combout\ = \encoder|r[4]~3_combout\ $ (\encoder|r[2]~4_combout\ $ (\a[7]~input_o\ $ (\a[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|r[4]~3_combout\,
	datab => \encoder|r[2]~4_combout\,
	datac => \a[7]~input_o\,
	datad => \a[10]~input_o\,
	combout => \encoder|r[2]~5_combout\);

-- Location: IOIBUF_X5_Y0_N22
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X7_Y4_N28
\encoder|r[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[5]~6_combout\ = \a[2]~input_o\ $ (\a[1]~input_o\ $ (\a[3]~input_o\ $ (\a[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \a[10]~input_o\,
	combout => \encoder|r[5]~6_combout\);

-- Location: LCCOMB_X7_Y4_N30
\encoder|r[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[3]~7_combout\ = \encoder|r[1]~0_combout\ $ (\a[11]~input_o\ $ (\a[6]~input_o\ $ (\encoder|r[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|r[1]~0_combout\,
	datab => \a[11]~input_o\,
	datac => \a[6]~input_o\,
	datad => \encoder|r[5]~6_combout\,
	combout => \encoder|r[3]~7_combout\);

-- Location: LCCOMB_X6_Y4_N12
\encoder|r[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[6]~8_combout\ = \a[1]~input_o\ $ (\a[4]~input_o\ $ (\a[2]~input_o\ $ (\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[4]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[0]~input_o\,
	combout => \encoder|r[6]~8_combout\);

-- Location: IOIBUF_X34_Y4_N22
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X7_Y4_N8
\encoder|r[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[4]~9_combout\ = \encoder|r[6]~8_combout\ $ (\a[11]~input_o\ $ (\encoder|r[4]~3_combout\ $ (\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|r[6]~8_combout\,
	datab => \a[11]~input_o\,
	datac => \encoder|r[4]~3_combout\,
	datad => \a[12]~input_o\,
	combout => \encoder|r[4]~9_combout\);

-- Location: LCCOMB_X7_Y4_N26
\encoder|r[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[7]~10_combout\ = \a[15]~input_o\ $ (\a[7]~input_o\ $ (\a[5]~input_o\ $ (\a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \a[7]~input_o\,
	datac => \a[5]~input_o\,
	datad => \a[14]~input_o\,
	combout => \encoder|r[7]~10_combout\);

-- Location: LCCOMB_X7_Y4_N12
\encoder|r[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r\(5) = \encoder|r[7]~10_combout\ $ (\encoder|r[5]~6_combout\ $ (\a[13]~input_o\ $ (\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|r[7]~10_combout\,
	datab => \encoder|r[5]~6_combout\,
	datac => \a[13]~input_o\,
	datad => \a[12]~input_o\,
	combout => \encoder|r\(5));

-- Location: LCCOMB_X6_Y4_N6
\encoder|r[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r\(6) = \a[7]~input_o\ $ (\a[11]~input_o\ $ (\encoder|r[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \a[11]~input_o\,
	datad => \encoder|r[6]~8_combout\,
	combout => \encoder|r\(6));

-- Location: LCCOMB_X7_Y4_N6
\encoder|r[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[7]~11_combout\ = \a[0]~input_o\ $ (\a[6]~input_o\ $ (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[0]~input_o\,
	datac => \a[6]~input_o\,
	datad => \a[2]~input_o\,
	combout => \encoder|r[7]~11_combout\);

-- Location: LCCOMB_X7_Y4_N16
\encoder|r[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r\(7) = \encoder|r[7]~11_combout\ $ (\a[13]~input_o\ $ (\encoder|r[7]~10_combout\ $ (\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|r[7]~11_combout\,
	datab => \a[13]~input_o\,
	datac => \encoder|r[7]~10_combout\,
	datad => \a[12]~input_o\,
	combout => \encoder|r\(7));

-- Location: LCCOMB_X7_Y4_N4
\checker|and_8bits|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \checker|and_8bits|y~1_combout\ = (\a[15]~input_o\ & (\a[9]~input_o\ & (!\a[8]~input_o\ & !\a[12]~input_o\))) # (!\a[15]~input_o\ & (!\a[9]~input_o\ & (\a[8]~input_o\ & \a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \a[9]~input_o\,
	datac => \a[8]~input_o\,
	datad => \a[12]~input_o\,
	combout => \checker|and_8bits|y~1_combout\);

-- Location: LCCOMB_X7_Y4_N18
\checker|and_8bits|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \checker|and_8bits|y~0_combout\ = (!\a[11]~input_o\ & (\a[10]~input_o\ & \a[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \a[10]~input_o\,
	datad => \a[14]~input_o\,
	combout => \checker|and_8bits|y~0_combout\);

-- Location: LCCOMB_X7_Y4_N22
\checker|and_8bits|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \checker|and_8bits|y~2_combout\ = (\checker|and_8bits|y~1_combout\ & (\checker|and_8bits|y~0_combout\ & (\a[13]~input_o\ $ (!\a[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \a[9]~input_o\,
	datac => \checker|and_8bits|y~1_combout\,
	datad => \checker|and_8bits|y~0_combout\,
	combout => \checker|and_8bits|y~2_combout\);

ww_r(0) <= \r[0]~output_o\;

ww_r(1) <= \r[1]~output_o\;

ww_r(2) <= \r[2]~output_o\;

ww_r(3) <= \r[3]~output_o\;

ww_r(4) <= \r[4]~output_o\;

ww_r(5) <= \r[5]~output_o\;

ww_r(6) <= \r[6]~output_o\;

ww_r(7) <= \r[7]~output_o\;

ww_error <= \error~output_o\;
END structure;


