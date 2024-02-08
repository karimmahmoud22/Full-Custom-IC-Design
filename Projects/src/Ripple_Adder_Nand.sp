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
.SUBCKT FullAdder_NAND vss! A B vdd! CIn 6 Sum Cout
** N=16 EP=8 IP=55 FDC=44
X0 vdd! vss! 6 A B NAND2 $T=-42875 -6472 0 0 $X=-43375 $Y=-6522
X1 vdd! vss! 9 A B NAND2 $T=-31445 -6470 0 0 $X=-31945 $Y=-6520
X2 vdd! vss! 10 A 9 NAND2 $T=-20410 -6470 0 0 $X=-20910 $Y=-6520
X3 vdd! vss! 11 9 B NAND2 $T=-9880 -6470 0 0 $X=-10380 $Y=-6520
X4 vdd! vss! 12 10 11 NAND2 $T=95 -6470 0 0 $X=-405 $Y=-6520
X5 vdd! vss! 13 12 CIn NAND2 $T=8400 -6470 0 0 $X=7900 $Y=-6520
X6 vdd! vss! 14 12 CIn NAND2 $T=15285 -6470 0 0 $X=14785 $Y=-6520
X7 vdd! vss! 15 12 14 NAND2 $T=22645 -6470 0 0 $X=22145 $Y=-6520
X8 vdd! vss! 16 14 CIn NAND2 $T=30625 -6470 0 0 $X=30125 $Y=-6520
X9 vdd! vss! Sum 15 16 NAND2 $T=39355 -6470 0 0 $X=38855 $Y=-6520
X10 vdd! vss! Cout 6 13 NAND2 $T=48335 -6440 0 0 $X=47835 $Y=-6490
.ENDS
***************************************
.SUBCKT Ripple_Adder_Nand vdd! Sum0 Gnd Sum1 Sum2 Sum3 Cout A0 B0 CIn A1 B1 A2 B2 A3 B3
** N=24 EP=16 IP=32 FDC=176
*.CALIBRE ISOLATED NETS: Vdd
X0 1 A0 B0 vdd! CIn Gnd Sum0 2 FullAdder_NAND $T=-14170 37665 0 0 $X=-60525 $Y=27515
X1 1 A1 B1 vdd! 2 9 Sum1 3 FullAdder_NAND $T=100675 37665 0 0 $X=54320 $Y=27515
X2 1 A2 B2 vdd! 3 11 Sum2 4 FullAdder_NAND $T=216880 37665 0 0 $X=170525 $Y=27515
X3 1 A3 B3 vdd! 4 13 Sum3 Cout FullAdder_NAND $T=334715 37665 0 0 $X=288360 $Y=27515
*.CALIBRE WARNING SHORT Short circuit(s) detected by extraction in this cell. See extraction report for details.
.ENDS
***************************************
