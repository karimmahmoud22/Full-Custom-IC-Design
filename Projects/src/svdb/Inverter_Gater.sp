* SPICE NETLIST
***************************************

.SUBCKT Inverter_Gater Vdd Gnd Out In
** N=4 EP=4 IP=0 FDC=2
M0 Out In Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 AD=4.875e-13 AS=4.875e-13 PD=2.8e-06 PS=2.8e-06 $X=7965 $Y=-585 $D=1
M1 Out In Vdd Vdd PMOS25 L=2.5e-07 W=1.25e-06 AD=8.125e-13 AS=8.125e-13 PD=3.8e-06 PS=3.8e-06 $X=7965 $Y=1925 $D=2
.ENDS
***************************************
