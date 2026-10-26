library ieee;
use ieee.std_logic_1164.all;

entity prob3 is
    port (
        sel     : in std_logic_vector(2 downto 0);
        display : out std_logic_vector(6 downto 0) -- g f e d c b a 순서
    );
end entity prob3;

architecture bhv of prob3 is
begin
    process(sel)
    begin
        case sel is
            -- display: "g fedcba" (1: ON, 0: OFF)
            when "000" => display <= "1011111"; -- a
            when "001" => display <= "1111100"; -- b
            when "010" => display <= "0111001"; -- c
            when "011" => display <= "1011110"; -- d
            when "100" => display <= "1110001"; -- f
            when "101" => display <= "1101111"; -- g
            when others => display <= "0000000"; -- OFF
        end case;
    end process;
end architecture bhv;
