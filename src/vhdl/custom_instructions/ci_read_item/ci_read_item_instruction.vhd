--
library IEEE;
use IEEE.std_logic_1164.all;

entity ci_read_item_instruction is
    port (
        dataa, datab : in  std_logic_vector(31 downto 0);
        result       : out std_logic_vector(31 downto 0));
end entity ci_read_item_instruction;

architecture structure of ci_read_item_instruction is
    component ci_read_item_hw is
        port (
            reg_A, reg_B : in  std_logic_vector(31 downto 0);
            reg_C        : out std_logic_vector(31 downto 0));
    end component ci_read_item_hw;
begin
    C1 : SIMD_ADD_HW port map(reg_A => dataa, reg_B => datab, reg_C => result);
end architecture structure;