# Task 1 – Digital Electronics Fundamentals, Linux Environment Setup, Verilog HDL Programming, Simulation Workflow, and Basic Digital Circuit Design

## Sumerix Global VLSI Internship

This folder contains all work completed for **Task 1** of the Industry-Oriented Internship Program on VLSI Design and Semiconductor Engineering.

Task 1 covers the foundational concepts required before moving into RTL and sequential design — including semiconductor fundamentals, digital electronics, Linux environment setup, Verilog HDL, testbench development, simulation, waveform verification, and a mini project.

📄 For the complete, detailed project report, see: **[PROJECT_REPORT.md](./PROJECT_REPORT.md)**

---

## 📁 Repository Structure

| Part | Description | Status |
|------|-------------|--------|
| [Part-A](./Part-A/) | Semiconductor & VLSI Fundamentals — ASIC vs FPGA | ✅ Complete |
| [Part-B](./Part-B/) | Digital Electronics — Boolean algebra, logic gates, truth tables, K-Maps (PDF) | ✅ Complete |
| [partc](./partc/) | Linux Environment Setup — shell commands, tool installation | ✅ Complete |
| [partD](./partD/) | Verilog HDL Fundamentals — gates, MUX, Half/Full Adder (RTL source) | ✅ Complete |
| [PartE](./PartE/) | Testbenches + GTKWave waveform verification | ✅ Complete |
| [PartF](./PartF/) | Mini RTL Design — 4-bit Ripple Carry Adder | ✅ Complete |
| [Part-G](./Part-G/) | Engineering Documentation — diagrams, truth tables, simulation workflow | ✅ Complete |
| [Part-H](./Part-H/) | Mini Project — Digital Arithmetic Logic Circuit Library | ✅ Complete |
| [Daily Progress Log](./Daily%20Progress%20Log/) | Day-wise record of work completed | ✅ Complete |
| [PROJECT_REPORT.md](./PROJECT_REPORT.md) | Full consolidated Task 1 project report | ✅ Complete |

---

## 🎯 Objective

To build a strong foundation in:
- Semiconductor industry and VLSI design flow
- Digital electronics fundamentals (Boolean algebra, logic gates, K-Maps)
- Linux-based development environment
- Verilog HDL programming
- Testbench development and simulation
- Waveform-based functional verification
- RTL design of basic combinational circuits

---

## 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| Verilog HDL | Hardware description language |
| Icarus Verilog | Compilation and simulation |
| GTKWave | Waveform viewing and analysis |
| Visual Studio Code | Code editor for Verilog |
| Ubuntu / WSL | Linux development environment |
| Git & GitHub | Version control |
| draw.io | Logic and RTL block diagrams |

---

## ⚙️ How to Run the Simulations

```bash
# Compile design + testbench
iverilog -o sim design.v testbench.v

# Run simulation
vvp sim

# View waveform
gtkwave output.vcd
```

Example for the Part-H mini project:

```bash
iverilog -o sim.vvp tb_digital_logic_library.v logic_gates.v halfadder.v fulladder.v mux4_1.v ripplecarry.v
vvp sim.vvp
gtkwave digital_logic_library.vcd
```

---

## 📦 Deliverables Checklist

- [x] Verilog source files
- [x] Testbench files
- [x] Simulation output
- [x] GTKWave screenshots
- [x] Logic gate diagrams
- [x] Truth tables
- [x] Karnaugh Map solutions (included in Part-B PDF)
- [x] RTL block diagram (4-bit Ripple Carry Adder)
- [x] Engineering documentation
- [x] Linux command practice
- [x] Daily progress log
- [x] GitHub repository with organized structure
- [x] README.md
- [x] Consolidated Project Report (PROJECT_REPORT.md)

---

## 🧩 Mini Project Highlight

**Digital Arithmetic Logic Circuit Library Using Verilog HDL** (Part-H)

A reusable RTL library containing:
- Basic Logic Gates
- Half Adder
- Full Adder
- 4:1 Multiplexer
- 4-bit Ripple Carry Adder
- Complete Testbench with GTKWave verification

📂 View here: [Part-H](./Part-H/)

---

## ✅ Task Status

**Task 1: Completed**

All required sections (Part A–H), simulation results, documentation, and the mini project have been completed and verified. Full details are available in [PROJECT_REPORT.md](./PROJECT_REPORT.md).

---

## 👨‍💻 Author

**Gopika Sujana**  
Sumerix Global VLSI Internship  
GitHub: [@gopikasujana](https://github.com/gopikasujana)

