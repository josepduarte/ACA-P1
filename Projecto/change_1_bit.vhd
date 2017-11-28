LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY change_1_bit IS
  PORT(  x : IN STD_LOGIC_VECTOR(15 downto 0);
         y : OUT STD_LOGIC_VECTOR(15 downto 0));
END change_1_bit;

ARCHITECTURE logic OF change_1_bit IS
	
BEGIN
	y(15 downto 4) <= x(15 downto 4);
	y(3) <= not x(3);
	y(2 downto 0) <= x(2 downto 0);
END logic;

