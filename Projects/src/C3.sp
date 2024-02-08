* SPICE NETLIST
***************************************

.SUBCKT INV vdd! Z vss! A
** N=4 EP=4 IP=0 FDC=2
M0 vss! A Z vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=1000 $Y=1300 $D=1
M1 vdd! A Z vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=1000 $Y=5550 $D=2
.ENDS
***************************************
.SUBCKT Cnt_Active_Auto_7_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NAND4 vdd! vss! Z A B C D
** N=10 EP=7 IP=4 FDC=8
M0 8 A vss! vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=1000 $Y=1300 $D=1
M1 9 B 8 vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=1750 $Y=1300 $D=1
M2 10 C 9 vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=2950 $Y=1300 $D=1
M3 Z D 10 vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=3900 $Y=1300 $D=1
M4 Z A vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=1000 $Y=5550 $D=2
M5 vdd! B Z vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=2150 $Y=5550 $D=2
M6 Z C vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=3250 $Y=5550 $D=2
M7 vdd! D Z vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=4405 $Y=5550 $D=2
.ENDS
***************************************
.SUBCKT Cnt_Active_Auto_6_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT Cnt_Active_Auto_2_1
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NOR2 vdd! vss! Z A B
** N=6 EP=5 IP=4 FDC=4
M0 Z A vss! vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=1000 $Y=1300 $D=1
M1 vss! B Z vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=2150 $Y=1300 $D=1
M2 6 A vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=1000 $Y=5550 $D=2
M3 Z B 6 vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=2000 $Y=5550 $D=2
.ENDS
***************************************
.SUBCKT C3 vdd! vss! P3 P2 P1 G1 G2 C00 C3 P0 G0 G3
** N=23 EP=12 IP=47 FDC=46
M0 3 P3 vss! vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=-12630 $Y=9390 $D=1
M1 4 G1 3 vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=-11880 $Y=9390 $D=1
M2 5 P2 4 vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=-10880 $Y=9390 $D=1
M3 6 G2 vss! vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=2650 $Y=9390 $D=1
M4 7 P3 6 vss! NMOS25 L=2.5e-07 W=7.5e-07 $X=3800 $Y=9390 $D=1
M5 5 P3 vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=-12630 $Y=13640 $D=2
M6 vdd! G1 5 vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=-11630 $Y=13640 $D=2
M7 5 P2 vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=-10630 $Y=13640 $D=2
M8 7 G2 vdd! vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=2650 $Y=13640 $D=2
M9 vdd! P3 7 vdd! PMOS25 L=2.5e-07 W=1.25e-06 $X=3650 $Y=13640 $D=2
X10 vdd! 8 vss! C00 INV $T=-52495 8090 0 0 $X=-52995 $Y=8040
X11 vdd! C3 vss! 18 INV $T=51750 8090 0 0 $X=51250 $Y=8040
X12 vdd! vss! 12 P3 P0 P2 P1 NAND4 $T=-43805 8095 0 0 $X=-44305 $Y=8045
X13 vdd! vss! 13 P1 P3 G0 P2 NAND4 $T=-29805 8090 0 0 $X=-30305 $Y=8040
X14 vdd! vss! 17 13 5 G3 7 NAND4 $T=24935 8088 0 0 $X=24435 $Y=8038
X19 vdd! vss! 16 12 8 NOR2 $T=13775 8090 0 0 $X=13275 $Y=8040
X20 vdd! vss! 18 17 16 NOR2 $T=38285 8090 0 0 $X=37785 $Y=8040
.ENDS
***************************************
