puts {
  *****************************
  BIGLARI-COMPILER FOR MODELSIM
  *****************************
}

set library_file_list {
                           design_library {
                                           ASPs/PD-ASP/vhdl/utils/biglari_types.vhd
                                           ASPs/PD-ASP/vhdl/utils/zoran_types.vhd
                                           ASPs/PD-ASP/vhdl/utils/mux_constants.vhd
                                           ASPs/PD-ASP/vhdl/utils/noc_constants.vhd
                                           ASPs/PD-ASP/vhdl/data/register_buffer.vhd
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
                                           ASPs/VHDL-Autocorrelator/src/memory/register.vhd
                                           ASPs/VHDL-Autocorrelator/src/processor/cor_asp.vhd
                                           src/vhdl/TdmaMin/TdmaMinTypes.vhd
                                           src/vhdl/TdmaMin/TdmaMinSwitch.vhd
                                           src/vhdl/TdmaMin/TdmaMinStage.vhd
                                           ip/TdmaMinFifo/TdmaMinFifo.vhd
                                           src/vhdl/TdmaMin/TdmaMinSlots.vhd
                                           src/vhdl/TdmaMin/TdmaMinFabric.vhd
                                           src/vhdl/TdmaMin/TdmaMinInterface.vhd
                                           src/vhdl/TdmaMin/TdmaMin.vhd
                                           
                           }

                           test_library   {
                                          test/TdmaMin/TestTdmaMin.vhd
                                          test/TdmaMin/TestTdmaMinInterface.vhd
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

  