library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_pseudo_mux is
end tb_pseudo_mux;

architecture teste of tb_pseudo_mux is

  -- Declaração do componente a ser simulado:
  component pseudo_mux is

	port (
        RESET   : in    std_logic; -- reset input
        CLOCK   : in    std_logic; -- clock input
        S       : in    std_logic; -- control input
        A,B,C,D : in    std_logic; -- data inputs
        Q       : out   std_logic  -- data output
    );

  end component;

  
  
  
  -- Declaração dos "fios" internos necessários para injetar no componente os estímulos de simulação:
  signal fio_a, fio_b, fio_c, fio_d, fio_s, fio_r, fio_q : std_logic;
	signal fio_clk: std_logic := '0';
begin

 -- Instancie o componente "Somador" declarado acima para simulação, conectando-o aos "fios" com os estímulos:
 instancia_pseudo_mux: pseudo_mux  port map (a=>fio_a,b=>fio_b, c=>fio_c, d=>fio_d, s=>fio_s, q=>fio_q, reset=>fio_r, CLOCK=>fio_clk );

 -- As próximas linhas criam os estímulos da simulação,
 -- A letra 'x' indica que os valores a seguir estão expressos em base hexadecimal
 fio_r <= '1', '0' after 10 ns;
 fio_clk <= not fio_clk after 5 ns;
 fio_a <= '1', '0' after 20 ns, '0' after 40 ns, '1' after 60 ns;
 fio_b <= '0', '0' after 20 ns, '1' after 40 ns, '0' after 60 ns;
 fio_c <= '1', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns;
 fio_d <= '1', '0' after 20 ns, '1' after 40 ns, '0' after 60 ns;
 fio_s <= '0', '1' after 20 ns;
 

end teste;