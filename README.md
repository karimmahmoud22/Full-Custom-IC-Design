# Full Custom IC Design Labs
This repository contains a series of hands-on labs designed to introduce the flow of the Full Custom IC design cycle using the Tanner EDA CAD tool. Each lab focuses on a specific aspect of IC design, from transistor characterization to layout setup.

## Lab 1: Introduction to the flow of the Full Custom IC design cycle
This lab serves as a general introductory tutorial to the Full Custom IC design cycle flow.

![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/4f69c3c8-3e29-4d69-b576-775a93d3f814)


## Lab 2: CMOS Inverter Design Schematic
The objective of this lab is to characterize the NMOS & PMOS transistors by examining the “DC Sweep Analysis” and exploring the IV behavior Simulation of NMOS & PMOS transistors.
  -  PMOS schematic:
    
      ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/401504a0-2a1d-4ea4-a319-89af4dd49426)
  - PMOS IV Characteristics:
    
      ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/73b93b9a-1204-43d2-a889-eeb995f3f503)

## Lab 3: MOS Transistor Characterization
In this experiment, We introduce the schematic design, symbol generation, and testbench creation of the CMOS inverter. We also verify inverter functionality using Transient Analysis and characterize the CMOS inverter by examining the “DC Sweep Analysis”.
  - CMOS Buffer:
    
    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/dff11610-3aba-4250-a57f-4d3ba8d2af5b)
    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/4c87bf99-19f2-498d-b168-ed27a6121ad8)
  - CMOS NAND:
    
    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/ae78c640-ed6d-4137-9fc1-a96dd72eb0cc)
    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/fa3c85e1-6f83-43c2-ac39-aa5af616f806)


## Lab 4: CMOS Inverter chain (Ring Oscillator) Design Schematic
The Objective of this lab is to combine the CMOS inverter to build and simulate the Ring Oscillator. Students will also verify the Ring Oscillator functionality using Transient Analysis and understand the Frequency-Capacitance relationship. Capacitance tuning to generate frequencies like Digital & RF frequency will also be discussed.

  - Ring Oscillator:

    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/4e70d1ad-250e-4291-8653-955d8d068ac4)
    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/22418f33-b4ca-4ce4-80b7-ef3d17d114c1)

  - Ring Oscillator After Smoothing the output:

    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/a6f51574-7b24-42c2-94c3-973a9fabcb87)
    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/2f5633cb-8ab1-4f70-9357-5432e1976d6b)


## Lab 5: Inverter Layout Setup
The objective of this lab is to build the layout for the inverter. We Place and Route (PnR) the CMOS Transistors to get the layout for the CMOS inverter and perform a Design Rules Check (DRC). We explore Layout vs Schematic (LVS) to verify layout and do Parasitic Extraction.
  - Layout of CMOS:

    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/bdcf3656-0ccc-44a2-b4f6-43805b41c1ce)

  - DRC:

    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/84de5af5-8b86-4ac3-a44c-476357944a79)

  - LVS:

    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/993042e2-e7b9-4fec-b586-146505df8a14)

  
## Lab 6: Adder Design Schematic
In this lab, We introduce the design of combinational Logic Circuits. We explore the Half Adder design and symbol generation. Full Adder design from the Half Adder symbol will be made. We also use bit stream generation to verify the addition operation.

  - Half Adder:

    - Schematic:
      ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/3c3496b0-2e64-4431-9727-605e0a4c53c8)

  - Full Adder:
    
    - Schematic:
      ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/fb938d3c-9309-4293-b59b-8d92c38ad15e)


## Lab 7: Adder Layout Setup
The objective of this lab is to build the layout of the 2-input NAND gate. Students will make Place and Route (PnR) for Adders and perform Design Rules Check (DRC). They will use Layout vs Schematic (LVS) to verify layout and do Parasitic Extraction.

  - Half Adder:

    - Schematic:
      ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/3c3496b0-2e64-4431-9727-605e0a4c53c8)

    - Layout:
      ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/0805721e-60ba-4048-a39b-b66a0b47a7d5)
      
    - DRC:
      ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/21bd72b1-4f8a-4ff4-8567-900988e1e17e)
      
    - LVS:
      ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/3b24bacc-7391-40a0-b5c7-8d06a94ee369)
      
    - pEX:
      ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/a5d1d5e8-08a0-4b96-acc9-3613b40747f8)


  - Full Adder:
    - Schematic:
      ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/fb938d3c-9309-4293-b59b-8d92c38ad15e)

    - Layout:    
      ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/dc069fee-c684-4c36-88a4-c4949180ce79)

    - DRC:
      ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/92baa261-14b8-41a9-b7c9-b4fb14ae22c3)

    - LVS:    
      ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/da6589d1-bedf-4826-9c15-7aec2b5cc929)

    - pEX:
      ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/a8fe6ddd-d23d-4ec7-9648-a6e841f0537d)


## Lab 8: D Latch Design
In this lab, we simulate the D latch. We design Sequential Logic Circuits. We explore the D Latch design and symbol generation. We also design a Flip Flop from the D Latch symbol and do Bitstream generation to verify functionality.

  - Schematic:

    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/004ed061-d297-45df-8a68-a72c3379100c)

  - TestBench:

    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/96375fa4-dd8d-4128-83db-da8fbb336d72)

  - Layout:
    
    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/c28e45cd-f1f0-4b3d-817c-dcb92d83a14e)

  - DRC:
    
    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/b4bb107f-30fa-4507-ba19-c9d9fa610a61)

  - LVS:
    
    ![image](https://github.com/karimmahmoud22/VLSI/assets/82693464/f517ab70-b745-4255-8b04-6b6cb826cb6f)


## Getting Started
1. Clone the repository to your local machine.
2. Open each lab folder and follow the instructions provided in the README or accompanying documentation.
3. Use the Tanner EDA CAD tool to perform simulations, layout designs, and verification as instructed in each lab.

## License
This project is licensed under the [MIT License](LICENSE). Feel free to use and modify the labs for educational purposes.

## Contributors
<table>
  <tr>
    <td align="center">
    <a href="https://github.com/karimmahmoud22" target="_black">
    <img src="https://avatars.githubusercontent.com/u/82693464?v=4" width="150px;" alt="Karim Mahmoud"/>
    <br />
    <sub><b>Karim Mahmoud</b></sub></a>
    </td>
    <td align="center">
    <a href="https://github.com/ayaahmed20018414" target="_black">
    <img src="https://avatars.githubusercontent.com/u/82789012?v=4" width="150px;" alt="Aya Ahmed"/>
    <br />
    <sub><b>Aya Ahmed</b></sub></a>
    </td>
  </tr>
 </table>
