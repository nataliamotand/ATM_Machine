library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_somador is
end tb_somador;

architecture teste of tb_somador is

    component somador is
    port (	A : in std_logic_vector(9 downto 0);
            B : in std_logic_vector(9 downto 0);
            SOMA : out std_logic_vector(9 downto 0) );
    end component;
    
    signal A, B, SOMA: std_logic_vector(9 downto 0);
    begin
    instancia_somador: somador port map(A=>A, B=>B, SOMA=>SOMA);
    A <= "0000000000", "0000000001" after 20 ns, "0000001010" after 40 ns, "0000000010" after 60 ns;
    B <= "0000000000", "0001000010" after 10 ns, "0000000111" after 30 ns, "0000101010" after 50 ns;
end teste;