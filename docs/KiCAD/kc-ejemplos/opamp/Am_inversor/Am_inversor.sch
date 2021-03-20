EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L pspice:R RL1
U 1 1 5F4F6BEE
P 6250 4300
F 0 "RL1" H 6318 4346 50  0000 L CNN
F 1 "10k" H 6318 4255 50  0000 L CNN
F 2 "" H 6250 4300 50  0001 C CNN
F 3 "~" H 6250 4300 50  0001 C CNN
	1    6250 4300
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R3
U 1 1 5F4F71F8
P 4750 4350
F 0 "R3" H 4818 4396 50  0000 L CNN
F 1 "3.9k" H 4818 4305 50  0000 L CNN
F 2 "" H 4750 4350 50  0001 C CNN
F 3 "~" H 4750 4350 50  0001 C CNN
	1    4750 4350
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R2
U 1 1 5F4F7854
P 5200 3150
F 0 "R2" V 4995 3150 50  0000 C CNN
F 1 "100k" V 5086 3150 50  0000 C CNN
F 2 "" H 5200 3150 50  0001 C CNN
F 3 "~" H 5200 3150 50  0001 C CNN
	1    5200 3150
	0    1    1    0   
$EndComp
$Comp
L pspice:R R1
U 1 1 5F4F7D5D
P 4300 3600
F 0 "R1" V 4095 3600 50  0000 C CNN
F 1 "4k" V 4186 3600 50  0000 C CNN
F 2 "" H 4300 3600 50  0001 C CNN
F 3 "~" H 4300 3600 50  0001 C CNN
	1    4300 3600
	0    1    1    0   
$EndComp
$Comp
L pspice:0 #GND04
U 1 1 5F4F85B9
P 4750 4900
F 0 "#GND04" H 4750 4800 50  0001 C CNN
F 1 "0" H 4750 4989 50  0000 C CNN
F 2 "" H 4750 4900 50  0001 C CNN
F 3 "~" H 4750 4900 50  0001 C CNN
	1    4750 4900
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V3
U 1 1 5F4F8AE4
P 3200 4450
F 0 "V3" H 3428 4496 50  0000 L CNN
F 1 "0 dc 0 ac 1 SIN(0 20m 1k)" H 3428 4405 50  0000 L CNN
F 2 "" H 3200 4450 50  0001 C CNN
F 3 "~" H 3200 4450 50  0001 C CNN
	1    3200 4450
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V2
U 1 1 5F4F9F6E
P 2300 4450
F 0 "V2" H 2528 4496 50  0000 L CNN
F 1 "-15" H 2528 4405 50  0000 L CNN
F 2 "" H 2300 4450 50  0001 C CNN
F 3 "~" H 2300 4450 50  0001 C CNN
	1    2300 4450
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5F4FA18C
P 1500 4450
F 0 "V1" H 1728 4496 50  0000 L CNN
F 1 "+15" H 1728 4405 50  0000 L CNN
F 2 "" H 1500 4450 50  0001 C CNN
F 3 "~" H 1500 4450 50  0001 C CNN
	1    1500 4450
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND03
U 1 1 5F4FAFD1
P 3200 5000
F 0 "#GND03" H 3200 4900 50  0001 C CNN
F 1 "0" H 3200 5089 50  0000 C CNN
F 2 "" H 3200 5000 50  0001 C CNN
F 3 "~" H 3200 5000 50  0001 C CNN
	1    3200 5000
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND02
U 1 1 5F4FB17B
P 2300 5000
F 0 "#GND02" H 2300 4900 50  0001 C CNN
F 1 "0" H 2300 5089 50  0000 C CNN
F 2 "" H 2300 5000 50  0001 C CNN
F 3 "~" H 2300 5000 50  0001 C CNN
	1    2300 5000
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND01
U 1 1 5F4FB490
P 1500 5000
F 0 "#GND01" H 1500 4900 50  0001 C CNN
F 1 "0" H 1500 5089 50  0000 C CNN
F 2 "" H 1500 5000 50  0001 C CNN
F 3 "~" H 1500 5000 50  0001 C CNN
	1    1500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4150 1500 3950
Wire Wire Line
	2300 4150 2300 3950
Wire Wire Line
	2300 3950 2350 3950
Wire Wire Line
	3200 4150 3200 3950
Wire Wire Line
	3200 3950 3250 3950
Wire Wire Line
	1500 3950 1550 3950
Text GLabel 1550 3950 2    50   Input ~ 0
+Vcc
Text GLabel 2350 3950 2    50   Input ~ 0
-Vcc
Text GLabel 3250 3950 2    50   Input ~ 0
ent
Text GLabel 5200 4100 2    50   Input ~ 0
+Vcc
Text GLabel 5200 3300 2    50   Input ~ 0
-Vcc
Wire Wire Line
	1500 4750 1500 5000
Wire Wire Line
	2300 4750 2300 5000
Wire Wire Line
	3200 4750 3200 5000
Wire Wire Line
	4750 4900 4750 4600
Wire Wire Line
	4750 3800 4950 3800
Wire Wire Line
	4750 4100 4750 3800
Wire Wire Line
	5550 3700 5850 3700
Wire Wire Line
	6250 3700 6250 4050
Wire Wire Line
	4050 3600 3800 3600
Wire Wire Line
	4550 3600 4750 3600
Wire Wire Line
	4750 3600 4750 3150
Wire Wire Line
	4750 3150 4950 3150
Wire Wire Line
	5850 3150 5850 3700
Wire Wire Line
	5450 3150 5850 3150
Connection ~ 4750 3600
Wire Wire Line
	4750 3600 4950 3600
Connection ~ 5850 3700
Wire Wire Line
	5850 3700 6250 3700
$Comp
L pspice:0 #GND05
U 1 1 5F5003A9
P 6250 4900
F 0 "#GND05" H 6250 4800 50  0001 C CNN
F 1 "0" H 6250 4989 50  0000 C CNN
F 2 "" H 6250 4900 50  0001 C CNN
F 3 "~" H 6250 4900 50  0001 C CNN
	1    6250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4550 6250 4900
Text GLabel 3800 3600 0    50   Input ~ 0
ent
Wire Wire Line
	6250 3700 6350 3700
Connection ~ 6250 3700
Text GLabel 6350 3700 2    50   Input ~ 0
sal
$Comp
L Amplifier_Operational:LM741 U1
U 1 1 5F504A5F
P 5250 3700
F 0 "U1" H 5594 3654 50  0000 L CNN
F 1 "LM741/NS" H 5300 3850 50  0000 L CNN
F 2 "" H 5300 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 5400 3850 50  0001 C CNN
F 4 "X" H 5250 3700 50  0001 C CNN "Spice_Primitive"
F 5 "LM741/NS" H 5250 3700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5250 3700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/media/fede/GIT/git/Simulacion-de-circuitos-electronicos/docs/KiCAD/library/LM741.MOD" H 5250 3700 50  0001 C CNN "Spice_Lib_File"
F 8 "3 2 7 4 6" H 5250 3700 50  0001 C CNN "Spice_Node_Sequence"
	1    5250 3700
	1    0    0    1   
$EndComp
NoConn ~ 5250 3400
NoConn ~ 5350 3400
Wire Wire Line
	5150 3400 5150 3300
Wire Wire Line
	5150 3300 5200 3300
Wire Wire Line
	5150 4000 5150 4100
Wire Wire Line
	5150 4100 5200 4100
Text Notes 3650 3200 0    50   ~ 0
*.tran 50u 5m\n.ac dec 10 1 1MEG
$EndSCHEMATC