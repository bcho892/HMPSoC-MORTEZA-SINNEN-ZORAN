# Copyright (C) 2018  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.

# Quartus Prime: Generate Tcl File for Project
# File: 701-HMPSOC.tcl
# Generated on: Sun Jun 02 15:40:18 2024

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "701-HMPSOC"]} {
		puts "Project 701-HMPSOC is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists 701-HMPSOC]} {
		project_open -revision 701-HMPSOC 701-HMPSOC
	} else {
		project_new -revision 701-HMPSOC 701-HMPSOC
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name DEVICE 5CSEMA5F31C6
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 18.1.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "15:09:22  MAY 28, 2024"
	set_global_assignment -name LAST_QUARTUS_VERSION "18.1.1 Lite Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name BOARD "DE1-SoC Board"
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name VHDL_FILE ../../ASPs/701AvgASP/ip/queue.vhd
	set_global_assignment -name QIP_FILE ../../ASPs/701AvgASP/ip/queue.qip
	set_global_assignment -name VHDL_FILE ../../src/vhdl/Constants/FilePaths.vhd
	set_global_assignment -name VHDL_FILE ../../src/vhdl/nios_noc_interface.vhd
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/logic/bit_truncation.vhd"
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/memory/prog_mem.vhd"
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/memory/data_mem.vhd"
	set_global_assignment -name QIP_FILE ../Zoran_Nios/synthesis/zoran_nios.qip
	set_global_assignment -name VHDL_FILE ../../src/vhdl/TopLevel.vhd
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/processor/top_level.vhd"
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/processor/register_file.vhd"
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/processor/pc.vhd"
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/processor/instruction_register.vhd"
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/processor/data_path.vhd"
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/processor/control_unit.vhd"
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/arith/max.vhd"
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/arith/alu.vhd"
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/utils/recop_types.vhd"
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/utils/opcodes.vhd"
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/utils/mux_select_constants.vhd"
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/utils/alu_ops.vhd"
	set_global_assignment -name VHDL_FILE "../../ReCOPs/701-ReCOP/src/vhdl/utils/file_paths.vhd"
	set_global_assignment -name VHDL_FILE ../../ASPs/701AvgASP/src/avg_queue.vhd
	set_global_assignment -name VHDL_FILE ../../ASPs/701AvgASP/src/asp_control_unit.vhd
	set_global_assignment -name VHDL_FILE ../../ASPs/701AvgASP/src/asp.vhd
	set_global_assignment -name VHDL_FILE "../../ASPs/VHDL-Autocorrelator/src/processor/cor_asp.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/VHDL-Autocorrelator/src/util/address_constants.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/top_level_pd_asp.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/logic/peak_detection.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/data/noc_output_stage.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/control/control_unit.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/logic/counter.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/data/config_registers.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/control/packet_decode.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/data/min_value_storage.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/data/max_value_storage.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/logic/comparator.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/utils/zoran_types.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/utils/noc_constants.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/utils/mux_constants.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/utils/biglari_types.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/VHDL-ADC/src/vhdl/TopLevelAdcAsp.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/VHDL-ADC/src/vhdl/FilePaths.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/VHDL-ADC/src/vhdl/memory/ROM.vhd"
	set_global_assignment -name VHDL_FILE ../../src/vhdl/TdmaMin/TdmaMinSlots.vhd
	set_global_assignment -name VHDL_FILE ../../src/vhdl/TdmaMin/TdmaMinInterface.vhd
	set_global_assignment -name VHDL_FILE ../../src/vhdl/TdmaMin/TdmaMinFabric.vhd
	set_global_assignment -name VHDL_FILE ../../src/vhdl/TdmaMin/TdmaMin.vhd
	set_global_assignment -name VHDL_FILE "../../ASPs/VHDL-Autocorrelator/src/memory/register.vhd"
	set_global_assignment -name VHDL_FILE "../../ASPs/PD-ASP/vhdl/data/register_buffer.vhd"
	set_global_assignment -name VHDL_FILE ../../ip/TdmaMinFifo/TdmaMinFifo.vhd
	set_global_assignment -name VHDL_FILE ../../src/vhdl/TdmaMin/TdmaMinTypes.vhd
	set_global_assignment -name VHDL_FILE ../../src/vhdl/TdmaMin/TdmaMinSwitch.vhd
	set_global_assignment -name VHDL_FILE ../../src/vhdl/TdmaMin/TdmaMinStage.vhd
	set_global_assignment -name SOURCE_FILE "db/701-HMPSOC.cmp.rdb"
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (VHDL)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLOCK_50
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLOCK2_50
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLOCK3_50
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLOCK4_50
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FPGA_I2C_SCLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FPGA_I2C_SDAT
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_ADCDAT
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_ADCLRCK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_BCLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_DACDAT
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_DACLRCK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_XCK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[8]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[9]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[8]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[9]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[6]
	set_location_assignment PIN_AF14 -to CLOCK_50
	set_location_assignment PIN_AA16 -to CLOCK2_50
	set_location_assignment PIN_Y26 -to CLOCK3_50
	set_location_assignment PIN_K14 -to CLOCK4_50
	set_location_assignment PIN_J12 -to FPGA_I2C_SCLK
	set_location_assignment PIN_K12 -to FPGA_I2C_SDAT
	set_location_assignment PIN_K7 -to AUD_ADCDAT
	set_location_assignment PIN_K8 -to AUD_ADCLRCK
	set_location_assignment PIN_H7 -to AUD_BCLK
	set_location_assignment PIN_J7 -to AUD_DACDAT
	set_location_assignment PIN_H8 -to AUD_DACLRCK
	set_location_assignment PIN_G7 -to AUD_XCK
	set_location_assignment PIN_AA14 -to KEY[0]
	set_location_assignment PIN_AA15 -to KEY[1]
	set_location_assignment PIN_W15 -to KEY[2]
	set_location_assignment PIN_Y16 -to KEY[3]
	set_location_assignment PIN_AB12 -to SW[0]
	set_location_assignment PIN_AC12 -to SW[1]
	set_location_assignment PIN_AF9 -to SW[2]
	set_location_assignment PIN_AF10 -to SW[3]
	set_location_assignment PIN_AD11 -to SW[4]
	set_location_assignment PIN_AD12 -to SW[5]
	set_location_assignment PIN_AE11 -to SW[6]
	set_location_assignment PIN_AC9 -to SW[7]
	set_location_assignment PIN_AD10 -to SW[8]
	set_location_assignment PIN_AE12 -to SW[9]
	set_location_assignment PIN_V16 -to LEDR[0]
	set_location_assignment PIN_W16 -to LEDR[1]
	set_location_assignment PIN_V17 -to LEDR[2]
	set_location_assignment PIN_V18 -to LEDR[3]
	set_location_assignment PIN_W17 -to LEDR[4]
	set_location_assignment PIN_W19 -to LEDR[5]
	set_location_assignment PIN_Y19 -to LEDR[6]
	set_location_assignment PIN_W20 -to LEDR[7]
	set_location_assignment PIN_W21 -to LEDR[8]
	set_location_assignment PIN_Y21 -to LEDR[9]
	set_location_assignment PIN_AE26 -to HEX0[0]
	set_location_assignment PIN_AE27 -to HEX0[1]
	set_location_assignment PIN_AE28 -to HEX0[2]
	set_location_assignment PIN_AG27 -to HEX0[3]
	set_location_assignment PIN_AF28 -to HEX0[4]
	set_location_assignment PIN_AG28 -to HEX0[5]
	set_location_assignment PIN_AH28 -to HEX0[6]
	set_location_assignment PIN_AJ29 -to HEX1[0]
	set_location_assignment PIN_AH29 -to HEX1[1]
	set_location_assignment PIN_AH30 -to HEX1[2]
	set_location_assignment PIN_AG30 -to HEX1[3]
	set_location_assignment PIN_AF29 -to HEX1[4]
	set_location_assignment PIN_AF30 -to HEX1[5]
	set_location_assignment PIN_AD27 -to HEX1[6]
	set_location_assignment PIN_AB23 -to HEX2[0]
	set_location_assignment PIN_AE29 -to HEX2[1]
	set_location_assignment PIN_AD29 -to HEX2[2]
	set_location_assignment PIN_AC28 -to HEX2[3]
	set_location_assignment PIN_AD30 -to HEX2[4]
	set_location_assignment PIN_AC29 -to HEX2[5]
	set_location_assignment PIN_AC30 -to HEX2[6]
	set_location_assignment PIN_AD26 -to HEX3[0]
	set_location_assignment PIN_AC27 -to HEX3[1]
	set_location_assignment PIN_AD25 -to HEX3[2]
	set_location_assignment PIN_AC25 -to HEX3[3]
	set_location_assignment PIN_AB28 -to HEX3[4]
	set_location_assignment PIN_AB25 -to HEX3[5]
	set_location_assignment PIN_AB22 -to HEX3[6]
	set_location_assignment PIN_AA24 -to HEX4[0]
	set_location_assignment PIN_Y23 -to HEX4[1]
	set_location_assignment PIN_Y24 -to HEX4[2]
	set_location_assignment PIN_W22 -to HEX4[3]
	set_location_assignment PIN_W24 -to HEX4[4]
	set_location_assignment PIN_V23 -to HEX4[5]
	set_location_assignment PIN_W25 -to HEX4[6]
	set_location_assignment PIN_V25 -to HEX5[0]
	set_location_assignment PIN_AA28 -to HEX5[1]
	set_location_assignment PIN_Y27 -to HEX5[2]
	set_location_assignment PIN_AB27 -to HEX5[3]
	set_location_assignment PIN_AB26 -to HEX5[4]
	set_location_assignment PIN_AA26 -to HEX5[5]
	set_location_assignment PIN_AA25 -to HEX5[6]
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}