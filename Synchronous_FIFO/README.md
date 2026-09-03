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
## RTL Implementation

The FIFO uses:

- `wr_ptr` to identify the memory location for the next write.
- `rd_ptr` to identify the memory location for the next read.
- `mem` as the FIFO storage.
- `full` to prevent writing when the FIFO is full.
- `empty` to prevent reading when the FIFO is empty.

### Write Operation

```verilog
if (wr_en && !full)
    mem[wr_ptr] <= data_in;
Read Operation
if (rd_en && !empty)
    data_out <= mem[rd_ptr];

The design performs both operations synchronously at the rising edge of the clock.

Reset Operation

When rst is asserted, the design resets:

Write pointer
Read pointer
Output data
FIFO memory contents

After reset, the FIFO starts in the empty state.

wr_ptr    = 0
rd_ptr    = 0
data_out  = 0
empty     = 1
full      = 0
Verification

A Verilog testbench was developed to verify the basic FIFO operation.

The testbench provides:

Clock generation
Reset control
Write enable control
Read enable control
Input data stimulus
Output monitoring
Full/empty flag monitoring
VCD waveform generation
Test Sequence

The current simulation performs the following sequence:

Apply reset
Write data = 5
Write data = 10
Disable write operation
Enable read operation
Read the first FIFO data
Expected FIFO Behavior
Write 5
   ↓
Write 10
   ↓
Read
   ↓
data_out = 5
Simulation Results

The design was successfully compiled and simulated using QuestaSim.

Errors   : 0
Warnings : 0

The simulation confirms that the first value written into the FIFO (5) is returned first during the read operation, demonstrating the FIFO's First-In First-Out behavior.

Simulation Log
sim time=15, clk=1, rst=0, wr_en=1, rd_en=0,
data_in=5, data_out=0, full=0, empty=0

sim time=25, clk=1, rst=0, wr_en=1, rd_en=0,
data_in=10, data_out=0, full=0, empty=0

sim time=45, clk=1, rst=0, wr_en=0, rd_en=1,
data_in=10, data_out=5, full=0, empty=0
Waveform

The waveform shows:

Clock operation
Synchronous reset
Write enable
Read enable
Input data
Output data
Full flag
Empty flag

The waveform demonstrates the write of 5, followed by 10, and the subsequent read of 5.

Files
Synchronous_FIFO/
│
├── Synchronous_FIFO_design.v
├── Synchronous_FIFO_tb.v
├── waveform.png
├── simulation_output.png
└── README.md
Synchronous_FIFO_design.v

Contains the RTL implementation of the synchronous FIFO.

Synchronous_FIFO_tb.v

Contains the simulation stimulus, clock/reset generation, monitoring, and waveform dump.

![FIFO Simulation Waveform](waveform.png)

Contains the RTL simulation waveform showing FIFO read/write activity and status signals.

![FIFO Simulation Output](simulation_output.png)

Contains the QuestaSim simulation output showing successful compilation and simulation.

Tools & Technologies
Verilog HDL
QuestaSim
EDA Playground
RTL Simulation
Waveform Debugging
Key Concepts Demonstrated
Synchronous FIFO
RTL Design
Sequential Logic
Memory Arrays
Read/Write Pointers
Clocked Operations
Reset Logic
Full/Empty Detection
RTL Simulation
Waveform Analysis
Future Improvements

The following features can be added in future versions:

Parameterized data width and FIFO depth
Dedicated overflow and underflow testing
Simultaneous read/write testing
Extended constrained-random verification
Functional coverage
Synthesis using Xilinx Vivado
FPGA implementation and timing analysis
