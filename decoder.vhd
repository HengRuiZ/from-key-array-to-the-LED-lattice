LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE ieee.std_logic_unsigned.all;  
ENTITY decoder IS
	PORT (
           input:in std_logic_vector( 1 downto 0);            
			  output: out STD_LOGIC_VECTOR(3 DOWNTO 0)); 
END decoder;  
architecture arch_decoder of decoder is
begin
	process(input)begin
	case input is
	when "00" => output <= "1110";   
	when "01" => output <= "1101";   
	when "10" => output <= "1011";   
	when "11" => output <= "0111";
	when others => null;
	end case;
	end process;
end arch_decoder;