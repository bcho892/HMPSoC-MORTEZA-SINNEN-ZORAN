# HMPSoC-MORTEZA-SINNEN-ZORAN

Development of heterogeneous multiprocessor system on chip - Made in collaboration with BIGLARI-ABHARI

## Getting Started

> [!IMPORTANT]
> The first thing you should do before attempting any synthesis or simulation is to generate the correct file paths. To do this follow the steps below

1. run `py generate_file_paths.py`

> [!WARNING]
> If the above does not work, you should navigate to `src\vhdl\Constants\FilePaths.vhd` and replace the constants with the _absolute_ path.

## Repository structure

- `ASPs`
  - Contains all the source folders derived using git _submodules_ of the ASPs developed in the IP for each indivdual member
- `ip`
  - Contains altera IP cores
- `ReCOPs`

  - Contains the `ReCOP` used in the `HMPSoC`, designed by wolf and chode and sinnen

- `quartus`

  - Contains the `.qpf` file which should be used to synthesise the project for programming the `DE1-SOC` board and checking resource usage.
  - Has all the files generated by `platform designer` such as the `NIOS II` core (the `.qsys` file is included).
  - `software`
    - Contains the BSPs and required C code to run on **KNEEOS II**

- `src`

  - Contains all of the _new_ sources files developed for the integration of the `ReCOP` and individual ASPs.
  - `MIPS`
    - Contains the `MIPS` assembly code used to program the `ReCOP` with.
  - `recop_programs`
    - Contains the `.MIF` files generated from assembling the code written in the `MIPS` folder
  - `vhdl`
    - Contains all the source files used for synthesis of the `HMPSoC`
    - `constants`
      - Created to store files that reduce code duplication
    - `custom_instructions`
      - Has the custom instructions made for the **KNEEOS II** processor used in the `HMPSoC`
    - `TdmaMin`
      - Contains **ZORAN SALCIC**'s implementation of the `TDMA-MIN` NOC architecture

- `test`
  - Has all of the source code for the testbenches
  - Also contains the `.do` scripts used to automate running the testbenches

## Running the testbenches

> [!NOTE]
> To get this up and running it is recommended that you have `python` installed. If you do not, you will have to follow the manual steps outlined in the troubleshooting section

> [!WARNING]
> All commands specified here _must_ be run from the directory that this `README.md` is located in.

1. `py open_modelsim.py`

- This will compile all required files for the HMPSoC

2. In the _modelsim_ console you may now run testbenches with the command `test/run_testbench_<testbench_name>.do`. The available ones are as follows

- `run_testbench_asp_integration.do` Shows the operation of all the ASPs enabled and with their default configs
- `run_testbench_environment_integration.do` Shows operation of the ASPs with basic configs coming in from the switches (only a small subset of the available configurations are included)
- `run_testbench_valued_switches.do` Shows the operation of the HMPSoC NoC with different values on the switches - meaning in some periods the ASPs are configured to different modes such as passthrough etc

## Troubleshooting

> [!IMPORTANT]
> If you do not have python installed you will need to follow the outlined steps.

1. Open modelsim manually
2. Change directory to the folder this `README.md` is located
3. Run `do compile.do` in the _Modelsim_ console
4. You may now run the testbenches using the scripts defined in the section **running the testbenches**. This is using the format `test/run_testbench_<testbench_name>.do`.
