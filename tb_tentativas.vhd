library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_tentativas is
end tb_tentativas;

architecture teste of tb_tentativas is

    component tentativas is
    port (  clk_ts, ld_ts, clr_ts : in std_logic;
            Tgt_eqB : out std_logic); 
    end component;
    
    signal clk_ts, ld_ts, clr_ts, Tgt_eqB : std_logic;
   
    begin
    instancia_tentativas: tentativas port map(
        clk_ts  => clk_ts, 
        ld_ts   => ld_ts, 
        clr_ts  => clr_ts, 
        Tgt_eqB => Tgt_eqB
        );

    clk_ts <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, 
              '1' after 50 ns, '0' after 60 ns, '1' after 70 ns, '0' after 80 ns, '1' after 90 ns, '0' after 100 ns;
    clr_ts <= '0', '1' after 5 ns, '0' after 25 ns;
    ld_ts  <= '0', '1' after 25 ns, '0' after 100 ns;
end teste;