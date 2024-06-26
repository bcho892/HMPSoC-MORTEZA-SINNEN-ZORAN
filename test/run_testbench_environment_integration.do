puts {
    biglari asp integration test
}
set top_level              test_library.testbench_environment_integration

# load the simulation
eval vsim $top_level

# if waves are required
add wave -noupdate /testbench_environment_integration/dut/pd_asp_inst/peak_detection/peak_detected
add wave -noupdate -format Analog-Step -height 74 -max 4094.9999999999995 -radix hexadecimal /testbench_environment_integration/dut/viktor_asp/rom12_data_out
add wave -noupdate -format Analog-Step -height 74 -max 168422.0 -radix hexadecimal /testbench_environment_integration/dut/cor_asp_inst/correlation
add wave -noupdate -radix decimal /testbench_environment_integration/dut/oliver_sinnen_asp/average
add wave -noupdate -radix hexadecimal /testbench_environment_integration/dut/pd_asp_inst/peak_detection/correlation_data
add wave -noupdate -radix decimal -max 31316.0 /testbench_environment_integration/dut/pd_asp_inst/peak_detection/previous_correlation
add wave -noupdate -radix hexadecimal /testbench_environment_integration/dut/recop_wolf_top_level_inst/dpcr_data_out
add wave -noupdate /testbench_environment_integration/dut/recop_wolf_top_level_inst/clock
add wave -noupdate /testbench_environment_integration/t_key_lime
add wave -noupdate /testbench_environment_integration/t_switch

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