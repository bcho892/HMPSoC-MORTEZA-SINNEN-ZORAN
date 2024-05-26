library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_hmpsoc_tl is
end entity;

architecture rtl of testbench_hmpsoc_tl is

    signal t_clock : std_logic;

begin

    dut : entity work.TopLevel
        generic map(
            ports => 5
        )
        port map(
            CLOCK_50        => t_clock,
            CLOCK2_50       => '0',
            CLOCK3_50       => '0',
            FPGA_I2C_SCLK   => open,
            FPGA_I2C_SDAT   => open,
            AUD_ADCDAT      => '0',
            AUD_ADCLRCK     => open,
            AUD_BCLK        => open,
            AUD_DACDAT      => open,
            AUD_DACLRCK     => open,
            AUD_XCK         => open,
            KEY(3 downto 1) => (others => '1'),
            KEY(0)          => '0',
            SW              => (others => '1'),
            LEDR            => open,
            HEX0            => open,
            HEX1            => open,
            HEX2            => open,
            HEX3            => open,
            HEX4            => open,
            HEX5            => open
        );

    clock : process
    begin
        t_clock <= '1';
        wait for 10 ns;
        t_clock <= '0';
        wait for 10 ns;
    end process clock;

end architecture;