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
L Amplifier_Operational:TL082 U1
U 1 1 5F55FD54
P 4950 4200
F 0 "U1" H 4950 4567 50  0000 C CNN
F 1 "TL082" H 4950 4476 50  0000 C CNN
F 2 "" H 4950 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 4950 4200 50  0001 C CNN
F 4 "X" H 4950 4200 50  0001 C CNN "Spice_Primitive"
F 5 "TL082" H 4950 4200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4950 4200 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/media/fede/GIT/git/Simulacion-de-circuitos-electronicos/docs/KiCAD/library/TL0822-dual.lib" H 4950 4200 50  0001 C CNN "Spice_Lib_File"
	1    4950 4200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL082 U1
U 2 1 5F560D73
P 8100 4300
F 0 "U1" H 8100 4667 50  0000 C CNN
F 1 "TL082" H 8100 4576 50  0000 C CNN
F 2 "" H 8100 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 8100 4300 50  0001 C CNN
F 4 "X" H 8100 4300 50  0001 C CNN "Spice_Primitive"
F 5 "TL082" H 8100 4300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8100 4300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/media/fede/GIT/git/Simulacion-de-circuitos-electronicos/docs/KiCAD/library/TL0822-dual.lib" H 8100 4300 50  0001 C CNN "Spice_Lib_File"
	2    8100 4300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL082 U1
U 3 1 5F56431C
P 4900 2550
F 0 "U1" H 4858 2596 50  0000 L CNN
F 1 "TL082" H 4858 2505 50  0000 L CNN
F 2 "" H 4900 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 4900 2550 50  0001 C CNN
	3    4900 2550
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V2
U 1 1 5F576B6F
P 5800 2050
F 0 "V2" H 6028 2096 50  0000 L CNN
F 1 "15V" H 6028 2005 50  0000 L CNN
F 2 "" H 5800 2050 50  0001 C CNN
F 3 "~" H 5800 2050 50  0001 C CNN
	1    5800 2050
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V3
U 1 1 5F578456
P 5800 2900
F 0 "V3" H 6028 2946 50  0000 L CNN
F 1 "15V" H 6028 2855 50  0000 L CNN
F 2 "" H 5800 2900 50  0001 C CNN
F 3 "~" H 5800 2900 50  0001 C CNN
	1    5800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2350 5800 2500
Wire Wire Line
	5800 1750 5800 1600
Wire Wire Line
	5800 3200 5800 3350
Wire Wire Line
	4800 2250 4800 2050
Wire Wire Line
	4800 2850 4800 3100
Text Label 5800 1600 0    50   ~ 0
VDD
Text Label 4800 3100 0    50   ~ 0
VSS
Text Label 5800 3350 0    50   ~ 0
VSS
Text Label 4800 2050 0    50   ~ 0
VDD
$Comp
L pspice:0 #GND02
U 1 1 5F57FD39
P 5250 2750
F 0 "#GND02" H 5250 2650 50  0001 C CNN
F 1 "0" H 5250 2839 50  0000 C CNN
F 2 "" H 5250 2750 50  0001 C CNN
F 3 "~" H 5250 2750 50  0001 C CNN
	1    5250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2750 5250 2500
Wire Wire Line
	5250 2500 5800 2500
Connection ~ 5800 2500
Wire Wire Line
	5800 2500 5800 2600
$Comp
L pspice:C C1
U 1 1 5F58D204
P 3150 4100
F 0 "C1" V 2835 4100 50  0000 C CNN
F 1 "220n" V 2926 4100 50  0000 C CNN
F 2 "" H 3150 4100 50  0001 C CNN
F 3 "~" H 3150 4100 50  0001 C CNN
	1    3150 4100
	0    1    1    0   
$EndComp
$Comp
L pspice:C C2
U 1 1 5F58D667
P 3950 4100
F 0 "C2" V 3635 4100 50  0000 C CNN
F 1 "220n" V 3726 4100 50  0000 C CNN
F 2 "" H 3950 4100 50  0001 C CNN
F 3 "~" H 3950 4100 50  0001 C CNN
	1    3950 4100
	0    1    1    0   
$EndComp
$Comp
L pspice:R R2
U 1 1 5F596532
P 4400 5000
F 0 "R2" H 4468 5046 50  0000 L CNN
F 1 "27k" H 4468 4955 50  0000 L CNN
F 2 "" H 4400 5000 50  0001 C CNN
F 3 "~" H 4400 5000 50  0001 C CNN
	1    4400 5000
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R1
U 1 1 5F59689B
P 3950 4550
F 0 "R1" V 3745 4550 50  0000 C CNN
F 1 "27k" V 3836 4550 50  0000 C CNN
F 2 "" H 3950 4550 50  0001 C CNN
F 3 "~" H 3950 4550 50  0001 C CNN
	1    3950 4550
	0    1    1    0   
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5F597363
P 2450 4650
F 0 "V1" H 2678 4696 50  0000 L CNN
F 1 "dc 0 ac 1" H 2678 4605 50  0000 L CNN
F 2 "" H 2450 4650 50  0001 C CNN
F 3 "~" H 2450 4650 50  0001 C CNN
	1    2450 4650
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND01
U 1 1 5F597C33
P 4400 5650
F 0 "#GND01" H 4400 5550 50  0001 C CNN
F 1 "0" H 4400 5739 50  0000 C CNN
F 2 "" H 4400 5650 50  0001 C CNN
F 3 "~" H 4400 5650 50  0001 C CNN
	1    4400 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4100 2900 4100
Wire Wire Line
	3400 4100 3500 4100
Wire Wire Line
	4200 4100 4400 4100
Wire Wire Line
	2450 4350 2450 4100
Wire Wire Line
	3500 4100 3500 4550
Wire Wire Line
	3500 4550 3700 4550
Wire Wire Line
	4650 4550 4650 4300
Wire Wire Line
	4200 4550 4650 4550
Connection ~ 3500 4100
Wire Wire Line
	3500 4100 3700 4100
Wire Wire Line
	4650 4550 5500 4550
Wire Wire Line
	5500 4550 5500 4200
Wire Wire Line
	5500 4200 5250 4200
Connection ~ 4650 4550
Wire Wire Line
	4400 4750 4400 4100
Connection ~ 4400 4100
Wire Wire Line
	4400 4100 4650 4100
$Comp
L pspice:R R3
U 1 1 5F5ACF92
P 6150 4200
F 0 "R3" V 5945 4200 50  0000 C CNN
F 1 "1k" V 6036 4200 50  0000 C CNN
F 2 "" H 6150 4200 50  0001 C CNN
F 3 "~" H 6150 4200 50  0001 C CNN
	1    6150 4200
	0    1    1    0   
$EndComp
$Comp
L pspice:R R4
U 1 1 5F5AD680
P 7100 4200
F 0 "R4" V 6895 4200 50  0000 C CNN
F 1 "1k" V 6986 4200 50  0000 C CNN
F 2 "" H 7100 4200 50  0001 C CNN
F 3 "~" H 7100 4200 50  0001 C CNN
	1    7100 4200
	0    1    1    0   
$EndComp
$Comp
L pspice:C C3
U 1 1 5F5B1ACA
P 7100 4700
F 0 "C3" V 6785 4700 50  0000 C CNN
F 1 "47n" V 6876 4700 50  0000 C CNN
F 2 "" H 7100 4700 50  0001 C CNN
F 3 "~" H 7100 4700 50  0001 C CNN
	1    7100 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4200 5900 4200
Connection ~ 5500 4200
Wire Wire Line
	6400 4200 6600 4200
Wire Wire Line
	7350 4200 7550 4200
Wire Wire Line
	6600 4200 6600 4700
Wire Wire Line
	6600 4700 6850 4700
Wire Wire Line
	8650 4700 8650 4300
Wire Wire Line
	8650 4300 8400 4300
Wire Wire Line
	7350 4700 7800 4700
Connection ~ 6600 4200
Wire Wire Line
	6600 4200 6850 4200
Connection ~ 4400 5450
Wire Wire Line
	4400 5450 4400 5650
Wire Wire Line
	4400 5250 4400 5450
Wire Wire Line
	2450 4950 2450 5450
Wire Wire Line
	7550 4850 7550 4200
Connection ~ 7550 4200
Wire Wire Line
	7550 4200 7800 4200
$Comp
L pspice:C C4
U 1 1 5F5B2500
P 7550 5100
F 0 "C4" H 7372 5054 50  0000 R CNN
F 1 "47n" H 7372 5145 50  0000 R CNN
F 2 "" H 7550 5100 50  0001 C CNN
F 3 "~" H 7550 5100 50  0001 C CNN
	1    7550 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 5450 7550 5450
Wire Wire Line
	7550 5350 7550 5450
Wire Wire Line
	2450 5450 4400 5450
Wire Wire Line
	7800 4400 7800 4700
Connection ~ 7800 4700
Wire Wire Line
	7800 4700 8650 4700
Text GLabel 2350 3950 0    50   Input ~ 0
ent
Text GLabel 5550 3950 2    50   Input ~ 0
Pasa-Alta
Text GLabel 8700 3950 2    50   Input ~ 0
PasaBanda
Wire Wire Line
	2350 3950 2450 3950
Wire Wire Line
	2450 3950 2450 4100
Connection ~ 2450 4100
Wire Wire Line
	5500 3950 5500 4200
Wire Wire Line
	8650 4300 8650 3950
Wire Wire Line
	8650 3950 8700 3950
Connection ~ 8650 4300
Wire Wire Line
	5500 3950 5550 3950
Text Notes 2750 3250 0    50   ~ 0
.ac dec 10 1 100k
$EndSCHEMATC
