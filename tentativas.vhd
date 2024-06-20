library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tentativas is
    port (  clk_ts, ld_ts, clr_ts : in std_logic;
            Tgt_eqB : out std_logic);   -- tentativa >= B
end tentativas;

architecture arch of tentativas is
    component reg_t_senha is
        port(
            CLK, LOAD, RESET : in std_logic;
            DATA_IN : in std_logic_vector(1 downto 0);
            DATA_OUT : out std_logic_vector(1 downto 0)
        );
    end component;  
    
    component comp_magnitude is
        port(
            A, B : in std_logic_vector(1 downto 0);
            AgtB, AeqB, AltB : out std_logic 
        );
    end component;

    component incrementador is
        port(
            A : in std_logic_vector(1 downto 0);
            S : out std_logic_vector(1 downto 0) 
        );
    end component;

    signal in_ts, out_ts : std_logic_vector(1 downto 0);
    signal r_AgtB, r_AltB : std_logic;
    
begin
    registra : reg_t_senha port map(
        CLK      => clk_ts,
        LOAD     => ld_ts,
        RESET    => clr_ts,
        DATA_IN  => in_ts,
        DATA_OUT => out_ts
    );

    compara : comp_magnitude port map(
        A    => out_ts,   
        B    => "11",    -- comparação com 3
        AgtB => r_AgtB,
        AeqB => r_AltB,
        AltB => open
    );

    incrementa : incrementador port map(
        A => out_ts,
        S => in_ts
    );
    Tgt_eqB <= r_AgtB or r_AltB;
end arch;