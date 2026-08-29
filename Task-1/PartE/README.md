# Part E – Simulation and Waveform Verification

## Objective

The objective of Part E is to verify the functionality of the Verilog RTL modules developed in the previous stages through simulation and waveform analysis.

The designs were simulated using **Icarus Verilog**, and the resulting signal waveforms were analyzed using **GTKWave**.

---

## Simulation Flow

The verification process follows the workflow:

**Verilog RTL → Testbench → Icarus Verilog → Simulation → GTKWave → Waveform Analysis**

The testbench provides different input combinations to the Design Under Test (DUT). The simulation output is then examined using GTKWave to verify that the observed outputs match the expected logic behavior.

---

## Waveform Results

### 1. AND Gate

The AND gate was simulated with different input combinations. The waveform verifies that the output becomes HIGH only when both inputs are HIGH.

![AND Gate Waveform](and_gate.png)

---

### 2. OR Gate

The OR gate was simulated with different input combinations. The waveform verifies that the output becomes HIGH when at least one input is HIGH.

![OR Gate Waveform](or.png)

---

### 3. XOR Gate

The XOR gate was simulated with different input combinations. The waveform verifies that the output becomes HIGH when the two inputs are different.

![XOR Gate Waveform](xor_gate.png)

---

### 4. 2:1 Multiplexer

The 2:1 Multiplexer was simulated using different input and select-line combinations. The waveform verifies that the selected input is correctly transferred to the output.

![2:1 Multiplexer Waveform](mux2_1.png)

---

### 5. Half Adder

The Half Adder was simulated for different combinations of the two input bits. The waveform verifies the correct **Sum** and **Carry** outputs.

![Half Adder Waveform](halfadd_waveform.png)

---

### 6. Full Adder

The Full Adder was simulated with different combinations of the two input bits and carry input. The waveform verifies the correct **Sum** and **Carry-out** outputs.

![Full Adder Waveform](fulladd_waveform.png)

---

## Verification Summary

| Circuit | Verification Method | Result |
|---|---|---|
| AND Gate | Icarus Verilog + GTKWave | Verified |
| OR Gate | Icarus Verilog + GTKWave | Verified |
| XOR Gate | Icarus Verilog + GTKWave | Verified |
| 2:1 Multiplexer | Icarus Verilog + GTKWave | Verified |
| Half Adder | Icarus Verilog + GTKWave | Verified |
| Full Adder | Icarus Verilog + GTKWave | Verified |

---

## Tools Used

- **Verilog HDL** – RTL design
- **Icarus Verilog** – Compilation and simulation
- **GTKWave** – Waveform visualization and analysis
- **Ubuntu / WSL** – Linux development environment
- **GitHub** – Version control and project documentation

---

## Conclusion

The simulation results provide functional verification of the implemented digital circuits. The GTKWave waveforms were analyzed to confirm that the outputs respond correctly to the applied input combinations.

This simulation and verification process demonstrates the basic RTL development workflow used in digital hardware design.
