#!/usr/bin/env python3

## USAGE: `python generate_file_paths.py`

from pathlib import Path

def write_line(file, data):
    print(data)
    file.write(data)
    file.write("\n")

paths = {
    "src/VHDL/Constants/FilePaths.vhd": {
        "package_name": "FilePaths",
        "variables": [
            {
                "relative_path": "src/recop_programs/configuration.mif",
                "variable_name": "RECOP_FIXED_CONFIG_FILE_PATH",
            },
            {
                "relative_path": "src/recop_programs/user_configuration.mif",
                "variable_name": "RECOP_CONFIGURABLE_CONFIG_FILE_PATH",
            },
            {
                "relative_path": "src/recop_programs/valued_config_fields.mif",
                "variable_name": "RECOP_VALUED_CONFIG_FIELDS_FILE_PATH",
            },
            {
                "relative_path": "src/recop_programs/config_core_window.mif",
                "variable_name": "RECOP_WOLF_CONFIG_FIELDS_FILE_PATH",
            },
        ],
    },
    "ASPs/VHDL-ADC/src/vhdl/FilePaths.vhd": {
        "package_name": "AdcFilePaths",
        "variables": [
            {
                "relative_path": "ASPs/VHDL-ADC/src/MIFs/12_bit_rom.mif",
                "variable_name": "rom_12_file_path",
            }
        ],
    },
}

SCRIPT_DIR = Path(__file__).parent

for config_file, info in paths.items():
    config_file_path = SCRIPT_DIR.joinpath(config_file).resolve()

    with open(config_file_path, "w", encoding="iso8859-1") as file:
        msg_header = f"Configuring {config_file_path}"
        print(msg_header)
        print("-"*len(msg_header))

        write_line(file, f"package {info['package_name']} is")
        for variable in info["variables"]:
            variable_name = variable["variable_name"]
            absolute_path = SCRIPT_DIR.joinpath(variable["relative_path"]).resolve()
            write_line(file, f"\tconstant {variable_name} : string := \"{absolute_path}\";")
        
        write_line(file, "end package;")
    
    print("-"*len(msg_header))
    print("\n")


print("TO INFINITY AND BEYOND!")
print("    < +---+")
print("    <-|   |")
print("  <-< +---+----------------+\\")
print("<-<-<     | ELECTRON       |-|")
print("  <-< +---+----------------+/")
print("    <-|   |")
print("    < +---+")
