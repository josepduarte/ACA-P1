LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY CRC16_polynomial_sol IS
  PORT(  a : IN STD_LOGIC_VECTOR(15 downto 0);
         r : OUT STD_LOGIC_VECTOR(7 downto 0);
			error : OUT STD_LOGIC
		);
END CRC16_polynomial_sol;

ARCHITECTURE structure OF CRC16_polynomial_sol IS
	SIGNAL s_r : STD_LOGIC_VECTOR (7 DOWNTO 0);
BEGIN
   encoder	: work.encoder PORT MAP (
												a,
												s_r
											);
	checker	: work.checker PORT MAP(
												a, 
												s_r,
												error
												);
	r <= s_r;
												
END structure;