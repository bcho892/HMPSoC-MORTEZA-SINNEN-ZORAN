## USAGE: `py generate_file_paths.py`

import os

def get_absolute_path(filename):
    absolute_path = os.path.abspath(filename)
    return absolute_path

paths = [{
        "relative_path": "src/recop_programs/configuration.mif",
        "variable_name": "RECOP_FIXED_CONFIG_FILE_PATH"
        },
        {
        "relative_path": "src/recop_programs/user_configuration.mif",
        "variable_name": "RECOP_CONFIGURABLE_CONFIG_FILE_PATH"
        }, 
        {
        "relative_path": "src/recop_programs/valued_config_fields.mif",
        "variable_name": "RECOP_VALUED_CONFIG_FIELDS_FILE_PATH"
        }, 
        {
        "relative_path": "src/recop_programs/config_core_window.mif",
        "variable_name": "RECOP_WOLF_CONFIG_FIELDS_FILE_PATH"
        }, 
        ]

to_write = []
for path in paths:
    print(get_absolute_path(path["relative_path"]))
    to_write.append({"variable_name": path["variable_name"], 
                   "absolute_path": get_absolute_path(path["relative_path"])})
    
f = open("./src/vhdl/Constants/FilePaths.vhd", "w")

f.write("-- This file should be updated using the script called generate_file_paths.py at the root\n")
f.write("package FilePaths is\n")

for absolute_path in to_write:
    print('Writing variable {} with its absolute path {}'.format( 
          absolute_path["variable_name"], 
          absolute_path["absolute_path"]))
    f.write('   constant {} : string := "{}";\n'.format(absolute_path["variable_name"], 
                                                        absolute_path["absolute_path"]))

f.write("end package;")

f.close()



    