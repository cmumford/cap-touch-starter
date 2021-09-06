EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Test ESP32-WROOM-32E display board"
Date "2021-09-05"
Rev "1"
Comp "Chris Mumford"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32D U2
U 1 1 612D8DA1
P 6350 3200
F 0 "U2" H 6300 3700 50  0000 C CNN
F 1 "1965-ESP32-WROOM-32E(8MB)CT-ND" H 5500 1800 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 6350 1700 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 6050 3250 50  0001 C CNN
	1    6350 3200
	1    0    0    -1  
$EndComp
$Comp
L 62684-50110:62684-50110 J2
U 1 1 6133B4EE
P 10000 3500
F 0 "J2" H 10330 3496 50  0000 L CNN
F 1 "62684-50110" H 10330 3405 50  0000 L CNN
F 2 "62684-50110:62684-50110" H 10400 3650 50  0001 L BNN
F 3 "" H 10000 3500 50  0001 L BNN
F 4 "Compliant" H 10500 3500 50  0001 L BNN "EU_RoHS_Compliance"
F 5 "62684-50110" H 10450 3800 50  0001 L BNN "Comment"
	1    10000 3500
	1    0    0    -1  
$EndComp
Text Notes 9885 6060 0    63   ~ 0
LEDK\nLED-A1\nLED-A2\nLED-A3\nLED-A4\nIM0\nIM1\nIM2\nIM3\n/RESET\nVSYNC\nHSYNC\nDOTCLK\nDE\nDB17\nDB16\nDB15\nDB14\nDB13\nDB12\nDB11\nDB10\nDB9\nDB8\nDB7\nDB6\nDB5\nDB4\nDB3\nDB2\nDB1\nDB0\nSDO (MISO)\nSDI (MOSI)\n/RD\n/WR_RS\nRS_SCL\n/CS\nTE\nIOVCC\nIOVCC\nVCI\nGND\nCTP_SCL\nCTP_SDA\nCTP_IRQ\nCTP_RES\nGND\nGND\nGND\n\n
$Comp
L power:GND #PWR025
U 1 1 6133F206
P 9350 6150
F 0 "#PWR025" H 9350 5900 50  0001 C CNN
F 1 "GND" H 9355 5977 50  0000 C CNN
F 2 "" H 9350 6150 50  0001 C CNN
F 3 "" H 9350 6150 50  0001 C CNN
	1    9350 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5900 9350 5900
Wire Wire Line
	9500 5800 9350 5800
Wire Wire Line
	9350 5800 9350 5900
Wire Wire Line
	9500 5700 9350 5700
Wire Wire Line
	9350 5700 9350 5800
Connection ~ 9350 5800
Wire Wire Line
	9500 5200 9350 5200
Wire Wire Line
	9350 5200 9350 5700
Connection ~ 9350 5700
$Comp
L power:+5V #PWR023
U 1 1 6133FE2C
P 9000 750
F 0 "#PWR023" H 9000 600 50  0001 C CNN
F 1 "+5V" H 9015 923 50  0000 C CNN
F 2 "" H 9000 750 50  0001 C CNN
F 3 "" H 9000 750 50  0001 C CNN
	1    9000 750 
	1    0    0    -1  
$EndComp
NoConn ~ 9500 6000
NoConn ~ 9500 6100
Wire Wire Line
	9500 5600 9250 5600
Wire Wire Line
	9250 5600 9250 3900
Wire Wire Line
	9250 1900 9500 1900
$Comp
L Device:R R15
U 1 1 61345941
P 9300 1100
F 0 "R15" V 9250 900 50  0000 C CNN
F 1 "68Ω" V 9300 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9230 1100 50  0001 C CNN
F 3 "~" H 9300 1100 50  0001 C CNN
	1    9300 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 61346DAC
P 9300 1200
F 0 "R16" V 9250 1000 50  0000 C CNN
F 1 "68Ω" V 9300 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9230 1200 50  0001 C CNN
F 3 "~" H 9300 1200 50  0001 C CNN
	1    9300 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 613470FA
P 9300 1300
F 0 "R17" V 9250 1100 50  0000 C CNN
F 1 "68Ω" V 9300 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9230 1300 50  0001 C CNN
F 3 "~" H 9300 1300 50  0001 C CNN
	1    9300 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 61347507
P 9300 1400
F 0 "R18" V 9250 1200 50  0000 C CNN
F 1 "68Ω" V 9300 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9230 1400 50  0001 C CNN
F 3 "~" H 9300 1400 50  0001 C CNN
	1    9300 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 1100 9500 1100
Wire Wire Line
	9450 1200 9500 1200
Wire Wire Line
	9450 1300 9500 1300
Wire Wire Line
	9450 1400 9500 1400
Wire Wire Line
	9150 1400 9000 1400
Wire Wire Line
	9000 1400 9000 1300
Wire Wire Line
	9150 1100 9000 1100
Connection ~ 9000 1100
Wire Wire Line
	9150 1200 9000 1200
Connection ~ 9000 1200
Wire Wire Line
	9000 1200 9000 1100
Wire Wire Line
	9150 1300 9000 1300
Connection ~ 9000 1300
Wire Wire Line
	9000 1300 9000 1200
NoConn ~ 9500 4400
NoConn ~ 9500 4800
NoConn ~ 9500 2000
NoConn ~ 9500 2100
NoConn ~ 9500 2200
NoConn ~ 9500 2300
Wire Wire Line
	9500 4900 8900 4900
Wire Wire Line
	9500 5000 8900 5000
Wire Wire Line
	8900 5000 8900 4900
Wire Wire Line
	9500 5100 8900 5100
Wire Wire Line
	8900 5100 8900 5000
Connection ~ 8900 5000
Wire Wire Line
	9000 750  9000 1100
Wire Wire Line
	9500 4100 9400 4100
Wire Wire Line
	9400 4100 9400 4000
Wire Wire Line
	9400 2400 9500 2400
Wire Wire Line
	9500 2500 9400 2500
Connection ~ 9400 2500
Wire Wire Line
	9400 2500 9400 2400
Wire Wire Line
	9500 2600 9400 2600
Connection ~ 9400 2600
Wire Wire Line
	9400 2600 9400 2500
Wire Wire Line
	9500 2700 9400 2700
Connection ~ 9400 2700
Wire Wire Line
	9400 2700 9400 2600
Wire Wire Line
	9500 2800 9400 2800
Connection ~ 9400 2800
Wire Wire Line
	9400 2800 9400 2700
Wire Wire Line
	9500 2900 9400 2900
Connection ~ 9400 2900
Wire Wire Line
	9400 2900 9400 2800
Wire Wire Line
	9500 3000 9400 3000
Connection ~ 9400 3000
Wire Wire Line
	9400 3000 9400 2900
Wire Wire Line
	9500 3100 9400 3100
Connection ~ 9400 3100
Wire Wire Line
	9400 3100 9400 3000
Wire Wire Line
	9500 3200 9400 3200
Connection ~ 9400 3200
Wire Wire Line
	9400 3200 9400 3100
Wire Wire Line
	9500 3300 9400 3300
Connection ~ 9400 3300
Wire Wire Line
	9400 3300 9400 3200
Wire Wire Line
	9500 3400 9400 3400
Connection ~ 9400 3400
Wire Wire Line
	9400 3400 9400 3300
Wire Wire Line
	9500 3500 9400 3500
Connection ~ 9400 3500
Wire Wire Line
	9400 3500 9400 3400
Wire Wire Line
	9500 3600 9400 3600
Connection ~ 9400 3600
Wire Wire Line
	9400 3600 9400 3500
Wire Wire Line
	9500 3700 9400 3700
Connection ~ 9400 3700
Wire Wire Line
	9400 3700 9400 3600
Wire Wire Line
	9500 3800 9400 3800
Connection ~ 9400 3800
Wire Wire Line
	9400 3800 9400 3700
Wire Wire Line
	9500 3900 9400 3900
Connection ~ 9400 3900
Wire Wire Line
	9400 3900 9400 3800
Wire Wire Line
	9500 4000 9400 4000
Connection ~ 9400 4000
Wire Wire Line
	9400 4000 9400 3900
Wire Wire Line
	6950 3300 8600 3300
Wire Wire Line
	6950 3600 8150 3600
Wire Wire Line
	8150 3600 8150 4300
Wire Wire Line
	8150 4300 9500 4300
Wire Wire Line
	9500 4600 8450 4600
Wire Wire Line
	8450 4600 8450 3200
Wire Wire Line
	8450 3200 6950 3200
Wire Wire Line
	9500 4700 8300 4700
Wire Wire Line
	8300 4700 8300 2500
Wire Wire Line
	8300 2500 6950 2500
Wire Wire Line
	9500 5400 8000 5400
Wire Wire Line
	8000 5400 8000 3400
Wire Wire Line
	8000 3400 6950 3400
Wire Wire Line
	9500 5300 7850 5300
Wire Wire Line
	7850 5300 7850 3500
Wire Wire Line
	7850 3500 6950 3500
$Comp
L power:GND #PWR018
U 1 1 61349AB3
P 6350 4750
F 0 "#PWR018" H 6350 4500 50  0001 C CNN
F 1 "GND" H 6355 4577 50  0000 C CNN
F 2 "" H 6350 4750 50  0001 C CNN
F 3 "" H 6350 4750 50  0001 C CNN
	1    6350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5500 7700 5500
Wire Wire Line
	7700 5500 7700 3700
Wire Wire Line
	7700 3700 6950 3700
$Comp
L Device:R R14
U 1 1 6134FC97
P 8000 1750
F 0 "R14" H 8100 1800 50  0000 L CNN
F 1 "2K2Ω" H 8100 1700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7930 1750 50  0001 C CNN
F 3 "~" H 8000 1750 50  0001 C CNN
	1    8000 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 61350C51
P 7850 1750
F 0 "R13" H 7600 1800 50  0000 L CNN
F 1 "2K2Ω" H 7550 1700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 1750 50  0001 C CNN
F 3 "~" H 7850 1750 50  0001 C CNN
	1    7850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3500 7850 1900
Connection ~ 7850 3500
Wire Wire Line
	8000 3400 8000 1900
Connection ~ 8000 3400
Wire Wire Line
	6350 1500 7850 1500
Wire Wire Line
	8000 1500 8000 1600
Connection ~ 6350 1500
Wire Wire Line
	6350 1500 6350 1800
Wire Wire Line
	7850 1600 7850 1500
Connection ~ 7850 1500
Wire Wire Line
	7850 1500 8000 1500
Wire Wire Line
	8600 3300 8600 4200
Wire Wire Line
	8600 4200 9500 4200
Wire Wire Line
	9500 4500 8750 4500
Wire Wire Line
	8750 4500 8750 3800
Wire Wire Line
	8750 3800 6950 3800
$Comp
L power:GND #PWR024
U 1 1 6134C54F
P 9000 1900
F 0 "#PWR024" H 9000 1650 50  0001 C CNN
F 1 "GND" H 9005 1727 50  0000 C CNN
F 2 "" H 9000 1900 50  0001 C CNN
F 3 "" H 9000 1900 50  0001 C CNN
	1    9000 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1800 8750 1800
Wire Wire Line
	8750 1800 8750 1700
Wire Wire Line
	9500 1700 8750 1700
Connection ~ 8750 1700
Wire Wire Line
	8750 1700 8750 1600
Wire Wire Line
	9500 1600 8750 1600
Connection ~ 8750 1600
Wire Wire Line
	8750 1600 8750 1450
Wire Wire Line
	9000 1900 9000 1500
Wire Wire Line
	9000 1500 9500 1500
Wire Wire Line
	6950 3900 9250 3900
Connection ~ 9250 3900
Wire Wire Line
	9250 3900 9250 1900
$Comp
L Device:C_Small C7
U 1 1 6136B483
P 6000 1300
F 0 "C7" H 6092 1346 50  0000 L CNN
F 1 "0.1μF" H 6092 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6000 1300 50  0001 C CNN
F 3 "~" H 6000 1300 50  0001 C CNN
	1    6000 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 6136C024
P 5750 1300
F 0 "C6" H 5550 1350 50  0000 L CNN
F 1 "22μF" H 5450 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5750 1300 50  0001 C CNN
F 3 "~" H 5750 1300 50  0001 C CNN
	1    5750 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1200 5750 1050
Wire Wire Line
	6000 1200 6000 1050
$Comp
L power:GND #PWR015
U 1 1 613831DD
P 5900 1550
F 0 "#PWR015" H 5900 1300 50  0001 C CNN
F 1 "GND" H 5905 1377 50  0000 C CNN
F 2 "" H 5900 1550 50  0001 C CNN
F 3 "" H 5900 1550 50  0001 C CNN
	1    5900 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1400 5750 1500
Wire Wire Line
	5750 1500 5900 1500
Wire Wire Line
	5900 1500 5900 1550
Wire Wire Line
	6000 1400 6000 1500
Wire Wire Line
	6000 1500 5900 1500
Connection ~ 5900 1500
Wire Wire Line
	6350 4600 6350 4750
Wire Wire Line
	6350 950  6350 1050
Connection ~ 6350 1050
Wire Wire Line
	6350 1050 6350 1500
NoConn ~ 5750 2200
NoConn ~ 5750 2300
$Comp
L Connector:USB_C_Receptacle J1
U 1 1 6139D04F
P 1150 1950
F 0 "J1" H 1100 2550 50  0000 C CNN
F 1 "USB_C_Receptacle" H 1150 3150 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_Amphenol_12401548E4-2A" H 1300 1950 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1300 1950 50  0001 C CNN
	1    1150 1950
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:CP2102N-A01-GQFN28 U1
U 1 1 6135E2B4
P 3100 5850
F 0 "U1" H 2950 5650 50  0000 C CNN
F 1 "CP2102N-A01-GQFN28" H 3600 4550 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-28-1EP_5x5mm_P0.5mm_EP3.35x3.35mm" H 3550 4650 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf" H 3150 5100 50  0001 C CNN
	1    3100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5900 9350 6150
Connection ~ 9350 5900
$Comp
L power:+3V3 #PWR020
U 1 1 6135EA30
P 7050 5450
F 0 "#PWR020" H 7050 5300 50  0001 C CNN
F 1 "+3V3" H 7065 5623 50  0000 C CNN
F 2 "" H 7050 5450 50  0001 C CNN
F 3 "" H 7050 5450 50  0001 C CNN
	1    7050 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR017
U 1 1 6135F4D6
P 6350 950
F 0 "#PWR017" H 6350 800 50  0001 C CNN
F 1 "+3V3" H 6365 1123 50  0000 C CNN
F 2 "" H 6350 950 50  0001 C CNN
F 3 "" H 6350 950 50  0001 C CNN
	1    6350 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6136698C
P 1150 3550
F 0 "#PWR01" H 1150 3300 50  0001 C CNN
F 1 "GND" H 1155 3377 50  0000 C CNN
F 2 "" H 1150 3550 50  0001 C CNN
F 3 "" H 1150 3550 50  0001 C CNN
	1    1150 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 61367409
P 3100 7150
F 0 "#PWR010" H 3100 6900 50  0001 C CNN
F 1 "GND" H 3105 6977 50  0000 C CNN
F 2 "" H 3100 7150 50  0001 C CNN
F 3 "" H 3100 7150 50  0001 C CNN
	1    3100 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 613CAB31
P 2000 4250
F 0 "C2" H 2100 4250 50  0000 L CNN
F 1 "0.1μF/50V" H 1850 4350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2000 4250 50  0001 C CNN
F 3 "~" H 2000 4250 50  0001 C CNN
	1    2000 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 613CAB37
P 1800 4250
F 0 "C1" H 1550 4300 50  0000 L CNN
F 1 "4.7μF/6.3V" H 1350 4150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1800 4250 50  0001 C CNN
F 3 "~" H 1800 4250 50  0001 C CNN
	1    1800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4150 2000 4000
$Comp
L power:GND #PWR05
U 1 1 613CAB3F
P 1800 4550
F 0 "#PWR05" H 1800 4300 50  0001 C CNN
F 1 "GND" H 1805 4377 50  0000 C CNN
F 2 "" H 1800 4550 50  0001 C CNN
F 3 "" H 1800 4550 50  0001 C CNN
	1    1800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4350 2000 4450
Wire Wire Line
	5750 1050 6000 1050
Connection ~ 6000 1050
Wire Wire Line
	6000 1050 6350 1050
Wire Wire Line
	1800 4350 1800 4450
Connection ~ 1800 4450
Wire Wire Line
	1800 4450 2000 4450
Wire Wire Line
	2600 4950 2550 4950
$Comp
L Device:R R4
U 1 1 61471C00
P 2550 4450
F 0 "R4" H 2620 4496 50  0000 L CNN
F 1 "2KΩ" H 2620 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2480 4450 50  0001 C CNN
F 3 "~" H 2550 4450 50  0001 C CNN
	1    2550 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 614726C0
P 2550 4300
F 0 "#PWR09" H 2550 4150 50  0001 C CNN
F 1 "+3V3" H 2565 4473 50  0000 C CNN
F 2 "" H 2550 4300 50  0001 C CNN
F 3 "" H 2550 4300 50  0001 C CNN
	1    2550 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 61474371
P 2400 5850
F 0 "#PWR08" H 2400 5600 50  0001 C CNN
F 1 "GND" H 2405 5677 50  0000 C CNN
F 2 "" H 2400 5850 50  0001 C CNN
F 3 "" H 2400 5850 50  0001 C CNN
	1    2400 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5350 2500 5350
$Comp
L Power_Protection:SP0503BAHT D2
U 1 1 61473377
P 2400 5650
F 0 "D2" H 2050 5650 50  0000 L CNN
F 1 "SP0503BAHT" H 1700 5550 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-143" H 2625 5600 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 2525 5775 50  0001 C CNN
	1    2400 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 950  1850 950 
Wire Wire Line
	2350 950  2350 800 
$Comp
L Regulator_Linear:AMS1117-3.3 U3
U 1 1 61513BD1
P 6700 5700
F 0 "U3" H 6700 5942 50  0000 C CNN
F 1 "AMS1117-3.3" H 6700 5851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6700 5900 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 6800 5450 50  0001 C CNN
	1    6700 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 61513BD7
P 6700 6400
F 0 "#PWR019" H 6700 6150 50  0001 C CNN
F 1 "GND" H 6705 6227 50  0000 C CNN
F 2 "" H 6700 6400 50  0001 C CNN
F 3 "" H 6700 6400 50  0001 C CNN
	1    6700 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5700 6300 5700
Wire Wire Line
	7000 5700 7050 5700
$Comp
L Device:R R12
U 1 1 61513BE0
P 6000 5700
F 0 "R12" V 5793 5700 50  0000 C CNN
F 1 "2K (5%)" V 5884 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5930 5700 50  0001 C CNN
F 3 "~" H 6000 5700 50  0001 C CNN
	1    6000 5700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 61513BE6
P 5750 6000
F 0 "D3" V 5750 5900 50  0000 R CNN
F 1 "LED (red)" V 5650 5900 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5750 6000 50  0001 C CNN
F 3 "~" H 5750 6000 50  0001 C CNN
	1    5750 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 5700 5850 5700
Wire Wire Line
	6150 5700 6300 5700
Connection ~ 6300 5700
$Comp
L Device:C_Small C9
U 1 1 61513BF7
P 7050 6000
F 0 "C9" H 7200 6000 50  0000 C CNN
F 1 "22μF" H 7200 5900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7050 6000 50  0001 C CNN
F 3 "~" H 7050 6000 50  0001 C CNN
	1    7050 6000
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR016
U 1 1 61513C02
P 6300 5500
F 0 "#PWR016" H 6300 5350 50  0001 C CNN
F 1 "VBUS" H 6315 5673 50  0000 C CNN
F 2 "" H 6300 5500 50  0001 C CNN
F 3 "" H 6300 5500 50  0001 C CNN
	1    6300 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5500 6300 5700
$Comp
L power:VBUS #PWR06
U 1 1 61513C09
P 2350 800
F 0 "#PWR06" H 2350 650 50  0001 C CNN
F 1 "VBUS" H 2365 973 50  0000 C CNN
F 2 "" H 2350 800 50  0001 C CNN
F 3 "" H 2350 800 50  0001 C CNN
	1    2350 800 
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR04
U 1 1 6151D6E2
P 1800 3900
F 0 "#PWR04" H 1800 3750 50  0001 C CNN
F 1 "VBUS" H 1815 4073 50  0000 C CNN
F 2 "" H 1800 3900 50  0001 C CNN
F 3 "" H 1800 3900 50  0001 C CNN
	1    1800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4150 1800 4000
Wire Wire Line
	2000 4000 1800 4000
Connection ~ 2000 4000
Connection ~ 1800 4000
Wire Wire Line
	1800 4000 1800 3900
$Comp
L Device:R R8
U 1 1 61531039
P 3950 5800
F 0 "R8" H 4020 5846 50  0000 L CNN
F 1 "10KΩ" H 4020 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 5800 50  0001 C CNN
F 3 "~" H 3950 5800 50  0001 C CNN
	1    3950 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 6153181A
P 3950 5950
F 0 "#PWR013" H 3950 5700 50  0001 C CNN
F 1 "GND" H 3955 5777 50  0000 C CNN
F 2 "" H 3950 5950 50  0001 C CNN
F 3 "" H 3950 5950 50  0001 C CNN
	1    3950 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5650 3950 5650
$Comp
L Device:R R1
U 1 1 615D3602
P 1200 4950
F 0 "R1" H 1270 4996 50  0000 L CNN
F 1 "22.1KΩ" H 1270 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1130 4950 50  0001 C CNN
F 3 "~" H 1200 4950 50  0001 C CNN
	1    1200 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 615D3D08
P 1200 5350
F 0 "R2" H 1270 5396 50  0000 L CNN
F 1 "47.5KΩ" H 1270 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1130 5350 50  0001 C CNN
F 3 "~" H 1200 5350 50  0001 C CNN
	1    1200 5350
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR02
U 1 1 615D4B10
P 1200 4800
F 0 "#PWR02" H 1200 4650 50  0001 C CNN
F 1 "VBUS" H 1215 4973 50  0000 C CNN
F 2 "" H 1200 4800 50  0001 C CNN
F 3 "" H 1200 4800 50  0001 C CNN
	1    1200 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 5100 1200 5150
Connection ~ 1200 5150
Wire Wire Line
	1200 5150 1200 5200
Wire Wire Line
	1200 5150 2600 5150
Wire Wire Line
	1800 4450 1800 4550
Wire Wire Line
	2000 4000 2300 4000
Wire Wire Line
	2550 4950 2550 4600
Wire Wire Line
	2300 4000 3000 4000
Connection ~ 2300 4000
Connection ~ 3000 4000
Wire Wire Line
	3000 4000 3100 4000
Wire Wire Line
	2400 5250 2600 5250
Wire Wire Line
	2300 4000 2300 5450
Wire Wire Line
	3100 4000 3100 4550
Wire Wire Line
	3000 4000 3000 4550
$Comp
L power:GND #PWR03
U 1 1 6167A24D
P 1200 5500
F 0 "#PWR03" H 1200 5250 50  0001 C CNN
F 1 "GND" H 1205 5327 50  0000 C CNN
F 2 "" H 1200 5500 50  0001 C CNN
F 3 "" H 1200 5500 50  0001 C CNN
	1    1200 5500
	1    0    0    -1  
$EndComp
Text GLabel 4100 5050 2    50   Input ~ 0
RXD
Text GLabel 4100 4950 2    50   Input ~ 0
TXD
Text GLabel 7000 2100 2    50   Input ~ 0
TXD
Text GLabel 7000 2300 2    50   Input ~ 0
RXD
Wire Wire Line
	7000 2300 6950 2300
Wire Wire Line
	7000 2100 6950 2100
NoConn ~ 3600 6050
NoConn ~ 3600 6650
NoConn ~ 3600 6550
NoConn ~ 3600 6450
NoConn ~ 3600 6350
NoConn ~ 3600 6950
NoConn ~ 3600 6850
NoConn ~ 3600 6750
NoConn ~ 3600 5750
NoConn ~ 3600 5950
NoConn ~ 3600 6150
$Comp
L Device:R R6
U 1 1 61729413
P 3850 4950
F 0 "R6" V 3800 5100 31  0000 C CNN
F 1 "0Ω" V 3850 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3780 4950 50  0001 C CNN
F 3 "~" H 3850 4950 50  0001 C CNN
	1    3850 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 4950 3700 4950
Wire Wire Line
	3600 5050 3700 5050
Wire Wire Line
	4000 4950 4100 4950
Wire Wire Line
	4000 5050 4100 5050
Wire Wire Line
	7050 5450 7050 5700
Wire Wire Line
	5750 6300 6300 6300
Wire Wire Line
	6700 6300 6700 6400
Connection ~ 6700 6300
Wire Wire Line
	5750 6150 5750 6300
Wire Wire Line
	5750 5700 5750 5850
Text GLabel 3750 4850 2    50   Input ~ 0
RTS
Wire Wire Line
	3600 4850 3750 4850
Text GLabel 3750 5250 2    50   Input ~ 0
DTR
Wire Wire Line
	3600 5250 3750 5250
Text GLabel 4750 7400 0    50   Input ~ 0
RTS
Text GLabel 4750 6850 0    50   Input ~ 0
DTR
$Comp
L Device:R R9
U 1 1 617AD632
P 5100 6850
F 0 "R9" V 5000 6850 50  0000 C CNN
F 1 "10K" V 5100 6850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5030 6850 50  0001 C CNN
F 3 "~" H 5100 6850 50  0001 C CNN
	1    5100 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 617ADD26
P 5100 7400
F 0 "R10" V 5000 7400 50  0000 C CNN
F 1 "10K" V 5100 7400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5030 7400 50  0001 C CNN
F 3 "~" H 5100 7400 50  0001 C CNN
	1    5100 7400
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 6850 4900 6850
Wire Wire Line
	4750 7400 4850 7400
$Comp
L Transistor_BJT:S8050 Q1
U 1 1 617C491D
P 5450 6850
F 0 "Q1" H 5640 6896 50  0000 L CNN
F 1 "SS8050-G" H 5640 6805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5650 6775 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 5450 6850 50  0001 L CNN
	1    5450 6850
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:S8050 Q2
U 1 1 617C4E60
P 5450 7400
F 0 "Q2" H 5640 7354 50  0000 L CNN
F 1 "SS8050-G" H 5640 7445 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5650 7325 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 5450 7400 50  0001 L CNN
	1    5450 7400
	1    0    0    1   
$EndComp
Wire Wire Line
	4900 6850 4900 7200
Wire Wire Line
	4900 7200 5550 7200
Connection ~ 4900 6850
Wire Wire Line
	4900 6850 4950 6850
Wire Wire Line
	5550 7050 4850 7050
Wire Wire Line
	4850 7050 4850 7400
Connection ~ 4850 7400
Wire Wire Line
	4850 7400 4950 7400
Text GLabel 5800 6650 2    50   Input ~ 0
EN
Wire Wire Line
	5550 6650 5800 6650
Text GLabel 5800 7600 2    50   Input ~ 0
IO0
Wire Wire Line
	5550 7600 5800 7600
Text GLabel 5200 2000 0    50   Input ~ 0
EN
Text GLabel 7000 2000 2    50   Input ~ 0
IO0
Wire Wire Line
	7000 2000 6950 2000
$Comp
L Switch:SW_Push BOOT1
U 1 1 6185A2A1
P 4250 850
F 0 "BOOT1" H 4250 1043 50  0000 C CNN
F 1 "SW_Push" H 4250 1044 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 4250 1050 50  0001 C CNN
F 3 "~" H 4250 1050 50  0001 C CNN
	1    4250 850 
	1    0    0    -1  
$EndComp
Text GLabel 4650 850  2    50   Input ~ 0
IO0
Wire Wire Line
	4450 850  4550 850 
$Comp
L power:GND #PWR011
U 1 1 61865BA6
P 3950 1100
F 0 "#PWR011" H 3950 850 50  0001 C CNN
F 1 "GND" H 3955 927 50  0000 C CNN
F 2 "" H 3950 1100 50  0001 C CNN
F 3 "" H 3950 1100 50  0001 C CNN
	1    3950 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 618665D9
P 4250 1050
F 0 "C3" V 4300 950 50  0000 C CNN
F 1 "0.1μF" V 4200 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4250 1050 50  0001 C CNN
F 3 "~" H 4250 1050 50  0001 C CNN
	1    4250 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 850  3950 850 
Wire Wire Line
	3950 850  3950 1050
Wire Wire Line
	4150 1050 3950 1050
Connection ~ 3950 1050
Wire Wire Line
	3950 1050 3950 1100
Wire Wire Line
	4350 1050 4550 1050
Wire Wire Line
	4550 1050 4550 850 
Connection ~ 4550 850 
Wire Wire Line
	4550 850  4650 850 
$Comp
L Switch:SW_Push EN1
U 1 1 6188BEFF
P 4250 1700
F 0 "EN1" H 4250 1893 50  0000 C CNN
F 1 "SW_Push" H 4250 1894 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 4250 1900 50  0001 C CNN
F 3 "~" H 4250 1900 50  0001 C CNN
	1    4250 1700
	1    0    0    -1  
$EndComp
Text GLabel 4650 1700 2    50   Input ~ 0
EN
Wire Wire Line
	4450 1700 4550 1700
$Comp
L power:GND #PWR012
U 1 1 6188BF07
P 3950 1950
F 0 "#PWR012" H 3950 1700 50  0001 C CNN
F 1 "GND" H 3955 1777 50  0000 C CNN
F 2 "" H 3950 1950 50  0001 C CNN
F 3 "" H 3950 1950 50  0001 C CNN
	1    3950 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 6188BF0D
P 4250 1900
F 0 "C4" V 4300 1800 50  0000 C CNN
F 1 "0.1μF" V 4200 1750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4250 1900 50  0001 C CNN
F 3 "~" H 4250 1900 50  0001 C CNN
	1    4250 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 1700 3950 1700
Wire Wire Line
	3950 1700 3950 1900
Wire Wire Line
	4150 1900 3950 1900
Connection ~ 3950 1900
Wire Wire Line
	3950 1900 3950 1950
Wire Wire Line
	4350 1900 4550 1900
Wire Wire Line
	4550 1900 4550 1700
Connection ~ 4550 1700
Wire Wire Line
	4550 1700 4650 1700
$Comp
L Device:R R11
U 1 1 618987D7
P 5350 1750
F 0 "R11" H 5420 1796 50  0000 L CNN
F 1 "10KΩ" H 5420 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5280 1750 50  0001 C CNN
F 3 "~" H 5350 1750 50  0001 C CNN
	1    5350 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 61898E90
P 5350 2200
F 0 "C5" H 5150 2250 50  0000 L CNN
F 1 "0.1μF" H 5050 2100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5350 2200 50  0001 C CNN
F 3 "~" H 5350 2200 50  0001 C CNN
	1    5350 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2000 5350 2000
Wire Wire Line
	5350 2000 5350 2100
Wire Wire Line
	5350 1900 5350 2000
Connection ~ 5350 2000
Wire Wire Line
	5200 2000 5350 2000
Wire Wire Line
	5750 1050 5350 1050
Wire Wire Line
	5350 1050 5350 1600
Connection ~ 5750 1050
$Comp
L power:GND #PWR014
U 1 1 618E7BE2
P 5350 2300
F 0 "#PWR014" H 5350 2050 50  0001 C CNN
F 1 "GND" H 5355 2127 50  0000 C CNN
F 2 "" H 5350 2300 50  0001 C CNN
F 3 "" H 5350 2300 50  0001 C CNN
	1    5350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5450 2400 5250
Wire Wire Line
	2500 5450 2500 5350
$Comp
L Device:R R7
U 1 1 61729F89
P 3850 5050
F 0 "R7" V 3900 5200 31  0000 C CNN
F 1 "0Ω" V 3850 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3780 5050 50  0001 C CNN
F 3 "~" H 3850 5050 50  0001 C CNN
	1    3850 5050
	0    1    1    0   
$EndComp
Text GLabel 2150 5250 0    50   Input ~ 0
D+
Wire Wire Line
	2150 5250 2400 5250
Connection ~ 2400 5250
Text GLabel 2150 5350 0    50   Input ~ 0
D-
Wire Wire Line
	2150 5350 2500 5350
Connection ~ 2500 5350
Text GLabel 2000 1650 2    50   Input ~ 0
D+
Text GLabel 2000 1450 2    50   Input ~ 0
D-
Wire Wire Line
	1750 1450 1900 1450
Wire Wire Line
	1750 1550 1900 1550
Wire Wire Line
	1900 1550 1900 1450
Connection ~ 1900 1450
Wire Wire Line
	1900 1450 2000 1450
Wire Wire Line
	1900 1650 1900 1750
Connection ~ 1900 1650
Wire Wire Line
	1900 1650 2000 1650
Wire Wire Line
	1750 1750 1900 1750
Wire Wire Line
	1750 1650 1900 1650
$Comp
L Device:R R3
U 1 1 6198AA4D
P 2400 1450
F 0 "R3" H 2470 1496 50  0000 L CNN
F 1 "5K1Ω" H 2470 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2330 1450 50  0001 C CNN
F 3 "~" H 2400 1450 50  0001 C CNN
	1    2400 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6198BBC7
P 2750 1450
F 0 "R5" H 2820 1496 50  0000 L CNN
F 1 "5K1Ω" H 2820 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2680 1450 50  0001 C CNN
F 3 "~" H 2750 1450 50  0001 C CNN
	1    2750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1250 2400 1250
Wire Wire Line
	2750 1250 2750 1300
Wire Wire Line
	2400 1250 2400 1300
Connection ~ 2400 1250
Wire Wire Line
	2400 1250 2750 1250
Wire Wire Line
	1750 1150 2400 1150
Wire Wire Line
	2400 1150 2400 1250
$Comp
L power:GND #PWR07
U 1 1 619BB12E
P 2400 1600
F 0 "#PWR07" H 2400 1350 50  0001 C CNN
F 1 "GND" H 2405 1427 50  0000 C CNN
F 2 "" H 2400 1600 50  0001 C CNN
F 3 "" H 2400 1600 50  0001 C CNN
	1    2400 1600
	1    0    0    -1  
$EndComp
NoConn ~ 1750 1950
NoConn ~ 1750 2050
NoConn ~ 1750 2250
NoConn ~ 1750 2350
NoConn ~ 1750 2550
NoConn ~ 1750 2650
NoConn ~ 1750 2850
NoConn ~ 1750 2950
NoConn ~ 1750 3150
NoConn ~ 1750 3250
NoConn ~ 850  3550
NoConn ~ 3600 4750
NoConn ~ 3600 5150
NoConn ~ 3600 5350
NoConn ~ 3600 5450
NoConn ~ 5750 3200
NoConn ~ 5750 3300
NoConn ~ 5750 3400
NoConn ~ 5750 3500
NoConn ~ 5750 3600
NoConn ~ 5750 3700
NoConn ~ 6950 2200
NoConn ~ 6950 2400
NoConn ~ 6950 2600
NoConn ~ 6950 2700
NoConn ~ 6950 2800
NoConn ~ 6950 2900
NoConn ~ 6950 3000
NoConn ~ 6950 3100
NoConn ~ 6950 4000
NoConn ~ 6950 4100
NoConn ~ 6950 4200
NoConn ~ 6950 4300
Wire Wire Line
	2350 950  2150 950 
Wire Wire Line
	7050 5700 7050 5900
Connection ~ 7050 5700
Wire Wire Line
	7050 6100 7050 6300
Wire Wire Line
	7050 6300 6700 6300
Wire Wire Line
	6700 6000 6700 6300
$Comp
L Device:C_Small C8
U 1 1 613613AD
P 6300 6000
F 0 "C8" H 6450 6000 50  0000 C CNN
F 1 "22μF" H 6450 5900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6300 6000 50  0001 C CNN
F 3 "~" H 6300 6000 50  0001 C CNN
	1    6300 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5700 6300 5900
Wire Wire Line
	6300 6100 6300 6300
Connection ~ 6300 6300
Wire Wire Line
	6300 6300 6700 6300
$Comp
L Device:D_Schottky D1
U 1 1 613A02FF
P 2000 950
F 0 "D1" H 2000 733 50  0000 C CNN
F 1 "BAT760-7" H 2000 824 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323" H 2000 950 50  0001 C CNN
F 3 "~" H 2000 950 50  0001 C CNN
	1    2000 950 
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61377A69
P 8750 1450
F 0 "#PWR?" H 8750 1300 50  0001 C CNN
F 1 "+3V3" H 8765 1623 50  0000 C CNN
F 2 "" H 8750 1450 50  0001 C CNN
F 3 "" H 8750 1450 50  0001 C CNN
	1    8750 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 613A8223
P 8900 4900
F 0 "#PWR?" H 8900 4750 50  0001 C CNN
F 1 "+3V3" H 8750 5000 50  0000 C CNN
F 2 "" H 8900 4900 50  0001 C CNN
F 3 "" H 8900 4900 50  0001 C CNN
	1    8900 4900
	1    0    0    -1  
$EndComp
Connection ~ 8900 4900
$EndSCHEMATC
