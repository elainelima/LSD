library ieee;
use ieee.std_logic_1164.all;

entity pseudo_mux is
    port (
        RESET   : in    std_logic; -- reset input
        CLOCK   : in    std_logic; -- clock input
        S       : in    std_logic; -- control input
        A,B,C,D : in    std_logic; -- data inputs
        Q       : out   std_logic  -- data output
    );
end pseudo_mux;

architecture arch of pseudo_mux is
	type estado is (S0, S1, S2, S3);
--	attribute enum_enconding: string; 
--	attribute enum_enconding of estado: type is "00 01 11 10";
	signal estado_atual, proximo_estado: estado;
begin
    sequencial: 
	 process(RESET, CLOCK) is
		begin
			if(RESET = '1') then 
				estado_atual <= S0;
			elsif(rising_edge(CLOCK)) then 
				estado_atual <= proximo_estado;
			end if;
	end process;
	
	process(S, estado_atual) is
		begin
			case estado_atual is
			   
				when S0 =>
				   --Q<=A;
					if(S='1') then 
						proximo_estado <= S1;
						Q<=B;
					else
						Q<=A;
						proximo_estado <= S0;
					end if;
				when S1 =>
				   --Q<=B;
					if(S='1') then 
						proximo_estado <= S2;
						Q<=C;
					else
						Q<=B;
						proximo_estado <= S1;
					end if;
				when S2 =>
				   --Q<=C;
					if(S='1') then 
						proximo_estado <= S3;
						Q<=D;
					else
						Q<=C;
						proximo_estado <= S2;
					end if;
				when others =>
				   --Q<=D;
					if(S='1') then 
						proximo_estado <= S0;
						Q<=A;
					else
						Q<=D;
						proximo_estado <= S3;
					end if;
			end case;
		end process;
						
	
end arch;