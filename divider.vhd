library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity divider is
 port(
	clkin:in std_logic;
	clkout:out std_logic
	);
end divider;

architecture arch_divider of divider is
	signal cnt:integer:=0;
	signal tmp_clk :std_logic:='0';
begin
	process
	begin
		wait until rising_edge(clkin);
		if(cnt=1)then
			cnt<=0;
			tmp_clk<=not tmp_clk;
		else
		 cnt<=cnt+1;
		end if;
	end process;
	clkout<=tmp_clk;
end arch_divider;
