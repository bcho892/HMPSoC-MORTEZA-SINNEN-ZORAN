library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.FilePaths;

entity testbench_environment_integration is
end entity;

architecture rtl of testbench_environment_integration is

    signal t_clock    : std_logic;

    signal t_switch   : std_logic_vector(9 downto 0);
    signal t_key_lime : std_logic_vector(3 downto 0);

begin

    dut : entity work.TopLevel
        generic map(
            recop_file_path => FilePaths.RECOP_CONFIGURABLE_CONFIG_FILE_PATH,
            ports           => 5
        )
        port map(
            CLOCK_50      => t_clock,
            CLOCK2_50     => '0',
            CLOCK3_50     => '0',
            FPGA_I2C_SCLK => open,
            FPGA_I2C_SDAT => open,
            AUD_ADCDAT    => '0',
            AUD_ADCLRCK   => open,
            AUD_BCLK      => open,
            AUD_DACDAT    => open,
            AUD_DACLRCK   => open,
            AUD_XCK       => open,
            KEY           => t_key_lime,
            SW            => t_switch,
            LEDR          => open,
            HEX0          => open,
            HEX1          => open,
            HEX2          => open,
            HEX3          => open,
            HEX4          => open,
            HEX5          => open
        );

    emulate_user_input : process
    begin
        --- Everything enabled
        t_switch   <= "1000000111"; -- Config ADC <= Rate - 00 Res - 00
        t_key_lime <= "1110";
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1000001111"; -- Config ADC <= Rate - 01 Res - 00
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1000010111"; -- Config ADC <= Rate - 10 Res - 00
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1000011111"; -- Config ADC <= Rate - 11 Res - 00
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1000100111"; -- Config ADC <= Rate - 00 Res - 01
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1000101111"; -- Config ADC <= Rate - 01 Res - 01
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1000110111"; -- Config ADC <= Rate - 10 Res - 01
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1000111111"; -- Config ADC <= Rate - 11 Res - 01
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1001000111"; -- Config ADC <= Rate - 00 Res - 10
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1001001111"; -- Config ADC <= Rate - 01 Res - 10
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1001010111"; -- Config ADC <= Rate - 10 Res - 10
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1001011111"; -- Config ADC <= Rate - 11 Res - 10
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1001100111"; -- Config ADC <= Rate - 00 Res - 11
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1001101111"; -- Config ADC <= Rate - 01 Res - 11
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1001110111"; -- Config ADC <= Rate - 10 Res - 11
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1001111111"; -- Config ADC <= Rate - 11 Res - 11
        wait;
    end process emulate_user_input;

    clock : process
    begin
        t_clock <= '1';
        wait for 10 ns;
        t_clock <= '0';
        wait for 10 ns;
    end process clock;

end architecture;