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
L pspice:C C1
U 1 1 5F48E441
P 4750 3850
F 0 "C1" V 4435 3850 50  0000 C CNN
F 1 "10u" V 4526 3850 50  0000 C CNN
F 2 "" H 4750 3850 50  0001 C CNN
F 3 "~" H 4750 3850 50  0001 C CNN
	1    4750 3850
	0    1    1    0   
$EndComp
$Comp
L pspice:R R3
U 1 1 5F48F141
P 6550 3100
F 0 "R3" H 6618 3146 50  0000 L CNN
F 1 "2.2k" H 6618 3055 50  0000 L CNN
F 2 "" H 6550 3100 50  0001 C CNN
F 3 "~" H 6550 3100 50  0001 C CNN
	1    6550 3100
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R1
U 1 1 5F490A18
P 5350 3150
F 0 "R1" H 5418 3196 50  0000 L CNN
F 1 "68k" H 5418 3105 50  0000 L CNN
F 2 "" H 5350 3150 50  0001 C CNN
F 3 "~" H 5350 3150 50  0001 C CNN
	1    5350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2850 6550 2750
Wire Wire Line
	5350 2750 5350 2900
Wire Wire Line
	5350 3400 5350 3850
Wire Wire Line
	5350 2750 6550 2750
Connection ~ 5350 3850
Wire Wire Line
	4250 3850 4250 4050
Wire Wire Line
	4250 3850 4500 3850
Wire Wire Line
	5000 3850 5350 3850
Connection ~ 6550 2750
Text GLabel 7650 3300 2    50   Input ~ 0
sal
Text GLabel 4150 3600 0    50   Input ~ 0
ent
Wire Wire Line
	7650 3300 7550 3300
Wire Wire Line
	4250 3600 4150 3600
Wire Wire Line
	5350 3850 5350 4350
Wire Wire Line
	4250 4650 4250 5100
Connection ~ 6550 5100
Wire Wire Line
	4250 5100 5350 5100
Wire Wire Line
	5350 5100 5350 5250
Connection ~ 5350 5100
Wire Wire Line
	6550 5100 6550 4850
Wire Wire Line
	5350 5100 6550 5100
Wire Wire Line
	5350 4850 5350 5100
$Comp
L pspice:R R2
U 1 1 5F490E51
P 5350 4600
F 0 "R2" H 5418 4646 50  0000 L CNN
F 1 "10k" H 5418 4555 50  0000 L CNN
F 2 "" H 5350 4600 50  0001 C CNN
F 3 "~" H 5350 4600 50  0001 C CNN
	1    5350 4600
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R4
U 1 1 5F490665
P 6550 4600
F 0 "R4" H 6618 4646 50  0000 L CNN
F 1 "220" H 6618 4555 50  0000 L CNN
F 2 "" H 6550 4600 50  0001 C CNN
F 3 "~" H 6550 4600 50  0001 C CNN
	1    6550 4600
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND01
U 1 1 5F48E160
P 5350 5250
F 0 "#GND01" H 5350 5150 50  0001 C CNN
F 1 "0" H 5400 5350 50  0000 C CNN
F 2 "" H 5350 5250 50  0001 C CNN
F 3 "~" H 5350 5250 50  0001 C CNN
	1    5350 5250
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5F4998A0
P 4250 4350
F 0 "V1" H 4478 4396 50  0000 L CNN
F 1 "0 dc 0 ac 1 sin(0 15m 4k)" H 4250 4100 50  0000 L CNN
F 2 "" H 4250 4350 50  0001 C CNN
F 3 "~" H 4250 4350 50  0001 C CNN
	1    4250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5100 7550 5100
Wire Wire Line
	6550 2750 8400 2750
Wire Wire Line
	8400 3550 8400 2750
Wire Wire Line
	8400 4150 8400 5100
$Comp
L pspice:VSOURCE V2
U 1 1 5F48FA21
P 8400 3850
F 0 "V2" H 8628 3896 50  0000 L CNN
F 1 "12" H 8628 3805 50  0000 L CNN
F 2 "" H 8400 3850 50  0001 C CNN
F 3 "~" H 8400 3850 50  0001 C CNN
	1    8400 3850
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC548 Q1
U 1 1 5F4E9E51
P 6450 3850
F 0 "Q1" H 6641 3896 50  0000 L CNN
F 1 "BC548BP" H 6641 3805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6650 3775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6450 3850 50  0001 L CNN
F 4 "Q" H 6450 3850 50  0001 C CNN "Spice_Primitive"
F 5 "BC548BP" H 6450 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6450 3850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/usr/share/kicad/library/spice-library/spice-models.lib" H 6450 3850 50  0001 C CNN "Spice_Lib_File"
	1    6450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3850 6250 3850
Wire Wire Line
	6550 3350 6550 3500
Wire Wire Line
	6550 4050 6550 4250
Wire Wire Line
	4250 3600 4250 3850
Connection ~ 4250 3850
$Comp
L pspice:C C2
U 1 1 5F4F24CE
P 7050 3500
F 0 "C2" V 6735 3500 50  0000 C CNN
F 1 "10u" V 6826 3500 50  0000 C CNN
F 2 "" H 7050 3500 50  0001 C CNN
F 3 "~" H 7050 3500 50  0001 C CNN
	1    7050 3500
	0    1    1    0   
$EndComp
$Comp
L pspice:R RL
U 1 1 5F4F2C17
P 7550 4300
F 0 "RL" H 7618 4346 50  0000 L CNN
F 1 "100k" H 7618 4255 50  0000 L CNN
F 2 "" H 7550 4300 50  0001 C CNN
F 3 "~" H 7550 4300 50  0001 C CNN
	1    7550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3500 6800 3500
Wire Wire Line
	7550 3500 7550 4050
Wire Wire Line
	7300 3500 7550 3500
Wire Wire Line
	7550 4550 7550 5100
Connection ~ 6550 3500
Wire Wire Line
	6550 3500 6550 3650
Connection ~ 7550 5100
Wire Wire Line
	7550 5100 7050 5100
Wire Wire Line
	7550 3500 7550 3300
Connection ~ 7550 3500
$Comp
L pspice:C C3
U 1 1 5F4F5668
P 7050 4700
F 0 "C3" H 6900 4450 50  0000 C CNN
F 1 "10u" H 6826 4700 50  0000 C CNN
F 2 "" H 7050 4700 50  0001 C CNN
F 3 "~" H 7050 4700 50  0001 C CNN
	1    7050 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 4250 7050 4250
Wire Wire Line
	7050 4250 7050 4450
Wire Wire Line
	7050 4950 7050 5100
Connection ~ 6550 4250
Wire Wire Line
	6550 4250 6550 4350
Connection ~ 7050 5100
Wire Wire Line
	7050 5100 6550 5100
Text Notes 4250 5350 0    50   ~ 0
*.ac dec 10 10 10k\n.tran 10u 1m\n
$EndSCHEMATC
