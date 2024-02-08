* SPICE NETLIST
***************************************

.SUBCKT Cnt_Active_Auto_2_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT Cnt_Active_Auto_6_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NAND3 vdd! vss! Z A B C
** N=8 EP=6 IP=4 FDC=6
M0 7 A vss! vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=1.875e-13 AS=5.625e-13 PD=1.25e-06 PS=3e-06 $X=1000 $Y=1300 $D=1
M1 8 B 7 vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=2.8125e-13 AS=1.875e-13 PD=1.5e-06 PS=1.25e-06 $X=1750 $Y=1300 $D=1
M2 Z C 8 vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=5.25e-13 AS=2.8125e-13 PD=2.9e-06 PS=1.5e-06 $X=2750 $Y=1300 $D=1
M3 Z A vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=4.6875e-13 AS=9.375e-13 PD=2e-06 PS=4e-06 $X=1000 $Y=5550 $D=2
M4 vdd! B Z vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=4.6875e-13 AS=4.6875e-13 PD=2e-06 PS=2e-06 $X=2000 $Y=5550 $D=2
M5 Z C vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=9.375e-13 AS=4.6875e-13 PD=4e-06 PS=2e-06 $X=3000 $Y=5550 $D=2
.ENDS
***************************************
.SUBCKT C1 vdd! vss! G0 P1 C00 P0 G1 C1
** N=11 EP=8 IP=16 FDC=16
M0 3 G0 vss! vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=3.375e-13 AS=5.625e-13 PD=1.65e-06 PS=3e-06 $X=-7580 $Y=-362 $D=1
M1 4 P1 3 vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=4.875e-13 AS=3.375e-13 PD=2.8e-06 PS=1.65e-06 $X=-6430 $Y=-362 $D=1
M2 4 G0 vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=4.6875e-13 AS=9.375e-13 PD=2e-06 PS=4e-06 $X=-7580 $Y=3888 $D=2
M3 vdd! P1 4 vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=8.75e-13 AS=4.6875e-13 PD=3.9e-06 PS=2e-06 $X=-6580 $Y=3888 $D=2
X6 vdd! vss! 7 P1 C00 P0 NAND3 $T=-941 -1661 0 0 $X=-1441 $Y=-1711
X7 vdd! vss! C1 7 4 G1 NAND3 $T=8970 -1660 0 0 $X=8470 $Y=-1710
.ENDS
***************************************
