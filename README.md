# Sumerix Global VLSI Internship - Task 1

Welcome to my repository for the Sumerix Global VLSI Internship. This repository serves as the centralized documentation and implementation hub for Task 1, covering the transition from digital logic theory to practical RTL design and verification.

## Project Overview
The objective of Task 1 was to build a comprehensive foundation in VLSI design, focusing on:
- **Digital Electronics Fundamentals**
- **Linux-based EDA Workflows**
- **Verilog HDL Implementation**
- **Simulation and Waveform Analysis**

---

##  Repository Structure

The project is organized into modular directories, each corresponding to specific internship learning objectives:

| Module | Description | Key Focus |
| :--- | :--- | :--- |
| **Part-A** | Semiconductor Fundamentals | ASIC vs. FPGA analysis & industry trends. |
| **Part-B** | Digital Electronics | Boolean algebra, logic gates, and minimization. |
| **Part-C** | Linux Environment | Shell scripting, tool setup (Icarus/GTKWave), and CLI efficiency. |
| **Part-D** | RTL Source Code | Verilog implementation of basic logic gates, MUX, and Adders. |
| **Part-E** | Verification/Testbench | Stimulus generation and design validation logic. |
| **Part-F** | Mini-Project | 4-bit Ripple Carry Adder design and simulation. |
| **Part-G** | Documentation | Truth tables, simulation workflows, and architecture diagrams. |

---

##  Digital Logic Library
As part of this internship, I have developed a reusable library of digital building blocks:

- **Logic Gates:** AND, OR, XOR.
- **Data Selection:** 2:1 Multiplexer.
- **Arithmetic Circuits:** Half Adder, Full Adder.
- **Complex Logic:** 4-bit Ripple Carry Adder.

*Each module is verified using dedicated testbenches and GTKWave simulations to ensure functional accuracy.*

---

##  Simulation Workflow
To reproduce the simulation results:

1. **Compile:**
   ```bash
   iverilog -o <output_file> <source_file>.v <testbench_file>.v
