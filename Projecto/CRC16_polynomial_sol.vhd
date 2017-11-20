LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY CRC16_polynomial_sol IS
  PORT (a: IN STD_LOGIC_VECTOR(15 downto 0);
        r: OUT STD_LOGIC_VECTOR(7 downto 0)
		  );
END CRC16_polynomial_sol;

ARCHITECTURE structure OF CRC16_polynomial_sol IS
BEGIN
	CRC16_divider : work.CRC16_divider PORT MAP (
														a(15 downto 0),
													   r(7 downto 0)
														);
														
END structure;