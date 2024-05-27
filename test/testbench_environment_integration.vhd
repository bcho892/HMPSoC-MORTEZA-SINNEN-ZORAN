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
        t_switch   <= "1000000111"; -- All On
        t_key_lime <= "1110";
        for i in 2500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1000000101"; -- Open Core
        for i in 1200 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "0000000110"; -- Buffer System
        for i in 1200 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1000000110"; -- Open LA

        for i in 1200 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1000000011"; -- only PD off

        for i in 1200 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1000000000"; -- adc to kneeos directly

        for i in 1200 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "0000000000"; -- All off

        for i in 1200 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch <= "1000000111"; -- All on again
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