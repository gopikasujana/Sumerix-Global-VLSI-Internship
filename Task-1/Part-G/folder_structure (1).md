# Project Folder Structure — Part G

## Actual current structure of `Sumerix-Global-VLSI-Internship`

```
Sumerix-Global-VLSI-Internship/
├── README.md
├── Part-D-Verilog/            # (placeholder, empty)
├── Part-E/                    # (placeholder, empty)
├── Part-F/                    # (placeholder, empty)
└── Task-1/                    # ← actual working content lives here
    ├── Part-A/
    │   ├── README.md
    │   └── ASIC-vs-FPGA.md
    ├── Part-B/
    │   ├── README.md
    │   └── task1partbintership1.pdf
    ├── Part-C-Linux-Environment-Setup.pdf
    ├── partD/
    │   └── src/
    │       ├── and_gate.v
    │       ├── or_gate.v
    │       ├── xor_gate.v
    │       ├── mux2_1.v
    │       ├── halfadd.v
    │       └── fulladd.v
    ├── PartE/
    │   ├── testbench/
    │   │   ├── and_gate_tb.v
    │   │   ├── or_tb.v
    │   │   ├── xor_gatetb.v
    │   │   ├── mux2_1tb.v
    │   │   ├── halfadd_tb.v
    │   │   └── fulladd_tb.v
    │   └── waveform/
    │       ├── and_gate.png
    │       ├── or.png
    │       ├── xor_gate.png
    │       ├── halfadd_waveform.png
    │       ├── fulladd_waveform.png
    │       └── mux2_1.png
    ├── PartF/
    │   ├── bit4rippleadder.v
    │   ├── bit4rippleadder_tb.v
    │   └── bit4rippleadder.png
    └── PartG/                 # ← ADD THIS (new, this deliverable)
        ├── README.md
        ├── truth_tables.md
        ├── simulation_workflow.md
        ├── folder_structure.md
        ├── logic_gate_diagrams.svg
        └── rtl_block_diagram.svg
```

## Notes / cleanup recommendations

1. **Naming is inconsistent** — some folders use `Part-D-Verilog`, some `partD`, some `PartE`/`PartF` (no dash), and there are duplicate empty placeholder folders (`Part-D-Verilog`, `Part-E`, `Part-F`) alongside the real content under `Task-1/`. For Part G, keep the same naming style as `PartE` / `PartF` (i.e. `PartG`, no dash) so the structure stays consistent, and consider deleting the empty top-level placeholder folders in a later cleanup commit.
2. **Put Part G directly under `Task-1/`**, alongside `PartE` and `PartF`, since that's where your real work lives.
3. Going forward for Part H / the capstone, keep using `src/`, `testbench/` (or `tb/`), and `waveform/` sub-folders — this is what most VLSI/RTL job workflows expect (source, testbench, and simulation output kept apart).

## Commands to create this structure locally

```bash
mkdir -p Task-1/PartG
cd Task-1/PartG
touch README.md truth_tables.md simulation_workflow.md folder_structure.md
# copy the SVG diagrams into this folder too
```
