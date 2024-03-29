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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/20/2017 13:05:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CRC16_polynomial_sol
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CRC16_polynomial_sol_vhd_vec_tst IS
END CRC16_polynomial_sol_vhd_vec_tst;
ARCHITECTURE CRC16_polynomial_sol_arch OF CRC16_polynomial_sol_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(23 DOWNTO 8);
SIGNAL error : STD_LOGIC;
SIGNAL r : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT CRC16_polynomial_sol
	PORT (
	a : IN STD_LOGIC_VECTOR(23 DOWNTO 8);
	error : OUT STD_LOGIC;
	r : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CRC16_polynomial_sol
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	error => error,
	r => r
	);

-- a[15]
t_prcs_a_15: PROCESS
BEGIN
	a(15) <= '0';
	WAIT FOR 640000 ps;
	a(15) <= '1';
	WAIT FOR 40000 ps;
	a(15) <= '0';
WAIT;
END PROCESS t_prcs_a_15;

-- a[14]
t_prcs_a_14: PROCESS
BEGIN
	a(14) <= '0';
	WAIT FOR 600000 ps;
	a(14) <= '1';
	WAIT FOR 80000 ps;
	a(14) <= '0';
WAIT;
END PROCESS t_prcs_a_14;

-- a[13]
t_prcs_a_13: PROCESS
BEGIN
	a(13) <= '0';
	WAIT FOR 560000 ps;
	a(13) <= '1';
	WAIT FOR 120000 ps;
	a(13) <= '0';
WAIT;
END PROCESS t_prcs_a_13;

-- a[12]
t_prcs_a_12: PROCESS
BEGIN
	a(12) <= '0';
	WAIT FOR 520000 ps;
	a(12) <= '1';
	WAIT FOR 160000 ps;
	a(12) <= '0';
WAIT;
END PROCESS t_prcs_a_12;

-- a[11]
t_prcs_a_11: PROCESS
BEGIN
	a(11) <= '0';
	WAIT FOR 480000 ps;
	a(11) <= '1';
	WAIT FOR 200000 ps;
	a(11) <= '0';
WAIT;
END PROCESS t_prcs_a_11;

-- a[10]
t_prcs_a_10: PROCESS
BEGIN
	a(10) <= '0';
	WAIT FOR 440000 ps;
	a(10) <= '1';
	WAIT FOR 240000 ps;
	a(10) <= '0';
WAIT;
END PROCESS t_prcs_a_10;

-- a[9]
t_prcs_a_9: PROCESS
BEGIN
	a(9) <= '0';
	WAIT FOR 400000 ps;
	a(9) <= '1';
	WAIT FOR 280000 ps;
	a(9) <= '0';
WAIT;
END PROCESS t_prcs_a_9;

-- a[8]
t_prcs_a_8: PROCESS
BEGIN
	a(8) <= '0';
	WAIT FOR 360000 ps;
	a(8) <= '1';
	WAIT FOR 320000 ps;
	a(8) <= '0';
WAIT;
END PROCESS t_prcs_a_8;
END CRC16_polynomial_sol_arch;
