library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sys is
	port(
		  scan  :out std_logic_vector(3 downto 0);
		  datain    :in std_logic_vector(3 downto 0);
		  clk:in std_logic;
		  rowout:out std_logic_vector(7 downto 0);
		  lineout:out std_logic_vector(7 downto 0)
		  );
end sys;

architecture arch_sys of sys is
	component counter is
	port(
		clkin:in std_logic;
		clkout:out std_logic_vector(1 downto 0)
	);
	end component;
	component decoder IS
	PORT (
           input:in std_logic_vector( 1 downto 0);            
			  output: out STD_LOGIC_VECTOR(3 DOWNTO 0)); 
	end component;
	component reader1 IS
	PORT (
           clk_in:in std_logic_vector( 1 downto 0);            
			  num_in:in std_LOGIC_VECTOR(3 downto 0);
			  num_out: out STD_LOGIC_VECTOR(3 DOWNTO 0); 
			  state_out: out std_LOGIC);
	end component;
	component counter_3bit is
	port(
		clkin:in std_logic;
		clkout:out std_logic_vector(2 downto 0)
	);
	end component;
	component lattice is
	port(
		state:in std_LOGIC;
		count:in std_logic_vector(2 downto 0);
		rowout:out std_logic_vector(7 downto 0);
		lineout:out std_logic_vector(7 downto 0);
		num_in:in std_logic_vector(3 downto 0)
	);
	end component;
	signal data:std_logic_vector(3 downto 0);
	signal count:std_LOGIC_VECTOR(1 downto 0);
	signal count_3bit:std_LOGIC_VECTOR(2 downto 0);
	signal state:std_logic;
	signal num:std_LOGIC_VECTOR(3 downto 0);
	begin
		u0:counter port map(clk,count);
		u1:decoder port map(count,scan);
		u2:reader1 port map(count,datain,num,state);
		u3:counter_3bit port map(clk,count_3bit);
		u4:lattice port map(state,count_3bit,rowout,lineout,num);
end arch_sys;