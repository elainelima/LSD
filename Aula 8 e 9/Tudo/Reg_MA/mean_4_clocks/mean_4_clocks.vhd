library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mean_4_clocks is
    generic (
        W       :       integer := 32
    );
    port (
        CLK     : in    std_logic;
        RESET   : in    std_logic;
        INPUT   : in    std_logic_vector(W - 1 downto 0);
        OUTPUT  : out   std_logic_vector(W - 1 downto 0)
    );
end mean_4_clocks;

-- Implement the testbench and find the errors in this model.
-- Consider the following expected behavior:
--      Every rising edge of CLK input, the content of INPUT
--      is added to a register chain and used to calculate the
--      mean value over 4 clock periods

architecture arch of mean_4_clocks is
	signal sum1: unsigned(W+1 downto 0);
	--signal sum2: unsigned(W+1 downto 0);
begin
    process(CLK, RESET) is
        variable var1 : unsigned(W - 1 downto 0);
        variable var2 : unsigned(W - 1 downto 0);
        variable var3 : unsigned(W - 1 downto 0);
        variable var4 : unsigned(W - 1 downto 0);
		  --variable sum1 : unsigned(W + 1 downto 0);
    begin
        if (RESET = '1') then
			var1 := to_unsigned(0,W);
			var2 := to_unsigned(0,W);
			var3 := to_unsigned(0,W);
			var4 := to_unsigned(0,W);
        elsif (rising_edge(CLK)) then
				var4 := var3;
				var3 := var2;
				var2 := var1;
				var1 := unsigned(INPUT);
				
			end if;	
				sum1 <= ((("00" & var1) + ("00" & var2)) + (("00" & var3) +("00" & var4)));
		
				
				
            --var1 := unsigned("00" & INPUT(W-1 downto )2);-- divisão por 4 e concatena 00 ao input || deixar para dividir na saida 
            -- depois de somar fica com 2 bits a  mais, então precisamos ajustar isso crescendos os somadores. A resposta precisa estar com o tamanho correto
            
       
        
        OUTPUT <= std_logic_vector(sum1 (W + 1 downto 2)); -- W + 2  | concatena com 00 ("00"& var1)...
    end process;
    
end arch;