* SPICE NETLIST
***************************************

.SUBCKT C00 vdd! C00 vss! Cin
** N=4 EP=4 IP=0 FDC=2
M0 vss! Cin C00 vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=-245 $Y=-395 $D=1
M1 vdd! Cin C00 vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=-245 $Y=3855 $D=2
.ENDS
***************************************
