LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY encoder_w_remainder IS
  PORT(  a 		: IN STD_LOGIC_VECTOR (23 downto 8);
         r 		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			r_sol	: OUT STD_LOGIC_VECTOR (7 downto 0)
			);
END encoder_w_remainder;

ARCHITECTURE logic OF encoder_w_remainder IS
BEGIN
	r_sol(7) <= a(8) XOR a(10) XOR a(13) XOR a(14) XOR a(15) XOR a(20) XOR a(21) XOR a(22) XOR a(23) XOR r(7);
	r_sol(6) <= a(8) XOR a(9) XOR a(10) XOR a(12) XOR a(15) XOR a(19) XOR r(6); 
	r_sol(5) <= a(9) XOR a(10) XOR a(11) XOR a(13) XOR a(15) XOR a(18) XOR a(20) XOR a(21) XOR a(22) XOR a(23) XOR r(5);
	r_sol(4) <= a(8) XOR a(9) XOR a(10) XOR a(12) XOR a(14) XOR a(17) XOR a(19) XOR a(20) XOR a(21) XOR a(22) XOR r(4);
	r_sol(3) <= a(9) XOR a(10) XOR a(11) XOR a(14) XOR a(15) XOR a(16) XOR a(18) XOR a(19) XOR a(22) XOR a(23) XOR r(3);
	r_sol(2) <= a(8) XOR a(9) XOR a(10) XOR a(13) XOR a(14) XOR a(15) XOR a(17) XOR a(18) XOR a(21) XOR a(22) XOR r(2);
	r_sol(1) <= a(9) XOR a(10) XOR a(12) XOR a(15) XOR a(16) XOR a(17) XOR a(22) XOR a(23) XOR r(1);
	r_sol(0) <= a(8) XOR a(9) XOR a(11) XOR a(14) XOR a(15) XOR a(16) XOR a(21) XOR a(22) XOR a(23) XOR r(0);
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