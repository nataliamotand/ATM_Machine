library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_subtrator is
end tb_subtrator;

architecture teste of tb_subtrator is

    component subtrator is
    port (	A : in std_logic_vector(9 downto 0);
            B : in std_logic_vector(9 downto 0);
            DIF : out std_logic_vector(9 downto 0) );
    end component;
    
    signal A, B, DIF: std_logic_vector(9 downto 0);
    begin
    instancia_subtrator: subtrator port map(A=>A, B=>B, DIF=>DIF);
    A <= "0000000000", "0001000010" after 10 ns, "0000001010" after 30 ns, "0000000010" after 50 ns;
    B <= "0000000000", "0000000001" after 20 ns, "0000000111" after 40 ns, "0000101010" after 60 ns;
end teste;