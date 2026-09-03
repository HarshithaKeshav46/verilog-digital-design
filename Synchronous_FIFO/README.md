# Synchronous FIFO Design & Verification using Verilog HDL

## Overview

This project implements a synchronous First-In First-Out (FIFO) memory using Verilog HDL. The FIFO uses a single clock for both read and write operations and includes read/write pointer-based control logic along with full and empty status flags.

The design was simulated and verified using QuestaSim.

---

## Design Specifications

| Parameter | Description |
|-----------|-------------|
| Data Width | 8 bits |
| Memory Size | 8 locations |
| Clock | Single synchronous clock |
| Reset | Active-high synchronous reset |
| Write Enable | `wr_en` |
| Read Enable | `rd_en` |
| Data Input | `data_in[7:0]` |
| Data Output | `data_out[7:0]` |
| Status Flags | `full`, `empty` |
| HDL | Verilog HDL |
| Simulation Tool | QuestaSim |

---

## FIFO Architecture

The FIFO consists of:

- 8-bit wide memory array
- Write pointer
- Read pointer
- Write control logic
- Read control logic
- Full status detection
- Empty status detection
- Synchronous reset logic

### Basic Operation

```text
                 +----------------------+
data_in -------->|                      |
wr_en ---------->|    WRITE CONTROL     |
                 |          |           |
                 |          v           |
                 |       Memory         |
                 |          |           |
                 |          ^           |
rd_en ---------->|    READ CONTROL      |
                 |                      |
                 +----------------------+
                       |          |
                      full      empty
```

