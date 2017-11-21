LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY encoder IS
  PORT(  a : IN STD_LOGIC_VECTOR(23 downto 8);
         r : OUT STD_LOGIC_VECTOR(7 downto 0));
END encoder;

ARCHITECTURE logic OF encoder IS
	Signal s_X_9_22 	: STD_LOGIC;
	Signal s_X_10_15 	: STD_LOGIC;
	Signal s_X_8_21 	: STD_LOGIC;
	Signal s_X_11_18 	: STD_LOGIC;
	Signal s_X_14_17 	: STD_LOGIC;
	Signal s_X_13_20 	: STD_LOGIC;
	Signal s_X_12_19 	: STD_LOGIC;
	Signal s_X_16_23 	: STD_LOGIC;
	
BEGIN
	s_X_9_22 	<= a(9) XOR a(22);
	s_X_10_15 	<= a(10) XOR a(15);
	s_X_8_21 	<= a(8) XOR a(21);
	s_X_11_18 	<= a(11) XOR a(18);
	s_X_14_17 	<= a(14) XOR a(17);
	s_X_13_20 	<= a(13) XOR a(20);
	s_X_12_19 	<= a(12) XOR a(19);
	s_x_16_23 	<= a(16) XOR a(23);

  r(7) <= a(14) XOR a(22) XOR a(23) XOR s_X_10_15 XOR s_X_8_21 XOR s_X_13_20;
  r(6) <= a(8) XOR a(9) XOR s_X_10_15 XOR s_X_12_19; 
  r(5) <= a(21) XOR a(23) XOR s_X_10_15 XOR s_X_9_22 XOR s_X_11_18 XOR s_X_13_20;
  r(4) <= a(10) XOR a(20) XOR s_X_9_22 XOR s_X_8_21 XOR s_X_14_17 XOR s_X_12_19;
  r(3) <= a(14) XOR a(19) XOR s_X_10_15 XOR s_X_9_22 XOR s_X_11_18 XOR s_x_16_23;
  r(2) <= a(13) XOR a(18) XOR s_X_10_15 XOR s_X_9_22 XOR s_X_8_21 XOR s_X_14_17;
  r(1) <= a(12) XOR a(17) XOR s_X_10_15 XOR s_X_9_22 XOR s_x_16_23;
  r(0) <= a(11) XOR a(14) XOR a(15) XOR s_X_9_22 XOR s_X_8_21 XOR s_x_16_23;
END logic;