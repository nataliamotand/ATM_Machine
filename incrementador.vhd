library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity incrementador is
    port(
        A : in std_logic_vector(1 downto 0);
        S : out std_logic_vector(1 downto 0) 
    );
end incrementador;

architecture arch of incrementador is
begin
    process (A)
    begin
        S <= A + 1;
    end process;
end arch;