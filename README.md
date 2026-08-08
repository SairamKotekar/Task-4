# VLSI Design Internship – Task 4

## FSM Design, RTL Implementation and Waveform Verification

This repository contains the work completed for **Task 4 of the VLSI Design Internship**.

The task focuses on designing and verifying different **Finite State Machines (FSMs)** using Verilog HDL. Each design was implemented using RTL coding, tested using a Verilog testbench, simulated on EDA Playground, and verified using EPWave waveforms.

---

## 📌 Objectives

The main objectives of this task are:

- Design Finite State Machines using Verilog HDL.
- Implement RTL designs for different FSM applications.
- Develop suitable Verilog testbenches.
- Create and verify state diagrams.
- Simulate the designs using EDA Playground.
- Analyze simulation waveforms using EPWave.
- Verify that the RTL code, state diagrams and waveforms are consistent.

---

## 🛠️ Tools Used

- **Verilog HDL**
- **EDA Playground**
- **EPWave**
- **RTL Design**
- **Finite State Machines**
- **Digital Logic Design**

---

## 📂 Repository Structure

```text
Task-4/
│
├── state diagrams/
│   ├── mealy_fsm.png
│   ├── moore_fsm.png
│   ├── sequence_detector.png
│   └── traffic_light.png
│
├── waveforms/
│   ├── mealy_fsm.png
│   ├── moore_fsm.png
│   ├── sequence_detector.png
│   └── traffic_light.png
│
├── mealy_fsm.v
├── mealy_fsm_tb.v
├── moore_fsm.v
├── moore_fsm_tb.v
├── sequence_detector.v
├── sequence_detector_tb.v
├── traffic_light.v
└── traffic_light_tb.v
```

In this task, I implemented and verified four different Finite State Machine (FSM) based RTL designs using Verilog HDL. Each design was developed using a state diagram, Verilog RTL code, testbench, and EPWave waveform simulation.

1. Moore FSM
   A Moore FSM is an FSM in which the output depends only on the current state. In this design, three states are used:
   S0 → S1 → S2 → S0
   After reset, the FSM starts at S0 and changes to the next state on every positive clock edge. The waveform verifies    the expected state transitions.

2. Mealy FSM
   A Mealy FSM is an FSM in which the output depends on both the current state and input. This design uses two states,    S0 and S1.

   The important condition is:
   S1 + input = 1 → output = 1
   When the input becomes 0, the output is cleared at the next positive clock edge and the FSM returns to S0.             The waveform confirms the state and output behavior.

3. Traffic Light Controller
   The Traffic Light Controller is a practical FSM application with three states:
   RED → GREEN → YELLOW → RED

   The state/output mapping is:
   S0 → RED → 3'b100
   S1 → GREEN → 3'b001
   S2 → YELLOW → 3'b010
   After reset, the controller starts with RED and continuously cycles through GREEN and YELLOW.
   The EPWave waveform confirms the correct cyclic operation.

5. 1011 Sequence Detector
   The Sequence Detector is designed to detect the serial binary pattern:
   1011
   
   The FSM progresses through the states:
   S0 → S1 → S2 → S3
   representing the partial pattern:
   S0 → No match
   S1 → 1
   S2 → 10
   S3 → 101
   When the next input is 1, the complete 1011 pattern is detected and detected becomes HIGH.
   The design also supports overlapping detection by returning to S1.

🔄 Design and Verification Flow
FSM Specification
       ↓
State Diagram
       ↓
Verilog RTL Design
       ↓
Testbench Development
       ↓
EDA Playground Simulation
       ↓
EPWave Waveform
       ↓
Code ↔ Diagram ↔ Waveform Verification




