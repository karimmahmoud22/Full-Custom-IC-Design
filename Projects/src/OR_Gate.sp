* SPICE NETLIST
***************************************

.SUBCKT Cnt_Active_Auto_6_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT OR_Gate Vdd Gnd Out A B
** N=7 EP=5 IP=4 FDC=6
M0 3 A Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=7870 $Y=-2595 $D=1
M1 Gnd B 3 Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=9020 $Y=-2595 $D=1
M2 Gnd 3 Out Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=17680 $Y=-2595 $D=1
M3 5 A Vdd Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=7870 $Y=1655 $D=2
M4 3 B 5 Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=8870 $Y=1655 $D=2
M5 Vdd 3 Out Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=17680 $Y=1655 $D=2
.ENDS
***************************************
