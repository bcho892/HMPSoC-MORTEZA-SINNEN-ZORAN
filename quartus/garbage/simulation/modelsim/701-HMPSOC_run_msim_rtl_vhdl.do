transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib zoran_nios
vmap zoran_nios zoran_nios
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/altera_customins_master_translator.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_send_data.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_onchip_memory.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_jtag_uart.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_high_res_timer.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_cpu.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_clocks.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/altera_up_avalon_reset_from_locked_signal.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_clocks_sys_pll.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_ack.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_LED_pio.v}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_BUTTON_pio.v}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_irq_mapper.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0_rsp_mux_001.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0_rsp_demux_003.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0_cmd_mux_003.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0_cmd_demux_001.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/altera_merlin_traffic_limiter.sv}
vlog -vlog01compat -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0_router_005.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0_router_002.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0_router_001.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_mm_interconnect_0_router.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/altera_merlin_master_translator.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/altera_customins_slave_translator.sv}
vlog -sv -work zoran_nios +incdir+C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/zoran_nios_cpu_custom_instruction_master_multi_xconnect.sv}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/701AvgASP/ip/queue.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/PD-ASP/vhdl/logic/bit_truncation.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ReCOPs/701-ReCOP/src/vhdl/memory/prog_mem.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ReCOPs/701-ReCOP/src/vhdl/memory/data_mem.vhd}
vcom -93 -work zoran_nios {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/zoran_nios.vhd}
vcom -93 -work zoran_nios {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/zoran_nios_cpu_custom_instruction_master_multi_slave_translator0.vhd}
vcom -93 -work zoran_nios {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/zoran_nios_cpu_custom_instruction_master_multi_slave_translator1.vhd}
vcom -93 -work zoran_nios {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/seven_segment.vhd}
vcom -93 -work zoran_nios {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/ci_read_item_instruction.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ReCOPs/701-ReCOP/src/vhdl/processor/register_file.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ReCOPs/701-ReCOP/src/vhdl/processor/instruction_register.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ReCOPs/701-ReCOP/src/vhdl/arith/max.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ReCOPs/701-ReCOP/src/vhdl/utils/recop_types.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/PD-ASP/vhdl/control/control_unit.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/PD-ASP/vhdl/logic/counter.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/PD-ASP/vhdl/control/packet_decode.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/PD-ASP/vhdl/logic/comparator.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/VHDL-ADC/src/vhdl/memory/ROM.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/src/vhdl/TdmaMin/TdmaMinSlots.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/VHDL-Autocorrelator/src/memory/register.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/PD-ASP/vhdl/data/register_buffer.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ip/TdmaMinFifo/TdmaMinFifo.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/src/vhdl/TdmaMin/TdmaMinTypes.vhd}
vcom -93 -work zoran_nios {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/quartus/Zoran_Nios/synthesis/submodules/ci_update_seven_segment.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ReCOPs/701-ReCOP/src/vhdl/utils/opcodes.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ReCOPs/701-ReCOP/src/vhdl/utils/mux_select_constants.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ReCOPs/701-ReCOP/src/vhdl/utils/alu_ops.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/701AvgASP/src/asp_control_unit.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/VHDL-Autocorrelator/src/processor/cor_asp.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/PD-ASP/vhdl/logic/peak_detection.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/PD-ASP/vhdl/data/noc_output_stage.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/PD-ASP/vhdl/data/config_registers.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/PD-ASP/vhdl/data/min_value_storage.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/PD-ASP/vhdl/data/max_value_storage.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/VHDL-ADC/src/vhdl/TopLevelAdcAsp.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/src/vhdl/TdmaMin/TdmaMinInterface.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/src/vhdl/TdmaMin/TdmaMinSwitch.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ReCOPs/701-ReCOP/src/vhdl/processor/pc.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ReCOPs/701-ReCOP/src/vhdl/processor/control_unit.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ReCOPs/701-ReCOP/src/vhdl/arith/alu.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/701AvgASP/src/asp.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ASPs/PD-ASP/vhdl/top_level_pd_asp.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/src/vhdl/TdmaMin/TdmaMinStage.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ReCOPs/701-ReCOP/src/vhdl/processor/data_path.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/src/vhdl/TdmaMin/TdmaMinFabric.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/ReCOPs/701-ReCOP/src/vhdl/processor/top_level.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/src/vhdl/TdmaMin/TdmaMin.vhd}
vcom -93 -work work {C:/Users/AKLbc/Desktop/Development/HMPSoC-MORTEZA-SINNEN-ZORAN/src/vhdl/TopLevel.vhd}

