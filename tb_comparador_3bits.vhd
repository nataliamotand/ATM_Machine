library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_comparador_3bits is
end tb_comparador_3bits;

architecture teste of tb_comparador_3bits is

    component comparador_3bits is
    port (	DATA1, DATA2 : in std_logic_vector(2 downto 0);
            output : out boolean );
    end component;
    
    signal DATA1, DATA2: std_logic_vector(2 downto 0);
    signal output: boolean;

    begin
    instancia_comparador_3bits: comparador_3bits port map(DATA1=>DATA1, DATA2=>DATA2, output=>output);

    DATA1 <= "000", "010" after 10 ns, "001" after 30 ns, "110" after 50 ns;
    DATA2 <= "000", "001" after 20 ns, "111" after 40 ns, "110" after 60 ns;

end teste;