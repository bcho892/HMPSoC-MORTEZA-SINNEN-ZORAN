library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library altera_mf;
use altera_mf.all;

use work.TdmaMinTypes;

entity nios_noc_interface is
    port (
        clock     : in  std_logic;
        rdreq     : in  std_logic;
        empty     : out std_logic;
        full      : out std_logic;
        q         : out std_logic_vector (31 downto 0);

        recv_port : in  TdmaMinTypes.tdma_min_port
    );
end entity;

architecture rtl of nios_noc_interface is
    signal sub_wire0 : std_logic;
    signal sub_wire1 : std_logic;
    signal sub_wire2 : std_logic_vector (31 downto 0);
    signal ack       : std_logic;

    component scfifo
        generic (
            add_ram_output_register : string;
            intended_device_family  : string;
            lpm_numwords            : natural;
            lpm_showahead           : string;
            lpm_type                : string;
            lpm_width               : natural;
            lpm_widthu              : natural;
            overflow_checking       : string;
            underflow_checking      : string;
            use_eab                 : string
        );
        port (
            clock : in  std_logic;
            data  : in  std_logic_vector (31 downto 0);
            rdreq : in  std_logic;
            wrreq : in  std_logic;
            empty : out std_logic;
            full  : out std_logic;
            q     : out std_logic_vector (31 downto 0)
        );
    end component;

begin

    process (clock, rdreq)
        variable edge : std_logic;
    begin
        if rising_edge(clock) then
            if (rdreq = '1') and edge = '0' then
                ack <= '1';
            else
                ack <= '0';
            end if;
            edge := rdreq;
        end if;
    end process;

    empty <= sub_wire0;
    full  <= sub_wire1;
    q     <= sub_wire2(31 downto 0);

    scfifo_component : scfifo
    generic map(
        add_ram_output_register => "OFF",
        intended_device_family  => "Cyclone V",
        lpm_numwords            => 8,
        lpm_showahead           => "OFF",
        lpm_type                => "scfifo",
        lpm_width               => 32,
        lpm_widthu              => 3,
        overflow_checking       => "ON",
        underflow_checking      => "ON",
        use_eab                 => "ON"
    )
    port map(
        clock => clock,
        data  => recv_port.data,
        rdreq => ack,
        wrreq => recv_port.data(recv_port.data'high),
        empty => sub_wire0,
        full  => sub_wire1,
        q     => sub_wire2
    );
end architecture;