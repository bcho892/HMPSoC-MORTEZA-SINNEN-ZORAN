# HMPSoC-MORTEZA-SINNEN-ZORAN

Development of heterogeneous multiprocessor system on chip - Made in collaboration with BIGLARI-ABHARI

## Getting Started

The first thing that needs to be done after cloning this
repo is to initialise the submodules, using
```sh
git submodule update --init
```

> [!IMPORTANT]
> Before attempting any synthesis or simulation, you need to
> generate the correct file paths. To do this you need to
> run the python configuration scripts.

After cloning the repo, and updating the submodules, you
need to configure the absolute file paths to point to the
right location on your machine. This is done through running
a python script from a terminal of your choice:

- run `python generate_file_paths.py`
- run `py generate_file_paths.py` (if using Windows Store managed Python Distribution)

> [!WARNING]
> If the above does not work, you should navigate to `src/vhdl/Constants/FilePaths.vhd` and `ASPs/VHDL-ADC/src/vhdl/FilePaths.vhd` replace the constants with the _absolute_ path.

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

## Programming onto an FPGA

The program the HMPSoC onto an FPGA, you must first compile
the HMPSoC project in quartus.

After doing this, you need to program your FPGA with the
HMPSoC. This is done by opening the Quartus programmer and
programming your FPGA with the output file of the
compilation process.


### Setting up Nios II Eclipse Build Tools
Once the FPGA has been loaded with the HDL bitstream, you
need to load the NIOS II code onto the NIOS II processor. To
do this, you must first open The Eclipse Build Tools by
clicking `Tools > Nios II Software Build Tools for Eclipse`.
Then after eclipse opens, you need to select your workspace.
This workspace does not have to be inside the repository.
Then, in Eclipse - with your workspace open - you can click
`File > Import`, and select the `General > Exsting Projects
into Workspace` option. In the next dialog menu, choose the
root directory as the root directory of this repository - 2
two project should show up after select the directory. You
can then click `Finish`. Lastly, you need to regenerate the
`BSP` of your Nios II code. To do this, right click on the
`BSP` project, and click `Nios II > Generate BSP`. You can
now fully build your Nios II code.

### Building Nios II Code in Eclipse

Hit `Ctrl-B` to build your code in Eclipse. Then, once
built, click `Run > Run configurations`, and then double
click on Nios II Hardware. This should create a new run
configuration. On the first page, select the current project
name, and in the `Target Connections` page, make sure you
can see a target connection. Note that the FPGA must be
plugged in and programmed at this point in time.

You can then click `Run` to load the code onto the Nios II
Core!

## Troubleshooting

> [!IMPORTANT]
> If you do not have python installed you will need to follow the outlined steps.

1. Open modelsim manually
2. Change directory to the folder this `README.md` is located
3. Run `do compile.do` in the _Modelsim_ console
4. You may now run the testbenches using the scripts defined in the section **running the testbenches**. This is using the format `test/run_testbench_<testbench_name>.do`.
