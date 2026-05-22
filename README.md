# AHB to APB Bridge

## Overview
This project implements an AHB to APB Bridge using Verilog HDL. The bridge converts high-speed AHB transactions into APB transactions, enabling communication between high-performance and low-power peripherals in AMBA-based SoCs.

## Features
- AHB Slave Interface
- APB Controller
- Address Decoder
- FSM-Based Control Logic
- Read and Write Transaction Support
- Verilog RTL Implementation
- Functional Verification using Testbench

## Project Structure

RTL/
- ahb_apb_bridge.v
- ahb_bus.v
- apb_bus.v
- decoder.v
- fsm.v

Verification/
- testbench.v

## Modules

### ahb_apb_bridge
Top-level bridge module connecting AHB and APB interfaces.

### ahb_bus
Handles AHB-side transaction signals.

### apb_bus
Generates APB protocol control signals.

### decoder
Decodes incoming addresses and selects peripherals.

### fsm
Controls bridge operation through state transitions.

## Verification
The design is verified using a Verilog testbench that checks read and write transactions.

## Tools Used
- Verilog HDL
- Xilinx Vivado
- GitHub

## Author
Tanvi Saharan
B.Tech Electronics and Computer Engineering
## Simulation Results

### Waveform 1
![Waveform1](Results/WhatsApp%20Image%202026-05-21%20at%2015.29.41.jpeg)

### Waveform 2
![Waveform2](Results/WhatsApp%20Image%202026-05-21%20at%2015.26.24.jpeg)
