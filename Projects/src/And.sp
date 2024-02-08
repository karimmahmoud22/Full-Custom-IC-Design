* SPICE NETLIST
***************************************

.SUBCKT Cnt_Active_Auto_5_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT And Vdd Gnd Out A B
** N=7 EP=5 IP=4 FDC=6
M0 3 A Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=6920 $Y=-3365 $D=1
M1 4 B 3 Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=8070 $Y=-3365 $D=1
M2 Gnd 4 Out Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=16285 $Y=-3365 $D=1
M3 4 A Vdd Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=6920 $Y=885 $D=2
M4 Vdd B 4 Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=7920 $Y=885 $D=2
M5 Vdd 4 Out Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=16285 $Y=885 $D=2
.ENDS
***************************************
