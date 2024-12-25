LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity Sinalizador is
	generic
	(
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
end Sinalizador;
architecture FSM of Sinalizador is
 

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

signal Load_E, Reset_MA, Maior, Menor, Descendo, Subindo, Atualize : std_logic;

begin 
	instancia_controladora: Controladora
		port map(
			  RESET=>RESET,
			  CLOCK=>CLOCK,
			  Maior=>Maior,
			  Menor=>Menor,
			  Load_E=>Load_E,
			  Reset_MA=>Reset_MA,
			  Subindo=>Subindo,
			  Descendo=>Descendo,
			  Atualize=>Atualize
		);
	instance_datapath: Datapath
		port map(
			E=>E,
			clock=> CLOCK,
			Reset_MA=>Reset_MA,
			Load_E=>Load_E,
			Pino_Descendo=>Descendo,
			Pino_Subindo=>Subindo,
			Pino_Atualize=>Atualize,
			Sobe=>Sobe,
			Desce=>Desce,
			Pino_Maior=>Maior,
			Pino_Menor=>Menor,
			Media=>Display_7seg
		);
	
	
end FSM;