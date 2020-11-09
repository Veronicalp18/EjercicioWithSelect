--Se describe el comportamiento de la compuerta xor
--A, B y C son entradas; Utilizacion del WITH SELECT
--Fecha: 05-11-2020
--Version 1.0
--Autor: Veronica Lopez Paladines
--***************************************************
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Ejercicio2 is 
	port 
		(
			--Pines de entradas
			A,B,C: in std_logic;
			
			--Pines de salida
			F: out std_logic
		);
end Ejercicio2;

architecture behavioral of Ejercicio2 is 
signal ABC: std_logic_vector (2 downto 0);
begin
ABC<= A & B & C;
			with (ABC) select
			F<= '1' when "000",
				 '1' when "001",
				 '1' when "100",
				 '0' when others;
end behavioral;