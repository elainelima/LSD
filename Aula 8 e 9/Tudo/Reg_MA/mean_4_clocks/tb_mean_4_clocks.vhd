library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_mean_4_clocks is
end tb_mean_4_clocks;

architecture arch of tb_mean_4_clocks is
	component mean_4_clocks is 
		generic
		(
			W : natural:= 4 
		);
		
		port (
        CLK     : in    std_logic;
        RESET   : in    std_logic;
        INPUT   : in    std_logic_vector(W - 1 downto 0);
        OUTPUT  : out   std_logic_vector(W - 1 downto 0)
		);
	end component;
	
	signal CLK, RESET: std_logic;
	signal INPUT, OUTPUT: std_logic_vector(3 downto 0);	
		
begin
	 uut_Mean_4: mean_4_clocks
	 
	 
	 generic map (W => 4)
		port map(
		  CLK   => CLK,
        RESET =>  RESET,
        INPUT =>  INPUT,
        OUTPUT =>  OUTPUT
		);
		
	RESET <= '1', '0' after 10 ns;
    clock: process
	 begin 
			CLK <= '0';
			wait for 50 ns;
			CLK <= '1';
			wait for 50 ns;
			CLK <= '0';
			wait for 50 ns;
			CLK <= '1';
			wait for 50 ns;
			CLK <= '0';
			
		end process;
		
	
		
		test_mean_4: process
		begin 
				INPUT <= x"2";
				wait for 400 ns;
				INPUT <= x"F";
				wait for 400 ns;
		end process;
	
    
end arch;