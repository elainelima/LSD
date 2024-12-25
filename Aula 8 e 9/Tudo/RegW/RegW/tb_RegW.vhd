LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity tb_RegW is

end tb_RegW;

architecture Behavioral of tb_RegW is
	component RegW is
		generic
		(
			W : natural := 4
		);
		Port(
			clock: in std_logic;
			D: in std_logic_vector(W -1 downto 0);
			load: in std_logic;
			reset: in std_logic;
			preset: in std_logic;
			Q: out std_logic_vector(W -1 downto 0)
		);
	end component;
	
	signal clock,load,reset,preset: STD_LOGIC;
	signal D,Q: STD_LOGIC_vector(3 downto 0);
	
begin
	uut_RegW: RegW
	
	generic map(W => 4)
		port map(
			clock => clock,
			D => D,
			load => load,
			reset => reset,
			preset => preset,
			Q => Q
		);
		
    clock_process: process
    begin
        clock <= '0';
        wait for 50 ns;  -- 1/4 do período
        clock <= '1';
        wait for 50 ns;  -- 1/4 do período
		  clock <= '0';
        wait for 50 ns;  -- 1/4 do período
        clock <= '1';
        wait for 50 ns;  -- 1/4 do período
    end process;
	 
    reset_process: process
    begin
        reset <= '0';
		  wait for 120ns;
		  reset <= '1';
		  wait for 30ns;
		  reset <= '0';
    end process;	 

    preset_process: process
    begin
        preset <= '0';
		  wait for 170ns;
		  reset <= '1';
		  wait for 30ns;
		  preset <= '1';
    end process;	 
    
	 load_process: process
	 begin 
		load <= '1';
		wait for 130ns;
		load <= '0';
		wait for 70ns;
	 end process;
	 
    -- Processo de teste
    test_FlipFlopD: process
    begin
        D <= x"1";
        wait for 200 ns;  -- espera 1 ciclo de clock
        D <= x"2";
        wait for 200 ns;  -- espera 1 ciclo de clock
        D <= x"0";
        wait for 200 ns;  -- espera 1 ciclo de clock
        D <= x"4";
        wait for 200 ns;  -- espera 1 ciclo de clock
        D <= x"8";
        wait for 200 ns;  -- espera 1 ciclo de clock
        wait;  -- encerra o processo
    end process;
	
end Behavioral;
		
		
		
		
