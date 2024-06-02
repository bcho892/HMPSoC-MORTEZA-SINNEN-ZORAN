# TCL File Generated by Component Editor 18.1
# Wed May 29 23:01:31 NZST 2024
# DO NOT MODIFY


# 
# biglari_sseg "biglari_sseg" v1.0
#  2024.05.29.23:01:31
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module biglari_sseg
# 
set_module_property DESCRIPTION ""
set_module_property NAME biglari_sseg
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME biglari_sseg
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL ci_sseg_update_instruction
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file ci_update_seven_segment.vhd VHDL PATH ../src/vhdl/custom_instructions/ci_update_seven_segment/ci_update_seven_segment.vhd TOP_LEVEL_FILE
add_fileset_file seven_segment.vhd VHDL PATH ../ReCOPs/701-ReCOP/src/vhdl/integrations/seven_segment.vhd


# 
# parameters
# 


# 
# display items
# 


# 
# connection point nios_custom_instruction_slave
# 
add_interface nios_custom_instruction_slave nios_custom_instruction end
set_interface_property nios_custom_instruction_slave clockCycle 0
set_interface_property nios_custom_instruction_slave operands 1
set_interface_property nios_custom_instruction_slave ENABLED true
set_interface_property nios_custom_instruction_slave EXPORT_OF ""
set_interface_property nios_custom_instruction_slave PORT_NAME_MAP ""
set_interface_property nios_custom_instruction_slave CMSIS_SVD_VARIABLES ""
set_interface_property nios_custom_instruction_slave SVD_ADDRESS_GROUP ""

add_interface_port nios_custom_instruction_slave done done Output 1
add_interface_port nios_custom_instruction_slave clock clk Input 1
add_interface_port nios_custom_instruction_slave display_value dataa Input 32
add_interface_port nios_custom_instruction_slave start start Input 1
add_interface_port nios_custom_instruction_slave clock_en clk_en Input 1


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock ""
set_interface_property conduit_end associatedReset ""
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end CMSIS_SVD_VARIABLES ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end hex0 zoran0 Output 7
add_interface_port conduit_end hex1 zoran1 Output 7
add_interface_port conduit_end hex2 zoran2 Output 7
add_interface_port conduit_end hex3 zoran3 Output 7
add_interface_port conduit_end hex4 zoran4 Output 7
add_interface_port conduit_end hex5 zoran5 Output 7

