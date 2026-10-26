library ieee;
use ieee.std_logic_1164.all;

entity mux8_1 is
    port (
        a, b, c, d, e, f, g, h : in std_logic;                   -- 입력 핀 8개
        sel                    : in std_logic_vector(2 downto 0); -- 선택 핀 3비트
        y                      : out std_logic                    -- 출력 핀 1개
    );
end entity mux8_1;

architecture bhv of mux8_1 is
begin
    process(a, b, c, d, e, f, g, h, sel)
    begin
        case sel is
            when "000" => y <= a;
            when "001" => y <= b;
            when "010" => y <= c;
            when "011" => y <= d;
            when "100" => y <= e;
            when "101" => y <= f;
            when "110" => y <= g;
            when "111" => y <= h;
            when others => y <= '0';
        end case;
    end process;
end architecture bhv;
