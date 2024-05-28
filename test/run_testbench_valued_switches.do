puts {
    biglari asp integration test
}
set top_level              test_library.testbench_valued_switches

# load the simulation
eval vsim $top_level

# if waves are required
add wave -noupdate /testbench_valued_switches/dut/pd_asp_inst/peak_detection/peak_detected
add wave -noupdate -format Analog-Step -height 74 -max 254.99999999999997 /testbench_valued_switches/dut/viktor_asp/rom8_data_out
add wave -noupdate -format Analog-Step -height 74 -max 168422.0 -radix hexadecimal /testbench_valued_switches/dut/cor_asp_inst/correlation_test
add wave -noupdate -format Analog-Step -height 74 -max 252.0 /testbench_valued_switches/dut/oliver_sinnen_asp/left_average
add wave -noupdate /testbench_valued_switches/dut/pd_asp_inst/peak_detection/correlation_data
add wave -noupdate -max 31316.0 /testbench_valued_switches/dut/pd_asp_inst/peak_detection/previous_correlation
add wave -noupdate -radix hexadecimal /testbench_valued_switches/dut/recop_wolf_top_level_inst/dpcr_data_out
add wave -noupdate /testbench_valued_switches/dut/recop_wolf_top_level_inst/clock
add wave -noupdate /testbench_valued_switches/t_key_lime
add wave -noupdate /testbench_valued_switches/t_switch

# run the simulation
run 100000ns


# if waves are required
if [llength $wave_patterns] {
  if $tk_ok {wave zoomfull}
}

puts {
  *************************
  CLLOWNDS SMALLARI
  *************************
}