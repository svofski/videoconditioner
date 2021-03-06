EESchema Schematic File Version 2
LIBS:videoadc-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:videoadc-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DE1 Sigma-Delta Video DAC, 4 Channel"
Date "2014"
Rev "Rev.A"
Comp "Viacheslav Slavinsky"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_20X2 P2
U 1 1 53D375E2
P 3750 2150
F 0 "P2" H 3750 3200 60  0000 C CNN
F 1 "CONN_20X2" V 3750 2150 50  0000 C CNN
F 2 "" H 3750 2150 60  0000 C CNN
F 3 "" H 3750 2150 60  0000 C CNN
	1    3750 2150
	1    0    0    -1  
$EndComp
$Comp
L CONN_4X2 P1
U 1 1 53D376E2
P 2750 4900
F 0 "P1" H 2750 5150 50  0000 C CNN
F 1 "CONN_4X2" V 2750 4900 40  0000 C CNN
F 2 "" H 2750 4900 60  0000 C CNN
F 3 "" H 2750 4900 60  0000 C CNN
	1    2750 4900
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR01
U 1 1 53D37774
P 2350 5150
F 0 "#PWR01" H 2350 5150 30  0001 C CNN
F 1 "GND" H 2350 5080 30  0001 C CNN
F 2 "" H 2350 5150 60  0000 C CNN
F 3 "" H 2350 5150 60  0000 C CNN
	1    2350 5150
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-videoadc R2
U 1 1 53D3786D
P 3400 5350
F 0 "R2" V 3480 5350 40  0000 C CNN
F 1 "75" V 3407 5351 40  0000 C CNN
F 2 "" V 3330 5350 30  0000 C CNN
F 3 "" H 3400 5350 30  0000 C CNN
	1    3400 5350
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-videoadc R3
U 1 1 53D378A4
P 3650 5350
F 0 "R3" V 3730 5350 40  0000 C CNN
F 1 "75" V 3657 5351 40  0000 C CNN
F 2 "" V 3580 5350 30  0000 C CNN
F 3 "" H 3650 5350 30  0000 C CNN
	1    3650 5350
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-videoadc R4
U 1 1 53D378CF
P 3900 5350
F 0 "R4" V 3980 5350 40  0000 C CNN
F 1 "75" V 3907 5351 40  0000 C CNN
F 2 "" V 3830 5350 30  0000 C CNN
F 3 "" H 3900 5350 30  0000 C CNN
	1    3900 5350
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-videoadc R5
U 1 1 53D378F6
P 4150 5350
F 0 "R5" V 4230 5350 40  0000 C CNN
F 1 "75" V 4157 5351 40  0000 C CNN
F 2 "" V 4080 5350 30  0000 C CNN
F 3 "" H 4150 5350 30  0000 C CNN
	1    4150 5350
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR02
U 1 1 53D37985
P 3400 5600
F 0 "#PWR02" H 3400 5600 30  0001 C CNN
F 1 "GND" H 3400 5530 30  0001 C CNN
F 2 "" H 3400 5600 60  0000 C CNN
F 3 "" H 3400 5600 60  0000 C CNN
	1    3400 5600
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR03
U 1 1 53D37999
P 3650 5600
F 0 "#PWR03" H 3650 5600 30  0001 C CNN
F 1 "GND" H 3650 5530 30  0001 C CNN
F 2 "" H 3650 5600 60  0000 C CNN
F 3 "" H 3650 5600 60  0000 C CNN
	1    3650 5600
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR04
U 1 1 53D379AD
P 3900 5600
F 0 "#PWR04" H 3900 5600 30  0001 C CNN
F 1 "GND" H 3900 5530 30  0001 C CNN
F 2 "" H 3900 5600 60  0000 C CNN
F 3 "" H 3900 5600 60  0000 C CNN
	1    3900 5600
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR05
U 1 1 53D379C1
P 4150 5600
F 0 "#PWR05" H 4150 5600 30  0001 C CNN
F 1 "GND" H 4150 5530 30  0001 C CNN
F 2 "" H 4150 5600 60  0000 C CNN
F 3 "" H 4150 5600 60  0000 C CNN
	1    4150 5600
	1    0    0    -1  
$EndComp
$Comp
L CP1-RESCUE-videoadc C2
U 1 1 53D379ED
P 4900 4450
F 0 "C2" H 4950 4550 50  0000 L CNN
F 1 "33.0" V 4850 4200 50  0000 L CNN
F 2 "" H 4900 4450 60  0000 C CNN
F 3 "" H 4900 4450 60  0000 C CNN
	1    4900 4450
	0    -1   -1   0   
$EndComp
$Comp
L CP1-RESCUE-videoadc C3
U 1 1 53D37A8C
P 4900 4700
F 0 "C3" H 4950 4800 50  0000 L CNN
F 1 "33.0" V 4850 4450 50  0000 L CNN
F 2 "" H 4900 4700 60  0000 C CNN
F 3 "" H 4900 4700 60  0000 C CNN
	1    4900 4700
	0    -1   -1   0   
$EndComp
$Comp
L CP1-RESCUE-videoadc C4
U 1 1 53D37BDC
P 4900 4950
F 0 "C4" H 4950 5050 50  0000 L CNN
F 1 "33.0" V 4850 4700 50  0000 L CNN
F 2 "" H 4900 4950 60  0000 C CNN
F 3 "" H 4900 4950 60  0000 C CNN
	1    4900 4950
	0    -1   -1   0   
$EndComp
$Comp
L CP1-RESCUE-videoadc C5
U 1 1 53D37C1D
P 4900 5200
F 0 "C5" H 4950 5300 50  0000 L CNN
F 1 "33.0" V 4850 4950 50  0000 L CNN
F 2 "" H 4900 5200 60  0000 C CNN
F 3 "" H 4900 5200 60  0000 C CNN
	1    4900 5200
	0    -1   -1   0   
$EndComp
$Comp
L POT RV1
U 1 1 53D37FC4
P 5650 4200
F 0 "RV1" H 5650 4100 50  0000 C CNN
F 1 "100K" H 5650 4200 50  0000 C CNN
F 2 "" H 5650 4200 60  0000 C CNN
F 3 "" H 5650 4200 60  0000 C CNN
	1    5650 4200
	-1   0    0    1   
$EndComp
$Comp
L POT RV2
U 1 1 53D38127
P 6400 4200
F 0 "RV2" H 6400 4100 50  0000 C CNN
F 1 "100K" H 6400 4200 50  0000 C CNN
F 2 "" H 6400 4200 60  0000 C CNN
F 3 "" H 6400 4200 60  0000 C CNN
	1    6400 4200
	-1   0    0    1   
$EndComp
$Comp
L POT RV3
U 1 1 53D38177
P 7150 4200
F 0 "RV3" H 7150 4100 50  0000 C CNN
F 1 "100K" H 7150 4200 50  0000 C CNN
F 2 "" H 7150 4200 60  0000 C CNN
F 3 "" H 7150 4200 60  0000 C CNN
	1    7150 4200
	-1   0    0    1   
$EndComp
$Comp
L POT RV4
U 1 1 53D38301
P 7900 4200
F 0 "RV4" H 7900 4100 50  0000 C CNN
F 1 "100K" H 7900 4200 50  0000 C CNN
F 2 "" H 7900 4200 60  0000 C CNN
F 3 "" H 7900 4200 60  0000 C CNN
	1    7900 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 4750 2350 4850
Wire Wire Line
	2350 4850 2350 4950
Wire Wire Line
	2350 4950 2350 5050
Wire Wire Line
	2350 5050 2350 5150
Connection ~ 2350 4850
Connection ~ 2350 4950
Connection ~ 2350 5050
Wire Wire Line
	3150 5050 3400 5050
Wire Wire Line
	3400 5050 4700 5050
Wire Wire Line
	3400 5050 3400 5100
Wire Wire Line
	3150 4950 3650 4950
Wire Wire Line
	3650 4950 4700 4950
Wire Wire Line
	3650 4950 3650 5100
Wire Wire Line
	3150 4850 3900 4850
Wire Wire Line
	3900 4850 4350 4850
Wire Wire Line
	3900 4850 3900 5100
Wire Wire Line
	3150 4750 4150 4750
Wire Wire Line
	4150 4450 4150 4750
Wire Wire Line
	4150 4750 4150 5100
Wire Wire Line
	4150 4450 4700 4450
Connection ~ 4150 4750
Wire Wire Line
	4350 4850 4350 4700
Wire Wire Line
	4350 4700 4700 4700
Connection ~ 3900 4850
Connection ~ 3650 4950
Wire Wire Line
	4700 5050 4700 5200
Connection ~ 3400 5050
Wire Wire Line
	5100 4450 5650 4450
Wire Wire Line
	5650 4450 9600 4450
Wire Wire Line
	5650 4450 5650 4350
Wire Wire Line
	5100 4700 6400 4700
Wire Wire Line
	6400 4700 9150 4700
Wire Wire Line
	6400 4700 6400 4350
Wire Wire Line
	5100 4950 7150 4950
Wire Wire Line
	7150 4950 8750 4950
Wire Wire Line
	7150 4950 7150 4350
Wire Wire Line
	5100 5200 7900 5200
Wire Wire Line
	7900 5200 8300 5200
Wire Wire Line
	7900 5200 7900 4350
$Comp
L GND-RESCUE-videoadc #PWR06
U 1 1 53D387FD
P 5900 4300
F 0 "#PWR06" H 5900 4300 30  0001 C CNN
F 1 "GND" H 5900 4230 30  0001 C CNN
F 2 "" H 5900 4300 60  0000 C CNN
F 3 "" H 5900 4300 60  0000 C CNN
	1    5900 4300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR07
U 1 1 53D38839
P 6650 4300
F 0 "#PWR07" H 6650 4300 30  0001 C CNN
F 1 "GND" H 6650 4230 30  0001 C CNN
F 2 "" H 6650 4300 60  0000 C CNN
F 3 "" H 6650 4300 60  0000 C CNN
	1    6650 4300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR08
U 1 1 53D38932
P 7400 4300
F 0 "#PWR08" H 7400 4300 30  0001 C CNN
F 1 "GND" H 7400 4230 30  0001 C CNN
F 2 "" H 7400 4300 60  0000 C CNN
F 3 "" H 7400 4300 60  0000 C CNN
	1    7400 4300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR09
U 1 1 53D38B19
P 8150 4300
F 0 "#PWR09" H 8150 4300 30  0001 C CNN
F 1 "GND" H 8150 4230 30  0001 C CNN
F 2 "" H 8150 4300 60  0000 C CNN
F 3 "" H 8150 4300 60  0000 C CNN
	1    8150 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4200 8150 4300
Wire Wire Line
	7400 4200 7400 4300
Wire Wire Line
	6650 4200 6650 4300
Wire Wire Line
	5900 4200 5900 4300
Wire Wire Line
	5400 3800 5400 3900
Wire Wire Line
	5400 3900 5400 4200
Wire Wire Line
	6900 3900 6900 4200
Wire Wire Line
	6150 3900 6150 4200
Wire Wire Line
	7650 3900 7650 4200
$Comp
L DOUBLE_SCHOTTKY D1
U 1 1 53D39427
P 8500 5200
F 0 "D1" H 8600 5100 40  0000 C CNN
F 1 "BAT54S" H 8500 5300 40  0000 C CNN
F 2 "" H 8500 5200 60  0000 C CNN
F 3 "" H 8500 5200 60  0000 C CNN
	1    8500 5200
	0    1    -1   0   
$EndComp
$Comp
L DOUBLE_SCHOTTKY D2
U 1 1 53D397EA
P 8950 4950
F 0 "D2" H 9050 4850 40  0000 C CNN
F 1 "BAT54S" H 8950 5050 40  0000 C CNN
F 2 "" H 8950 4950 60  0000 C CNN
F 3 "" H 8950 4950 60  0000 C CNN
	1    8950 4950
	0    1    -1   0   
$EndComp
$Comp
L DOUBLE_SCHOTTKY D3
U 1 1 53D39820
P 9350 4700
F 0 "D3" H 9450 4600 40  0000 C CNN
F 1 "BAT54S" H 9350 4800 40  0000 C CNN
F 2 "" H 9350 4700 60  0000 C CNN
F 3 "" H 9350 4700 60  0000 C CNN
	1    9350 4700
	0    1    -1   0   
$EndComp
$Comp
L DOUBLE_SCHOTTKY D4
U 1 1 53D39851
P 9800 4450
F 0 "D4" H 9900 4350 40  0000 C CNN
F 1 "BAT54S" H 9800 4550 40  0000 C CNN
F 2 "" H 9800 4450 60  0000 C CNN
F 3 "" H 9800 4450 60  0000 C CNN
	1    9800 4450
	0    1    -1   0   
$EndComp
Connection ~ 7900 5200
Connection ~ 7150 4950
Connection ~ 6400 4700
Connection ~ 5650 4450
Wire Wire Line
	8500 3900 8500 4800
Wire Wire Line
	5400 3900 6150 3900
Wire Wire Line
	6150 3900 6900 3900
Wire Wire Line
	6900 3900 7650 3900
Wire Wire Line
	7650 3900 8500 3900
Wire Wire Line
	8500 3900 8950 3900
Wire Wire Line
	8950 3900 9350 3900
Wire Wire Line
	9350 3900 9800 3900
Wire Wire Line
	9800 3900 10250 3900
Wire Wire Line
	10250 3900 10550 3900
Wire Wire Line
	10550 3900 10800 3900
Wire Wire Line
	10800 3900 11050 3900
Wire Wire Line
	9800 3900 9800 4050
Wire Wire Line
	9350 4300 9350 3900
Connection ~ 9350 3900
Wire Wire Line
	8950 4550 8950 3900
Connection ~ 8950 3900
Connection ~ 8500 3900
Connection ~ 7650 3900
Connection ~ 6900 3900
Connection ~ 6150 3900
$Comp
L +2.5V #PWR010
U 1 1 53D39CDE
P 5400 3800
F 0 "#PWR010" H 5400 3750 20  0001 C CNN
F 1 "+2.5V" H 5400 3900 30  0000 C CNN
F 2 "" H 5400 3800 60  0000 C CNN
F 3 "" H 5400 3800 60  0000 C CNN
	1    5400 3800
	1    0    0    -1  
$EndComp
Connection ~ 5400 3900
$Comp
L GND-RESCUE-videoadc #PWR011
U 1 1 53D39D4A
P 8500 5600
F 0 "#PWR011" H 8500 5600 30  0001 C CNN
F 1 "GND" H 8500 5530 30  0001 C CNN
F 2 "" H 8500 5600 60  0000 C CNN
F 3 "" H 8500 5600 60  0000 C CNN
	1    8500 5600
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR012
U 1 1 53D39D67
P 8950 5350
F 0 "#PWR012" H 8950 5350 30  0001 C CNN
F 1 "GND" H 8950 5280 30  0001 C CNN
F 2 "" H 8950 5350 60  0000 C CNN
F 3 "" H 8950 5350 60  0000 C CNN
	1    8950 5350
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR013
U 1 1 53D39D84
P 9350 5100
F 0 "#PWR013" H 9350 5100 30  0001 C CNN
F 1 "GND" H 9350 5030 30  0001 C CNN
F 2 "" H 9350 5100 60  0000 C CNN
F 3 "" H 9350 5100 60  0000 C CNN
	1    9350 5100
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR014
U 1 1 53D39DA1
P 9800 4850
F 0 "#PWR014" H 9800 4850 30  0001 C CNN
F 1 "GND" H 9800 4780 30  0001 C CNN
F 2 "" H 9800 4850 60  0000 C CNN
F 3 "" H 9800 4850 60  0000 C CNN
	1    9800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4450 9600 3550
Wire Wire Line
	9150 4700 9150 3550
Wire Wire Line
	8750 4950 8750 3550
Wire Wire Line
	8300 5200 8300 3550
Wire Wire Line
	4150 3100 4600 3100
Wire Wire Line
	4150 2600 4350 2600
$Comp
L GND-RESCUE-videoadc #PWR015
U 1 1 53D3B25B
P 4350 2600
F 0 "#PWR015" H 4350 2600 30  0001 C CNN
F 1 "GND" H 4350 2530 30  0001 C CNN
F 2 "" H 4350 2600 60  0000 C CNN
F 3 "" H 4350 2600 60  0000 C CNN
	1    4350 2600
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR016
U 1 1 53D3B85F
P 1550 2200
F 0 "#PWR016" H 1550 2200 30  0001 C CNN
F 1 "GND" H 1550 2130 30  0001 C CNN
F 2 "" H 1550 2200 60  0000 C CNN
F 3 "" H 1550 2200 60  0000 C CNN
	1    1550 2200
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-videoadc R1
U 1 1 53D3B8FD
P 850 1400
F 0 "R1" V 930 1400 40  0000 C CNN
F 1 "10K" V 857 1401 40  0000 C CNN
F 2 "" V 780 1400 30  0000 C CNN
F 3 "" H 850 1400 30  0000 C CNN
	1    850  1400
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-videoadc R11
U 1 1 53D3B94B
P 850 2150
F 0 "R11" V 930 2150 40  0000 C CNN
F 1 "10K" V 857 2151 40  0000 C CNN
F 2 "" V 780 2150 30  0000 C CNN
F 3 "" H 850 2150 30  0000 C CNN
	1    850  2150
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR017
U 1 1 53D3B98B
P 850 2400
F 0 "#PWR017" H 850 2400 30  0001 C CNN
F 1 "GND" H 850 2330 30  0001 C CNN
F 2 "" H 850 2400 60  0000 C CNN
F 3 "" H 850 2400 60  0000 C CNN
	1    850  2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1650 850  1700
Wire Wire Line
	850  1700 850  1900
Wire Wire Line
	850  1150 850  1100
Connection ~ 850  1700
$Comp
L +2.5V #PWR018
U 1 1 53D3BE20
P 2150 1750
F 0 "#PWR018" H 2150 1700 20  0001 C CNN
F 1 "+2.5V" H 2150 1850 30  0000 C CNN
F 2 "" H 2150 1750 60  0000 C CNN
F 3 "" H 2150 1750 60  0000 C CNN
	1    2150 1750
	1    0    0    -1  
$EndComp
$Comp
L LM358 U1
U 1 1 53D3BF6B
P 1650 1800
F 0 "U1" H 1600 2000 60  0000 L CNN
F 1 "LM358" H 1600 1550 60  0000 L CNN
F 2 "" H 1650 1800 60  0000 C CNN
F 3 "" H 1650 1800 60  0000 C CNN
	1    1650 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1750 2150 1800
Wire Wire Line
	2150 1800 2150 2350
Wire Wire Line
	2150 2350 1150 2350
Wire Wire Line
	1150 2350 1150 1900
$Comp
L +3.3V #PWR019
U 1 1 53D3B2B7
P 2750 2600
F 0 "#PWR019" H 2750 2560 30  0001 C CNN
F 1 "+3.3V" H 2750 2710 30  0000 C CNN
F 2 "" H 2750 2600 60  0000 C CNN
F 3 "" H 2750 2600 60  0000 C CNN
	1    2750 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2600 3350 2600
Wire Wire Line
	600  1700 850  1700
Wire Wire Line
	850  1700 1150 1700
Wire Wire Line
	3350 1700 2550 1700
Wire Wire Line
	2550 1700 2550 1100
Wire Wire Line
	2550 1100 1950 1100
Wire Wire Line
	1950 1100 1550 1100
Wire Wire Line
	1550 1100 850  1100
Wire Wire Line
	1550 1000 1550 1100
Wire Wire Line
	1550 1100 1550 1400
Connection ~ 1550 1100
Connection ~ 2150 1800
Wire Wire Line
	2150 1800 2250 1800
$Comp
L C-RESCUE-videoadc C1
U 1 1 53D3CEB3
P 600 2100
F 0 "C1" H 600 2200 40  0000 L CNN
F 1 "0.1" H 606 2015 40  0000 L CNN
F 2 "" H 638 1950 30  0000 C CNN
F 3 "" H 600 2100 60  0000 C CNN
	1    600  2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  1700 600  1900
Wire Wire Line
	600  2300 600  2400
$Comp
L GND-RESCUE-videoadc #PWR020
U 1 1 53D3CFC2
P 600 2400
F 0 "#PWR020" H 600 2400 30  0001 C CNN
F 1 "GND" H 600 2330 30  0001 C CNN
F 2 "" H 600 2400 60  0000 C CNN
F 3 "" H 600 2400 60  0000 C CNN
	1    600  2400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR021
U 1 1 53D3D12B
P 1550 1000
F 0 "#PWR021" H 1550 1090 20  0001 C CNN
F 1 "+5V" H 1550 1150 30  0000 C CNN
F 2 "" H 1550 1000 60  0000 C CNN
F 3 "" H 1550 1000 60  0000 C CNN
	1    1550 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3100 2850 3100
Text Label 4600 3100 2    60   ~ 0
LVDS3
Text Label 2850 3100 0    60   ~ 0
~LVDS3
Wire Wire Line
	4150 3000 4600 3000
Text Label 4600 3000 2    60   ~ 0
LVDS2
Wire Wire Line
	3350 3000 2850 3000
Text Label 2850 3000 0    60   ~ 0
~LVDS2
Wire Wire Line
	3350 2900 2850 2900
Text Label 2850 2900 0    60   ~ 0
LVDS1
Wire Wire Line
	4150 2900 4600 2900
Text Label 4600 2900 2    60   ~ 0
~LVDS1
Wire Wire Line
	4150 2500 4600 2500
Text Label 4600 2500 2    60   ~ 0
LVDS0
Wire Wire Line
	3350 2700 2850 2700
Text Label 2850 2700 0    60   ~ 0
~LVDS0
Wire Wire Line
	4150 1900 4600 1900
Text Label 4600 1900 2    60   ~ 0
ADCINT0
Wire Wire Line
	3350 2000 2850 2000
Text Label 2850 2000 0    60   ~ 0
ADCINT1
Wire Wire Line
	4150 2000 4600 2000
Text Label 4600 2000 2    60   ~ 0
ADCINT2
Wire Wire Line
	3350 2100 2850 2100
Text Label 2850 2100 0    60   ~ 0
ADCINT3
$Comp
L C-RESCUE-videoadc C6
U 1 1 53D3E7A2
P 7250 1450
F 0 "C6" H 7250 1550 40  0000 L CNN
F 1 "220" H 7256 1365 40  0000 L CNN
F 2 "" H 7288 1300 30  0000 C CNN
F 3 "" H 7250 1450 60  0000 C CNN
	1    7250 1450
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-videoadc R6
U 1 1 53D3EEA4
P 7000 1250
F 0 "R6" V 7080 1250 40  0000 C CNN
F 1 "470" V 7007 1251 40  0000 C CNN
F 2 "" V 6930 1250 30  0000 C CNN
F 3 "" H 7000 1250 30  0000 C CNN
	1    7000 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 1250 6400 1250
Wire Wire Line
	7250 1250 7650 1250
$Comp
L GND-RESCUE-videoadc #PWR022
U 1 1 53D3F30D
P 7250 1650
F 0 "#PWR022" H 7250 1650 30  0001 C CNN
F 1 "GND" H 7250 1580 30  0001 C CNN
F 2 "" H 7250 1650 60  0000 C CNN
F 3 "" H 7250 1650 60  0000 C CNN
	1    7250 1650
	1    0    0    -1  
$EndComp
Text Label 7650 1250 2    60   ~ 0
~LVDS0
Text Label 6400 1250 0    60   ~ 0
ADCINT0
Connection ~ 7250 1250
$Comp
L C-RESCUE-videoadc C7
U 1 1 53D3F54E
P 7250 2050
F 0 "C7" H 7250 2150 40  0000 L CNN
F 1 "220" H 7256 1965 40  0000 L CNN
F 2 "" H 7288 1900 30  0000 C CNN
F 3 "" H 7250 2050 60  0000 C CNN
	1    7250 2050
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-videoadc R7
U 1 1 53D3F554
P 7000 1850
F 0 "R7" V 7080 1850 40  0000 C CNN
F 1 "470" V 7007 1851 40  0000 C CNN
F 2 "" V 6930 1850 30  0000 C CNN
F 3 "" H 7000 1850 30  0000 C CNN
	1    7000 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 1850 6400 1850
Wire Wire Line
	7250 1850 7650 1850
$Comp
L GND-RESCUE-videoadc #PWR023
U 1 1 53D3F55C
P 7250 2250
F 0 "#PWR023" H 7250 2250 30  0001 C CNN
F 1 "GND" H 7250 2180 30  0001 C CNN
F 2 "" H 7250 2250 60  0000 C CNN
F 3 "" H 7250 2250 60  0000 C CNN
	1    7250 2250
	1    0    0    -1  
$EndComp
Text Label 7650 1850 2    60   ~ 0
~LVDS1
Text Label 6400 1850 0    60   ~ 0
ADCINT1
Connection ~ 7250 1850
$Comp
L C-RESCUE-videoadc C8
U 1 1 53D3F635
P 7250 2700
F 0 "C8" H 7250 2800 40  0000 L CNN
F 1 "220" H 7256 2615 40  0000 L CNN
F 2 "" H 7288 2550 30  0000 C CNN
F 3 "" H 7250 2700 60  0000 C CNN
	1    7250 2700
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-videoadc R8
U 1 1 53D3F63B
P 7000 2500
F 0 "R8" V 7080 2500 40  0000 C CNN
F 1 "470" V 7007 2501 40  0000 C CNN
F 2 "" V 6930 2500 30  0000 C CNN
F 3 "" H 7000 2500 30  0000 C CNN
	1    7000 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 2500 6400 2500
Wire Wire Line
	7250 2500 7650 2500
$Comp
L GND-RESCUE-videoadc #PWR024
U 1 1 53D3F643
P 7250 2900
F 0 "#PWR024" H 7250 2900 30  0001 C CNN
F 1 "GND" H 7250 2830 30  0001 C CNN
F 2 "" H 7250 2900 60  0000 C CNN
F 3 "" H 7250 2900 60  0000 C CNN
	1    7250 2900
	1    0    0    -1  
$EndComp
Text Label 7650 2500 2    60   ~ 0
~LVDS2
Text Label 6400 2500 0    60   ~ 0
ADCINT2
Connection ~ 7250 2500
$Comp
L C-RESCUE-videoadc C9
U 1 1 53D3F64C
P 7250 3300
F 0 "C9" H 7250 3400 40  0000 L CNN
F 1 "220" H 7256 3215 40  0000 L CNN
F 2 "" H 7288 3150 30  0000 C CNN
F 3 "" H 7250 3300 60  0000 C CNN
	1    7250 3300
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-videoadc R9
U 1 1 53D3F652
P 7000 3100
F 0 "R9" V 7080 3100 40  0000 C CNN
F 1 "470" V 7007 3101 40  0000 C CNN
F 2 "" V 6930 3100 30  0000 C CNN
F 3 "" H 7000 3100 30  0000 C CNN
	1    7000 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 3100 6400 3100
Wire Wire Line
	7250 3100 7650 3100
$Comp
L GND-RESCUE-videoadc #PWR025
U 1 1 53D3F65A
P 7250 3500
F 0 "#PWR025" H 7250 3500 30  0001 C CNN
F 1 "GND" H 7250 3430 30  0001 C CNN
F 2 "" H 7250 3500 60  0000 C CNN
F 3 "" H 7250 3500 60  0000 C CNN
	1    7250 3500
	1    0    0    -1  
$EndComp
Text Label 7650 3100 2    60   ~ 0
~LVDS3
Text Label 6400 3100 0    60   ~ 0
ADCINT3
Connection ~ 7250 3100
Text Label 8300 3550 3    60   ~ 0
LVDS0
Text Label 8750 3550 3    60   ~ 0
LVDS1
Text Label 9150 3550 3    60   ~ 0
LVDS2
Text Label 9600 3550 3    60   ~ 0
LVDS3
$Comp
L CONN_1 PB1
U 1 1 53D4117D
P 4300 1200
F 0 "PB1" H 4380 1200 40  0000 L CNN
F 1 "CONN_1" H 4300 1255 30  0001 C CNN
F 2 "" H 4300 1200 60  0000 C CNN
F 3 "" H 4300 1200 60  0000 C CNN
	1    4300 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PB3
U 1 1 53D4137C
P 4300 1300
F 0 "PB3" H 4380 1300 40  0000 L CNN
F 1 "CONN_1" H 4300 1355 30  0001 C CNN
F 2 "" H 4300 1300 60  0000 C CNN
F 3 "" H 4300 1300 60  0000 C CNN
	1    4300 1300
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PB5
U 1 1 53D413B0
P 4300 1400
F 0 "PB5" H 4380 1400 40  0000 L CNN
F 1 "CONN_1" H 4300 1455 30  0001 C CNN
F 2 "" H 4300 1400 60  0000 C CNN
F 3 "" H 4300 1400 60  0000 C CNN
	1    4300 1400
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PB7
U 1 1 53D413E5
P 4300 1500
F 0 "PB7" H 4380 1500 40  0000 L CNN
F 1 "CONN_1" H 4300 1555 30  0001 C CNN
F 2 "" H 4300 1500 60  0000 C CNN
F 3 "" H 4300 1500 60  0000 C CNN
	1    4300 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PB9
U 1 1 53D4141B
P 4300 1600
F 0 "PB9" H 4380 1600 40  0000 L CNN
F 1 "CONN_1" H 4300 1655 30  0001 C CNN
F 2 "" H 4300 1600 60  0000 C CNN
F 3 "" H 4300 1600 60  0000 C CNN
	1    4300 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PB11
U 1 1 53D4148A
P 4300 1800
F 0 "PB11" H 4380 1800 40  0000 L CNN
F 1 "CONN_1" H 4300 1855 30  0001 C CNN
F 2 "" H 4300 1800 60  0000 C CNN
F 3 "" H 4300 1800 60  0000 C CNN
	1    4300 1800
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR026
U 1 1 53D414E7
P 4300 1700
F 0 "#PWR026" H 4300 1700 30  0001 C CNN
F 1 "GND" H 4300 1630 30  0001 C CNN
F 2 "" H 4300 1700 60  0000 C CNN
F 3 "" H 4300 1700 60  0000 C CNN
	1    4300 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 1700 4300 1700
$Comp
L CONN_1 PB17
U 1 1 53D41765
P 4300 2100
F 0 "PB17" H 4380 2100 40  0000 L CNN
F 1 "CONN_1" H 4300 2155 30  0001 C CNN
F 2 "" H 4300 2100 60  0000 C CNN
F 3 "" H 4300 2100 60  0000 C CNN
	1    4300 2100
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PB19
U 1 1 53D417A6
P 4300 2200
F 0 "PB19" H 4380 2200 40  0000 L CNN
F 1 "CONN_1" H 4300 2255 30  0001 C CNN
F 2 "" H 4300 2200 60  0000 C CNN
F 3 "" H 4300 2200 60  0000 C CNN
	1    4300 2200
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PB21
U 1 1 53D417E0
P 4300 2300
F 0 "PB21" H 4380 2300 40  0000 L CNN
F 1 "CONN_1" H 4300 2355 30  0001 C CNN
F 2 "" H 4300 2300 60  0000 C CNN
F 3 "" H 4300 2300 60  0000 C CNN
	1    4300 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PB23
U 1 1 53D4181B
P 4300 2400
F 0 "PB23" H 4380 2400 40  0000 L CNN
F 1 "CONN_1" H 4300 2455 30  0001 C CNN
F 2 "" H 4300 2400 60  0000 C CNN
F 3 "" H 4300 2400 60  0000 C CNN
	1    4300 2400
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 PB0
U 1 1 53D41900
P 3200 1200
F 0 "PB0" H 3280 1200 40  0000 L CNN
F 1 "CONN_1" H 3200 1255 30  0001 C CNN
F 2 "" H 3200 1200 60  0000 C CNN
F 3 "" H 3200 1200 60  0000 C CNN
	1    3200 1200
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 PB2
U 1 1 53D41959
P 3200 1300
F 0 "PB2" H 3280 1300 40  0000 L CNN
F 1 "CONN_1" H 3200 1355 30  0001 C CNN
F 2 "" H 3200 1300 60  0000 C CNN
F 3 "" H 3200 1300 60  0000 C CNN
	1    3200 1300
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 PB4
U 1 1 53D41999
P 3200 1400
F 0 "PB4" H 3280 1400 40  0000 L CNN
F 1 "CONN_1" H 3200 1455 30  0001 C CNN
F 2 "" H 3200 1400 60  0000 C CNN
F 3 "" H 3200 1400 60  0000 C CNN
	1    3200 1400
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 PB6
U 1 1 53D419DA
P 3200 1500
F 0 "PB6" H 3280 1500 40  0000 L CNN
F 1 "CONN_1" H 3200 1555 30  0001 C CNN
F 2 "" H 3200 1500 60  0000 C CNN
F 3 "" H 3200 1500 60  0000 C CNN
	1    3200 1500
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 PB8
U 1 1 53D41A1C
P 3200 1600
F 0 "PB8" H 3280 1600 40  0000 L CNN
F 1 "CONN_1" H 3200 1655 30  0001 C CNN
F 2 "" H 3200 1600 60  0000 C CNN
F 3 "" H 3200 1600 60  0000 C CNN
	1    3200 1600
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 PB10
U 1 1 53D41A5F
P 3200 1800
F 0 "PB10" H 3280 1800 40  0000 L CNN
F 1 "CONN_1" H 3200 1855 30  0001 C CNN
F 2 "" H 3200 1800 60  0000 C CNN
F 3 "" H 3200 1800 60  0000 C CNN
	1    3200 1800
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 PB12
U 1 1 53D41AAB
P 3200 1900
F 0 "PB12" H 3280 1900 40  0000 L CNN
F 1 "CONN_1" H 3200 1955 30  0001 C CNN
F 2 "" H 3200 1900 60  0000 C CNN
F 3 "" H 3200 1900 60  0000 C CNN
	1    3200 1900
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 PB18
U 1 1 53D41AF0
P 3200 2200
F 0 "PB18" H 3280 2200 40  0000 L CNN
F 1 "CONN_1" H 3200 2255 30  0001 C CNN
F 2 "" H 3200 2200 60  0000 C CNN
F 3 "" H 3200 2200 60  0000 C CNN
	1    3200 2200
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 PB20
U 1 1 53D41B42
P 3200 2300
F 0 "PB20" H 3280 2300 40  0000 L CNN
F 1 "CONN_1" H 3200 2355 30  0001 C CNN
F 2 "" H 3200 2300 60  0000 C CNN
F 3 "" H 3200 2300 60  0000 C CNN
	1    3200 2300
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 PB22
U 1 1 53D41B89
P 3200 2400
F 0 "PB22" H 3280 2400 40  0000 L CNN
F 1 "CONN_1" H 3200 2455 30  0001 C CNN
F 2 "" H 3200 2400 60  0000 C CNN
F 3 "" H 3200 2400 60  0000 C CNN
	1    3200 2400
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 PB24
U 1 1 53D41BD1
P 3200 2500
F 0 "PB24" H 3280 2500 40  0000 L CNN
F 1 "CONN_1" H 3200 2555 30  0001 C CNN
F 2 "" H 3200 2500 60  0000 C CNN
F 3 "" H 3200 2500 60  0000 C CNN
	1    3200 2500
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-videoadc C10
U 1 1 53D43E86
P 1950 1300
F 0 "C10" H 1950 1400 40  0000 L CNN
F 1 "0.1" H 1956 1215 40  0000 L CNN
F 2 "" H 1988 1150 30  0000 C CNN
F 3 "" H 1950 1300 60  0000 C CNN
	1    1950 1300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR027
U 1 1 53D442AC
P 1950 1500
F 0 "#PWR027" H 1950 1500 30  0001 C CNN
F 1 "GND" H 1950 1430 30  0001 C CNN
F 2 "" H 1950 1500 60  0000 C CNN
F 3 "" H 1950 1500 60  0000 C CNN
	1    1950 1500
	1    0    0    -1  
$EndComp
Connection ~ 1950 1100
$Comp
L C-RESCUE-videoadc C11
U 1 1 53D44DAE
P 10250 4100
F 0 "C11" H 10250 4200 40  0000 L CNN
F 1 "0.1" H 10256 4015 40  0000 L CNN
F 2 "" H 10288 3950 30  0000 C CNN
F 3 "" H 10250 4100 60  0000 C CNN
	1    10250 4100
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-videoadc C12
U 1 1 53D453E4
P 10550 4100
F 0 "C12" H 10550 4200 40  0000 L CNN
F 1 "0.1" H 10556 4015 40  0000 L CNN
F 2 "" H 10588 3950 30  0000 C CNN
F 3 "" H 10550 4100 60  0000 C CNN
	1    10550 4100
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-videoadc C13
U 1 1 53D45433
P 10800 4100
F 0 "C13" H 10800 4200 40  0000 L CNN
F 1 "0.1" H 10806 4015 40  0000 L CNN
F 2 "" H 10838 3950 30  0000 C CNN
F 3 "" H 10800 4100 60  0000 C CNN
	1    10800 4100
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-videoadc C14
U 1 1 53D45483
P 11050 4100
F 0 "C14" H 11050 4200 40  0000 L CNN
F 1 "0.1" H 11056 4015 40  0000 L CNN
F 2 "" H 11088 3950 30  0000 C CNN
F 3 "" H 11050 4100 60  0000 C CNN
	1    11050 4100
	1    0    0    -1  
$EndComp
Connection ~ 10550 3900
Connection ~ 10800 3900
Connection ~ 9800 3900
Connection ~ 10250 3900
$Comp
L GND-RESCUE-videoadc #PWR028
U 1 1 53D45766
P 10250 4300
F 0 "#PWR028" H 10250 4300 30  0001 C CNN
F 1 "GND" H 10250 4230 30  0001 C CNN
F 2 "" H 10250 4300 60  0000 C CNN
F 3 "" H 10250 4300 60  0000 C CNN
	1    10250 4300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR029
U 1 1 53D457AC
P 10550 4300
F 0 "#PWR029" H 10550 4300 30  0001 C CNN
F 1 "GND" H 10550 4230 30  0001 C CNN
F 2 "" H 10550 4300 60  0000 C CNN
F 3 "" H 10550 4300 60  0000 C CNN
	1    10550 4300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR030
U 1 1 53D457F2
P 10800 4300
F 0 "#PWR030" H 10800 4300 30  0001 C CNN
F 1 "GND" H 10800 4230 30  0001 C CNN
F 2 "" H 10800 4300 60  0000 C CNN
F 3 "" H 10800 4300 60  0000 C CNN
	1    10800 4300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-videoadc #PWR031
U 1 1 53D4588F
P 11050 4300
F 0 "#PWR031" H 11050 4300 30  0001 C CNN
F 1 "GND" H 11050 4230 30  0001 C CNN
F 2 "" H 11050 4300 60  0000 C CNN
F 3 "" H 11050 4300 60  0000 C CNN
	1    11050 4300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
