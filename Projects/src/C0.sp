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
.SUBCKT C0 vss! vdd! C00 P0 G0 C0
** N=7 EP=6 IP=10 FDC=8
X0 vdd! vss! 3 C00 P0 NAND2 $T=-1745 -1315 0 0 $X=-2245 $Y=-1365
X1 vdd! vss! C0 3 G0 NAND2 $T=3845 -1265 0 0 $X=3345 $Y=-1315
.ENDS
***************************************
