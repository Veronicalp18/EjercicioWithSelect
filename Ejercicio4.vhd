--A, B, C y D son entradas; Utilizacion del WITH SELECT
--Fecha: 09-11-2020
--Version 1.0
--Autor: Veronica Lopez Paladines
--***************************************************
library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Ejercicio4 is
port 
	( 
		--Pines de entradas
		A,B,C,D: in std_logic;
		
		--Pines de salida
		F: out std_logic
	);
end Ejercicio4;

architecture behavioral of Ejercicio4 is 
signal ABCD: std_logic_vector (3 downto 0);
begin
ABCD<= A & B & C & D;
			with (ABCD) select
			F<= '1' when "0000",
				 '1' when "0001",
				 '1' when "0010",
				 '1' when "0100",
				 '1' when "0101",
				 '1' when "0110",
				 '1' when "1000",
				 '1' when "1001",
				 '1' when "1010",
				 '1' when "1100",
				 '1' when "1101",
				 '1' when "1110",
				 '0' when others;
end behavioral;