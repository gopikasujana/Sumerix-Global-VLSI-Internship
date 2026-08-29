# Task-1 / Part-H: Digital Logic Library in Verilog

## About
This folder contains Verilog code for basic digital circuits:
- Logic Gates (AND, OR, NOT, NAND, NOR, XOR, XNOR)
- Half Adder
- Full Adder
- 4x1 Multiplexer
- 4-bit Ripple Carry Adder
- Testbench to verify all modules

## Files
| File | Description |
|------|-------------|
| logic_gates.v | Basic logic gates |
| halfadder.v | Half adder circuit |
| fulladder.v | Full adder circuit |
| mux4_1.v | 4-to-1 multiplexer |
| ripplecarry.v | 4-bit ripple carry adder |
| tb_digital_logic_library.v | Testbench for all modules |
| digital_logic_library.png | Simulation waveform screenshot |

## Tools Used
- Icarus Verilog (iverilog) - to compile and run
- GTKWave - to see the waveform

## How to Run
1. Compile the code:
   iverilog -o sim tb_digital_logic_library.v logic_gates.v halfadder.v fulladder.v mux4_1.v ripplecarry.v

2. Run the simulation:
   vvp sim

3. View the waveform:
   gtkwave digital_logic_library.vcd

## Output
The waveform below shows the simulation result in GTKWave.
All modules (gates, adders, MUX, ripple carry adder) give correct output.

![Waveform](digital_logic_library.png)

## Conclusion
All digital logic modules are designed and verified successfully using Verilog.

## Author
Gopika Sujana - Sumerix Global VLSI Internship
