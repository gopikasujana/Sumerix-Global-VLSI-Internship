# Sumerix Global VLSI Internship — Task 1

Digital Electronics Fundamentals, Linux Environment Setup, Verilog HDL Programming, Simulation
Workflow, and Basic Digital Circuit Design.

## Objective

Task 1 builds the foundation for VLSI design: digital electronics, Linux-based development,
Verilog HDL, and digital circuit simulation, verification, and documentation — bridging theory
with practical RTL design ahead of Task 2 (sequential logic, FSMs, and beyond).

## Repository Structure

| Part | Description | Status |
|---|---|---|
| [Part-A](./Task-1/Part-A) | Semiconductor & VLSI Fundamentals — ASIC vs FPGA | ✅ Complete |
| [Part-B](./Task-1/Part-B) | Digital Electronics — Boolean algebra, logic gates, K-maps | ✅ Complete |
| [Part-C](./Task-1/Part-C) | Linux Environment Setup — shell commands, tool installation | ✅ Complete |
| [partD](./Task-1/partD) | Verilog RTL — gates, MUX, Half/Full Adder | ✅ Complete |
| [PartE](./Task-1/PartE) | Testbenches + GTKWave waveform verification | ✅ Complete |
| [PartF](./Task-1/PartF) | Mini RTL Design — 4-bit Ripple Carry Adder | ✅ Complete |
| [Part-G](./Task-1/Part-G) | Engineering Documentation — diagrams, truth tables, workflow | ✅ Complete |
| [Part-H](./Task-1/Part-H) | Mini Project — Digital Arithmetic Logic Circuit Library | ✅ Complete |

## Tools Used

| Category | Tool |
|---|---|
| OS | Ubuntu Linux / WSL |
| HDL | Verilog |
| Simulator | Icarus Verilog (`iverilog`, `vvp`) |
| Waveform Viewer | GTKWave |
| Editor | Visual Studio Code |
| Version Control | Git / GitHub |
| Diagrams | draw.io (diagrams.net) |

## RTL Modules Implemented

AND · OR (3-input) · XOR (3-input) · 2:1 MUX · Half Adder · Full Adder · 4-bit Ripple Carry Adder

## How to Run a Simulation

```bash
iverilog -o build/fulladd_test.out Task-1/partD/src/fulladd.v Task-1/PartE/testbench/fulladd_tb.v
vvp build/fulladd_test.out
gtkwave fulladd.vcd
```
Full workflow details: [`Task-1/Part-G/simulation_workflow.md`](./Task-1/Part-G/simulation_workflow.md)

## Documentation

Complete engineering documentation — logic gate diagrams, RTL block diagram, truth tables,
simulation workflow, folder structure — lives in [`Task-1/Part-G/`](./Task-1/Part-G/).

## Capstone Alignment

The internship's final deliverable is a **32-bit RISC Processor Design and Verification**. The
Full Adder and Ripple Carry Adder built here are the direct precursors to the processor's ALU;
the 2:1 MUX is the core building block for datapath selection logic reused throughout later tasks.

## Author

**Gopika Sujana**
Sumerix Global — Industry-Oriented Internship Program on VLSI Design and Semiconductor Engineering
Task 1 — August 2026
