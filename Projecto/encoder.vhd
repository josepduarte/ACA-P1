LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY encoder IS
  PORT(  a : IN STD_LOGIC_VECTOR(23 downto 8);
         r : OUT STD_LOGIC_VECTOR(7 downto 0));
END encoder;

ARCHITECTURE logic OF encoder IS
BEGIN
  r(7) <= a(8) XOR a(10) XOR a(13) XOR a(14) XOR a(15) XOR a(20) XOR a(21) XOR a(22) XOR a(23);
  r(6) <= a(8) XOR a(9) XOR a(10) XOR a(12) XOR a(15) XOR a(19); 
  r(5) <= a(9) XOR a(10) XOR a(11) XOR a(13) XOR a(15) XOR a(18) XOR a(20) XOR a(21) XOR a(22) XOR a(23);
  r(4) <= a(8) XOR a(9) XOR a(10) XOR a(12) XOR a(14) XOR a(17) XOR a(19) XOR a(20) XOR a(21) XOR a(22);
  r(3) <= a(9) XOR a(10) XOR a(11) XOR a(14) XOR a(15) XOR a(16) XOR a(18) XOR a(19) XOR a(22) XOR a(23);
  r(2) <= a(8) XOR a(9) XOR a(10) XOR a(13) XOR a(14) XOR a(15) XOR a(17) XOR a(18) XOR a(21) XOR a(22);
  r(1) <= a(9) XOR a(10) XOR a(12) XOR a(15) XOR a(16) XOR a(17) XOR a(22) XOR a(23);
  r(0) <= a(8) XOR a(9) XOR a(11) XOR a(14) XOR a(15) XOR a(16) XOR a(21) XOR a(22) XOR a(23);
END logic;