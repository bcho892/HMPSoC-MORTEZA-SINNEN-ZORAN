-- MADE IN COLLABORATION WITH BIGLARI-ABHARI
library IEEE;
use IEEE.std_logic_1164.all;

entity ci_read_item_instruction is
    port (
        dataa, datab : in  std_logic_vector(31 downto 0);
        clk          : in  std_logic;
        clken        : in  std_logic;
        reset        : in  std_logic;
        start        : in  std_logic;
        recv_port    : in  std_logic_vector(31 downto 0);
        done         : out std_logic;
        result       : out std_logic_vector(31 downto 0));
end entity ci_read_item_instruction;

architecture structure of ci_read_item_instruction is

    signal empty     : std_logic;
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

    process (clk, start)
        variable edge : std_logic;
    begin
        if rising_edge(clk) then
            if (start = '1' and clken = '1') and edge = '0' then
                ack  <= '1';
                done <= '1';
            else
                ack  <= '0';
                done <= '0';
            end if;
            edge := start;
        end if;
    end process;

    -- Show data if not empty, show 0 otherwise
    with empty select result <= sub_wire2(31 downto 0) when '0',
                                (others => '0') when others;

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
        clock => clk,
        data  => recv_port,
        rdreq => ack,
        wrreq => recv_port(recv_port'high),
        empty => empty,
        full  => open,
        q     => sub_wire2
    );

end architecture structure;