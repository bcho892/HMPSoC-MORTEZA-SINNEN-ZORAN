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

begin

end architecture structure;