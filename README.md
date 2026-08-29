# Verilog Digital Design

A structured collection of **Verilog HDL RTL designs** covering fundamental digital electronics concepts, combinational logic, sequential circuits, FSMs, counters, shift registers, and practical logic applications.

This repository demonstrates my understanding of **digital logic design, Verilog HDL, RTL coding, simulation, and waveform analysis**.

---

## 📌 Repository Overview

The repository contains Verilog RTL implementations and testbenches for commonly used digital design concepts.

### Topics Covered

- Combinational Logic
- Sequential Logic
- Adders and Subtractors
- Comparators
- Multiplexers
- Decoders
- Encoders
- Code Converters
- Flip-Flops
- Latches
- Counters
- Shift Registers
- Finite State Machines (FSM)
- Logic Applications

---

## 📂 Project Structure

| Folder | Description |
|--------|-------------|
| `Adders and Subtractors` | Half Adder, Full Adder, Half Subtractor, Full Subtractor and related designs |
| `Code_Converters` | Binary, Gray, BCD and other code conversion circuits |
| `Comparators` | Digital magnitude comparator designs |
| `Counter` | Counter implementations using sequential logic |
| `Decoders` | Decoder circuits with different input/output configurations |
| `Encoders/4X2_encoder` | Encoder and priority encoder implementations |
| `FSM` | Finite State Machine designs including sequence detectors |
| `FlipFlops` | D, JK, T and SR flip-flop implementations |
| `Latches` | SR and D latch implementations |
| `Logic_Applications/prime_detector_3bit` | 3-bit prime number detector |
| `Multiplexers` | 2:1, 4:1 and other multiplexer implementations |
| `Shift_Registers` | SISO, SIPO, PISO and PIPO shift registers |

---

## 🧩 Design Categories

### 1. Combinational Circuits

Circuits where the output depends only on the current inputs.

Examples:

- Adders
- Subtractors
- Multiplexers
- Decoders
- Encoders
- Comparators
- Code Converters
- Prime Number Detector

---

### 2. Sequential Circuits

Circuits that use memory elements and depend on previous states.

Examples:

- Latches
- Flip-Flops
- Counters
- Shift Registers

---

### 3. Finite State Machines

FSM designs implemented using Verilog HDL.

Topics include:

- Moore FSM
- Mealy FSM
- Sequence Detectors
- Overlapping Sequence Detection

#### Example: 1010 Sequence Detector

A Moore FSM is implemented to detect the sequence:

```text
1010
