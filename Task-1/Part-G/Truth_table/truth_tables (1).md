# Truth Tables — Part G

Repo: `Sumerix-Global-VLSI-Internship`
Source modules: `Task-1/partD/src/`, `Task-1/PartF/bit4rippleadder.v`

> Note: In this project's implementation, `or_gate` and `xor_gate` are coded as
> **3-input** gates (`a, b, c`), not the usual 2-input textbook version. The
> tables below match the actual RTL, `assign y = a | b | c;` and
> `assign y = a ^ b ^ c;`, so they are accurate to the code you simulated.

---

## 1. AND Gate — `and_gate.v`
`assign y = a & b;`

| a | b | y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

---

## 2. OR Gate (3-input) — `or_gate.v`
`assign y = a | b | c;`

| a | b | c | y |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 1 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 |

---

## 3. XOR Gate (3-input) — `xor_gate.v`
`assign y = a ^ b ^ c;` (odd-parity function)

| a | b | c | y |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 |

---

## 4. 2:1 Multiplexer — `mux2_1.v`
`assign y = s ? i[1] : i[0];`

| s | i[1] | i[0] | y |
|---|------|------|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 |

(When `s=0`, output follows `i[0]`. When `s=1`, output follows `i[1]`.)

---

## 5. Half Adder — `halfadd.v`
`sum = a ^ b;  carry = a & b;`

| a | b | sum | carry |
|---|---|-----|-------|
| 0 | 0 | 0   | 0     |
| 0 | 1 | 1   | 0     |
| 1 | 0 | 1   | 0     |
| 1 | 1 | 0   | 1     |

---

## 6. Full Adder — `fulladd.v`
`sum = a^b^cin;  carry = (a&b) | (b&cin) | (cin&a);`

| a | b | cin | sum | carry |
|---|---|-----|-----|-------|
| 0 | 0 | 0   | 0   | 0     |
| 0 | 0 | 1   | 1   | 0     |
| 0 | 1 | 0   | 1   | 0     |
| 0 | 1 | 1   | 0   | 1     |
| 1 | 0 | 0   | 1   | 0     |
| 1 | 0 | 1   | 0   | 1     |
| 1 | 1 | 0   | 0   | 1     |
| 1 | 1 | 1   | 1   | 1     |

---

## 7. 4-bit Ripple Carry Adder — `bit4rippleadder.v`
Built from 4 instances of `fulladder1` (internal module inside the same file), chained via carry `c[1:3]`.

Exhaustive truth table has 2⁹ = 512 rows, so instead here are the **exact 16 test vectors** used in `bit4rippleadder_tb.v`, with expected results (computed as `a + b + cin`):

| a (4-bit) | b (4-bit) | cin | Expected Sum (4-bit) | Expected Carry-out |
|-----------|-----------|-----|-----------------------|----------------------|
| 0000 | 0000 | 0 | 0000 | 0 |
| 0000 | 0001 | 0 | 0001 | 0 |
| 0001 | 0000 | 0 | 0001 | 0 |
| 0001 | 0001 | 0 | 0010 | 0 |
| 1000 | 1000 | 0 | 0000 | 1 |
| 1001 | 1000 | 0 | 0001 | 1 |
| 1000 | 1001 | 0 | 0001 | 1 |
| 1001 | 1001 | 0 | 0010 | 1 |
| 0000 | 0000 | 1 | 0001 | 0 |
| 0000 | 0001 | 1 | 0010 | 0 |
| 0001 | 0000 | 1 | 0010 | 0 |
| 0001 | 0001 | 1 | 0011 | 0 |
| 1000 | 1000 | 1 | 0001 | 1 |
| 1001 | 1000 | 1 | 0010 | 1 |
| 1000 | 1001 | 1 | 0010 | 1 |
| 1001 | 1001 | 1 | 0011 | 1 |


