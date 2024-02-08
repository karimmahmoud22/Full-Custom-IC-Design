* SPICE NETLIST
***************************************

.SUBCKT Cnt_Active_Auto_2_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NAND2 vdd! vss! Z A B
** N=6 EP=5 IP=4 FDC=4
M0 6 A vss! vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=1000 $Y=1300 $D=1
M1 Z B 6 vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=2150 $Y=1300 $D=1
M2 Z A vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=1000 $Y=5550 $D=2
M3 vdd! B Z vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=2000 $Y=5550 $D=2
.ENDS
***************************************
.SUBCKT test_full_adder_nand Gnd A B Vdd CIn Sum Cout
** N=16 EP=7 IP=55 FDC=44
X0 Vdd Gnd 14 A B NAND2 $T=-38824 4478 0 0 $X=-39324 $Y=4428
X1 Vdd Gnd 5 A B NAND2 $T=-27394 4480 0 0 $X=-27894 $Y=4430
X2 Vdd Gnd 6 A 5 NAND2 $T=-16359 4480 0 0 $X=-16859 $Y=4430
X3 Vdd Gnd 7 5 B NAND2 $T=-5829 4480 0 0 $X=-6329 $Y=4430
X4 Vdd Gnd 8 6 7 NAND2 $T=4146 4480 0 0 $X=3646 $Y=4430
X5 Vdd Gnd 10 8 CIn NAND2 $T=12451 4480 0 0 $X=11951 $Y=4430
X6 Vdd Gnd 11 8 CIn NAND2 $T=19336 4480 0 0 $X=18836 $Y=4430
X7 Vdd Gnd 12 8 11 NAND2 $T=26696 4480 0 0 $X=26196 $Y=4430
X8 Vdd Gnd 13 11 CIn NAND2 $T=34676 4480 0 0 $X=34176 $Y=4430
X9 Vdd Gnd Sum 12 13 NAND2 $T=43406 4480 0 0 $X=42906 $Y=4430
X10 Vdd Gnd Cout 14 10 NAND2 $T=52386 4510 0 0 $X=51886 $Y=4460
.ENDS
***************************************
