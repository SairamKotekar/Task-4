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

## 1. Moore FSM

A Moore FSM is a Finite State Machine in which the output depends only on the current state.

The implemented Moore FSM contains three states:

```text
S0 → S1 → S2 → S0
```

After reset, the FSM starts from State S0. On every positive edge of the clock, the FSM moves to the next state.

The state sequence is:

```text
S0 → S1
S1 → S2
S2 → S0
```
The waveform confirms that the FSM follows the expected state transitions.

### Files

```text
moore_fsm.v
moore_fsm_tb.v
```


## 2. Mealy FSM

A Mealy FSM is a Finite State Machine in which the output depends on both the current state and the input.

The implemented Mealy FSM uses two states:

```text
S0 and S1
```

The important output condition is:

```text
Current State = S1
Input = 1
Output = 1
```

The state transitions are:

```text
S0 + 0 → S0
S0 + 1 → S1
S1 + 0 → S0
S1 + 1 → S1
```
When the FSM reaches State S1 and the input is 1, the output becomes HIGH. The waveform verifies the expected state and output behavior.

### Files

```text
mealy_fsm.v
mealy_fsm_tb.v
```


## 3. Traffic Light Controller

The Traffic Light Controller is a practical application of an FSM. It contains three states representing the three traffic light conditions.

The sequence is:

```text
RED → GREEN → YELLOW → RED
```

### State and Output Mapping

```text
S0 → RED    → 3'b100
S1 → GREEN  → 3'b001
S2 → YELLOW → 3'b010
```
After reset, the controller starts in the RED state. It then changes to GREEN, followed by YELLOW, and finally returns to RED.

The controller continuously repeats this cycle.

### State Flow

```text
        Reset
          ↓
      S0 (RED)
          ↓
     S1 (GREEN)
          ↓
    S2 (YELLOW)
          ↓
      S0 (RED)
```
The EPWave waveform confirms the correct cyclic operation of the traffic light controller.

### Files

```text
traffic_light.v
traffic_light_tb.v
```


## 4. 1011 Sequence Detector

The Sequence Detector is designed to detect the serial binary pattern:

```text
1011
```
The FSM uses four states to track the received portion of the sequence.

### State Description

```text
S0 → No match
S1 → 1
S2 → 10
S3 → 101
```

The state progression is:

```text
S0 → S1 → S2 → S3
```

When the FSM is in State S3 and receives the final input 1, the complete sequence 1011 is detected.

The output becomes:

```text
detected = 1
```
The design also supports overlapping sequence detection by returning to State S1 after detection.

### Example

For the input:

```text
1 0 1 1
```

the FSM progresses as:

```text
S0 → S1 → S2 → S3 → Detection
```
The EPWave waveform verifies that the detected signal becomes HIGH when the complete 1011 pattern is received.

### Files

```text
sequence_detector.v
sequence_detector_tb.v
```



# Waveform Verification

All four designs were simulated using EDA Playground and analyzed using EPWave.

The waveforms were compared with the corresponding:

```text
Verilog RTL Code
       ↓
State Diagram
       ↓
Expected Output
       ↓
Actual Waveform
```
The simulation results confirm the expected behavior of the FSM designs.


# Testbench Verification


## 🔄 Design and Verification Flow

```text
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
```

```text
# Conclusion

The four FSM-based RTL designs — Moore FSM, Mealy FSM, Traffic Light Controller, and 1011 Sequence Detector — were successfully implemented using Verilog HDL.

Each design was verified using a dedicated testbench and EPWave simulation. The observed waveforms were checked against the corresponding state diagrams and RTL code.

This task provided practical experience in FSM design, Verilog RTL implementation, testbench development, simulation, and waveform-based verification, strengthening my understanding of digital and VLSI design concepts.
```



