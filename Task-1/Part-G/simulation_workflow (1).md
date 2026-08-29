# Simulation Workflow — Part G

Tools used: **Icarus Verilog** (compiler/simulator) + **GTKWave** (waveform viewer), run from the Linux/WSL terminal, matching the files already in `Task-1/PartE/testbench/` and `Task-1/PartF/`.

## Workflow Overview

```
Write RTL (.v) → Write Testbench (.v) → Compile (iverilog) → Run (vvp) → View Waveform (gtkwave) → Compare vs Truth Table
```

## Step-by-Step

**1. Write the RTL module**
Source files already exist in `Task-1/partD/src/` (`and_gate.v`, `or_gate.v`, `xor_gate.v`, `mux2_1.v`, `halfadd.v`, `fulladd.v`) and `Task-1/PartF/bit4rippleadder.v`.

**2. Write the testbench**
Testbenches already exist in `Task-1/PartE/testbench/` (`and_gate_tb.v`, `or_tb.v`, `xor_gatetb.v`, `mux2_1tb.v`, `halfadd_tb.v`, `fulladd_tb.v`) and `Task-1/PartF/bit4rippleadder_tb.v`. Each testbench:
- Declares `reg` for DUT inputs, `wire` for DUT outputs
- Instantiates the design under test (DUT)
- Uses an `initial` block to apply stimulus with `#delay` timing
- Uses `$dumpfile` / `$dumpvars` to generate a `.vcd` waveform file
- Uses `$monitor` to print signal values to the console for a quick sanity check

**3. Compile with Icarus Verilog**
```bash
iverilog -o build/fulladd_test.out Task-1/partD/src/fulladd.v Task-1/PartE/testbench/fulladd_tb.v
```
This compiles the DUT + testbench into a single simulation executable.

**4. Run the simulation**
```bash
vvp build/fulladd_test.out
```
This executes the compiled simulation, prints the `$monitor` output to the terminal, and generates the `.vcd` waveform dump file (e.g. `fulladd.vcd`).

**5. View waveform in GTKWave**
```bash
gtkwave fulladd.vcd
```
- Add signals (`a`, `b`, `cin`, `sum`, `carry`) to the waveform pane
- Step through time and visually confirm each transition matches the truth table
- Screenshots of these waveforms already exist in `Task-1/PartE/waveform/` (`and_gate.png`, `or.png`, `xor_gate.png`, `halfadd_waveform.png`, `fulladd_waveform.png`, `mux2_1.png`) and `Task-1/PartF/bit4rippleadder.png`

**6. Compare against expected values**
Cross-check the `$monitor` console output and the GTKWave waveform against the truth tables in `truth_tables.md`. For the ripple carry adder, compare against the 16 test vectors documented there (matches `bit4rippleadder_tb.v`).

## Example: 4-bit Ripple Carry Adder

```bash
iverilog -o build/bit4rippleadder.out Task-1/PartF/bit4rippleadder.v Task-1/PartF/bit4rippleadder_tb.v
vvp build/bit4rippleadder.out
gtkwave bit4rippleadder.vcd
```
Expected console output format (from the `$monitor` statement in the testbench):
```
A =0000 B =0000 cin =0 Sum = 0000 carry =0
A =0000 B =0001 cin =0 Sum = 0001 carry =0
...
```

## Summary Table

| Stage | Tool | Command |
|-------|------|---------|
| Compile | Icarus Verilog | `iverilog -o <out> <design.v> <tb.v>` |
| Simulate | vvp | `vvp <out>` |
| View waveform | GTKWave | `gtkwave <dump>.vcd` |
| Verify | Manual / truth table comparison | Compare console + waveform vs `truth_tables.md` |
