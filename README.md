# Verilog-CEGSC

First hands-on experience with Verilog HDL, written during a workshop session at the University of Ottawa Computer Engineering Student Game Club (CEGSC).
Targets a 50 MHz FPGA development board.

---

## Modules

### `TEST1_Blinker.v` — Parameterized LED Blinker
Blinks 8 LEDs at a configurable rate using clock division.

- Fully parameterized: set `CLK_FREQ` and `BLINK_HZ` at instantiation
- Synchronous active-high reset
- Default: 50 MHz clock, 1 Hz blink rate

**Key concepts:** clock dividers, synchronous reset, `localparam`

---

### `TEST2_ColorCycler.v` — RGB LED Color Cycler
Cycles an active-low RGB LED through Red → Orange → Purple
using a 2-bit FSM and a 26-bit counter (~0.5s per state at 50 MHz).

**Key concepts:** finite state machines, combinational `always @(*)` blocks, active-low GPIO logic

---
