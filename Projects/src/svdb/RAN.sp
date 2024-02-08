* SPICE NETLIST
***************************************

.SUBCKT Cnt_Active_Auto_2_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NAND2 vdd! vss! Z A B
** N=6 EP=5 IP=4 FDC=4
M0 6 A vss! vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=3.375e-13 AS=5.625e-13 PD=1.65e-06 PS=3e-06 $X=1000 $Y=1300 $D=1
M1 Z B 6 vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=4.875e-13 AS=3.375e-13 PD=2.8e-06 PS=1.65e-06 $X=2150 $Y=1300 $D=1
M2 Z A vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=4.6875e-13 AS=9.375e-13 PD=2e-06 PS=4e-06 $X=1000 $Y=5550 $D=2
M3 vdd! B Z vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=8.75e-13 AS=4.6875e-13 PD=3.9e-06 PS=2e-06 $X=2000 $Y=5550 $D=2
.ENDS
***************************************
.SUBCKT test_full_adder_nand Gnd A B Vdd CIn Sum Cout
** N=16 EP=7 IP=55 FDC=44
X0 Vdd Gnd 16 A B NAND2 $T=-38824 4478 0 0 $X=-39324 $Y=4428
X1 Vdd Gnd 8 A B NAND2 $T=-27394 4480 0 0 $X=-27894 $Y=4430
X2 Vdd Gnd 9 A 8 NAND2 $T=-16359 4480 0 0 $X=-16859 $Y=4430
X3 Vdd Gnd 10 8 B NAND2 $T=-5829 4480 0 0 $X=-6329 $Y=4430
X4 Vdd Gnd 11 9 10 NAND2 $T=4146 4480 0 0 $X=3646 $Y=4430
X5 Vdd Gnd 12 11 CIn NAND2 $T=12451 4480 0 0 $X=11951 $Y=4430
X6 Vdd Gnd 13 11 CIn NAND2 $T=19336 4480 0 0 $X=18836 $Y=4430
X7 Vdd Gnd 14 11 13 NAND2 $T=26696 4480 0 0 $X=26196 $Y=4430
X8 Vdd Gnd 15 13 CIn NAND2 $T=34676 4480 0 0 $X=34176 $Y=4430
X9 Vdd Gnd Sum 14 15 NAND2 $T=43406 4480 0 0 $X=42906 $Y=4430
X10 Vdd Gnd Cout 16 12 NAND2 $T=52386 4510 0 0 $X=51886 $Y=4460
.ENDS
***************************************
.SUBCKT RAN Gnd Vdd Sum0 Sum1 Sum2 Sum3 Cout A0 B0 CIn A1 B1 A2 B2 A3 B3
** N=19 EP=16 IP=28 FDC=176
X0 Gnd A0 B0 Vdd CIn Sum0 2 test_full_adder_nand $T=14669 -5186 0 0 $X=-27635 $Y=-4386
X1 Gnd A1 B1 Vdd 2 Sum1 3 test_full_adder_nand $T=129302 -5221 0 0 $X=86998 $Y=-4421
X2 Gnd A2 B2 Vdd 3 Sum2 4 test_full_adder_nand $T=245759 -5221 0 0 $X=203455 $Y=-4421
X3 Gnd A3 B3 Vdd 4 Sum3 Cout test_full_adder_nand $T=362988 -5152 0 0 $X=320684 $Y=-4352
.ENDS
***************************************
