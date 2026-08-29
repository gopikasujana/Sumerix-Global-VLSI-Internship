# Part G — Engineering Documentation

Gate-level and RTL documentation for the Verilog modules built in Task 1 (Parts D–F) of the Sumerix Global VLSI Design and Semiconductor Engineering Internship.

## Objective

To professionally document the digital logic modules developed earlier in Task 1 — logic gates, Half Adder, Full Adder, 2:1 MUX, and the 4-bit Ripple Carry Adder — in the form expected of an industry RTL design submission: gate-level schematics, an RTL block diagram, truth tables, a documented simulation workflow, and a clean project structure. This turns working code into a reviewable, professional engineering record.

## Tools and Technologies Used

| Category | Tool |
|----------|------|
| HDL | Verilog |
| Simulator | Icarus Verilog (`iverilog`, `vvp`) |
| Waveform Viewer | GTKWave |
| Schematic / Diagram Tool | draw.io (diagrams.net) — IEEE Std 91 / ANSI Y32.14 logic gate stencils |
| Editor | Visual Studio Code |
| OS | Ubuntu Linux / WSL |
| Version Control | Git and GitHub |

## How to Run the Simulation

Each module in `Task-1/partD/src/` has a matching testbench in `Task-1/PartE/testbench/`, and the ripple carry adder in `Task-1/PartF/` has its own testbench alongside it. Example, using the Full Adder:

```bash
# 1. Compile the design + testbench
iverilog -o build/fulladd_test.out Task-1/partD/src/fulladd.v Task-1/PartE/testbench/fulladd_tb.v

# 2. Run the simulation
vvp build/fulladd_test.out

# 3. View the waveform
gtkwave fulladd.vcd
```

The same three-command pattern (`iverilog` → `vvp` → `gtkwave`) applies to every module — just swap in the relevant source and testbench file names. Full details, including the 4-bit Ripple Carry Adder example, are in [`simulation_workflow.md`](./simulation_workflow.md).

## Folder Structure Summary

```
Task-1/PartG/
├── README.md                    # this file
├── truth_tables.md              # truth tables for every module
├── simulation_workflow.md       # iverilog + GTKWave step-by-step flow
├── folder_structure.md          # full repo directory tree + notes
├── logic_gate_diagrams.svg      # AND / OR / XOR / MUX gate-level symbols
├── combinational_circuits.svg   # Half Adder & Full Adder built from gates
└── rtl_block_diagram.svg        # 4-bit Ripple Carry Adder RTL block diagram
```

This folder documents modules that live elsewhere in the repo: `Task-1/partD/src/` (gates, half/full adder, mux), `Task-1/PartE/` (testbenches, waveform screenshots), and `Task-1/PartF/` (ripple carry adder). See `folder_structure.md` for the complete repo-wide tree.

## Author

**Gopika Sujana**
Sumerix Global — Industry-Oriented Internship Program on VLSI Design and Semiconductor Engineering
Task 1, Part G — 29 August 2026

## Known Limitations / Assumptions

- `or_gate.v` and `xor_gate.v` are implemented as **3-input** gates (`a, b, c`) rather than the more common 2-input textbook version. All diagrams and truth tables in this folder are drawn to match this actual implementation, not the generic 2-input case.
- The 4-bit Ripple Carry Adder's truth table is not exhaustive (2⁹ = 512 combinations); instead, the 16 test vectors actually exercised in `bit4rippleadder_tb.v` are documented, since that is what was verified in simulation.
- These diagrams assume familiarity with basic Boolean algebra and IEEE-standard gate symbols; no gate-level timing (propagation delay values) is modeled, since this was a functional (not timing) simulation using Icarus Verilog.
- Diagrams were authored in draw.io and exported as SVG; rendering may vary slightly between viewers (e.g. GitHub's inline preview vs. a local browser), though all files were verified to render correctly on GitHub before submission.

