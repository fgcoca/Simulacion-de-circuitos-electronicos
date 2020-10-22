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
P 1650 2500
F 0 "C1" V 1335 2500 50  0000 C CNN
F 1 "1u" V 1426 2500 50  0000 C CNN
F 2 "" H 1650 2500 50  0001 C CNN
F 3 "~" H 1650 2500 50  0001 C CNN
	1    1650 2500
	0    1    1    0   
$EndComp
$Comp
L pspice:R R3
U 1 1 5F48F141
P 3450 1750
F 0 "R3" H 3518 1796 50  0000 L CNN
F 1 "3.9k" H 3518 1705 50  0000 L CNN
F 2 "" H 3450 1750 50  0001 C CNN
F 3 "~" H 3450 1750 50  0001 C CNN
	1    3450 1750
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R1
U 1 1 5F490A18
P 2250 1800
F 0 "R1" H 2318 1846 50  0000 L CNN
F 1 "100k" H 2318 1755 50  0000 L CNN
F 2 "" H 2250 1800 50  0001 C CNN
F 3 "~" H 2250 1800 50  0001 C CNN
	1    2250 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1500 3450 1400
Wire Wire Line
	2250 1400 2250 1550
Wire Wire Line
	2250 2050 2250 2500
Wire Wire Line
	2250 1400 3450 1400
Wire Wire Line
	3450 3000 3450 2950
Connection ~ 3450 2950
Connection ~ 2250 2500
Wire Wire Line
	1150 2500 1150 2700
Wire Wire Line
	1150 2500 1400 2500
Wire Wire Line
	1900 2500 2250 2500
Connection ~ 3450 1400
Text GLabel 3550 2150 2    50   Input ~ 0
c
Text GLabel 3550 2950 2    50   Input ~ 0
e
Text GLabel 2950 2350 2    50   Input ~ 0
b
Wire Wire Line
	3550 2150 3450 2150
Wire Wire Line
	2900 2350 2900 2500
Connection ~ 2900 2500
Wire Wire Line
	2900 2500 2250 2500
Wire Wire Line
	2900 2350 2950 2350
Wire Wire Line
	3450 2950 3550 2950
Wire Wire Line
	2250 2500 2250 3000
Wire Wire Line
	1150 3300 1150 3750
Connection ~ 3450 3750
Wire Wire Line
	1150 3750 2250 3750
Wire Wire Line
	2250 3750 2250 3900
Connection ~ 2250 3750
Wire Wire Line
	3450 3750 3450 3500
Wire Wire Line
	2250 3750 3450 3750
Wire Wire Line
	2250 3500 2250 3750
$Comp
L pspice:R R2
U 1 1 5F490E51
P 2250 3250
F 0 "R2" H 2318 3296 50  0000 L CNN
F 1 "22k" H 2318 3205 50  0000 L CNN
F 2 "" H 2250 3250 50  0001 C CNN
F 3 "~" H 2250 3250 50  0001 C CNN
	1    2250 3250
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R4
U 1 1 5F490665
P 3450 3250
F 0 "R4" H 3518 3296 50  0000 L CNN
F 1 "1k" H 3518 3205 50  0000 L CNN
F 2 "" H 3450 3250 50  0001 C CNN
F 3 "~" H 3450 3250 50  0001 C CNN
	1    3450 3250
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND01
U 1 1 5F48E160
P 2250 3900
F 0 "#GND01" H 2250 3800 50  0001 C CNN
F 1 "0" H 2300 4000 50  0000 C CNN
F 2 "" H 2250 3900 50  0001 C CNN
F 3 "~" H 2250 3900 50  0001 C CNN
	1    2250 3900
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5F4998A0
P 1150 3000
F 0 "V1" H 1378 3046 50  0000 L CNN
F 1 " dc 0 ac 1 $SIN(0 1 1k)" H 1150 2750 50  0000 L CNN
F 2 "" H 1150 3000 50  0001 C CNN
F 3 "~" H 1150 3000 50  0001 C CNN
	1    1150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3750 3450 3750
Wire Wire Line
	3450 1400 4350 1400
Wire Wire Line
	4350 2200 4350 1400
Wire Wire Line
	4350 2800 4350 3750
$Comp
L pspice:VSOURCE V2
U 1 1 5F48FA21
P 4350 2500
F 0 "V2" H 4578 2546 50  0000 L CNN
F 1 "12" H 4578 2455 50  0000 L CNN
F 2 "" H 4350 2500 50  0001 C CNN
F 3 "~" H 4350 2500 50  0001 C CNN
	1    4350 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2000 3450 2150
Text Notes 1150 1600 0    50   ~ 0
.ac dec 10 10 10k
Wire Wire Line
	2900 2500 3150 2500
Wire Wire Line
	3450 2300 3450 2150
Connection ~ 3450 2150
Wire Wire Line
	3450 2700 3450 2950
$Comp
L Transistor_BJT:BC548 Q?
U 1 1 5F4E9E51
P 3350 2500
F 0 "Q?" H 3541 2546 50  0000 L CNN
F 1 "BC548BP" H 3541 2455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3550 2425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3350 2500 50  0001 L CNN
F 4 "Q" H 3350 2500 50  0001 C CNN "Spice_Primitive"
F 5 "BC548BP" H 3350 2500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3350 2500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/usr/share/kicad/library/spice-library/spice-models.lib" H 3350 2500 50  0001 C CNN "Spice_Lib_File"
	1    3350 2500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
