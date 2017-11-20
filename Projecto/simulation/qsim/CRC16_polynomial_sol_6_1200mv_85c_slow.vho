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

-- DATE "11/20/2017 21:07:35"

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
-- r[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[6]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[7]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \encoder|r[0]~0_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \encoder|r[6]~1_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \encoder|r[5]~2_combout\ : std_logic;
SIGNAL \encoder|r~3_combout\ : std_logic;
SIGNAL \encoder|r[2]~4_combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \encoder|r~5_combout\ : std_logic;
SIGNAL \encoder|r[7]~7_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \encoder|r~6_combout\ : std_logic;
SIGNAL \encoder|r[4]~8_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \encoder|r[6]~9_combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \encoder|r[7]~10_combout\ : std_logic;
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X7_Y0_N2
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

-- Location: IOOBUF_X3_Y0_N2
\r[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder|r[2]~4_combout\,
	devoe => ww_devoe,
	o => \r[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\r[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder|r\(3),
	devoe => ww_devoe,
	o => \r[3]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\r[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder|r[4]~8_combout\,
	devoe => ww_devoe,
	o => \r[4]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
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

-- Location: IOOBUF_X13_Y0_N2
\r[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder|r[6]~9_combout\,
	devoe => ww_devoe,
	o => \r[6]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
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

-- Location: IOOBUF_X34_Y7_N9
\error~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \error~output_o\);

-- Location: IOIBUF_X5_Y0_N15
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X5_Y6_N24
\encoder|r[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[0]~0_combout\ = \a[6]~input_o\ $ (\a[1]~input_o\ $ (\a[0]~input_o\ $ (\a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[13]~input_o\,
	combout => \encoder|r[0]~0_combout\);

-- Location: IOIBUF_X0_Y7_N1
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X5_Y6_N18
\encoder|r[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r\(0) = \a[3]~input_o\ $ (\encoder|r[0]~0_combout\ $ (\a[14]~input_o\ $ (\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \encoder|r[0]~0_combout\,
	datac => \a[14]~input_o\,
	datad => \a[7]~input_o\,
	combout => \encoder|r\(0));

-- Location: IOIBUF_X0_Y18_N22
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X5_Y6_N12
\encoder|r[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[6]~1_combout\ = \a[14]~input_o\ $ (\a[15]~input_o\ $ (\a[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datac => \a[15]~input_o\,
	datad => \a[7]~input_o\,
	combout => \encoder|r[6]~1_combout\);

-- Location: IOIBUF_X0_Y21_N8
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X5_Y6_N14
\encoder|r[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r\(1) = \encoder|r[6]~1_combout\ $ (\a[1]~input_o\ $ (\a[2]~input_o\ $ (\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|r[6]~1_combout\,
	datab => \a[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[4]~input_o\,
	combout => \encoder|r\(1));

-- Location: IOIBUF_X5_Y0_N22
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X5_Y6_N16
\encoder|r[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[5]~2_combout\ = \a[14]~input_o\ $ (\a[5]~input_o\ $ (\a[15]~input_o\ $ (\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datab => \a[5]~input_o\,
	datac => \a[15]~input_o\,
	datad => \a[7]~input_o\,
	combout => \encoder|r[5]~2_combout\);

-- Location: LCCOMB_X5_Y6_N2
\encoder|r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r~3_combout\ = \a[1]~input_o\ $ (\a[0]~input_o\ $ (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[2]~input_o\,
	combout => \encoder|r~3_combout\);

-- Location: LCCOMB_X5_Y6_N20
\encoder|r[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[2]~4_combout\ = \a[13]~input_o\ $ (\encoder|r[5]~2_combout\ $ (\a[6]~input_o\ $ (\encoder|r~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \encoder|r[5]~2_combout\,
	datac => \a[6]~input_o\,
	datad => \encoder|r~3_combout\,
	combout => \encoder|r[2]~4_combout\);

-- Location: IOIBUF_X0_Y11_N15
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X5_Y6_N22
\encoder|r~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r~5_combout\ = \a[2]~input_o\ $ (\a[1]~input_o\ $ (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[1]~input_o\,
	datad => \a[3]~input_o\,
	combout => \encoder|r~5_combout\);

-- Location: LCCOMB_X4_Y6_N24
\encoder|r[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r\(3) = \a[8]~input_o\ $ (\a[6]~input_o\ $ (\encoder|r[6]~1_combout\ $ (\encoder|r~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \a[6]~input_o\,
	datac => \encoder|r[6]~1_combout\,
	datad => \encoder|r~5_combout\,
	combout => \encoder|r\(3));

-- Location: LCCOMB_X5_Y6_N26
\encoder|r[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[7]~7_combout\ = \a[15]~input_o\ $ (\a[6]~input_o\ $ (\a[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[15]~input_o\,
	datac => \a[6]~input_o\,
	datad => \a[13]~input_o\,
	combout => \encoder|r[7]~7_combout\);

-- Location: IOIBUF_X0_Y11_N22
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: LCCOMB_X5_Y6_N8
\encoder|r~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r~6_combout\ = \a[2]~input_o\ $ (\a[1]~input_o\ $ (\a[0]~input_o\ $ (\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[4]~input_o\,
	combout => \encoder|r~6_combout\);

-- Location: LCCOMB_X5_Y6_N4
\encoder|r[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[4]~8_combout\ = \encoder|r[7]~7_combout\ $ (\a[9]~input_o\ $ (\encoder|r~6_combout\ $ (\a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|r[7]~7_combout\,
	datab => \a[9]~input_o\,
	datac => \encoder|r~6_combout\,
	datad => \a[14]~input_o\,
	combout => \encoder|r[4]~8_combout\);

-- Location: IOIBUF_X0_Y18_N15
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X5_Y6_N30
\encoder|r[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r\(5) = \encoder|r~5_combout\ $ (\encoder|r[5]~2_combout\ $ (\a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|r~5_combout\,
	datab => \encoder|r[5]~2_combout\,
	datac => \a[10]~input_o\,
	combout => \encoder|r\(5));

-- Location: IOIBUF_X13_Y0_N15
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X5_Y6_N0
\encoder|r[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[6]~9_combout\ = \encoder|r[6]~1_combout\ $ (\a[13]~input_o\ $ (\encoder|r~6_combout\ $ (\a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|r[6]~1_combout\,
	datab => \a[13]~input_o\,
	datac => \encoder|r~6_combout\,
	datad => \a[11]~input_o\,
	combout => \encoder|r[6]~9_combout\);

-- Location: IOIBUF_X16_Y0_N8
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X5_Y6_N10
\encoder|r[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r[7]~10_combout\ = \a[2]~input_o\ $ (\a[5]~input_o\ $ (\a[12]~input_o\ $ (\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[5]~input_o\,
	datac => \a[12]~input_o\,
	datad => \a[7]~input_o\,
	combout => \encoder|r[7]~10_combout\);

-- Location: LCCOMB_X5_Y6_N28
\encoder|r[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|r\(7) = \encoder|r[7]~7_combout\ $ (\a[0]~input_o\ $ (\encoder|r[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|r[7]~7_combout\,
	datac => \a[0]~input_o\,
	datad => \encoder|r[7]~10_combout\,
	combout => \encoder|r\(7));

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


