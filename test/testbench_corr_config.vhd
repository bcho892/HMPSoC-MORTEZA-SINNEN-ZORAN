library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.FilePaths;

entity testbench_corr_config is
end entity;

architecture rtl of testbench_corr_config is

    signal t_clock    : std_logic;

    signal t_switch   : std_logic_vector(9 downto 0);
    signal t_key_lime : std_logic_vector(3 downto 0);

begin

    dut : entity work.TopLevel
        generic map(
            recop_file_path       => "C:\Users\nwol626\HMPSoC-MORTEZA-SINNEN-ZORAN\src\recop_programs\config_core_window.mif",
            ports                 => 6,
            default_starting_tick => x"00f"
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
        t_switch   <= "1000000111"; -- Config Include CORE
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch   <= "0000000001"; -- Config Window 0
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 20000 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;

        t_switch   <= "1000000111"; -- Config Include CORE
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch   <= "0000000010"; -- Config Window 0
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 20000 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;

        t_switch   <= "1000000111"; -- Config Include CORE
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch   <= "0000000100"; -- Config Window 0
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 20000 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;

        t_switch   <= "1000000111"; -- Config Include CORE
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch   <= "0000001000"; -- Config Window 0
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 20000 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;

        t_switch   <= "1000000111"; -- Config Include CORE
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch   <= "0000000011"; -- Config Window 0
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 20000 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;

        t_switch   <= "1000000111"; -- Config Include CORE
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch   <= "0000000111"; -- Config Window 0
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 20000 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;

        t_switch   <= "1000000111"; -- Config Include CORE
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch   <= "0000100010"; -- Config ADC Wait 1
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 20000 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;

        t_switch   <= "1000000111"; -- Config Include CORE
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch   <= "0001000010"; -- Config ADC Wait 1
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 20000 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;

        t_switch   <= "1000000111"; -- Config Include CORE
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch   <= "0010000010"; -- Config ADC Wait 1
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 20000 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;

        t_switch   <= "1000000111"; -- Config Include CORE
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 500 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_switch   <= "0100000010"; -- Config ADC Wait 1
        t_key_lime <= "1110";
        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;
        t_key_lime <= "1100";
        for i in 20000 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;

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