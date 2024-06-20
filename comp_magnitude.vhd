-- Comparador de magnitude 2 bits p/ controlar tentativas de senha

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp_magnitude is
    port(
        A, B : in std_logic_vector(1 downto 0);
        AgtB, AeqB, AltB : out std_logic 
    );
end comp_magnitude;

architecture arch of comp_magnitude is
    signal r_AgtB, r_AeqB, r_AltB : std_logic;
begin
    process (A,B)
    begin
        if(A > B) then
            r_AgtB <= '1';
            r_AeqB <= '0';
            r_AltB <= '0';
        elsif (A = B) then
            r_AgtB <= '0';
            r_AeqB <= '1';
            r_AltB <= '0';
        else
            r_AgtB <= '0';
            r_AeqB <= '0';
            r_AltB <= '1';
        end if;
    end process;
    AgtB <= r_AgtB;
    AeqB <= r_AeqB;
    AltB <= r_AltB;
end arch;