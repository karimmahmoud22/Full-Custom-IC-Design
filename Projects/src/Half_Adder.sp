* SPICE NETLIST
***************************************

.SUBCKT Cnt_Active_Auto_10_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT Cnt_Active_Auto_2_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT Half_Adder Vdd Gnd Sum Carry A B
** N=13 EP=6 IP=8 FDC=17
M0 3 B Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=-4782 $Y=4257 $D=1
M1 Gnd A 3 Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=-3632 $Y=4257 $D=1
M2 4 A Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=-2632 $Y=4257 $D=1
M3 Sum B 4 Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=-1882 $Y=4257 $D=1
M4 Gnd 3 Sum Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=-282 $Y=4257 $D=1
M5 6 A Gnd Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=10923 $Y=4291 $D=1
M6 7 B 6 Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=12073 $Y=4291 $D=1
M7 Gnd 7 Carry Gnd NMOS25 L=2.5e-07 W=7.5e-07 $X=20288 $Y=4291 $D=1
M8 9 B 3 Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=-4782 $Y=8507 $D=2
M9 Vdd A 9 Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=-3632 $Y=8507 $D=2
M10 10 A Vdd Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=-2532 $Y=8507 $D=2
M11 Sum 3 10 Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=-1782 $Y=8507 $D=2
M12 11 3 Sum Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=-637 $Y=8507 $D=2
M13 Vdd B 11 Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=118 $Y=8507 $D=2
M14 7 A Vdd Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=10923 $Y=8541 $D=2
M15 Vdd B 7 Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=11923 $Y=8541 $D=2
M16 Vdd 7 Carry Vdd PMOS25 L=2.5e-07 W=1.25e-06 $X=20288 $Y=8541 $D=2
.ENDS
***************************************
