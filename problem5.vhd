library ieee;
use ieee.std_logic_1164.all;

entity prob5 is
    port (
        en      : in std_logic;
        vt      : in std_logic_vector(13 downto 1);
        display : out std_logic_vector(6 downto 0) -- g f e d c b a
    );
end entity prob5;

architecture bhv of prob5 is
begin
    process(en, vt)
        variable sum : integer range 0 to 13;
    begin
        if en = '0' then
            display <= "0000000"; -- 소등 (OFF)
        else
            sum := 0;
            for i in 1 to 13 loop
                if vt(i) = '1' then
                    sum := sum + 1;
                end if;
            end loop;

            case sum is
                when 0 => display <= "0111111"; -- 0
                when 1 => display <= "0000110"; -- 1
                when 2 => display <= "1011011"; -- 2
                when 3 => display <= "1001111"; -- 3
                when 4 => display <= "1100110"; -- 4
                when 5 => display <= "1101101"; -- 5
                when 6 => display <= "1111101"; -- 6
                when 7 => display <= "0000111"; -- 7
                when 8 => display <= "1111111"; -- 8
                when 9 => display <= "1101111"; -- 9
                when 10 => display <= "1110111"; -- A
                when 11 => display <= "1111100"; -- b
                when 12 => display <= "0111001"; -- C
                when 13 => display <= "1011110"; -- d
                when others => display <= "0000000";
            end case;
        end if;
    end process;
end architecture bhv;
