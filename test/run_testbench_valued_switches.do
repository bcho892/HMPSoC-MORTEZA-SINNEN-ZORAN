puts {
    biglari asp integration test
}
set top_level              test_library.testbench_valued_switches

# load the simulation
eval vsim $top_level

# if waves are required
add wave -noupdate /testbench_valued_switches/dut/pd_asp_inst/d_peak_detected
add wave -noupdate /testbench_valued_switches/dut/pd_asp_inst/data_out
add wave -noupdate -format Analog-Step -height 130 -max 168422.0 -radix hexadecimal /testbench_valued_switches/dut/cor_asp_inst/correlation
add wave -noupdate /testbench_valued_switches/dut/pd_asp_inst/peak_detection/correlation_data
add wave -noupdate -max 31316.0 /testbench_valued_switches/dut/pd_asp_inst/peak_detection/previous_correlation
add wave -noupdate -radix hexadecimal /testbench_valued_switches/dut/recop_wolf_top_level_inst/dpcr_data_out
add wave -noupdate /testbench_valued_switches/dut/recop_wolf_top_level_inst/clock
add wave -noupdate /testbench_valued_switches/t_key_lime
add wave -noupdate /testbench_valued_switches/t_switch
add wave -noupdate -radix hexadecimal /testbench_valued_switches/dut/pd_asp_inst/data_in
add wave -noupdate -radix hexadecimal /testbench_valued_switches/dut/pd_asp_inst/data_out

# run the simulation
run 500us


# if waves are required
if [llength $wave_patterns] {
  if $tk_ok {wave zoomfull}
}

puts {
  *************************
  CLLOWNDS SMALLARI
  *************************
}
