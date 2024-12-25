library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_controladora is
end tb_controladora;

architecture arch of tb_controladora is
	component Controladora is 
			port (
			  RESET   : in    std_logic; -- reset input
			  CLOCK   : in    std_logic; -- clock input
			  Maior     : in    std_logic;
			  Menor     : in    std_logic;
			  Load_E    : out   std_logic;
			  Reset_MA  : out   std_logic;
			  Subindo   : out   std_logic;
			  Descendo  : out   std_logic;
			  Atualize  : out   std_logic
    );
	end component;
	
	signal Fio_RESET: std_logic ;
	signal Fio_CLOCK:  std_logic:= '0';
	signal Fio_Maior:  std_logic;
	signal Fio_Menor:  std_logic;
	signal Fio_Load_E: std_logic;
	signal Fio_Reset_MA:  std_logic;
	signal Fio_Subindo:  std_logic; 
	signal Fio_Descendo:  std_logic;
	signal Fio_Atualize:  std_logic;

			
begin
	 uut_Controladora: controladora
		port map(
		     RESET => Fio_RESET,
			  CLOCK=> Fio_CLOCK,
			  Maior=>Fio_Maior,
			  Menor=>Fio_Menor,
			  Load_E =>Fio_Load_E,
			  Reset_MA =>Fio_Reset_MA,
			  Subindo  =>Fio_Subindo,
			  Descendo => Fio_Descendo,
			  Atualize => Fio_Atualize
		);
		Fio_CLOCK <= not Fio_CLOCK after 2 ns;
		Fio_RESET <=  '1', '0' after 3	ns;--reset para iniciar a máquina de estados em S0 na próxima subida de clock
		--Depois de 6 ns muda o estado de s0 para s1, mais 4 ns vai mudar de s1 para s2, depois de 4 ns muda de s2 para s1
		Fio_Maior <= '1', '0' after 12 ns;
		--Depois de 18 ns o estado vai de s2 para s3 e em 26 ns muda de s3 para s4
		Fio_Menor <= '0', '1' after 16 ns, '0' after 24 ns;

    
end arch;