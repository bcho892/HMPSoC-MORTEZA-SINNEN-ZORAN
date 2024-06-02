library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

use work.FilePaths;

library work;
use work.TdmaMinTypes.all;

entity TopLevel is
    generic (
        ports                 : positive := 6;
        recop_file_path       : string   := FilePaths.RECOP_WOLF_CONFIG_FIELDS_FILE_PATH;
        default_starting_tick : unsigned := x"C35" -- 3125 -> gives 16kHz when using 50MHz clock
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

    signal clock            : std_logic;
    signal unblock_datacall : std_logic;
    signal zoran            : std_logic_vector(7 downto 0);

    signal send_port        : tdma_min_ports(0 to ports - 1);
    signal recv_port        : tdma_min_ports(0 to ports - 1);

    signal ack              : std_logic;

    component zoran_nios is
        port (
            biglari_read_0_conduit_end_noc       : in  std_logic_vector(31 downto 0) := (others => '0'); --     biglari_read_0_conduit_end.noc
            biglari_sseg_0_conduit_end_zoran0     : out std_logic_vector(6 downto 0); --     biglari_sseg_0_conduit_end.zoran0
            biglari_sseg_0_conduit_end_zoran1     : out std_logic_vector(6 downto 0); --                               .zoran1
            biglari_sseg_0_conduit_end_zoran2     : out std_logic_vector(6 downto 0); --                               .zoran2
            biglari_sseg_0_conduit_end_zoran3     : out std_logic_vector(6 downto 0); --                               .zoran3
            biglari_sseg_0_conduit_end_zoran4     : out std_logic_vector(6 downto 0); --                               .zoran4
            biglari_sseg_0_conduit_end_zoran5     : out std_logic_vector(6 downto 0); --                               .zoran5
            clocks_ref_clk_clk                    : in  std_logic                    := '0'; --                 clocks_ref_clk.clk
            led_pio_external_connection_export    : out std_logic_vector(7 downto 0) --    led_pio_external_connection.export
        );
    end component zoran_nios;

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
            clock         => clock,
            reset         => '0',
            data_out.data => send_port(0).data,
            data_out.addr => send_port(0).addr,
            data_in.data  => recv_port(0).data,
            data_in.addr  => recv_port(0).addr
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
        generic map(
            default_starting_tick => default_starting_tick
        )
        port map(
            clock  => clock,
            reset  => '0',
            enable => '1',
            recv   => recv_port(2),
            send   => send_port(2)
        );

    recop_wolf_top_level_inst : entity work.recop_wolf_top_level
        generic map(
            program_file_path => recop_file_path
        )
        port map(
            clock                     => clock,
            enable                    => '1',
            dprr(31 downto 2)         => (others => '0'),
            dprr(1)                   => unblock_datacall,
            dprr(0)                   => '0',
            sip_data_in(15 downto 10) => (others => '0'),
            sip_data_in(9 downto 0)   => SW,
            reset                     => '0',
            dpcr_data_out             => send_port(3).data,
            sop_data_out(15 downto 8) => zoran,
            sop_data_out(7 downto 0)  => send_port(3).addr,
            state_decode_fail         => open
        );

    oliver_sinnen_asp : entity work.avg_asp
        generic map(
            AVG_WINDOW_SIZE => 128
        )
        port map(
            clk     => clock,
            reset   => '0',
            noc_in  => recv_port(4),
            noc_out => send_port(4)
        );

    zoran_nios_inst : component zoran_nios
        port map(
            clocks_ref_clk_clk                    => clock,
            biglari_sseg_0_conduit_end_zoran0     => HEX0,
            biglari_sseg_0_conduit_end_zoran1     => HEX1,
            biglari_sseg_0_conduit_end_zoran2     => HEX2,
            biglari_sseg_0_conduit_end_zoran3     => HEX3,
            biglari_sseg_0_conduit_end_zoran4     => HEX4,
            biglari_sseg_0_conduit_end_zoran5     => HEX5,
            biglari_read_0_conduit_end_noc       => recv_port(5).data,
            led_pio_external_connection_export    => open -- LEDR(3 downto 0),
        );

    LEDR(0) <= zoran(0);

    process (clock)
        variable edge : std_logic;
    begin
        if rising_edge(clock) then
            if KEY(1) = '0' and edge = '1' then
                unblock_datacall <= '1';
            else
                unblock_datacall <= '0';
            end if;
            edge := KEY(1);
        end if;
    end process;

end architecture;
