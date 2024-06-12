library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity subtrator is
    port(
        A : in std_logic_vector(9 downto 0);
        B : in std_logic_vector(9 downto 0);
        DIF : out std_logic_vector(9 downto 0)
    );
end subtrator;

architecture arch of subtrator is
    begin
        process(A, B)
        begin
            DIF <= A - B;
        end process;
end arch;