library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.FilePaths;

library work;
use work.TdmaMinTypes.all;

entity TopLevel is
    generic (
        ports : positive := 5
    );
    port (
        CLOCK_50      : in    std_logic;
        CLOCK2_50     : in    std_logic;
        CLOCK3_50     : in    std_logic;

        FPGA_I2C_SCLK : out   std_logic;
        FPGA_I2C_SDAT : inout std_logic;
        AUD_ADCDAT    : in    std_logic;
        AUD_ADCLRCK   : inout std_logic;
        AUD_BCLK      : inout std_logic;
        AUD_DACDAT    : out   std_logic;
        AUD_DACLRCK   : inout std_logic;
        AUD_XCK       : out   std_logic;

        KEY           : in    std_logic_vector(3 downto 0);
        SW            : in    std_logic_vector(9 downto 0);
        LEDR          : out   std_logic_vector(9 downto 0);
        HEX0          : out   std_logic_vector(6 downto 0);
        HEX1          : out   std_logic_vector(6 downto 0);
        HEX2          : out   std_logic_vector(6 downto 0);
        HEX3          : out   std_logic_vector(6 downto 0);
        HEX4          : out   std_logic_vector(6 downto 0);
        HEX5          : out   std_logic_vector(6 downto 0)
    );
end entity;

architecture rtl of TopLevel is

    signal clock     : std_logic;

    signal zoran     : std_logic_vector(7 downto 0);

    signal send_port : tdma_min_ports(0 to ports - 1);
    signal recv_port : tdma_min_ports(0 to ports - 1);
begin
    clock <= CLOCK_50;

    tdma_min : entity work.TdmaMin
        generic map(
            ports => ports
        )
        port map(
            clock => clock,
            sends => send_port,
            recvs => recv_port
        );

    pd_asp_inst : entity work.top_level_pd_asp
        port map(
            clock    => clock,
            reset    => KEY(0),
            data_out => send_port(0),
            data_in  => recv_port(0)
        );

    cor_asp_inst : entity work.cor_asp
        port map(
            clock         => clock,
            global_reset  => '0',
            global_enable => '1',
            recv_data     => recv_port(1).data,
            recv_addr     => recv_port(1).addr,
            send_data     => send_port(1).data,
            send_addr     => send_port(1).addr
        );

    viktor_asp : entity work.TopLevelAdcAsp
        port map(
            clock  => clock,
            reset  => '0',
            enable => '1',
            recv   => recv_port(2),
            send   => send_port(2)
        );

    recop_wolf_top_level_inst : entity work.recop_wolf_top_level
        generic map(
            program_file_path => FilePaths.RECOP_FILE_PATH
        )
        port map(
            clock                     => clock,
            enable                    => '1',
            dprr(31 downto 2)         => (others => '0'),
            dprr(1)                   => KEY(1),
            dprr(0)                   => '0',
            sip_data_in(15 downto 10) => (others => '0'),
            sip_data_in(9 downto 0)   => SW,
            reset                     => KEY(0),
            dpcr_data_out             => send_port(3).data,
            sop_data_out(15 downto 8) => zoran,
            sop_data_out(7 downto 0)  => send_port(3).addr,
            state_decode_fail         => open
        );

    oliver_sinnen_asp : entity work.avg_asp
        generic map(
            AVG_WINDOW_SIZE => 4
        )
        port map(
            clk     => clock,
            reset   => '0',
            noc_in  => recv_port(4),
            noc_out => send_port(4)
        );

end architecture;