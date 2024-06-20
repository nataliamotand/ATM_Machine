-- Comparador para validar senha

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp_senha is
    port(
        s_inserida : in std_logic_vector(2 downto 0);
        s_validada : out std_logic
    );
end comp_senha;

architecture arch of comp_senha is
    signal s_cadastrada : std_logic_vector(2 downto 0) := "101"; -- senha cadastrada
begin
    s_validada <= '1' when (s_inserida = s_cadastrada) else '0';     
end arch;
