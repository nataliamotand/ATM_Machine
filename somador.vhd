library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity somador is
    port(
        A : in std_logic_vector(9 downto 0);
        B : in std_logic_vector(9 downto 0);
        SOMA : out std_logic_vector(9 downto 0)
    );
end somador;

architecture arch of somador is
    begin
        process(A, B)
        begin
            SOMA <= A + B;
        end process;
end arch;