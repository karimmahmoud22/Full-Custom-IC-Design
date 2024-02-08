* SPICE NETLIST
***************************************

.SUBCKT Cnt_Active_Auto_0_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT xor_gate Vdd Gnd Out A B
** N=10 EP=5 IP=4 FDC=11
M0 3 B Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=345 $Y=10 $D=1
M1 Gnd A 3 Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=1495 $Y=10 $D=1
M2 4 A Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=2495 $Y=10 $D=1
M3 Out B 4 Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=3245 $Y=10 $D=1
M4 Gnd 3 Out Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=4845 $Y=10 $D=1
M5 6 B 3 Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=345 $Y=4260 $D=2
M6 Vdd A 6 Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=1495 $Y=4260 $D=2
M7 7 A Vdd Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=2595 $Y=4260 $D=2
M8 Out 3 7 Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=3345 $Y=4260 $D=2
M9 8 3 Out Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=4490 $Y=4260 $D=2
M10 Vdd B 8 Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=5245 $Y=4260 $D=2
.ENDS
***************************************
