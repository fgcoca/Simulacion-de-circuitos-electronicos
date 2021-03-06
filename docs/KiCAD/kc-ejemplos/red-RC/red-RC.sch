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
L pspice:0 #GND01
U 1 1 5F44E832
P 3400 4800
F 0 "#GND01" H 3400 4700 50  0001 C CNN
F 1 "0" H 3500 4900 50  0000 C CNN
F 2 "" H 3400 4800 50  0001 C CNN
F 3 "~" H 3400 4800 50  0001 C CNN
	1    3400 4800
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C1
U 1 1 5F44EB98
P 4700 4300
F 0 "C1" H 4878 4346 50  0000 L CNN
F 1 "1u" H 4878 4255 50  0000 L CNN
F 2 "" H 4700 4300 50  0001 C CNN
F 3 "~" H 4700 4300 50  0001 C CNN
	1    4700 4300
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R1
U 1 1 5F44F640
P 4100 3800
F 0 "R1" V 3895 3800 50  0000 C CNN
F 1 "10k" V 3986 3800 50  0000 C CNN
F 2 "" H 4100 3800 50  0001 C CNN
F 3 "~" H 4100 3800 50  0001 C CNN
	1    4100 3800
	0    1    1    0   
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5F45001B
P 3400 4300
F 0 "V1" H 3628 4346 50  0000 L CNN
F 1 "PULSE (0 5 1u 1u 1u 1 1)" H 3500 4000 50  0000 L CNN
F 2 "" H 3400 4300 50  0001 C CNN
F 3 "~" H 3400 4300 50  0001 C CNN
	1    3400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4600 3400 4800
$Comp
L pspice:0 #GND02
U 1 1 5F454157
P 4700 4800
F 0 "#GND02" H 4700 4700 50  0001 C CNN
F 1 "0" H 4800 4900 50  0000 C CNN
F 2 "" H 4700 4800 50  0001 C CNN
F 3 "~" H 4700 4800 50  0001 C CNN
	1    4700 4800
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND03
U 1 1 5F45449C
P 5750 4800
F 0 "#GND03" H 5750 4700 50  0001 C CNN
F 1 "0" H 5850 4900 50  0000 C CNN
F 2 "" H 5750 4800 50  0001 C CNN
F 3 "~" H 5750 4800 50  0001 C CNN
	1    5750 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4550 4700 4800
Wire Wire Line
	3400 3800 3400 4000
Wire Wire Line
	3400 3800 3200 3800
Wire Wire Line
	3850 3800 3400 3800
Connection ~ 3400 3800
Wire Wire Line
	4700 3800 4700 4050
Text GLabel 3200 3800 0    50   Input ~ 0
ent
$Comp
L pspice:R R2
U 1 1 5F45728A
P 5250 3800
F 0 "R2" V 5045 3800 50  0000 C CNN
F 1 "1k" V 5136 3800 50  0000 C CNN
F 2 "" H 5250 3800 50  0001 C CNN
F 3 "~" H 5250 3800 50  0001 C CNN
	1    5250 3800
	0    1    1    0   
$EndComp
$Comp
L pspice:C C2
U 1 1 5F458244
P 5750 4300
F 0 "C2" H 5928 4346 50  0000 L CNN
F 1 "100n" H 5928 4255 50  0000 L CNN
F 2 "" H 5750 4300 50  0001 C CNN
F 3 "~" H 5750 4300 50  0001 C CNN
	1    5750 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3800 4700 3800
Wire Wire Line
	5000 3800 4700 3800
Connection ~ 4700 3800
Wire Wire Line
	4700 3800 4700 3500
Wire Wire Line
	4700 3500 4800 3500
Wire Wire Line
	5500 3800 5750 3800
Wire Wire Line
	5750 3800 5750 4050
Wire Wire Line
	5750 4550 5750 4800
Wire Wire Line
	5750 3800 6000 3800
Connection ~ 5750 3800
Text GLabel 6000 3800 2    50   Input ~ 0
sal
Text GLabel 4800 3500 2    50   Input ~ 0
PB1
Text Notes 3150 5050 0    50   ~ 0
;ac dec 10 1 100k
Text Notes 3150 5200 0    50   ~ 0
.tran 1u 100m
$EndSCHEMATC
