<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The 8-bit programmable counter is a digital circuit designed to count from a user-defined start value to a specified end value. The counter can be programmed with an initial value and a maximum value, and it increments its count on each clock cycle. When the counter reaches the maximum value, it wraps around or resets to the initial value, depending on the configuration. The design is implemented in Verilog and can be synthesized for FPGA or ASIC platforms.

## How to test

To test the 8-bit programmable counter:

1. Use the provided Verilog testbench (`test/tb.v`) to simulate the counter's behavior.
2. Run the simulation using the Makefile in the `test/` directory. This will compile the Verilog files and execute the testbench.
3. Observe the output waveform using GTKWave with the provided `.gtkw` file (`test/tb.gtkw`) to verify correct counting, wrapping, and programmability.
4. For automated testing, run `test/test.py` to check for expected outputs and edge cases.

## External hardware

-   None required for simulation.
-   For hardware implementation, the counter can be connected to LEDs, 7-segment displays, or other output devices to visualize the count. Optionally, push buttons or switches can be used to program the initial and maximum values.
