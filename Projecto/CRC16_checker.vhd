LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY encoder_w_remainder IS
  PORT(  a 		: IN STD_LOGIC_VECTOR (23 downto 8);
         r 		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			r_sol	: OUT STD_LOGIC_VECTOR (7 downto 0)
			);
END encoder_w_remainder;

ARCHITECTURE logic OF encoder_w_remainder IS
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
	signal tmp_7							: STD_LOGIC;
	signal tmp_8							: STD_LOGIC;
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
	signal tmp_22							: STD_LOGIC;
	signal tmp_23							: STD_LOGIC;
	signal tmp_24							: STD_LOGIC;
	signal tmp_25							: STD_LOGIC;
	signal tmp_26							: STD_LOGIC;
	signal tmp_27							: STD_LOGIC;
	signal tmp_28							: STD_LOGIC;
	signal tmp_29							: STD_LOGIC;
	
BEGIN
	s_X_9_22    <= a(9) XOR a(22);
	s_X_10_15   <= a(10) XOR a(15);
	s_X_8_21    <= a(8) XOR a(21);
	s_X_11_18   <= a(11) XOR a(18);
	s_X_14_17   <= a(14) XOR a(17);
	s_X_13_20   <= a(13) XOR a(20);
	s_X_12_19   <= a(12) XOR a(19);
	s_x_16_23   <= a(16) XOR a(23);
	s_X_10_15_X_9_22 <= s_X_10_15 XOR s_X_9_22;
	s_X_8_21_X_9_22  <= s_X_8_21 XOR s_X_9_22;
	s_X_16_23_X_10_15_X_9_22 <= s_X_16_23 XOR s_X_10_15_X_9_22;
  
	tmp_1<= a(14) xor a(22);
	tmp_2<= a(23) xor r(7);
	tmp_3<= tmp_1 xor tmp_2;
	tmp_4<= tmp_3 xor s_X_10_15;
	tmp_5<= s_X_8_21 xor s_X_13_20;
	r_sol(7) <= tmp_4 xor tmp_5; --a(14) XOR a(22) XOR a(23) XOR s_X_10_15 XOR s_X_8_21 XOR s_X_13_20 xor r(7);
	
	tmp_6 <= a(8) XOR a(9);
	tmp_7 <= s_X_10_15 XOR s_X_12_19;
	tmp_8 <= tmp_6 XOR r(6);
	r_sol(6) <= tmp_7 xor tmp_8; --a(8) XOR a(9) XOR s_X_10_15 XOR s_X_12_19 XOR r(6);

	tmp_9 <= a(21) XOR a(23);
	tmp_10 <= tmp_9 XOR r(5);
	tmp_11 <= s_X_11_18 XOR s_X_13_20;
	tmp_12 <= tmp_10 xor tmp_11;
	r_sol(5) <= tmp_12 XOR s_X_10_15_X_9_22; -- a(21) XOR a(23) XOR s_X_11_18 XOR s_X_13_20 XOR s_X_10_15_X_9_22 XOR r(5);
	
	tmp_13 <= a(10) XOR a(20);
	tmp_14 <= tmp_13 XOR r(4);
	tmp_15 <= s_X_14_17 XOR s_X_12_19;
	tmp_16 <= tmp_15 xor tmp_14;
	r_sol(4) <= tmp_16 xor s_X_8_21_X_9_22; -- a(10) XOR a(20) XOR s_X_14_17 XOR s_X_12_19 XOR s_X_8_21_X_9_22 XOR r(4); 
	
	tmp_17 <= a(14) XOR a(19);
	tmp_18 <= tmp_17 XOR r(3);
	tmp_19 <= s_X_11_18 XOR tmp_18;
	r_sol(3) <= tmp_19 xor s_X_16_23_X_10_15_X_9_22; -- a(14) XOR a(19) XOR s_X_11_18 XOR s_X_16_23_X_10_15_X_9_22 XOR r(3);
	
	tmp_20 <= a(13) XOR a(18);
	tmp_21 <= tmp_20 XOR r(2);
	tmp_22 <= s_X_8_21 XOR s_X_14_17;
	tmp_23 <= tmp_21 xor tmp_22;
	r_sol(2) <= tmp_23 xor s_X_10_15_X_9_22; -- a(13) XOR a(18) XOR s_X_8_21 XOR s_X_14_17 XOR s_X_10_15_X_9_22 XOR r(2);
	
	tmp_24 <= a(12) XOR a(17);
	tmp_25 <= tmp_24 XOR r(1);
	r_sol(1) <= tmp_25 xor s_x_16_23_X_10_15_X_9_22; -- a(12) XOR a(17) XOR s_x_16_23_X_10_15_X_9_22 XOR r(1);
	
	tmp_26 <= a(11) XOR a(14);
	tmp_27 <= a(15) XOR r(0);
	tmp_28 <= tmp_26 XOR tmp_27;
	tmp_29 <= tmp_28 xor s_X_16_23;
	r_sol(0) <= tmp_29 xor s_X_8_21_X_9_22; -- a(11) XOR a(14) XOR a(15) XOR s_X_16_23 XOR s_X_8_21_X_9_22 XOR r(0);

END logic;




LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY OR_8bits IS
  PORT(  x : IN STD_LOGIC_VECTOR(7 downto 0);
         y : OUT STD_LOGIC);
END OR_8bits;

ARCHITECTURE logic OF OR_8bits IS
BEGIN
  y <= x(7) OR x(6) OR x(5) OR x(4) OR x(3) OR x(2) OR x(1) OR x(0);
END logic;




LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY checker IS
  PORT(  a : IN STD_LOGIC_VECTOR(23 downto 8);
			r : IN STD_LOGIc_VECTOR(7 downto 0);
         error : OUT STD_LOGIC);
END checker;

ARCHITECTURE structure OF checker IS
	SIGNAL r_sol : STD_LOGIC_VECTOR (7 DOWNTO 0);
BEGIN
  
  encoder_w_remainder: work.encoder_w_remainder PORT MAP (
																		a,
																		r,
																		r_sol
																		
																	 );
  or_8bits				: work.OR_8bits PORT MAP (
															r_sol,
															error
														);
															
  
END structure;