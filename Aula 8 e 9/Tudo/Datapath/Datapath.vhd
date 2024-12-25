LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity Datapath is
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
end Datapath;

architecture RTL of Datapath is
 

	COMPONENT mean_4_clocks is
		 generic (
			  W       :       integer := 4
		 );
		 port (
			  CLK     : in    std_logic;
			  RESET   : in    std_logic;
			  INPUT   : in    std_logic_vector(W - 1 downto 0);
			  OUTPUT  : out   std_logic_vector(W - 1 downto 0)
		 );
	END COMPONENT;
	
	COMPONENT RegW is

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
	end COMPONENT;

	COMPONENT comparador is
		generic
			(
				DATA_WIDTH : natural := 16
			);

			port 
			(
				a	: in std_logic_vector	((DATA_WIDTH-1) downto 0);
				b	: in std_logic_vector	((DATA_WIDTH-1) downto 0);
				maior	: out std_logic;
				menor	: out std_logic;
				igual	: out std_logic
			);
	end COMPONENT;
	
	COMPONENT Bcd_7seg is
		port (
		entrada: in std_logic_vector (3 downto 0);
		saida: out std_logic_vector (6 downto 0)
		);
	end COMPONENT;

	
	
	signal Sig_E: std_logic_vector ((DATA_WIDTH-1) downto 0);
	signal Sig_M: std_logic_vector ((DATA_WIDTH-1) downto 0);
	signal sin_D : std_logic_vector(1 downto 0);
	signal sin_Q : std_logic_vector(1 downto 0);
	--signal sig_reg_SD : STD_logic_vector(2 downto 0);
	begin
	sin_D<= Pino_Subindo & Pino_Descendo;
	--sin_Q<= Desce & Sobe;
	instancia_Reg_MA: mean_4_clocks generic map (W => 4) 
		port map(clk=>clock,reset=>Reset_MA,input=>Sig_E, output=>sig_M);
		
	instancia_Reg_E: RegW generic map (W => 4) 
		port map(clock=>clock,d=>E,load=>load_E, reset=>'0', preset=>'0', q=>Sig_E);
		
	instancia_Reg_SD: RegW generic map (W => 2) 
		port map(clock=>clock,D=>sin_D ,load=>Pino_Atualize, reset=>'0', preset=>'0',Q(0)=>Desce, Q(1)=> Sobe);
		
	instancia_comparador: comparador generic map (DATA_WIDTH => 4) 
		port map(a=>Sig_E,b=>Sig_M,maior=>Pino_Maior, menor=>Pino_Menor); 
	
	instancia_Bcd_7seg: Bcd_7seg 
		port map(entrada=>Sig_M,saida=>Media);


	
end RTL;