library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registrador is
    port(
        CLK, LOAD, RESET  : in std_logic;
        DATA_IN : in std_logic_vector(9 downto 0);
        DATA_OUT : out std_logic_vector(9 downto 0)
    );
end registrador;

architecture arch of registrador is
    signal reg : std_logic_vector(9 downto 0);
    begin
        process(CLK, RESET)
        begin
            if (RESET = '1') then
                reg <= (others => '0');
            elsif rising_edge(CLK) then
                if (LOAD = '1') then
                    reg <= DATA_IN;
                end if;
            end if;    
        end process; 
        DATA_OUT <= reg;   
end arch;