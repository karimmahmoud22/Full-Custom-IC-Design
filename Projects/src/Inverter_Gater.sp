* SPICE NETLIST
***************************************

.SUBCKT Inverter_Gater Vdd Gnd Out In
** N=4 EP=4 IP=0 FDC=2
M0 Out In Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=7965 $Y=-585 $D=1
M1 Out In Vdd Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=7965 $Y=1925 $D=2
.ENDS
***************************************
