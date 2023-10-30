* SPICE NETLIST
***************************************

.SUBCKT inv Vdd Gnd Out In
** N=4 EP=4 IP=0 FDC=2
M0 Out In Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 AD=4.875e-13 AS=4.875e-13 PD=2.8e-06 PS=2.8e-06 $X=875 $Y=-2140 $D=1
M1 Out In Vdd Vdd PMOS25 L=2.5e-07 W=1.5e-06 AD=9.75e-13 AS=9.75e-13 PD=4.3e-06 PS=4.3e-06 $X=875 $Y=855 $D=2
.ENDS
***************************************
