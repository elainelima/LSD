library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_datapath is
end tb_datapath;

architecture arch of tb_datapath is
	component Datapath is 
		generic
			(
				DATA_WIDTH : natural := 4
			);

			port( 
				E: in std_logic_vector((DATA_WIDTH-1) downto 0);
				clock: in std_logic; 
				Reset_MA: in std_logic;
				Load_E: in std_logic;
				Pino_Descendo: in std_logic;
				Pino_Subindo: in std_logic;
				Pino_Atualize: in std_logic; 
				Sobe: out std_logic;
				Desce: out std_logic;
				Pino_Maior: out std_logic;
				Pino_Menor: out std_logic;
				Media: out std_logic_vector((6) downto 0)
				
			);
	end component;
	
	--signal Fio_Sig_E: std_logic_vector (3 downto 0);
	--signal Fio_Sig_M: std_logic_vector (3 downto 0);
	signal Fio_E: std_logic_vector (3 downto 0);
	signal Fio_clock:  std_logic  := '0'; 
	signal Fio_Reset_MA:  std_logic;
	signal Fio_Load_E:  std_logic;
	signal Fio_Pino_Descendo: std_logic;
	signal Fio_Pino_Subindo:  std_logic;
	signal Fio_Pino_Atualize:  std_logic; 
	signal Fio_Sobe:  std_logic;
	signal Fio_Desce:  std_logic;
	signal Fio_Pino_Maior:  std_logic;
	signal Fio_Pino_Menor:  std_logic;
	signal Fio_Media:  std_logic_vector((6) downto 0);
			
begin
	 uut_Datapath: datapath
	 
	 generic map (DATA_WIDTH => 4)
		port map(
		  E   => Fio_E,
        clock =>  Fio_clock,
        Reset_MA =>  Fio_Reset_MA,
        Load_E =>  Fio_Load_E,
		  Pino_Descendo=> Fio_Pino_Descendo,
		  Pino_Subindo=> Fio_Pino_Subindo,
		  Pino_Atualize=> Fio_Pino_Atualize,
		  Sobe=> Fio_Sobe,
		  Desce=> Fio_Desce,
		  Pino_Maior=> Fio_Pino_Maior,
		  Pino_Menor=> Fio_Pino_Menor,
		  Media=>Fio_Media
		);

		
		Fio_clock <= not Fio_clock after 5 ns;
		Fio_E <= x"0", x"F" after 20 ns, x"A" after 40 ns, x"9" after 60 ns;
		Fio_Reset_MA <= '0';
		Fio_Load_E <= '1';
		Fio_Pino_Descendo <= '1', '0' after 20 ns, '1' after 40 ns, '0' after 60 ns;
		Fio_Pino_Subindo <= '1', '1' after 20 ns, '0' after 40 ns, '0' after 60 ns;
		Fio_Pino_Atualize <= '1';
    
end arch;