puts {
    biglari asp integration test
}
set top_level              test_library.testbench_asp_integration

# load the simulation
eval vsim $top_level

# if waves are required
add wave -noupdate /testbench_asp_integration/dut/pd_asp_inst/peak_detection/peak_detected
add wave -noupdate -format Analog-Step -height 74 -max 4094.9999999999995 -radix hexadecimal /testbench_asp_integration/dut/viktor_asp/rom12_data_out
add wave -noupdate -format Analog-Step -height 74 -max 168422.0 -radix hexadecimal /testbench_asp_integration/dut/cor_asp_inst/correlation
add wave -noupdate -radix decimal /testbench_asp_integration/dut/pd_asp_inst/peak_detection/correlation_data
add wave -noupdate -radix decimal /testbench_asp_integration/dut/pd_asp_inst/peak_detection/previous_correlation
add wave -noupdate -radix decimal /testbench_asp_integration/dut/oliver_sinnen_asp/average


# run the simulation
run 200us


# if waves are required
if [llength $wave_patterns] {
  if $tk_ok {wave zoomfull}
}

puts {
  *************************
  CLLOWNDS SMALLARI
  *************************
}