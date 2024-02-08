* SPICE NETLIST
***************************************

.SUBCKT pmos25x_Auto_0_1 B S D G
** N=5 EP=4 IP=0 FDC=1
M0 D G S B PMOS25 L=2.5e-07 W=1.5e-06 AD=9.75e-13 AS=9.75e-13 PD=4.3e-06 PS=4.3e-06 $X=0 $Y=0 $D=2
.ENDS
***************************************
.SUBCKT nmos25x_Auto_1_1 S D B G
** N=4 EP=4 IP=0 FDC=1
M0 D G S B NMOS25 L=2.5e-07 W=1.5e-06 AD=9.75e-13 AS=9.75e-13 PD=4.3e-06 PS=4.3e-06 $X=0 $Y=0 $D=1
.ENDS
***************************************
.SUBCKT Inv Gnd Vdd Out In
** N=4 EP=4 IP=9 FDC=2
X0 Vdd Vdd Out In pmos25x_Auto_0_1 $T=205 1605 0 0 $X=-2245 $Y=855
X1 Gnd Out Gnd In nmos25x_Auto_1_1 $T=205 -1445 0 0 $X=-1745 $Y=-1745
.ENDS
***************************************
.SUBCKT TranGate 1 In Out Clk_ Clk
** N=5 EP=5 IP=9 FDC=2
X0 In In Out Clk pmos25x_Auto_0_1 $T=155 4655 1 0 $X=-2295 $Y=2405
X1 Out In 1 Clk_ nmos25x_Auto_1_1 $T=405 575 0 180 $X=-745 $Y=-1225
.ENDS
***************************************
.SUBCKT Dlatch_sc Gnd Q Vdd Clk Clk_ D
** N=9 EP=6 IP=22 FDC=10
X0 Gnd Vdd 4 Q Inv $T=10445 8120 0 0 $X=8200 $Y=6375
X1 Gnd Vdd 5 D Inv $T=13895 -65 0 0 $X=11650 $Y=-1810
X2 Gnd Vdd Q 7 Inv $T=28500 8180 0 0 $X=26255 $Y=6435
X3 Gnd 5 7 Clk Clk_ TranGate $T=19845 -865 0 0 $X=17550 $Y=-2860
X4 Gnd 4 7 Clk_ Clk TranGate $T=19845 7365 0 0 $X=17550 $Y=5370
.ENDS
***************************************
