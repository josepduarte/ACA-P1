LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY encoder IS
  PORT(  a : IN STD_LOGIC_VECTOR(23 downto 8);
         r : OUT STD_LOGIC_VECTOR(7 downto 0));
END encoder;

ARCHITECTURE logic OF encoder IS
	Signal s_X_9_22 						: STD_LOGIC;
	Signal s_X_10_15 							: STD_LOGIC;
	Signal s_X_8_21 						: STD_LOGIC;
	Signal s_X_11_18 						: STD_LOGIC;
	Signal s_X_14_17 						: STD_LOGIC;
	Signal s_X_13_20 						: STD_LOGIC;
	Signal s_X_12_19 						: STD_LOGIC;
	Signal s_X_16_23 						: STD_LOGIC;
	Signal s_X_10_15_X_9_22 			: STD_LOGIC;
	Signal s_X_8_21_X_9_22 				: STD_LOGIC;
	Signal s_X_16_23_X_10_15_X_9_22 	: STD_LOGIC;

	signal tmp_1							: STD_LOGIC;
	signal tmp_2							: STD_LOGIC;
	signal tmp_3							: STD_LOGIC;
	signal tmp_4							: STD_LOGIC;
	signal tmp_5							: STD_LOGIC;
	signal tmp_6							: STD_LOGIC;
	signal tmp_7							: STD_LOGIC;	signal tmp_8							: STD_LOGIC;
	signal tmp_9							: STD_LOGIC;
	signal tmp_10							: STD_LOGIC;
	signal tmp_11							: STD_LOGIC;
	signal tmp_12							: STD_LOGIC;
	signal tmp_13							: STD_LOGIC;
	signal tmp_14							: STD_LOGIC;
	signal tmp_15							: STD_LOGIC;
	signal tmp_16							: STD_LOGIC;
	signal tmp_17							: STD_LOGIC;
	signal tmp_18							: STD_LOGIC;
	signal tmp_19							: STD_LOGIC;
	signal tmp_20							: STD_LOGIC;
	signal tmp_21							: STD_LOGIC;
	
BEGIN
	s_X_9_22    <= a(9) XOR a(22)  AFTER 4ns;
	s_X_10_15   <= a(10) XOR a(15) AFTER 4ns;
	s_X_8_21    <= a(8) XOR a(21)  AFTER 4ns;
	s_X_11_18   <= a(11) XOR a(18) AFTER 4ns;
	s_X_14_17   <= a(14) XOR a(17) AFTER 4ns;
	s_X_13_20   <= a(13) XOR a(20) AFTER 4ns;
	s_X_12_19   <= a(12) XOR a(19) AFTER 4ns;
	s_x_16_23   <= a(16) XOR a(23) AFTER 4ns;
	s_X_10_15_X_9_22 <= s_X_10_15 XOR s_X_9_22 AFTER 4ns;
	s_X_8_21_X_9_22  <= s_X_8_21 XOR s_X_9_22 AFTER 4ns;
	s_X_16_23_X_10_15_X_9_22 <= s_X_16_23 XOR s_X_10_15_X_9_22 AFTER 4ns;
	
	
	tmp_1<= a(14) xor a(22) AFTER 4ns;
	tmp_2<= a(23) xor s_X_10_15 AFTER 4ns;
	tmp_3<= s_X_8_21 xor s_X_13_20 AFTER 4ns;
	tmp_4<= tmp_1 xor tmp_2 AFTER 4ns;
	r(7) <= tmp_4 xor tmp_3 AFTER 4ns; --a(14) XOR a(22) XOR a(23) XOR s_X_10_15 XOR s_X_8_21 XOR s_X_13_20;
	
	tmp_5 <= a(8) XOR a(9) AFTER 4ns;
	tmp_6 <= s_X_10_15 XOR s_X_12_19 AFTER 4ns;
	r(6) <= tmp_5 xor tmp_6 AFTER 4ns; --a(8) XOR a(9) XOR s_X_10_15 XOR s_X_12_19;

	tmp_7 <= a(21) XOR a(23) AFTER 4ns;
	tmp_8 <= s_X_11_18 XOR s_X_13_20 AFTER 4ns;
	tmp_9 <= tmp_7 xor tmp_8 AFTER 4ns;
	r(5) <= tmp_9 XOR s_X_10_15_X_9_22 AFTER 4ns; -- a(21) XOR a(23) XOR s_X_11_18 XOR s_X_13_20 XOR s_X_10_15_X_9_22;
	
	tmp_10 <= a(10) XOR a(20) AFTER 4ns;
	tmp_11 <= s_X_14_17 XOR s_X_12_19 AFTER 4ns;
	tmp_12 <= tmp_10 xor tmp_11 AFTER 4ns;
	r(4) <= tmp_12 xor s_X_8_21_X_9_22 AFTER 4ns; -- a(10) XOR a(20) XOR s_X_14_17 XOR s_X_12_19 XOR s_X_8_21_X_9_22; 
	
	tmp_13 <= a(14) XOR a(19) AFTER 4ns;
	tmp_14 <= s_X_11_18 XOR tmp_13 AFTER 4ns;
	r(3) <= tmp_14 xor s_X_16_23_X_10_15_X_9_22 AFTER 4ns; -- a(14) XOR a(19) XOR s_X_11_18 XOR s_X_16_23_X_10_15_X_9_22;
	
	tmp_15 <= a(13) XOR a(18) AFTER 4ns;
	tmp_16 <= s_X_8_21 XOR s_X_14_17 AFTER 4ns;
	tmp_17 <= tmp_15 xor tmp_16 AFTER 4ns;
	r(2) <= tmp_17 xor s_X_10_15_X_9_22 AFTER 4ns; -- a(13) XOR a(18) XOR s_X_8_21 XOR s_X_14_17 XOR s_X_10_15_X_9_22;
	
	tmp_18 <= a(12) XOR a(17) AFTER 4ns;
	r(1) <= tmp_18 xor s_x_16_23_X_10_15_X_9_22 AFTER 4ns; -- a(12) XOR a(17) XOR s_x_16_23_X_10_15_X_9_22;
	
	tmp_19 <= a(11) XOR a(14) AFTER 4ns;
	tmp_20 <= a(15) XOR s_X_16_23 AFTER 4ns;
	tmp_21 <= tmp_19 xor tmp_20 AFTER 4ns;
	r(0) <= tmp_21 xor s_X_8_21_X_9_22 AFTER 4ns; -- a(11) XOR a(14) XOR a(15) XOR s_X_16_23 XOR s_X_8_21_X_9_22;

END logic;