* SPICE NETLIST
***************************************

.SUBCKT Cnt_Active_Auto_7_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NAND4 vdd! vss! Z A B C D
** N=10 EP=7 IP=4 FDC=8
M0 8 A vss! vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=1.875e-13 AS=5.625e-13 PD=1.25e-06 PS=3e-06 $X=1000 $Y=1300 $D=1
M1 9 B 8 vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=3.5625e-13 AS=1.875e-13 PD=1.7e-06 PS=1.25e-06 $X=1750 $Y=1300 $D=1
M2 10 C 9 vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=2.625e-13 AS=3.5625e-13 PD=1.45e-06 PS=1.7e-06 $X=2950 $Y=1300 $D=1
M3 Z D 10 vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=9.375e-13 AS=2.625e-13 PD=4e-06 PS=1.45e-06 $X=3900 $Y=1300 $D=1
M4 Z A vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=5.625e-13 AS=9.375e-13 PD=2.15e-06 PS=4e-06 $X=1000 $Y=5550 $D=2
M5 vdd! B Z vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=5.3125e-13 AS=5.625e-13 PD=2.1e-06 PS=2.15e-06 $X=2150 $Y=5550 $D=2
M6 Z C vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=5.65625e-13 AS=5.3125e-13 PD=2.155e-06 PS=2.1e-06 $X=3250 $Y=5550 $D=2
M7 vdd! D Z vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=9.3125e-13 AS=5.65625e-13 PD=3.99e-06 PS=2.155e-06 $X=4405 $Y=5550 $D=2
.ENDS
***************************************
.SUBCKT Cnt_Active_Auto_6_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT Cnt_Active_Auto_2_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT C2 vdd! vss! P2 P1 G0 G1 C00 P0 G2 C2
** N=16 EP=10 IP=22 FDC=26
M0 3 P1 vss! vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=1.875e-13 AS=5.625e-13 PD=1.25e-06 PS=3e-06 $X=-2397 $Y=3815 $D=1
M1 4 P2 3 vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=2.8125e-13 AS=1.875e-13 PD=1.5e-06 PS=1.25e-06 $X=-1647 $Y=3815 $D=1
M2 5 G0 4 vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=5.25e-13 AS=2.8125e-13 PD=2.9e-06 PS=1.5e-06 $X=-647 $Y=3815 $D=1
M3 6 P2 vss! vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=3.375e-13 AS=5.625e-13 PD=1.65e-06 PS=3e-06 $X=11990 $Y=3813 $D=1
M4 7 G1 6 vss! NMOS25 L=2.5e-07 W=7.5e-07 AD=4.875e-13 AS=3.375e-13 PD=2.8e-06 PS=1.65e-06 $X=13140 $Y=3813 $D=1
M5 5 P1 vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=4.6875e-13 AS=9.375e-13 PD=2e-06 PS=4e-06 $X=-2397 $Y=8065 $D=2
M6 vdd! P2 5 vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=4.6875e-13 AS=4.6875e-13 PD=2e-06 PS=2e-06 $X=-1397 $Y=8065 $D=2
M7 5 G0 vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=9.375e-13 AS=4.6875e-13 PD=4e-06 PS=2e-06 $X=-397 $Y=8065 $D=2
M8 7 P2 vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=4.6875e-13 AS=9.375e-13 PD=2e-06 PS=4e-06 $X=11990 $Y=8063 $D=2
M9 vdd! G1 7 vdd! PMOS25 L=2.5e-07 W=1.25e-06 AD=8.75e-13 AS=4.6875e-13 PD=3.9e-06 PS=2e-06 $X=12990 $Y=8063 $D=2
X10 vdd! vss! 10 P2 C00 P0 P1 NAND4 $T=-16105 2515 0 0 $X=-16605 $Y=2465
X11 vdd! vss! C2 7 5 10 G2 NAND4 $T=21275 2515 0 0 $X=20775 $Y=2465
.ENDS
***************************************
