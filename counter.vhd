library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is
port(
	clkin:in std_logic;
	clkout:out std_logic_vector(1 downto 0)
	);
end counter;

architecture arch_counter of counter is
	component divider is
	port(
		clkin:in std_logic;
		clkout:out std_logic
	);
	end component;
	signal cnt:std_logic_vector(1 downto 0):="00";
	signal tmp_clk :std_logic:='0';
begin
	u0:divider port map(clkin,tmp_clk);
	process(tmp_clk)
	begin
		--wait until rising_edge(clkin);
		if(tmp_clk'event and tmp_clk='1')then
			cnt<=cnt+1;
		end if;
	end process;
	clkout<=cnt;
end arch_counter;
