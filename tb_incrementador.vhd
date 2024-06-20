library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_incrementador is
    end tb_incrementador;
    
architecture teste of tb_incrementador is
    
    component incrementador is
    port (  A : in std_logic_vector(1 downto 0);
            S : out std_logic_vector(1 downto 0) );
    end component;
        
    signal A, S : std_logic_vector(1 downto 0);
    
    begin
    instancia_incrementador: incrementador port map(A=>A, S=>S);
    
    A <= "00", "01" after 10 ns, "10" after 20 ns, "11" after 30 ns, "00" after 40 ns;
    
    end teste;