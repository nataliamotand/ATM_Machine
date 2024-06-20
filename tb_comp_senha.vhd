library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_comp_senha is
end tb_comp_senha;

architecture teste of tb_comp_senha is

    component comp_senha is
    port (	s_inserida : in std_logic_vector(2 downto 0);
            s_validada : out std_logic );
    end component;
    
    signal s_inserida: std_logic_vector(2 downto 0);
    signal s_validada: std_logic;

    begin
    instancia_comp_senha: comp_senha port map(s_inserida=>s_inserida, s_validada=>s_validada);
    s_inserida <= "000", "010" after 10 ns, "101" after 30 ns, "110" after 50 ns, "000" after 60 ns;
end teste;
