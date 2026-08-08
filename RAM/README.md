# 16×8 Single-Port RAM using Verilog

## Project Description

This project implements a **16×8 Single-Port RAM** using Verilog HDL. The RAM contains **16 memory locations**, each capable of storing **8-bit data**. The design supports both write and read operations using a single port.

- Memory Size: 16 words × 8 bits
- Address Width: 4 bits
- Data Width: 8 bits
- Synchronous write operation
- Asynchronous read operation

The project includes:
- Verilog source code
- Testbench for verification
- Simulation results
- Waveform output

## Block Diagram

```
        +--------------------+
Address |                    |
------->|                    |
Data In |       RAM          |------> Data Out
------->|      16 × 8        |
 Write   |                    |
 Enable->|                    |
 Clock -->|                    |
         +--------------------+
```

## Files

- ram.v – RAM design
- ram_tb.v – Testbench
- simulation_output.txt – Simulation console output
- simulation.png – Waveform screenshot

## Software Used

- Icarus Verilog
- GTKWave
- ModelSim
- Vivado

## Compile

```bash
iverilog -o ram ram.v ram_tb.v
```

## Run

```bash
vvp ram
```

## View Waveform

```bash
gtkwave ram.vcd
```

## Applications

- Embedded Systems
- Microprocessors
- Data Storage
- FPGA Designs
- Digital Systems

## Author


