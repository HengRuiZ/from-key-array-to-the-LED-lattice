LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE ieee.std_logic_unsigned.all;  
ENTITY reader IS
	PORT (
           clk_in:in std_logic_vector( 1 downto 0);            
			  num_in:in std_LOGIC_VECTOR(3 downto 0);
			  num_out: out STD_LOGIC_VECTOR(3 DOWNTO 0); 
			  state_out: out std_LOGIC);
END reader;  
architecture arch_reader of reader is
	signal state:std_LOGIC_VECTOR(3 downto 0);
begin
	process(clk_in,num_in,state)begin
	case clk_in is
	when "00" => 
		--if(num_in = "1111")then
			--state(3) <= '1';
		--else
		 --state(3) <= '0';
		 case num_in is
			when "0111" => state_out<= '1';num_out <= "0000";
			when "1011" => state_out<= '1';num_out <= "0001";
			when "1101" => state_out<= '1';num_out <= "0010";
			when "1110" => state_out<= '1';num_out <= "0011";
			when others => state_out<= '0';
		 end case;
		--end if;
	when "01" => 
		--if(num_in = "1111")then
			--state(2) <= '1';
		--else
		 --state(2) <= '0';
		 case num_in is
			when "0111" => state_out<= '1';num_out <= "0100";
			when "1011" => state_out<= '1';num_out <= "0101";
			when "1101" => state_out<= '1';num_out <= "0110";
			when "1110" => state_out<= '1';num_out <= "0111";
			when others => state_out<= '0';
		 end case;
		--end if;
	when "10" => 
		--if(num_in = "1111")then
				--state(1) <= '1';
		--else
		 --state(1) <= '0';
		 case num_in is
			when "0111" => state_out<= '1';num_out <= "1000";
			when "1011" => state_out<= '1';num_out <= "1001";
			when "1101" => state_out<= '1';num_out <= "1010";
			when "1110" => state_out<= '1';num_out <= "1011";
			when others => state_out<= '0';
		 end case;
		--end if;
	when "11" => 
		--if(num_in = "1111")then
				--state(0) <= '1';
		--else
		 --state(0) <= '0';
		 case num_in is
			when "0111" => state_out<= '1';num_out <= "1100";
			when "1011" => state_out<= '1';num_out <= "1101";
			when "1101" => state_out<= '1';num_out <= "1110";
			when "1110" => state_out<= '1';num_out <= "1111";
			when others => state_out<= '0';
		 end case;
		--end if;
	when others => null;
	end case;
	--if(state = "1111")then
			--state_out<= '0';
		--else
		 --state_out<= '1';
		--end if;
	end process;
end arch_reader;
