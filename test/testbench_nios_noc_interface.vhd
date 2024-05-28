library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.TdmaMinTypes;

entity testbench_nios_noc_interface is
end entity;

architecture test of testbench_nios_noc_interface is

    signal t_clock     : std_logic;
    signal t_rdreq     : std_logic;
    signal t_empty     : std_logic;
    signal t_full      : std_logic;
    signal t_q         : std_logic_vector(31 downto 0);
    signal t_recv_port : TdmaMinTypes.tdma_min_port;
begin
    nios_noc_interface_inst : entity work.nios_noc_interface
        port map(
            clock     => t_clock,
            rdreq     => t_rdreq,
            empty     => t_empty,
            full      => t_full,
            q         => t_q,
            recv_port => t_recv_port
        );

    test_noc_interface : process
    begin

        t_rdreq          <= '0';
        t_recv_port.data <= x"FA990775";
        wait until rising_edge(t_clock);
        t_recv_port.data <= x"0A990775";
        wait until rising_edge(t_clock);
        t_recv_port.data <= x"F0008888";
        wait until rising_edge(t_clock);
        t_recv_port.data <= x"833F9193";
        wait until rising_edge(t_clock);
        t_recv_port.data <= x"FA998888";
        wait until rising_edge(t_clock);
        t_recv_port.data <= x"90CC1233";
        wait until rising_edge(t_clock);
        t_rdreq <= '1';

        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;

        t_rdreq <= '0';

        for i in 20 downto 0 loop
            wait until rising_edge(t_clock);
        end loop;

        t_rdreq <= '1';

        wait;
    end process;

    process
    begin
        t_clock <= '1';
        wait for 10 ns;
        t_clock <= '0';
        wait for 10 ns;
    end process;
end architecture;