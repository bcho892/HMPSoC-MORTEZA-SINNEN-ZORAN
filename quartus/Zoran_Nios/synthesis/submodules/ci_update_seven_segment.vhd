
-- MADE IN COLLABORATION WITH BIGLARI-ABHARI
library IEEE;
use IEEE.std_logic_1164.all;

entity ci_sseg_update_instruction is
    port (
        display_value : in  std_logic_vector(31 downto 0);
        clock         : in  std_logic;
        clock_en      : in  std_logic;
        start         : in  std_logic;
        done          : out std_logic;
        hex0          : out std_logic_vector(6 downto 0);
        hex1          : out std_logic_vector(6 downto 0);
        hex2          : out std_logic_vector(6 downto 0);
        hex3          : out std_logic_vector(6 downto 0);
        hex4          : out std_logic_vector(6 downto 0);
        hex5          : out std_logic_vector(6 downto 0)
    );

end entity ci_sseg_update_instruction;

architecture structure of ci_sseg_update_instruction is
    signal sseg_0_hex : std_logic_vector(3 downto 0);
    signal sseg_1_hex : std_logic_vector(3 downto 0);
    signal sseg_2_hex : std_logic_vector(3 downto 0);
    signal sseg_3_hex : std_logic_vector(3 downto 0);
    signal sseg_4_hex : std_logic_vector(3 downto 0);
    signal sseg_5_hex : std_logic_vector(3 downto 0);
begin
    seven_segment_inst1 : entity work.seven_segment
        port map(
            input_digit => sseg_0_hex,
            sseg_output => hex0
        );

    seven_segment_inst2 : entity work.seven_segment
        port map(
            input_digit => sseg_1_hex,
            sseg_output => hex1
        );
    seven_segment_inst3 : entity work.seven_segment
        port map(
            input_digit => sseg_2_hex,
            sseg_output => hex2
        );

    seven_segment_inst4 : entity work.seven_segment
        port map(
            input_digit => sseg_3_hex,
            sseg_output => hex3
        );

    seven_segment_inst5 : entity work.seven_segment
        port map(
            input_digit => sseg_4_hex,
            sseg_output => hex4
        );

    seven_segment_inst : entity work.seven_segment
        port map(
            input_digit => sseg_5_hex,
            sseg_output => hex5
        );

    process (clock)
        variable edge : std_logic := '0';
    begin
        if (rising_edge(clock)) then
            if (start = '1' and clock_en = '1') and edge = '0' then
                sseg_0_hex <= display_value(3 downto 0);
                sseg_1_hex <= display_value(7 downto 4);
                sseg_2_hex <= display_value(11 downto 8);
                sseg_3_hex <= display_value(15 downto 12);
                sseg_4_hex <= display_value(19 downto 16);
                sseg_5_hex <= display_value(23 downto 20);
                done       <= '1';
            else
                sseg_0_hex <= sseg_0_hex;
                sseg_1_hex <= sseg_1_hex;
                sseg_2_hex <= sseg_2_hex;
                sseg_3_hex <= sseg_3_hex;
                sseg_4_hex <= sseg_4_hex;
                sseg_5_hex <= sseg_5_hex;
                done       <= '0';
            end if;
            edge := start;
        end if;
    end process;

end architecture structure;