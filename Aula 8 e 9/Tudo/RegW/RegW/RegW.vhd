LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity RegW is

	generic
	(
		W : natural := 4
	);

	port( 
		clock: in std_logic;
		D: in std_logic_vector(W -1 downto 0);
		load: in std_logic;
		reset: in std_logic;
		preset: in std_logic;
		Q: out std_logic_vector(W -1 downto 0)
	 );
end RegW;

architecture RTL of RegW is
begin

	Q <= (OTHERS => '0') when(reset = '1')else
	(OTHERS => '1') when(preset = '1')else	
	D when(clock='1' and clock'event and load='1');

end RTL;