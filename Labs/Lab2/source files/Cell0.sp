* SPICE NETLIST
***************************************

.SUBCKT Cell0 Vdd Gnd Out In
** N=4 EP=4 IP=0 FDC=2
M0 Out In Gnd Gnd NMOS25 L=2.5e-07 W=1.5e-06 $X=705 $Y=-1745 $D=1
M1 Out In Vdd Vdd PMOS25 L=2.5e-07 W=1.5e-06 $X=705 $Y=1580 $D=2
.ENDS
***************************************
