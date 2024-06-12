library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_registrador is
end tb_registrador;

architecture teste of tb_registrador is

    component registrador is
    port (  CLK, LOAD, RESET  : in std_logic;
            DATA_IN : in std_logic_vector(9 downto 0);
            DATA_OUT : out std_logic_vector(9 downto 0));
    end component;
    
    signal CLK, LOAD, RESET : std_logic;
    signal DATA_IN, DATA_OUT : std_logic_vector(9 downto 0);
   
    begin
    instancia_registrador: registrador port map(CLK=>CLK, LOAD=>LOAD, RESET=>RESET, DATA_IN=>DATA_IN, DATA_OUT=>DATA_OUT);
    CLK      <= '0', '1' after 10 ns, '0' after 15 ns, '1' after 20 ns, '0' after 25 ns, '1' after 30 ns, '0' after 35 ns, '1' after 40 ns;
    RESET    <= '0', '1' after 17 ns, '0' after 22 ns;
    LOAD     <= '0', '1' after 10 ns, '0' after 15 ns, '1' after 30 ns;
    DATA_IN  <= "0000000000", "1010101010" after 10 ns, "1111100000" after 30 ns, "1111111111" after 35 ns;    

end teste;