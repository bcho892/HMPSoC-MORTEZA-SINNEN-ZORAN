puts {
    biglari asp integration test
}
set top_level              test_library.testbench_corr_config

# load the simulation
eval vsim $top_level

# if waves are required
add wave -noupdate -format Analog-Step -height 74 -max 168422.0 -radix hexadecimal /testbench_corr_config/dut/cor_asp_inst/correlation
add wave -noupdate -format Analog-Step -height 74 -max 255 -radix hexadecimal /testbench_corr_config/dut/viktor_asp/adc_data_in 

# run the simulation
run 3200000 ns


# if waves are required
if [llength $wave_patterns] {
  if $tk_ok {wave zoomfull}
}

puts {
  *************************
  CLLOWNDS SMALLARI
  *************************
}
