# AHB to APB Bridge

## Overview

This project implements an AHB to APB Bridge using Verilog HDL. The bridge converts high-speed AHB transactions into APB transactions, allowing communication between an AHB master and APB peripherals in an AMBA-based system.

The design consists of separate modules for the AHB interface, APB interface, address decoding, and finite state machine (FSM) control. Functional verification was performed using a Verilog testbench in Xilinx Vivado.

---

## Features

- AHB to APB protocol conversion
- Address decoding for peripheral selection
- FSM-based transaction control
- Read transaction support
- Write transaction support
- Modular RTL design in Verilog HDL
- Functional verification using simulation

---

## Project Structure

```text
AHB-to-APB-Bridge
│
├── Docs
│   └── ahb to apb bridge.pdf
│
├── RTL
│   ├── ahb_apb_bridge.v
│   ├── ahb_bus.v
│   ├── apb_bus.v
│   ├── decoder.v
│   └── fsm.v
│
├── Verification
│   └── testbench.v
│
├── Results
│   ├── waveform1.jpeg
│   └── waveform2.jpeg
│
└── README.md
```

---

## Module Description

### ahb_apb_bridge.v

Top-level module that connects all submodules and performs AHB-to-APB transaction conversion.

### ahb_bus.v

Handles AHB-side signals such as address, transfer type, write control, and transaction requests.

### apb_bus.v

Generates APB control signals including PADDR, PWRITE, PENABLE, and PSEL required for APB communication.

### decoder.v

Decodes the incoming address and selects the appropriate APB peripheral using select signals.

### fsm.v

Implements the bridge control logic using a finite state machine. It controls the sequence of read and write operations between AHB and APB interfaces.

### testbench.v

Used for functional verification of the bridge by generating different read and write transactions and observing the outputs.

---

## Working of the Bridge

1. AHB master initiates a read or write transaction.
2. Address and control information are captured by the bridge.
3. Decoder identifies the target APB peripheral.
4. FSM moves through appropriate states to control data transfer.
5. APB signals are generated.
6. Read or write operation is completed.
7. Response is returned to the AHB side.

---

## Simulation Results

### Waveform 1

![Waveform 1](Results/WhatsApp%20Image%202026-05-21%20at%2015.29.41.jpeg)

### Waveform 2

![Waveform 2](Results/WhatsApp%20Image%202026-05-21%20at%2015.26.24.jpeg)

---

## Documentation

📄 [Project Report](Docs/ahb%20to%20apb%20bridge.pdf)

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- GitHub

---

## Author

**Tanvi Saharan**
B.Tech Electronics and Computer Engineering
