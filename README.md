# AHB-to-APB-Bridge

## Overview
This project implements an AHB to APB Bridge using Verilog HDL. The bridge converts high-speed AHB transactions into low-power APB transactions while maintaining protocol compatibility.

## Features
- AHB Slave Interface
- APB Controller
- FSM-Based Design
- Read Transactions
- Write Transactions
- Verilog HDL Implementation
- Functional Verification using Testbench

## Project Structure

AHB-to-APB-Bridge
│
├── RTL/
│ ├── ahb_slave_interface.v
│ ├── apb_controller.v
│ ├── bridge_fsm.v
│ └── bridge_top.v
│
├── Verification/
│ └── bridge_tb.v
│
├── Docs/
│ ├── Report.pdf
│ └── Block_Diagram.png
│
├── Results/
│ └── Waveforms
│
└── README.md

## Block Diagram
(Add block diagram image here)

## FSM States
- IDLE
- READ
- WRITE
- WRITEP
- RENABLE
- WENABLE
- WENABLEP

## Simulation
The design was verified using a Verilog testbench and waveform analysis.

## Tools Used
- Verilog HDL
- ModelSim / Vivado
- GitHub

## Applications
- AMBA-Based SoC Design
- Embedded Systems
- Digital VLSI Design

## Author
Tanvi Saharan
B.Tech Electronics and Computer Engineering
