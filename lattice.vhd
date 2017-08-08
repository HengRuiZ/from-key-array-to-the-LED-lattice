library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lattice is
port(
	count:in std_logic_vector(2 downto 0);
	rowout:out std_logic_vector(7 downto 0);
	lineout:out std_logic_vector(7 downto 0);
	state:in std_logic;
	num_in:in std_logic_vector(3 downto 0)
	);
end lattice;

architecture arch_lattice of lattice is
	signal row0:std_logic_vector(7 downto 0):="00000000";
	signal row1:std_logic_vector(7 downto 0):="00000000";
	signal row2:std_logic_vector(7 downto 0):="00000000";
	signal row3:std_logic_vector(7 downto 0):="00000000";
	signal row4:std_logic_vector(7 downto 0):="00000000";
	signal row5:std_logic_vector(7 downto 0):="00000000";
	signal row6:std_logic_vector(7 downto 0):="00000000";
	signal row7:std_logic_vector(7 downto 0):="00000000";
begin
	process(count)
	begin
		case count is
		when "000" => lineout<= "01111111";rowout<=row0;
		when "001" => lineout<= "10111111";rowout<=row1;
		when "010" => lineout<= "11011111";rowout<=row2;
		when "011" => lineout<= "11101111";rowout<=row3;
		when "100" => lineout<= "11110111";rowout<=row4;
		when "101" => lineout<= "11111011";rowout<=row5;
		when "110" => lineout<= "11111101";rowout<=row6;
		when "111" => lineout<= "11111110";rowout<=row7;
		when others => null;
		end case;
	end process;
	process(num_in)
	begin
		if(state='1')then
		case num_in is
		when "0000" =>
			row0<="10000000";
			row1<="10000000";
			row2<="10000000";
			row3<="10000000";
			row4<="10000000";
			row5<="10000000";
			row6<="10000000";
			row7<="10000000";
		when "0001" =>
			row0<="01000000";
			row1<="01000000";
			row2<="01000000";
			row3<="01000000";
			row4<="01000000";
			row5<="01000000";
			row6<="01000000";
			row7<="01000000";
		when "0010" =>
			row0<="00100000";
			row1<="00100000";
			row2<="00100000";
			row3<="00100000";
			row4<="00100000";
			row5<="00100000";
			row6<="00100000";
			row7<="00100000";
		when "0011" =>
			row0<="00010000";
			row1<="00010000";
			row2<="00010000";
			row3<="00010000";
			row4<="00010000";
			row5<="00010000";
			row6<="00010000";
			row7<="00010000";
		when "0100" =>
			row0<="00001000";
			row1<="00001000";
			row2<="00001000";
			row3<="00001000";
			row4<="00001000";
			row5<="00001000";
			row6<="00001000";
			row7<="00001000";
		when "0101" =>
			row0<="00000100";
			row1<="00000100";
			row2<="00000100";
			row3<="00000100";
			row4<="00000100";
			row5<="00000100";
			row6<="00000100";
			row7<="00000100";
		when "0110" =>
			row0<="00000010";
			row1<="00000010";
			row2<="00000010";
			row3<="00000010";
			row4<="00000010";
			row5<="00000010";
			row6<="00000010";
			row7<="00000010";
		when "0111" =>
			row0<="00000001";
			row1<="00000001";
			row2<="00000001";
			row3<="00000001";
			row4<="00000001";
			row5<="00000001";
			row6<="00000001";
			row7<="00000001";
		when "1000" =>
			row0<="11111111";
			row1<="00000000";
			row2<="00000000";
			row3<="00000000";
			row4<="00000000";
			row5<="00000000";
			row6<="00000000";
			row7<="00000000";
		when "1001" =>
			row1<="11111111";
			row0<="00000000";
			row2<="00000000";
			row3<="00000000";
			row4<="00000000";
			row5<="00000000";
			row6<="00000000";
			row7<="00000000";
		when "1010" =>
			row2<="11111111";
			row1<="00000000";
			row0<="00000000";
			row3<="00000000";
			row4<="00000000";
			row5<="00000000";
			row6<="00000000";
			row7<="00000000";
		when "1011" =>
			row3<="11111111";
			row1<="00000000";
			row2<="00000000";
			row0<="00000000";
			row4<="00000000";
			row5<="00000000";
			row6<="00000000";
			row7<="00000000";
		when "1100" =>
			row4<="11111111";
			row1<="00000000";
			row2<="00000000";
			row3<="00000000";
			row0<="00000000";
			row5<="00000000";
			row6<="00000000";
			row7<="00000000";
		when "1101" =>
			row5<="11111111";
			row1<="00000000";
			row2<="00000000";
			row3<="00000000";
			row4<="00000000";
			row0<="00000000";
			row6<="00000000";
			row7<="00000000";
		when "1110" =>
			row6<="11111111";
			row1<="00000000";
			row2<="00000000";
			row3<="00000000";
			row4<="00000000";
			row5<="00000000";
			row0<="00000000";
			row7<="00000000";
		when "1111" =>
			row7<="11111111";
			row1<="00000000";
			row2<="00000000";
			row3<="00000000";
			row4<="00000000";
			row5<="00000000";
			row6<="00000000";
			row0<="00000000";
		when others => null;
		end case;
		else
			row7<="00000000";
			row1<="00000000";
			row2<="00000000";
			row3<="00000000";
			row4<="00000000";
			row5<="00000000";
			row6<="00000000";
			row0<="00000000";
		end if;
	end process;
end arch_lattice;
