library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_comp_magnitude is
end tb_comp_magnitude;

architecture teste of tb_comp_magnitude is

    component comp_magnitude is
    port (  A, B : in std_logic_vector(1 downto 0);
            AgtB, AeqB, AltB : out std_logic );
    end component;
    
    signal A, B : std_logic_vector(1 downto 0);
    signal AgtB, AeqB, AltB : std_logic;

    begin
    instancia_comp_magnitude: comp_magnitude port map(A=>A, B=>B, AgtB=>AgtB, AeqB=>AeqB, AltB=>AltB);

    A <= "00", "01" after 10 ns, "10" after 20 ns, "11" after 30 ns, "00" after 50 ns;
    B <= "00", "11" after 10 ns, "01" after 40 ns, "00" after 50 ns;

end teste;