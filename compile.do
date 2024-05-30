puts {
  *****************************
  BIGLARI-COMPILER FOR MODELSIM
  *****************************
}

set library_file_list {
                           design_library {
                                           src/vhdl/Constants/FilePaths.vhd 
                                           src/vhdl/TdmaMin/TdmaMinTypes.vhd
                                           src/vhdl/TdmaMin/TdmaMinSwitch.vhd
                                           src/vhdl/TdmaMin/TdmaMinStage.vhd

                                           ip/TdmaMinFifo/TdmaMinFifo.vhd

                                           ASPs/PD-ASP/vhdl/data/register_buffer.vhd
                                           ASPs/VHDL-Autocorrelator/src/memory/register.vhd

                                           src/vhdl/TdmaMin/TdmaMinSlots.vhd
                                           src/vhdl/TdmaMin/TdmaMinFabric.vhd
                                           src/vhdl/TdmaMin/TdmaMinInterface.vhd
                                           src/vhdl/TdmaMin/TdmaMin.vhd

                                           ASPs/VHDL-ADC/src/vhdl/memory/ROM.vhd
                                           ASPs/VHDL-ADC/src/vhdl/FilePaths.vhd
                                           ASPs/VHDL-ADC/src/vhdl/TopLevelAdcAsp.vhd
                           
                                           ASPs/PD-ASP/vhdl/utils/biglari_types.vhd
                                           ASPs/PD-ASP/vhdl/utils/zoran_types.vhd
                                           ASPs/PD-ASP/vhdl/utils/mux_constants.vhd
                                           ASPs/PD-ASP/vhdl/utils/noc_constants.vhd
                                           ASPs/PD-ASP/vhdl/logic/comparator.vhd
                                           ASPs/PD-ASP/vhdl/data/max_value_storage.vhd
                                           ASPs/PD-ASP/vhdl/data/min_value_storage.vhd
                                           ASPs/PD-ASP/vhdl/logic/bit_truncation.vhd
                                           ASPs/PD-ASP/vhdl/control/packet_decode.vhd
                                           ASPs/PD-ASP/vhdl/data/config_registers.vhd
                                           ASPs/PD-ASP/vhdl/logic/counter.vhd
                                           ASPs/PD-ASP/vhdl/control/control_unit.vhd
                                           ASPs/PD-ASP/vhdl/data/noc_output_stage.vhd
                                           ASPs/PD-ASP/vhdl/logic/peak_detection.vhd
                                           ASPs/PD-ASP/vhdl/top_level_pd_asp.vhd

                                           ASPs/VHDL-Autocorrelator/src/util/address_constants.vhd
                                           ASPs/VHDL-Autocorrelator/src/processor/cor_asp.vhd

                                           ASPs/701AvgASP/ip/queue.vhd
                                           ASPs/701AvgASP/src/asp_control_unit.vhd
                                           ASPs/701AvgASP/src/asp.vhd

                                           ReCOPs/701-ReCOP/src/vhdl/utils/file_paths.vhd
                                           
                                           ReCOPs/701-ReCOP/src/vhdl/utils/recop_types.vhd
                                           ReCOPs/701-ReCOP/src/vhdl/utils/mux_select_constants.vhd
                                           ReCOPs/701-ReCOP/src/vhdl/utils/opcodes.vhd
                                           ReCOPs/701-ReCOP/src/vhdl/utils/alu_ops.vhd

                                           ReCOPs/701-ReCOP/src/vhdl/arith/max.vhd
                                           ReCOPs/701-ReCOP/src/vhdl/arith/alu.vhd

                                           ReCOPs/701-ReCOP/src/vhdl/memory/data_mem.vhd
                                           ReCOPs/701-ReCOP/src/vhdl/memory/prog_mem.vhd

                                           ReCOPs/701-ReCOP/src/vhdl/processor/pc.vhd
                                           ReCOPs/701-ReCOP/src/vhdl/processor/instruction_register.vhd
                                           ReCOPs/701-ReCOP/src/vhdl/processor/register_file.vhd
                                           ReCOPs/701-ReCOP/src/vhdl/processor/control_unit.vhd
                                           ReCOPs/701-ReCOP/src/vhdl/processor/data_path.vhd

                                           ReCOPs/701-ReCOP/src/vhdl/processor/top_level.vhd

                                           src/vhdl/nios_noc_interface.vhd

                                           src/vhdl/TopLevel.vhd
                                           
                           }

                           test_library   {
                                          test/TdmaMin/TestTdmaMin.vhd
                                          test/TdmaMin/TestTdmaMinInterface.vhd
                                          test/testbench_nios_noc_interface.vhd
                                          test/testbench_asp_integration.vhd
                                          test/testbench_environment_integration.vhd
                                          test/testbench_valued_switches.vhd
                                          test/testbench_corr_config.vhd
                           }
}


#Does this installation support Tk?
set tk_ok 1
if [catch {package require Tk}] {set tk_ok 0}

catch {
  vlib work
}

foreach {library file_list} $library_file_list {
  vlib $library
  vmap $library work
  foreach file $file_list {
    if [regexp {.vhdl?$} $file] {
    vcom -93 $file
    } else {
    vlog $file
    }
  }
}

puts {
  *************************************************************************************************
  All files successfully compiled. You may now run the .do scripts that are prefixed with 'run_test' 
  *************************************************************************************************

  Q: wHaT iS rEc0P?????
  A: You asking questions that make NO SENSE

}

  