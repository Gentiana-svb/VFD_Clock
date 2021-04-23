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
L SamacSys_Parts:MAX6922AQH+TD IC1
U 1 1 5FF610FE
P 1450 5100
F 0 "IC1" H 2950 5400 50  0000 L CNN
F 1 "MAX6922" H 2950 5300 50  0000 L CNN
F 2 "SamacSys_Parts:PLCC127P1752X1752X457-44N" H 2900 5600 50  0001 L CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX6922-MAX6934.pdf" H 2900 5500 50  0001 L CNN
F 4 "VFD Drivers 27-, 28-, and 32-Output, 76V, Serial-Interfaced VFD Tube Drivers" H 2900 5400 50  0001 L CNN "Description"
F 5 "4.57" H 2900 5300 50  0001 L CNN "Height"
F 6 "700-MAX6922AQH+TD" H 2900 5200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Maxim-Integrated/MAX6922AQH%2bTD?qs=p6VZ%252BklCkRQLbdiNEGJW9g%3D%3D" H 2900 5100 50  0001 L CNN "Mouser Price/Stock"
F 8 "Maxim Integrated" H 2900 5000 50  0001 L CNN "Manufacturer_Name"
F 9 "MAX6922AQH+TD" H 2900 4900 50  0001 L CNN "Manufacturer_Part_Number"
	1    1450 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR022
U 1 1 5FF66053
P 8850 5700
F 0 "#PWR022" H 8850 5550 50  0001 C CNN
F 1 "+24V" H 8865 5873 50  0000 C CNN
F 2 "" H 8850 5700 50  0001 C CNN
F 3 "" H 8850 5700 50  0001 C CNN
	1    8850 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR023
U 1 1 5FF67C76
P 9150 5700
F 0 "#PWR023" H 9150 5550 50  0001 C CNN
F 1 "+3.3V" H 9165 5873 50  0000 C CNN
F 2 "" H 9150 5700 50  0001 C CNN
F 3 "" H 9150 5700 50  0001 C CNN
	1    9150 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5700 9150 5800
$Comp
L power:GND #PWR024
U 1 1 5FF6887C
P 9150 5900
F 0 "#PWR024" H 9150 5650 50  0001 C CNN
F 1 "GND" H 9155 5727 50  0001 C CNN
F 2 "" H 9150 5900 50  0001 C CNN
F 3 "" H 9150 5900 50  0001 C CNN
	1    9150 5900
	1    0    0    -1  
$EndComp
Text Label 8600 6000 0    50   ~ 0
SI
Text Label 8600 6200 0    50   ~ 0
SCK
Text Label 8600 6100 0    50   ~ 0
RCK
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5FF6B2FA
P 9500 5900
F 0 "J2" H 9418 6317 50  0000 C CNN
F 1 "Conn_01x06" H 9418 6226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9500 5900 50  0001 C CNN
F 3 "~" H 9500 5900 50  0001 C CNN
	1    9500 5900
	-1   0    0    -1  
$EndComp
NoConn ~ 9700 5700
NoConn ~ 9700 5800
NoConn ~ 9700 5900
NoConn ~ 9700 6000
NoConn ~ 9700 6100
NoConn ~ 9700 6200
$Comp
L power:GND #PWR02
U 1 1 5FF726E8
P 2100 6850
F 0 "#PWR02" H 2100 6600 50  0001 C CNN
F 1 "GND" H 2105 6677 50  0001 C CNN
F 2 "" H 2100 6850 50  0001 C CNN
F 3 "" H 2100 6850 50  0001 C CNN
	1    2100 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR03
U 1 1 5FF74679
P 2050 3850
F 0 "#PWR03" H 2050 3700 50  0001 C CNN
F 1 "+24V" H 2065 4023 50  0000 C CNN
F 2 "" H 2050 3850 50  0001 C CNN
F 3 "" H 2050 3850 50  0001 C CNN
	1    2050 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 5FF74680
P 2350 3850
F 0 "#PWR01" H 2350 3700 50  0001 C CNN
F 1 "+3.3V" H 2365 4023 50  0000 C CNN
F 2 "" H 2350 3850 50  0001 C CNN
F 3 "" H 2350 3850 50  0001 C CNN
	1    2350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3900 2050 3900
NoConn ~ 1750 6800
NoConn ~ 3050 6100
NoConn ~ 1750 4400
NoConn ~ 2750 6800
Wire Wire Line
	2050 6800 2050 6850
Wire Wire Line
	2050 6850 2100 6850
Wire Wire Line
	2150 6850 2150 6800
Connection ~ 2100 6850
Wire Wire Line
	2100 6850 2150 6850
Text Label 2750 3800 0    50   ~ 0
SI
Wire Wire Line
	2750 3800 2450 3800
Text Label 1700 4000 2    50   ~ 0
CASCADE
Wire Wire Line
	1700 4000 2150 4000
Text Label 2800 7300 0    50   ~ 0
SCK
Text Label 2800 7200 0    50   ~ 0
RCK
Wire Wire Line
	2800 7200 2350 7200
Wire Wire Line
	2800 7300 2250 7300
$Comp
L SamacSys_Parts:MAX6922AQH+TD IC2
U 1 1 5FF8CDB0
P 4750 5100
F 0 "IC2" H 6250 5400 50  0000 L CNN
F 1 "MAX6922" H 6250 5300 50  0000 L CNN
F 2 "SamacSys_Parts:PLCC127P1752X1752X457-44N" H 6200 5600 50  0001 L CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX6922-MAX6934.pdf" H 6200 5500 50  0001 L CNN
F 4 "VFD Drivers 27-, 28-, and 32-Output, 76V, Serial-Interfaced VFD Tube Drivers" H 6200 5400 50  0001 L CNN "Description"
F 5 "4.57" H 6200 5300 50  0001 L CNN "Height"
F 6 "700-MAX6922AQH+TD" H 6200 5200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Maxim-Integrated/MAX6922AQH%2bTD?qs=p6VZ%252BklCkRQLbdiNEGJW9g%3D%3D" H 6200 5100 50  0001 L CNN "Mouser Price/Stock"
F 8 "Maxim Integrated" H 6200 5000 50  0001 L CNN "Manufacturer_Name"
F 9 "MAX6922AQH+TD" H 6200 4900 50  0001 L CNN "Manufacturer_Part_Number"
	1    4750 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5FF8CDB6
P 5400 6850
F 0 "#PWR014" H 5400 6600 50  0001 C CNN
F 1 "GND" H 5405 6677 50  0001 C CNN
F 2 "" H 5400 6850 50  0001 C CNN
F 3 "" H 5400 6850 50  0001 C CNN
	1    5400 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR015
U 1 1 5FF8CDBC
P 5350 3900
F 0 "#PWR015" H 5350 3750 50  0001 C CNN
F 1 "+24V" H 5365 4073 50  0000 C CNN
F 2 "" H 5350 3900 50  0001 C CNN
F 3 "" H 5350 3900 50  0001 C CNN
	1    5350 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR013
U 1 1 5FF8CDC2
P 5650 3900
F 0 "#PWR013" H 5650 3750 50  0001 C CNN
F 1 "+3.3V" H 5665 4073 50  0000 C CNN
F 2 "" H 5650 3900 50  0001 C CNN
F 3 "" H 5650 3900 50  0001 C CNN
	1    5650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3950 5350 3950
NoConn ~ 5050 6800
NoConn ~ 6350 6100
NoConn ~ 5050 4400
NoConn ~ 6050 6800
Wire Wire Line
	5350 6800 5350 6850
Wire Wire Line
	5350 6850 5400 6850
Wire Wire Line
	5450 6850 5450 6800
Connection ~ 5400 6850
Wire Wire Line
	5400 6850 5450 6850
Text Label 6150 4000 0    50   ~ 0
CASCADE
Text Label 6100 7350 0    50   ~ 0
SCK
Text Label 6100 7250 0    50   ~ 0
RCK
Wire Wire Line
	6100 7250 5650 7250
Wire Wire Line
	6100 7350 5550 7350
NoConn ~ 5450 4400
$Comp
L Gentiana:IV-6 VFD5
U 1 1 5FFD0A52
P 7950 1650
F 0 "VFD5" H 7925 1925 50  0000 C CNN
F 1 "IV-6" H 7925 1834 50  0000 C CNN
F 2 "Gentiana:IV-6" H 7800 1600 50  0001 C CNN
F 3 "" H 7800 1600 50  0001 C CNN
	1    7950 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR019
U 1 1 5FFD979D
P 8350 1600
F 0 "#PWR019" H 8350 1450 50  0001 C CNN
F 1 "+24V" H 8365 1773 50  0000 C CNN
F 2 "" H 8350 1600 50  0001 C CNN
F 3 "" H 8350 1600 50  0001 C CNN
	1    8350 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5FFD97AB
P 8450 2300
F 0 "#PWR021" H 8450 2050 50  0001 C CNN
F 1 "GND" H 8455 2127 50  0001 C CNN
F 2 "" H 8450 2300 50  0001 C CNN
F 3 "" H 8450 2300 50  0001 C CNN
	1    8450 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1600 8350 1600
NoConn ~ 8300 1950
Wire Wire Line
	8300 2200 8450 2200
Wire Wire Line
	8450 2300 8300 2300
Text Label 7550 1600 2    50   ~ 0
1_A
Text Label 7550 1700 2    50   ~ 0
1_B
Text Label 7550 1800 2    50   ~ 0
1_C
Text Label 7550 1900 2    50   ~ 0
1_D
Text Label 7550 2000 2    50   ~ 0
1_E
Text Label 7550 2100 2    50   ~ 0
1_F
Text Label 7550 2200 2    50   ~ 0
1_G
Text Label 7550 2300 2    50   ~ 0
1_DP
$Comp
L Gentiana:IV-6 VFD6
U 1 1 5FFF1C52
P 9450 1650
F 0 "VFD6" H 9425 1925 50  0000 C CNN
F 1 "IV-6" H 9425 1834 50  0000 C CNN
F 2 "Gentiana:IV-6" H 9300 1600 50  0001 C CNN
F 3 "" H 9300 1600 50  0001 C CNN
	1    9450 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR025
U 1 1 5FFF1C58
P 9850 1600
F 0 "#PWR025" H 9850 1450 50  0001 C CNN
F 1 "+24V" H 9865 1773 50  0000 C CNN
F 2 "" H 9850 1600 50  0001 C CNN
F 3 "" H 9850 1600 50  0001 C CNN
	1    9850 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5FFF1C64
P 9950 2300
F 0 "#PWR027" H 9950 2050 50  0001 C CNN
F 1 "GND" H 9955 2127 50  0001 C CNN
F 2 "" H 9950 2300 50  0001 C CNN
F 3 "" H 9950 2300 50  0001 C CNN
	1    9950 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1600 9850 1600
NoConn ~ 9800 1950
Wire Wire Line
	9800 2200 9950 2200
Wire Wire Line
	9950 2300 9800 2300
Text Label 9050 1600 2    50   ~ 0
0_A
Text Label 9050 1700 2    50   ~ 0
0_B
Text Label 9050 1800 2    50   ~ 0
0_C
Text Label 9050 1900 2    50   ~ 0
0_D
Text Label 9050 2000 2    50   ~ 0
0_E
Text Label 9050 2100 2    50   ~ 0
0_F
Text Label 9050 2200 2    50   ~ 0
0_G
Text Label 9050 2300 2    50   ~ 0
0_DP
$Comp
L Gentiana:IV-6 VFD4
U 1 1 5FFFDD75
P 6350 1650
F 0 "VFD4" H 6325 1925 50  0000 C CNN
F 1 "IV-6" H 6325 1834 50  0000 C CNN
F 2 "Gentiana:IV-6" H 6200 1600 50  0001 C CNN
F 3 "" H 6200 1600 50  0001 C CNN
	1    6350 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR016
U 1 1 5FFFDD7B
P 6750 1600
F 0 "#PWR016" H 6750 1450 50  0001 C CNN
F 1 "+24V" H 6765 1773 50  0000 C CNN
F 2 "" H 6750 1600 50  0001 C CNN
F 3 "" H 6750 1600 50  0001 C CNN
	1    6750 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5FFFDD87
P 6850 2300
F 0 "#PWR018" H 6850 2050 50  0001 C CNN
F 1 "GND" H 6855 2127 50  0001 C CNN
F 2 "" H 6850 2300 50  0001 C CNN
F 3 "" H 6850 2300 50  0001 C CNN
	1    6850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1600 6750 1600
NoConn ~ 6700 1950
Wire Wire Line
	6700 2200 6850 2200
Wire Wire Line
	6850 2300 6700 2300
Text Label 5950 1600 2    50   ~ 0
2_A
Text Label 5950 1700 2    50   ~ 0
2_B
Text Label 5950 1800 2    50   ~ 0
2_C
Text Label 5950 1900 2    50   ~ 0
2_D
Text Label 5950 2000 2    50   ~ 0
2_E
Text Label 5950 2100 2    50   ~ 0
2_F
Text Label 5950 2200 2    50   ~ 0
2_G
Text Label 5950 2300 2    50   ~ 0
2_DP
$Comp
L Gentiana:IV-6 VFD3
U 1 1 6000B189
P 4800 1650
F 0 "VFD3" H 4775 1925 50  0000 C CNN
F 1 "IV-6" H 4775 1834 50  0000 C CNN
F 2 "Gentiana:IV-6" H 4650 1600 50  0001 C CNN
F 3 "" H 4650 1600 50  0001 C CNN
	1    4800 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR010
U 1 1 6000B18F
P 5200 1600
F 0 "#PWR010" H 5200 1450 50  0001 C CNN
F 1 "+24V" H 5215 1773 50  0000 C CNN
F 2 "" H 5200 1600 50  0001 C CNN
F 3 "" H 5200 1600 50  0001 C CNN
	1    5200 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 6000B19B
P 5300 2300
F 0 "#PWR012" H 5300 2050 50  0001 C CNN
F 1 "GND" H 5305 2127 50  0001 C CNN
F 2 "" H 5300 2300 50  0001 C CNN
F 3 "" H 5300 2300 50  0001 C CNN
	1    5300 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1600 5200 1600
NoConn ~ 5150 1950
Wire Wire Line
	5150 2200 5300 2200
Wire Wire Line
	5300 2300 5150 2300
Text Label 4400 1600 2    50   ~ 0
3_A
Text Label 4400 1700 2    50   ~ 0
3_B
Text Label 4400 1800 2    50   ~ 0
3_C
Text Label 4400 1900 2    50   ~ 0
3_D
Text Label 4400 2000 2    50   ~ 0
3_E
Text Label 4400 2100 2    50   ~ 0
3_F
Text Label 4400 2200 2    50   ~ 0
3_G
Text Label 4400 2300 2    50   ~ 0
3_DP
$Comp
L Gentiana:IV-6 VFD2
U 1 1 6000E98A
P 3450 1650
F 0 "VFD2" H 3425 1925 50  0000 C CNN
F 1 "IV-6" H 3425 1834 50  0000 C CNN
F 2 "Gentiana:IV-6" H 3300 1600 50  0001 C CNN
F 3 "" H 3300 1600 50  0001 C CNN
	1    3450 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR07
U 1 1 6000E990
P 3850 1600
F 0 "#PWR07" H 3850 1450 50  0001 C CNN
F 1 "+24V" H 3865 1773 50  0000 C CNN
F 2 "" H 3850 1600 50  0001 C CNN
F 3 "" H 3850 1600 50  0001 C CNN
	1    3850 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 6000E99C
P 3950 2300
F 0 "#PWR09" H 3950 2050 50  0001 C CNN
F 1 "GND" H 3955 2127 50  0001 C CNN
F 2 "" H 3950 2300 50  0001 C CNN
F 3 "" H 3950 2300 50  0001 C CNN
	1    3950 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1600 3850 1600
NoConn ~ 3800 1950
Wire Wire Line
	3950 2300 3800 2300
Text Label 3050 1600 2    50   ~ 0
4_A
Text Label 3050 1700 2    50   ~ 0
4_B
Text Label 3050 1800 2    50   ~ 0
4_C
Text Label 3050 1900 2    50   ~ 0
4_D
Text Label 3050 2000 2    50   ~ 0
4_E
Text Label 3050 2100 2    50   ~ 0
4_F
Text Label 3050 2200 2    50   ~ 0
4_G
Text Label 3050 2300 2    50   ~ 0
4_DP
$Comp
L Gentiana:IV-6 VFD1
U 1 1 60012B37
P 2050 1650
F 0 "VFD1" H 2025 1925 50  0000 C CNN
F 1 "IV-6" H 2025 1834 50  0000 C CNN
F 2 "Gentiana:IV-6" H 1900 1600 50  0001 C CNN
F 3 "" H 1900 1600 50  0001 C CNN
	1    2050 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR04
U 1 1 60012B3D
P 2450 1600
F 0 "#PWR04" H 2450 1450 50  0001 C CNN
F 1 "+24V" H 2465 1773 50  0000 C CNN
F 2 "" H 2450 1600 50  0001 C CNN
F 3 "" H 2450 1600 50  0001 C CNN
	1    2450 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60012B49
P 2550 2300
F 0 "#PWR06" H 2550 2050 50  0001 C CNN
F 1 "GND" H 2555 2127 50  0001 C CNN
F 2 "" H 2550 2300 50  0001 C CNN
F 3 "" H 2550 2300 50  0001 C CNN
	1    2550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1600 2450 1600
NoConn ~ 2400 1950
Wire Wire Line
	2550 2300 2400 2300
Text Label 1650 1600 2    50   ~ 0
5_A
Text Label 1650 1700 2    50   ~ 0
5_B
Text Label 1650 1800 2    50   ~ 0
5_C
Text Label 1650 1900 2    50   ~ 0
5_D
Text Label 1650 2000 2    50   ~ 0
5_E
Text Label 1650 2100 2    50   ~ 0
5_F
Text Label 1650 2200 2    50   ~ 0
5_G
Text Label 1650 2300 2    50   ~ 0
5_DP
Text Label 2400 2200 0    50   ~ 0
H_Power
Text Label 3800 2200 0    50   ~ 0
H_Power
Text Label 5300 2200 0    50   ~ 0
H_Power
Text Label 6850 2200 0    50   ~ 0
H_Power
Text Label 8450 2200 0    50   ~ 0
H_Power
Text Label 9950 2200 0    50   ~ 0
H_Power
$Comp
L Device:D_Small D1
U 1 1 600293B1
P 9500 3550
F 0 "D1" V 9546 3480 50  0000 R CNN
F 1 "GS1010FL" V 9455 3480 50  0000 R CNN
F 2 "Gentiana:SOD-123FL" V 9500 3550 50  0001 C CNN
F 3 "~" V 9500 3550 50  0001 C CNN
	1    9500 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR031
U 1 1 600302D4
P 9500 3450
F 0 "#PWR031" H 9500 3300 50  0001 C CNN
F 1 "+3.3V" H 9515 3623 50  0000 C CNN
F 2 "" H 9500 3450 50  0001 C CNN
F 3 "" H 9500 3450 50  0001 C CNN
	1    9500 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 60031537
P 9400 4250
F 0 "Q1" H 9604 4296 50  0000 L CNN
F 1 "IRLML6344" H 9604 4205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 9600 4350 50  0001 C CNN
F 3 "~" H 9400 4250 50  0001 C CNN
	1    9400 4250
	1    0    0    -1  
$EndComp
Text Label 9650 4600 0    50   ~ 0
H_Power
Wire Wire Line
	9500 4600 9500 4450
Wire Wire Line
	9500 4600 9650 4600
Text Label 9000 3900 2    50   ~ 0
H_Control
$Comp
L Device:D_Small D2
U 1 1 5FF75D98
P 9500 3750
F 0 "D2" V 9546 3680 50  0000 R CNN
F 1 "GS1010FL" V 9455 3680 50  0000 R CNN
F 2 "Gentiana:SOD-123FL" V 9500 3750 50  0001 C CNN
F 3 "~" V 9500 3750 50  0001 C CNN
	1    9500 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small D3
U 1 1 5FF76E64
P 9500 3950
F 0 "D3" V 9546 3880 50  0000 R CNN
F 1 "GS1010FL" V 9455 3880 50  0000 R CNN
F 2 "Gentiana:SOD-123FL" V 9500 3950 50  0001 C CNN
F 3 "~" V 9500 3950 50  0001 C CNN
	1    9500 3950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5FF790EA
P 9100 4450
F 0 "R2" H 9159 4496 50  0000 L CNN
F 1 "10k" H 9159 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 9100 4450 50  0001 C CNN
F 3 "~" H 9100 4450 50  0001 C CNN
	1    9100 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5FF7C1A0
P 9100 4550
F 0 "#PWR030" H 9100 4300 50  0001 C CNN
F 1 "GND" H 9105 4377 50  0001 C CNN
F 2 "" H 9100 4550 50  0001 C CNN
F 3 "" H 9100 4550 50  0001 C CNN
	1    9100 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5FF7D702
P 9100 4050
F 0 "R1" H 9159 4096 50  0000 L CNN
F 1 "30k" H 9159 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 9100 4050 50  0001 C CNN
F 3 "~" H 9100 4050 50  0001 C CNN
	1    9100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4250 9100 4250
Wire Wire Line
	9100 4250 9100 4350
Wire Wire Line
	9100 4250 9100 4150
Connection ~ 9100 4250
Wire Wire Line
	9100 3900 9100 3950
Wire Wire Line
	9000 3900 9100 3900
$Comp
L Device:C_Small C4
U 1 1 5FF8C042
P 4500 6650
F 0 "C4" H 4592 6696 50  0000 L CNN
F 1 "0.1u" H 4592 6605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4500 6650 50  0001 C CNN
F 3 "~" H 4500 6650 50  0001 C CNN
	1    4500 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR028
U 1 1 5FF8D4F5
P 4500 6550
F 0 "#PWR028" H 4500 6400 50  0001 C CNN
F 1 "+3.3V" H 4515 6723 50  0000 C CNN
F 2 "" H 4500 6550 50  0001 C CNN
F 3 "" H 4500 6550 50  0001 C CNN
	1    4500 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5FF8EDA7
P 4500 6750
F 0 "#PWR029" H 4500 6500 50  0001 C CNN
F 1 "GND" H 4505 6577 50  0001 C CNN
F 2 "" H 4500 6750 50  0001 C CNN
F 3 "" H 4500 6750 50  0001 C CNN
	1    4500 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5FF935C2
P 1200 6600
F 0 "C2" H 1292 6646 50  0000 L CNN
F 1 "0.1u" H 1292 6555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1200 6600 50  0001 C CNN
F 3 "~" H 1200 6600 50  0001 C CNN
	1    1200 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR011
U 1 1 5FF935C8
P 1200 6500
F 0 "#PWR011" H 1200 6350 50  0001 C CNN
F 1 "+3.3V" H 1215 6673 50  0000 C CNN
F 2 "" H 1200 6500 50  0001 C CNN
F 3 "" H 1200 6500 50  0001 C CNN
	1    1200 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5FF935CE
P 1200 6700
F 0 "#PWR017" H 1200 6450 50  0001 C CNN
F 1 "GND" H 1205 6527 50  0001 C CNN
F 2 "" H 1200 6700 50  0001 C CNN
F 3 "" H 1200 6700 50  0001 C CNN
	1    1200 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5FF95967
P 800 6600
F 0 "C1" H 892 6646 50  0000 L CNN
F 1 "0.1u" H 892 6555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 800 6600 50  0001 C CNN
F 3 "~" H 800 6600 50  0001 C CNN
	1    800  6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5FF95973
P 800 6700
F 0 "#PWR08" H 800 6450 50  0001 C CNN
F 1 "GND" H 805 6527 50  0001 C CNN
F 2 "" H 800 6700 50  0001 C CNN
F 3 "" H 800 6700 50  0001 C CNN
	1    800  6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3900 5350 3950
$Comp
L power:+24V #PWR05
U 1 1 5FF9C05A
P 800 6500
F 0 "#PWR05" H 800 6350 50  0001 C CNN
F 1 "+24V" H 815 6673 50  0000 C CNN
F 2 "" H 800 6500 50  0001 C CNN
F 3 "" H 800 6500 50  0001 C CNN
	1    800  6500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5FF9DEF3
P 4100 6650
F 0 "C3" H 4192 6696 50  0000 L CNN
F 1 "0.1u" H 4192 6605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4100 6650 50  0001 C CNN
F 3 "~" H 4100 6650 50  0001 C CNN
	1    4100 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5FF9DEF9
P 4100 6750
F 0 "#PWR026" H 4100 6500 50  0001 C CNN
F 1 "GND" H 4105 6577 50  0001 C CNN
F 2 "" H 4100 6750 50  0001 C CNN
F 3 "" H 4100 6750 50  0001 C CNN
	1    4100 6750
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR020
U 1 1 5FF9DEFF
P 4100 6550
F 0 "#PWR020" H 4100 6400 50  0001 C CNN
F 1 "+24V" H 4115 6723 50  0000 C CNN
F 2 "" H 4100 6550 50  0001 C CNN
F 3 "" H 4100 6550 50  0001 C CNN
	1    4100 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3850 2050 3900
Text Label 2850 4100 0    50   ~ 0
5_A
Text Label 1700 4100 2    50   ~ 0
5_B
Text Label 1700 4300 2    50   ~ 0
5_C
Text Label 3050 5200 0    50   ~ 0
5_D
Text Label 3050 5100 0    50   ~ 0
5_E
Text Label 2850 4300 0    50   ~ 0
5_F
Text Label 2850 4200 0    50   ~ 0
5_G
Text Label 1700 4200 2    50   ~ 0
5_DP
Wire Wire Line
	1850 4400 1850 4300
Wire Wire Line
	1850 4300 1700 4300
Wire Wire Line
	1950 4400 1950 4200
Wire Wire Line
	1950 4200 1700 4200
Wire Wire Line
	2050 4400 2050 4100
Wire Wire Line
	2050 4100 1700 4100
Wire Wire Line
	2150 4000 2150 4400
Wire Wire Line
	2250 3900 2250 4400
Wire Wire Line
	2350 3850 2350 4400
Wire Wire Line
	2450 3800 2450 4400
Wire Wire Line
	2750 4400 2750 4300
Wire Wire Line
	2750 4300 2850 4300
Wire Wire Line
	2850 4200 2650 4200
Wire Wire Line
	2650 4200 2650 4400
Wire Wire Line
	2550 4400 2550 4100
Wire Wire Line
	2550 4100 2850 4100
Text Label 1450 5800 2    50   ~ 0
4_A
Text Label 1450 5900 2    50   ~ 0
4_B
Text Label 1450 6100 2    50   ~ 0
4_C
Text Label 1450 5100 2    50   ~ 0
4_D
Text Label 1450 5200 2    50   ~ 0
4_E
Text Label 1450 5300 2    50   ~ 0
4_F
Text Label 1450 5400 2    50   ~ 0
4_G
Text Label 1450 6000 2    50   ~ 0
4_DP
NoConn ~ 1450 5500
NoConn ~ 1450 5600
NoConn ~ 1450 5700
Text Label 2800 6900 0    50   ~ 0
3_A
Text Label 3050 6000 0    50   ~ 0
3_B
Text Label 3050 5800 0    50   ~ 0
3_C
Text Label 1700 6900 2    50   ~ 0
3_D
Text Label 1700 7000 2    50   ~ 0
3_E
Text Label 2800 7100 0    50   ~ 0
3_F
Text Label 2800 7000 0    50   ~ 0
3_G
Text Label 3050 5900 0    50   ~ 0
3_DP
Wire Wire Line
	1850 6800 1850 6900
Wire Wire Line
	1850 6900 1700 6900
Wire Wire Line
	1950 6800 1950 7000
Wire Wire Line
	1950 7000 1700 7000
Wire Wire Line
	2650 6800 2650 6900
Wire Wire Line
	2650 6900 2800 6900
Wire Wire Line
	2800 7000 2550 7000
Wire Wire Line
	2550 7000 2550 6800
Wire Wire Line
	2800 7100 2450 7100
Wire Wire Line
	2450 7100 2450 6800
Wire Wire Line
	2350 6800 2350 7200
Wire Wire Line
	2250 6800 2250 7300
NoConn ~ 3050 5400
NoConn ~ 3050 5500
NoConn ~ 3050 5600
NoConn ~ 3050 5700
Text Label 4750 5800 2    50   ~ 0
1_A
Text Label 4750 5900 2    50   ~ 0
1_B
Text Label 4750 6100 2    50   ~ 0
1_C
Text Label 4750 5100 2    50   ~ 0
1_D
Text Label 4750 5200 2    50   ~ 0
1_E
Text Label 4750 5300 2    50   ~ 0
1_F
Text Label 4750 5400 2    50   ~ 0
1_G
Text Label 4750 6000 2    50   ~ 0
1_DP
NoConn ~ 4750 5500
NoConn ~ 4750 5600
NoConn ~ 4750 5700
Text Label 6350 6000 0    50   ~ 0
0_B
Text Label 6350 5800 0    50   ~ 0
0_C
Text Label 5000 6950 2    50   ~ 0
0_D
Text Label 5000 7050 2    50   ~ 0
0_E
Text Label 6100 7150 0    50   ~ 0
0_F
Text Label 6100 7050 0    50   ~ 0
0_G
Text Label 6350 5900 0    50   ~ 0
0_DP
Text Label 6100 6950 0    50   ~ 0
0_A
Wire Wire Line
	5150 6800 5150 6950
Wire Wire Line
	5150 6950 5000 6950
Wire Wire Line
	5000 7050 5250 7050
Wire Wire Line
	5250 7050 5250 6800
Wire Wire Line
	6100 6950 5950 6950
Wire Wire Line
	5950 6950 5950 6800
Wire Wire Line
	5850 6800 5850 7050
Wire Wire Line
	5850 7050 6100 7050
Wire Wire Line
	6100 7150 5750 7150
Wire Wire Line
	5750 7150 5750 6800
Wire Wire Line
	5650 6800 5650 7250
Wire Wire Line
	5550 7350 5550 6800
Wire Wire Line
	5150 4400 5150 4250
Wire Wire Line
	5150 4250 4950 4250
Wire Wire Line
	5250 4400 5250 4150
Wire Wire Line
	5250 4150 4950 4150
Wire Wire Line
	5350 4400 5350 4050
Wire Wire Line
	5350 4050 4950 4050
Wire Wire Line
	5550 3950 5550 4400
Wire Wire Line
	5650 3900 5650 4400
Text Label 6150 4100 0    50   ~ 0
2_A
Text Label 4950 4050 2    50   ~ 0
2_B
Text Label 4950 4250 2    50   ~ 0
2_C
Text Label 6350 5200 0    50   ~ 0
2_D
Text Label 6350 5100 0    50   ~ 0
2_E
Text Label 6150 4300 0    50   ~ 0
2_F
Text Label 6150 4200 0    50   ~ 0
2_G
Text Label 4950 4150 2    50   ~ 0
2_DP
Wire Wire Line
	6050 4400 6050 4300
Wire Wire Line
	6050 4300 6150 4300
Wire Wire Line
	5950 4400 5950 4200
Wire Wire Line
	5950 4200 6150 4200
Wire Wire Line
	5850 4400 5850 4100
Wire Wire Line
	5850 4100 6150 4100
Wire Wire Line
	5750 4000 6150 4000
Wire Wire Line
	5750 4000 5750 4400
Wire Wire Line
	9150 5900 8600 5900
Wire Wire Line
	9150 5800 8600 5800
Wire Wire Line
	8850 5700 8600 5700
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5FF653EB
P 8400 6000
F 0 "J1" H 8400 5450 50  0000 C CNN
F 1 "Conn_01x06" H 8350 5550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8400 6000 50  0001 C CNN
F 3 "~" H 8400 6000 50  0001 C CNN
	1    8400 6000
	-1   0    0    1   
$EndComp
Text Label 3050 5300 0    50   ~ 0
H_Control
NoConn ~ 6350 5300
NoConn ~ 6350 5400
NoConn ~ 6350 5500
NoConn ~ 6350 5600
NoConn ~ 6350 5700
$EndSCHEMATC