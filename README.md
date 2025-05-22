# Digital Logic Circuits Basics

This repository contains a collection of digital logic circuits and related components. These are fundamental building blocks for digital systems, widely used in hardware design and digital electronics. Below is an overview of the key components and circuits included.

## Table of Contents
- [Introduction](/Introduction)
- [Circuit Components](/Circuit_Components)
  - [Arithmetic Circuits](/Circuit_Components/Arithmetic_Circuits)
  - [Combinational Circuit Building Blocks](/Circuit_Components/Combinational_Circuit)
  - [Counters](/Circuit_Components/Counters)
  - [Counters Applications](/Circuit_Components/Counters_Application)
  - [Sequential Elements](/Circuit_Components/Sequential_Blocks)
  - [Finite State Machines (FSMs)](/Circuit_Components/Finite_State_Machine)
  - [Finite State Machine Applications](/Circuit_Components/Finite_State_Machine_Applications)

## Introduction

This repository serves as a resource for digital circuits' main components. The circuits are described using Verilog hardware description language (HDL). The repository includes a range of combinational and sequential logic circuits essential for constructing complex digital systems.

## Circuit Components

### Arithmetic Circuits
- Adders (Half & Full)
- Subtractors (Half & Full)
- 4-Bit Ripple Carry Adder
- Carry Look Ahead Adder
- 4-Bit Adder Subtractor
- Array Multiplier
- Booth Multiplier
- Wallace Tree Multiplier

### Combinational Circuit Building Blocks

*Multiplexers*
- 2-to-1 Multiplexer
- 4-to-1 Multiplexer
- 4-to-1 Multiplexer using 2-to-1 Multiplexer
- 3-to-1 Multiplexer

*Demultiplexer*
- 1-to-2 Demultiplexer
- 1-to-4 Demultiplexer
- 1-to-4 Demultiplexer using 1-to-2 Demultiplexer

*Encoders*
- 4-to-2 Encoder
- Priority Encoder
- Generic Encoder

*Decoders*
- 2-to-4 Decoder
- N:2^N Decoder

*Comparator*
- 2-Bit Comparator

  
### Sequential Elements
- D Flip-Flop with Asynchronous Reset
- D Flip-Flop with Synchronous Reset
- SR Latch
- D Latch
- JK Flip Flop
- T Flip Flop
- Shift Registers

### Counters
- Synchronous Counters
- Asynchronous Counters
- Up/Down Counters
- Mod Counter

### Counters Applications
- PWM Signal Generation
- Linear Feedback Shift Register (LFSR)

## Finite State Machines (FSMs)

Finite State Machines are a crucial concept in sequential logic design, useful in numerous applications like control systems and sequence detection.

## Finite State Machine Applications
- Traffic Light Controllers
- Mealy Sequence Detector
- Moore Sequence Detector
- Synchronous FIFO
- Asynchronous FIFO

## Minor Projects
- CRC Check
- I2C Master and Slave
- SPI Master and Slave
- BILBO
- CBILBO
- Hamming Encoder
- Radix 2 FFT
