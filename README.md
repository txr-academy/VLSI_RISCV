# syntacore risc v scr1

The Syntacore SCR1 is a compact, open-source, RISC-V-compatible 32-bit microcontroller-class core designed primarily for deeply embedded applications, control systems, and educational uses.

The SCR1 implements the RV32I/E base integer instruction set of the RISC-V ISA, with optional standard extensions such as integer multiplication/division (M) and compressed instructions (C).

It features an in-order 2–4 stage pipeline and is designed for low power, small size (starting from around 10–11k gates), and silicon-proven reliability.

The core can be configured with optional tightly-coupled memory (TCM) of up to 64KB, an Interrupt Controller (IPIC) supporting up to 16 interrupt lines, optional debug with JTAG, and both AXI4 and AHB-Lite memory interfaces.

## Features

 Open-source (SHL license)
 
32-bit RISC-V (RV32I or RV32E base)

Optional RISC-V M extension (multiply/divide)

Optional RISC-V C extension (compressed instructions)

2–4 stage in-order pipeline

Machine privilege mode only

Optional Integrated Programmable Interrupt Controller (IPIC, up to 16 lines)

Optional Debug module (JTAG/cJTAG)

Optional Tightly-Coupled Memory (TCM, up to 64KB)

AXI4 or AHB-Lite 32-bit memory bus interface

Optional on-chip ROM/bootloader

Optional external DMA support signals

Timer/performance counters

GPIO peripheral sample (provided for integration)

UART peripheral sample (provided for integration)

Verification test suite

Software development toolkit (SDK)

Predefined configurations (MIN, BASE, MAX)

SystemVerilog source code

FPGA reference designs (Arty, Nexys4, DE10-Lite, etc.)

Extensive documentation and user manual

Supported by Verilator, GDB, QEMU, FreeRTOS, Zephyr
