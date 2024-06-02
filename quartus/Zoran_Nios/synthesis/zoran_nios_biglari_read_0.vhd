-- zoran_nios_biglari_read_0.vhd

-- Generated using ACDS version 18.1 646

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity zoran_nios_biglari_read_0 is
	port (
		dataa     : in  std_logic_vector(31 downto 0) := (others => '0'); -- nios_custom_instruction_slave.dataa
		datab     : in  std_logic_vector(31 downto 0) := (others => '0'); --                              .datab
		clken     : in  std_logic                     := '0';             --                              .clk_en
		start     : in  std_logic                     := '0';             --                              .start
		done      : out std_logic;                                        --                              .done
		result    : out std_logic_vector(31 downto 0);                    --                              .result
		clk       : in  std_logic                     := '0';             --                              .clk
		reset     : in  std_logic                     := '0';             --                              .reset
		recv_port : in  std_logic_vector(31 downto 0) := (others => '0')  --                   conduit_end.noc
	);
end entity zoran_nios_biglari_read_0;

architecture rtl of zoran_nios_biglari_read_0 is
	component ci_read_item_instruction is
		port (
			dataa     : in  std_logic_vector(31 downto 0) := (others => 'X'); -- dataa
			datab     : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datab
			clken     : in  std_logic                     := 'X';             -- clk_en
			start     : in  std_logic                     := 'X';             -- start
			done      : out std_logic;                                        -- done
			result    : out std_logic_vector(31 downto 0);                    -- result
			clk       : in  std_logic                     := 'X';             -- clk
			reset     : in  std_logic                     := 'X';             -- reset
			recv_port : in  std_logic_vector(31 downto 0) := (others => 'X')  -- noc
		);
	end component ci_read_item_instruction;

begin

	biglari_read_0 : component ci_read_item_instruction
		port map (
			dataa     => dataa,     -- nios_custom_instruction_slave.dataa
			datab     => datab,     --                              .datab
			clken     => clken,     --                              .clk_en
			start     => start,     --                              .start
			done      => done,      --                              .done
			result    => result,    --                              .result
			clk       => clk,       --                              .clk
			reset     => reset,     --                              .reset
			recv_port => recv_port  --                   conduit_end.noc
		);

end architecture rtl; -- of zoran_nios_biglari_read_0
