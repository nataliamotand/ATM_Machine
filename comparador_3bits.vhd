library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparador_3bits is
    port(
        DATA1, DATA2 : in std_logic_vector(2 downto 0);
        output : buffer boolean
    );
end comparador_3bits;

architecture arch of comparador_3bits is
    begin
        output <= (DATA1 = DATA2);     
end arch;