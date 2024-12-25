library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_sinalizador is
end tb_sinalizador;

architecture arch of tb_sinalizador is

component Sinalizador is
	generic(
		DATA_WIDTH : natural := 4
	);
	port(
		RESET   : in    std_logic; -- reset input
		CLOCK   : in    std_logic; -- clock input
		E			: in std_logic_vector(DATA_WIDTH -1 downto 0);
		Sobe 		: out std_logic;
		Desce		: out std_logic;
		Display_7seg : out std_logic_vector(6 downto 0)
   );
end component;
signal fio_clock:  std_logic:= '0';
signal fio_reset,  fio_sobe, fio_desce: std_logic;
signal fio_E : std_logic_vector(3 downto 0);
signal fio_Display_7seg : std_logic_vector(6 downto 0);

			
begin
	 instancia_sinalizador: Sinalizador
		 generic map(
			DATA_WIDTH => 4
		 )
		 port map(
			RESET=>fio_reset,
			CLOCK=>fio_clock,
			E=>fio_E,
			Sobe=>fio_sobe,
			Desce=>fio_desce,
			Display_7seg=>fio_Display_7seg
		 
		 
		 );
fio_reset <= '1', '0' after 3ns;
fio_clock <= not fio_clock after 2 ns;
fio_E  <= x"0", x"8" after 20 ns, x"7" after 40 ns, x"4" after 60 ns;
    
end arch;