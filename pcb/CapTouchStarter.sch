EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Test ESP32-WROOM-32E display board"
Date "2021-09-26"
Rev "2"
Comp "Chris Mumford"
Comment1 "Fork this project and start making changes"
Comment2 ""
Comment3 "USB-C, ESP32, Capacitive touch"
Comment4 "ESP32 w/display"
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32D U2
U 1 1 612D8DA1
P 6850 3000
F 0 "U2" H 6800 3500 50  0000 C CNN
F 1 "1965-ESP32-WROOM-32E(8MB)CT-ND" H 6000 1600 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 6850 1500 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 6550 3050 50  0001 C CNN
	1    6850 3000
	1    0    0    -1  
$EndComp
Text Notes 9885 6060 0    63   ~ 0
LEDK\nLED-A1\nLED-A2\nLED-A3\nLED-A4\nIM0\nIM1\nIM2\nIM3\n/RESET\nVSYNC\nHSYNC\nDOTCLK\nDE\nDB17\nDB16\nDB15\nDB14\nDB13\nDB12\nDB11\nDB10\nDB9\nDB8\nDB7\nDB6\nDB5\nDB4\nDB3\nDB2\nDB1\nDB0\nSDO (MISO)\nSDI (MOSI)\n/RD\n/WR_RS\nRS_SCL\n/CS\nTE\nIOVCC\nIOVCC\nVCI\nGND\nCTP_SCL\nCTP_SDA\nCTP_IRQ\nCTP_RES\nGND\nGND\nGND\n\n
$Comp
L power:GND #PWR030
U 1 1 6133F206
P 8950 6150
F 0 "#PWR030" H 8950 5900 50  0001 C CNN
F 1 "GND" H 8955 5977 50  0000 C CNN
F 2 "" H 8950 6150 50  0001 C CNN
F 3 "" H 8950 6150 50  0001 C CNN
	1    8950 6150
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
	9500 4900 9400 4900
Wire Wire Line
	9500 5000 9400 5000
Wire Wire Line
	9500 5100 9400 5100
Wire Wire Line
	9500 4600 9250 4600
Wire Wire Line
	8350 3300 7450 3300
$Comp
L power:GND #PWR022
U 1 1 61349AB3
P 6850 4550
F 0 "#PWR022" H 6850 4300 50  0001 C CNN
F 1 "GND" H 6855 4377 50  0000 C CNN
F 2 "" H 6850 4550 50  0001 C CNN
F 3 "" H 6850 4550 50  0001 C CNN
	1    6850 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 6134FC97
P 8150 1550
F 0 "R14" H 7950 1600 50  0000 L CNN
F 1 "2K2Ω" H 7900 1500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8080 1550 50  0001 C CNN
F 3 "~" H 8150 1550 50  0001 C CNN
	1    8150 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 61350C51
P 8350 1550
F 0 "R13" H 8400 1600 50  0000 L CNN
F 1 "2K2Ω" H 8400 1500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8280 1550 50  0001 C CNN
F 3 "~" H 8350 1550 50  0001 C CNN
	1    8350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1300 8150 1300
Wire Wire Line
	8150 1300 8150 1400
Connection ~ 6850 1300
Wire Wire Line
	6850 1300 6850 1600
Wire Wire Line
	8350 1400 8350 1300
$Comp
L power:GND #PWR028
U 1 1 6134C54F
P 9000 1550
F 0 "#PWR028" H 9000 1300 50  0001 C CNN
F 1 "GND" H 9005 1377 50  0000 C CNN
F 2 "" H 9000 1550 50  0001 C CNN
F 3 "" H 9000 1550 50  0001 C CNN
	1    9000 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1700 9400 1700
Wire Wire Line
	9500 1600 9400 1600
Wire Wire Line
	9000 1500 9500 1500
$Comp
L Device:C_Small C7
U 1 1 6136B483
P 6500 1100
F 0 "C7" H 6592 1146 50  0000 L CNN
F 1 "0.1μF/50V" H 6592 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6500 1100 50  0001 C CNN
F 3 "~" H 6500 1100 50  0001 C CNN
	1    6500 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 6136C024
P 6250 1100
F 0 "C6" H 6050 1150 50  0000 L CNN
F 1 "22μF" H 5950 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6250 1100 50  0001 C CNN
F 3 "~" H 6250 1100 50  0001 C CNN
	1    6250 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1000 6250 850 
Wire Wire Line
	6500 1000 6500 850 
$Comp
L power:GND #PWR019
U 1 1 613831DD
P 6400 1350
F 0 "#PWR019" H 6400 1100 50  0001 C CNN
F 1 "GND" H 6405 1177 50  0000 C CNN
F 2 "" H 6400 1350 50  0001 C CNN
F 3 "" H 6400 1350 50  0001 C CNN
	1    6400 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1200 6250 1300
Wire Wire Line
	6250 1300 6400 1300
Wire Wire Line
	6400 1300 6400 1350
Wire Wire Line
	6500 1200 6500 1300
Wire Wire Line
	6500 1300 6400 1300
Connection ~ 6400 1300
Wire Wire Line
	6850 4400 6850 4550
Wire Wire Line
	6850 750  6850 850 
Connection ~ 6850 850 
Wire Wire Line
	6850 850  6850 1300
NoConn ~ 6250 2000
NoConn ~ 6250 2100
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
P 2500 6100
F 0 "U1" H 2350 5900 50  0000 C CNN
F 1 "CP2102N-A01-GQFN28" H 3000 4800 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-28-1EP_5x5mm_P0.5mm_EP3.35x3.35mm" H 2950 4900 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf" H 2550 5350 50  0001 C CNN
	1    2500 6100
	1    0    0    -1  
$EndComp
Connection ~ 9350 5900
$Comp
L power:+3V3 #PWR024
U 1 1 6135EA30
P 7900 5100
F 0 "#PWR024" H 7900 4950 50  0001 C CNN
F 1 "+3V3" H 7915 5273 50  0000 C CNN
F 2 "" H 7900 5100 50  0001 C CNN
F 3 "" H 7900 5100 50  0001 C CNN
	1    7900 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR021
U 1 1 6135F4D6
P 6850 750
F 0 "#PWR021" H 6850 600 50  0001 C CNN
F 1 "+3V3" H 6865 923 50  0000 C CNN
F 2 "" H 6850 750 50  0001 C CNN
F 3 "" H 6850 750 50  0001 C CNN
	1    6850 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6136698C
P 1150 3550
F 0 "#PWR02" H 1150 3300 50  0001 C CNN
F 1 "GND" H 1155 3377 50  0000 C CNN
F 2 "" H 1150 3550 50  0001 C CNN
F 3 "" H 1150 3550 50  0001 C CNN
	1    1150 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 61367409
P 2500 7400
F 0 "#PWR012" H 2500 7150 50  0001 C CNN
F 1 "GND" H 2505 7227 50  0000 C CNN
F 2 "" H 2500 7400 50  0001 C CNN
F 3 "" H 2500 7400 50  0001 C CNN
	1    2500 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 613CAB31
P 1400 4500
F 0 "C2" H 1500 4500 50  0000 L CNN
F 1 "0.1μF/50V" H 1450 4600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1400 4500 50  0001 C CNN
F 3 "~" H 1400 4500 50  0001 C CNN
	1    1400 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 613CAB37
P 1200 4500
F 0 "C1" H 950 4550 50  0000 L CNN
F 1 "4.7μF/6.3V" H 750 4400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1200 4500 50  0001 C CNN
F 3 "~" H 1200 4500 50  0001 C CNN
	1    1200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4400 1400 4250
$Comp
L power:GND #PWR06
U 1 1 613CAB3F
P 1200 4800
F 0 "#PWR06" H 1200 4550 50  0001 C CNN
F 1 "GND" H 1205 4627 50  0000 C CNN
F 2 "" H 1200 4800 50  0001 C CNN
F 3 "" H 1200 4800 50  0001 C CNN
	1    1200 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4600 1400 4700
Wire Wire Line
	6250 850  6500 850 
Connection ~ 6500 850 
Wire Wire Line
	6500 850  6850 850 
Wire Wire Line
	1200 4600 1200 4700
Connection ~ 1200 4700
Wire Wire Line
	1200 4700 1400 4700
Wire Wire Line
	2000 5200 1950 5200
$Comp
L Device:R R4
U 1 1 61471C00
P 1950 4700
F 0 "R4" H 2020 4746 50  0000 L CNN
F 1 "2KΩ" H 2020 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1880 4700 50  0001 C CNN
F 3 "~" H 1950 4700 50  0001 C CNN
	1    1950 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 614726C0
P 1200 4150
F 0 "#PWR05" H 1200 4000 50  0001 C CNN
F 1 "+3V3" H 1215 4323 50  0000 C CNN
F 2 "" H 1200 4150 50  0001 C CNN
F 3 "" H 1200 4150 50  0001 C CNN
	1    1200 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 61474371
P 1800 6100
F 0 "#PWR010" H 1800 5850 50  0001 C CNN
F 1 "GND" H 1805 5927 50  0000 C CNN
F 2 "" H 1800 6100 50  0001 C CNN
F 3 "" H 1800 6100 50  0001 C CNN
	1    1800 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5600 1900 5600
$Comp
L Power_Protection:SP0503BAHT D2
U 1 1 61473377
P 1800 5900
F 0 "D2" H 1450 5900 50  0000 L CNN
F 1 "SP0503BAHT" H 1100 5800 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-143" H 2025 5850 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 1925 6025 50  0001 C CNN
	1    1800 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 950  1850 950 
$Comp
L Regulator_Linear:AMS1117-3.3 U3
U 1 1 61513BD1
P 7550 5350
F 0 "U3" H 7550 5592 50  0000 C CNN
F 1 "AMS1117-3.3" H 7550 5501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 7550 5550 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 7650 5100 50  0001 C CNN
	1    7550 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 61513BD7
P 7550 6200
F 0 "#PWR023" H 7550 5950 50  0001 C CNN
F 1 "GND" H 7555 6027 50  0000 C CNN
F 2 "" H 7550 6200 50  0001 C CNN
F 3 "" H 7550 6200 50  0001 C CNN
	1    7550 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5350 7150 5350
Wire Wire Line
	7850 5350 7900 5350
$Comp
L Device:R R12
U 1 1 61513BE0
P 6850 5350
F 0 "R12" V 6643 5350 50  0000 C CNN
F 1 "2KΩ" V 6734 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6780 5350 50  0001 C CNN
F 3 "~" H 6850 5350 50  0001 C CNN
	1    6850 5350
	0    1    1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 61513BE6
P 6600 5650
F 0 "D5" V 6600 5550 50  0000 R CNN
F 1 "PWR" V 6500 5550 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6600 5650 50  0001 C CNN
F 3 "~" H 6600 5650 50  0001 C CNN
	1    6600 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 5350 6700 5350
Wire Wire Line
	7000 5350 7150 5350
Connection ~ 7150 5350
$Comp
L Device:C_Small C9
U 1 1 61513BF7
P 7900 5650
F 0 "C9" H 8050 5650 50  0000 C CNN
F 1 "22μF" H 8050 5550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7900 5650 50  0001 C CNN
F 3 "~" H 7900 5650 50  0001 C CNN
	1    7900 5650
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR020
U 1 1 61513C02
P 7150 5150
F 0 "#PWR020" H 7150 5000 50  0001 C CNN
F 1 "VBUS" H 7165 5323 50  0000 C CNN
F 2 "" H 7150 5150 50  0001 C CNN
F 3 "" H 7150 5150 50  0001 C CNN
	1    7150 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5150 7150 5350
$Comp
L power:VBUS #PWR08
U 1 1 61513C09
P 3400 750
F 0 "#PWR08" H 3400 600 50  0001 C CNN
F 1 "VBUS" H 3415 923 50  0000 C CNN
F 2 "" H 3400 750 50  0001 C CNN
F 3 "" H 3400 750 50  0001 C CNN
	1    3400 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4400 1200 4250
Wire Wire Line
	1400 4250 1200 4250
Connection ~ 1400 4250
Connection ~ 1200 4250
Wire Wire Line
	1200 4250 1200 4150
$Comp
L Device:R R6
U 1 1 61531039
P 3350 6050
F 0 "R6" H 3420 6096 50  0000 L CNN
F 1 "10KΩ" H 3420 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3280 6050 50  0001 C CNN
F 3 "~" H 3350 6050 50  0001 C CNN
	1    3350 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6153181A
P 3350 6200
F 0 "#PWR015" H 3350 5950 50  0001 C CNN
F 1 "GND" H 3355 6027 50  0000 C CNN
F 2 "" H 3350 6200 50  0001 C CNN
F 3 "" H 3350 6200 50  0001 C CNN
	1    3350 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5900 3350 5900
$Comp
L Device:R R1
U 1 1 615D3602
P 900 5200
F 0 "R1" H 970 5246 50  0000 L CNN
F 1 "22K1Ω" H 970 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 830 5200 50  0001 C CNN
F 3 "~" H 900 5200 50  0001 C CNN
	1    900  5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 615D3D08
P 900 5600
F 0 "R2" H 970 5646 50  0000 L CNN
F 1 "47K5Ω" H 970 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 830 5600 50  0001 C CNN
F 3 "~" H 900 5600 50  0001 C CNN
	1    900  5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5350 900  5400
Connection ~ 900  5400
Wire Wire Line
	900  5400 900  5450
Wire Wire Line
	1200 4700 1200 4800
Wire Wire Line
	1950 5200 1950 4850
Connection ~ 2400 4250
Wire Wire Line
	2400 4250 2500 4250
Wire Wire Line
	1800 5500 2000 5500
Wire Wire Line
	2500 4250 2500 4800
Wire Wire Line
	2400 4250 2400 4800
Text GLabel 3150 5300 2    50   Input ~ 0
RXD
Text GLabel 3150 5200 2    50   Input ~ 0
TXD
Text GLabel 7450 1900 2    50   Input ~ 0
TXD
Text GLabel 7450 2100 2    50   Input ~ 0
RXD
NoConn ~ 3000 6300
NoConn ~ 3000 6900
NoConn ~ 3000 6800
NoConn ~ 3000 7200
NoConn ~ 3000 7100
NoConn ~ 3000 7000
NoConn ~ 3000 6000
NoConn ~ 3000 6200
NoConn ~ 3000 6400
Wire Wire Line
	7900 5100 7900 5250
Wire Wire Line
	6600 5950 7150 5950
Connection ~ 7550 5950
Wire Wire Line
	6600 5800 6600 5950
Wire Wire Line
	6600 5350 6600 5500
Text GLabel 3150 5100 2    50   Input ~ 0
RTS
Wire Wire Line
	3000 5100 3150 5100
Text GLabel 3150 5500 2    50   Input ~ 0
DTR
Wire Wire Line
	3000 5500 3150 5500
Text GLabel 4850 6550 0    50   Input ~ 0
RTS
Text GLabel 4850 6000 0    50   Input ~ 0
DTR
$Comp
L Device:R R9
U 1 1 617AD632
P 5200 6000
F 0 "R9" V 5100 6000 50  0000 C CNN
F 1 "10KΩ" V 5200 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5130 6000 50  0001 C CNN
F 3 "~" H 5200 6000 50  0001 C CNN
	1    5200 6000
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 617ADD26
P 5200 6550
F 0 "R10" V 5100 6550 50  0000 C CNN
F 1 "10KΩ" V 5200 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5130 6550 50  0001 C CNN
F 3 "~" H 5200 6550 50  0001 C CNN
	1    5200 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 6000 5000 6000
Wire Wire Line
	4850 6550 4950 6550
$Comp
L Transistor_BJT:S8050 Q1
U 1 1 617C491D
P 5550 6000
F 0 "Q1" H 5740 6046 50  0000 L CNN
F 1 "SS8050-G" H 5740 5955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5750 5925 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 5550 6000 50  0001 L CNN
	1    5550 6000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:S8050 Q2
U 1 1 617C4E60
P 5550 6550
F 0 "Q2" H 5740 6504 50  0000 L CNN
F 1 "SS8050-G" H 5740 6595 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5750 6475 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 5550 6550 50  0001 L CNN
	1    5550 6550
	1    0    0    1   
$EndComp
Wire Wire Line
	5000 6000 5000 6350
Wire Wire Line
	5000 6350 5650 6350
Connection ~ 5000 6000
Wire Wire Line
	5000 6000 5050 6000
Wire Wire Line
	5650 6200 4950 6200
Wire Wire Line
	4950 6200 4950 6550
Connection ~ 4950 6550
Wire Wire Line
	4950 6550 5050 6550
Text GLabel 5750 5350 2    50   Input ~ 0
EN
Text GLabel 5700 1800 0    50   Input ~ 0
EN
Text GLabel 7450 1800 2    50   Input ~ 0
IO0
$Comp
L Switch:SW_Push SW1
U 1 1 6185A2A1
P 5350 7000
F 0 "SW1" H 5500 7100 50  0000 C CNN
F 1 "BOOT" H 5350 7194 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 5350 7200 50  0001 C CNN
F 3 "~" H 5350 7200 50  0001 C CNN
	1    5350 7000
	1    0    0    -1  
$EndComp
Text GLabel 5750 7000 2    50   Input ~ 0
IO0
Wire Wire Line
	5550 7000 5650 7000
$Comp
L power:GND #PWR013
U 1 1 61865BA6
P 5050 7250
F 0 "#PWR013" H 5050 7000 50  0001 C CNN
F 1 "GND" H 5055 7077 50  0000 C CNN
F 2 "" H 5050 7250 50  0001 C CNN
F 3 "" H 5050 7250 50  0001 C CNN
	1    5050 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 618665D9
P 5350 7200
F 0 "C3" V 5400 7100 50  0000 C CNN
F 1 "0.1μF/50V" V 5250 7100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5350 7200 50  0001 C CNN
F 3 "~" H 5350 7200 50  0001 C CNN
	1    5350 7200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5150 7000 5050 7000
Wire Wire Line
	5050 7000 5050 7200
Wire Wire Line
	5250 7200 5050 7200
Connection ~ 5050 7200
Wire Wire Line
	5050 7200 5050 7250
Wire Wire Line
	5450 7200 5650 7200
Wire Wire Line
	5650 7200 5650 7000
Connection ~ 5650 7000
Wire Wire Line
	5650 7000 5750 7000
$Comp
L Switch:SW_Push SW2
U 1 1 6188BEFF
P 5350 5350
F 0 "SW2" H 5450 5450 50  0000 C CNN
F 1 "EN" H 5350 5544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 5350 5550 50  0001 C CNN
F 3 "~" H 5350 5550 50  0001 C CNN
	1    5350 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5350 5650 5350
$Comp
L power:GND #PWR014
U 1 1 6188BF07
P 5050 5600
F 0 "#PWR014" H 5050 5350 50  0001 C CNN
F 1 "GND" H 5055 5427 50  0000 C CNN
F 2 "" H 5050 5600 50  0001 C CNN
F 3 "" H 5050 5600 50  0001 C CNN
	1    5050 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 6188BF0D
P 5350 5550
F 0 "C4" V 5400 5450 50  0000 C CNN
F 1 "0.1μF/50V" V 5250 5500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5350 5550 50  0001 C CNN
F 3 "~" H 5350 5550 50  0001 C CNN
	1    5350 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5150 5350 5050 5350
Wire Wire Line
	5050 5350 5050 5550
Wire Wire Line
	5250 5550 5050 5550
Connection ~ 5050 5550
Wire Wire Line
	5050 5550 5050 5600
Wire Wire Line
	5450 5550 5650 5550
Wire Wire Line
	5650 5550 5650 5350
$Comp
L Device:R R11
U 1 1 618987D7
P 5850 1550
F 0 "R11" H 5920 1596 50  0000 L CNN
F 1 "10KΩ" H 5920 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5780 1550 50  0001 C CNN
F 3 "~" H 5850 1550 50  0001 C CNN
	1    5850 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 61898E90
P 5850 2000
F 0 "C5" H 5650 2050 50  0000 L CNN
F 1 "0.1μF/50V" H 5400 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5850 2000 50  0001 C CNN
F 3 "~" H 5850 2000 50  0001 C CNN
	1    5850 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1800 5850 1800
Wire Wire Line
	5850 1800 5850 1900
Wire Wire Line
	5850 1700 5850 1800
Connection ~ 5850 1800
Wire Wire Line
	5700 1800 5850 1800
Wire Wire Line
	6250 850  5850 850 
Wire Wire Line
	5850 850  5850 1400
Connection ~ 6250 850 
$Comp
L power:GND #PWR018
U 1 1 618E7BE2
P 5850 2100
F 0 "#PWR018" H 5850 1850 50  0001 C CNN
F 1 "GND" H 5855 1927 50  0000 C CNN
F 2 "" H 5850 2100 50  0001 C CNN
F 3 "" H 5850 2100 50  0001 C CNN
	1    5850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5700 1800 5500
Wire Wire Line
	1900 5700 1900 5600
Text GLabel 1550 5500 0    50   Input ~ 0
D+
Wire Wire Line
	1550 5500 1800 5500
Connection ~ 1800 5500
Text GLabel 1550 5600 0    50   Input ~ 0
D-
Wire Wire Line
	1550 5600 1900 5600
Connection ~ 1900 5600
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
	2750 1250 2750 1300
Wire Wire Line
	1750 1150 2400 1150
$Comp
L power:GND #PWR09
U 1 1 619BB12E
P 2400 1600
F 0 "#PWR09" H 2400 1350 50  0001 C CNN
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
NoConn ~ 3000 5000
NoConn ~ 3000 5400
NoConn ~ 3000 5600
NoConn ~ 3000 5700
NoConn ~ 7450 2000
NoConn ~ 7450 2200
NoConn ~ 6250 3500
NoConn ~ 7450 2900
NoConn ~ 7450 3800
NoConn ~ 7450 3900
NoConn ~ 7450 4000
NoConn ~ 7450 4100
Wire Wire Line
	7900 5350 7900 5550
Connection ~ 7900 5350
Wire Wire Line
	7900 5750 7900 5950
Wire Wire Line
	7900 5950 7550 5950
Wire Wire Line
	7550 5650 7550 5950
$Comp
L Device:C_Small C8
U 1 1 613613AD
P 7150 5650
F 0 "C8" H 7300 5650 50  0000 C CNN
F 1 "22μF" H 7300 5550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7150 5650 50  0001 C CNN
F 3 "~" H 7150 5650 50  0001 C CNN
	1    7150 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5350 7150 5550
Wire Wire Line
	7150 5750 7150 5950
Connection ~ 7150 5950
Wire Wire Line
	7150 5950 7550 5950
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
L power:+3V3 #PWR025
U 1 1 61377A69
P 9200 1800
F 0 "#PWR025" H 9200 1650 50  0001 C CNN
F 1 "+3V3" H 9215 1973 50  0000 C CNN
F 2 "" H 9200 1800 50  0001 C CNN
F 3 "" H 9200 1800 50  0001 C CNN
	1    9200 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR026
U 1 1 613A8223
P 8900 4900
F 0 "#PWR026" H 8900 4750 50  0001 C CNN
F 1 "+3V3" H 8750 5000 50  0000 C CNN
F 2 "" H 8900 4900 50  0001 C CNN
F 3 "" H 8900 4900 50  0001 C CNN
	1    8900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1150 2400 1300
Wire Wire Line
	2750 1250 1750 1250
$Comp
L power:GND #PWR011
U 1 1 613880DC
P 2750 1600
F 0 "#PWR011" H 2750 1350 50  0001 C CNN
F 1 "GND" H 2755 1427 50  0000 C CNN
F 2 "" H 2750 1600 50  0001 C CNN
F 3 "" H 2750 1600 50  0001 C CNN
	1    2750 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 61384E5A
P 3500 850
F 0 "TP1" V 3454 1038 50  0000 L CNN
F 1 "5V" V 3545 1038 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 3700 850 50  0001 C CNN
F 3 "~" H 3700 850 50  0001 C CNN
	1    3500 850 
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 613858D9
P 7900 5250
F 0 "TP3" V 7950 5450 50  0000 L CNN
F 1 "3V3" V 7850 5450 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 8100 5250 50  0001 C CNN
F 3 "~" H 8100 5250 50  0001 C CNN
	1    7900 5250
	0    1    1    0   
$EndComp
Connection ~ 7900 5250
Wire Wire Line
	7900 5250 7900 5350
$Comp
L Connector:Conn_01x01_Male TP2
U 1 1 613DC3F5
P 7750 6100
F 0 "TP2" H 7750 6150 50  0000 C CNN
F 1 "GND" H 7750 6050 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7750 6100 50  0001 C CNN
F 3 "~" H 7750 6100 50  0001 C CNN
	1    7750 6100
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male TP5
U 1 1 61520C32
P 7900 2000
F 0 "TP5" H 7900 1950 50  0000 R CNN
F 1 "SDA" H 7900 2050 50  0000 R CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7900 2000 50  0001 C CNN
F 3 "~" H 7900 2000 50  0001 C CNN
	1    7900 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male TP4
U 1 1 615239AB
P 8600 2000
F 0 "TP4" H 8550 2050 50  0000 C CNN
F 1 "SCL" H 8550 1950 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 8600 2000 50  0001 C CNN
F 3 "~" H 8600 2000 50  0001 C CNN
	1    8600 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 4250 1950 4250
Wire Wire Line
	1950 4550 1950 4250
Connection ~ 1950 4250
Wire Wire Line
	1950 4250 2400 4250
$Comp
L power:VBUS #PWR07
U 1 1 6153DE29
P 1700 5200
F 0 "#PWR07" H 1700 5050 50  0001 C CNN
F 1 "VBUS" H 1715 5373 50  0000 C CNN
F 2 "" H 1700 5200 50  0001 C CNN
F 3 "" H 1700 5200 50  0001 C CNN
	1    1700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5400 2000 5400
Wire Wire Line
	1700 5200 1700 5700
$Comp
L power:+3V3 #PWR027
U 1 1 6162A32F
P 9000 750
F 0 "#PWR027" H 9000 600 50  0001 C CNN
F 1 "+3V3" H 9015 923 50  0000 C CNN
F 2 "" H 9000 750 50  0001 C CNN
F 3 "" H 9000 750 50  0001 C CNN
	1    9000 750 
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR03
U 1 1 615D4B10
P 900 5050
F 0 "#PWR03" H 900 4900 50  0001 C CNN
F 1 "VBUS" H 915 5223 50  0000 C CNN
F 2 "" H 900 5050 50  0001 C CNN
F 3 "" H 900 5050 50  0001 C CNN
	1    900  5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6167A24D
P 900 5750
F 0 "#PWR04" H 900 5500 50  0001 C CNN
F 1 "GND" H 905 5577 50  0000 C CNN
F 2 "" H 900 5750 50  0001 C CNN
F 3 "" H 900 5750 50  0001 C CNN
	1    900  5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 750  9000 1100
$Comp
L power:GND #PWR029
U 1 1 61630EA8
P 9250 800
F 0 "#PWR029" H 9250 550 50  0001 C CNN
F 1 "GND" H 9250 650 50  0000 C CNN
F 2 "" H 9250 800 50  0001 C CNN
F 3 "" H 9250 800 50  0001 C CNN
	1    9250 800 
	1    0    0    -1  
$EndComp
Text Notes 10450 1800 0    50   ~ 0
Bus Sel\n[0,1,1,1]\n4-wires_8-bit SPI II\n/CS,RS,SDI,SDO,SCL
Wire Notes Line
	10350 1450 10400 1450
Wire Notes Line
	10400 1450 10400 1800
Wire Notes Line
	10400 1800 10350 1800
Wire Wire Line
	9000 1500 9000 1550
Wire Wire Line
	9500 1800 9400 1800
NoConn ~ 9500 800 
NoConn ~ 9500 900 
NoConn ~ 9500 2400
NoConn ~ 9500 2500
NoConn ~ 9500 2600
NoConn ~ 9500 2700
NoConn ~ 9500 2800
NoConn ~ 9500 2900
NoConn ~ 9500 3000
NoConn ~ 9500 3100
NoConn ~ 9500 3200
NoConn ~ 9500 3300
NoConn ~ 9500 3400
NoConn ~ 9500 3500
NoConn ~ 9500 3600
NoConn ~ 9500 3700
NoConn ~ 9500 3800
NoConn ~ 9500 3900
NoConn ~ 9500 4000
NoConn ~ 9500 4100
$Comp
L power:GND #PWR01
U 1 1 617A8429
P 850 3550
F 0 "#PWR01" H 850 3300 50  0001 C CNN
F 1 "GND" H 855 3377 50  0000 C CNN
F 2 "" H 850 3550 50  0001 C CNN
F 3 "" H 850 3550 50  0001 C CNN
	1    850  3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 5200 3000 5200
Wire Wire Line
	3150 5300 3000 5300
$Comp
L Device:LED D3
U 1 1 6165731C
P 3550 6600
F 0 "D3" H 3543 6817 50  0000 C CNN
F 1 "TX" H 3543 6726 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3550 6600 50  0001 C CNN
F 3 "~" H 3550 6600 50  0001 C CNN
	1    3550 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 61659431
P 3550 6800
F 0 "D4" H 3550 6550 50  0000 C CNN
F 1 "RX" H 3550 6650 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3550 6800 50  0001 C CNN
F 3 "~" H 3550 6800 50  0001 C CNN
	1    3550 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6700 3250 6700
Wire Wire Line
	3250 6700 3250 6800
$Comp
L Device:R_Small R7
U 1 1 61673255
P 3800 6600
F 0 "R7" V 3604 6600 50  0000 C CNN
F 1 "2KΩ" V 3695 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3800 6600 50  0001 C CNN
F 3 "~" H 3800 6600 50  0001 C CNN
	1    3800 6600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 616743B3
P 3800 6800
F 0 "R8" V 4000 6800 50  0000 C CNN
F 1 "2KΩ" V 3900 6800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3800 6800 50  0001 C CNN
F 3 "~" H 3800 6800 50  0001 C CNN
	1    3800 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 6800 3250 6800
Wire Wire Line
	3400 6600 3000 6600
$Comp
L power:+3V3 #PWR017
U 1 1 6169A734
P 4050 6450
F 0 "#PWR017" H 4050 6300 50  0001 C CNN
F 1 "+3V3" H 4065 6623 50  0000 C CNN
F 2 "" H 4050 6450 50  0001 C CNN
F 3 "" H 4050 6450 50  0001 C CNN
	1    4050 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6600 4050 6600
Wire Wire Line
	4050 6600 4050 6450
Wire Wire Line
	3900 6800 4050 6800
Wire Wire Line
	4050 6800 4050 6600
Connection ~ 4050 6600
Text GLabel 9150 4200 0    50   Input ~ 0
MISO
Text GLabel 9150 4300 0    50   Input ~ 0
MOSI
Text GLabel 9500 4700 0    50   Input ~ 0
CS
Text GLabel 9400 5500 0    50   Input ~ 0
CTP_IRQ
Text GLabel 9500 5400 0    50   Input ~ 0
CTP_SDA
Text GLabel 9500 5300 0    50   Input ~ 0
CTP_SCL
Text GLabel 9150 4600 0    50   Input ~ 0
SPI_SCL
Text GLabel 9500 1900 0    50   Input ~ 0
RESET
Text GLabel 9500 4500 0    50   Input ~ 0
DC
$Comp
L Connector:Conn_01x01_Male TP7
U 1 1 617087C9
P 8950 4100
F 0 "TP7" H 9250 4150 50  0000 R CNN
F 1 "MISO" H 9050 4150 50  0000 R CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 8950 4100 50  0001 C CNN
F 3 "~" H 8950 4100 50  0001 C CNN
	1    8950 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male TP6
U 1 1 6170A396
P 8950 4400
F 0 "TP6" H 9200 4350 50  0000 R CNN
F 1 "MOSI" H 9050 4350 50  0000 R CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 8950 4400 50  0001 C CNN
F 3 "~" H 8950 4400 50  0001 C CNN
	1    8950 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male TP8
U 1 1 61659F86
P 9250 4800
F 0 "TP8" V 9100 4900 50  0000 R CNN
F 1 "SPI_SCL" V 9200 5050 50  0000 R CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 9250 4800 50  0001 C CNN
F 3 "~" H 9250 4800 50  0001 C CNN
	1    9250 4800
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male TP9
U 1 1 616686DD
P 9450 6200
F 0 "TP9" H 9400 6200 50  0000 R CNN
F 1 "TP_IRQ" H 9550 6100 50  0000 R CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 9450 6200 50  0001 C CNN
F 3 "~" H 9450 6200 50  0001 C CNN
	1    9450 6200
	0    -1   -1   0   
$EndComp
Text GLabel 7450 3700 2    50   Input ~ 0
RESET
Text GLabel 7450 3500 2    50   Input ~ 0
CTP_IRQ
Text GLabel 7450 3600 2    50   Input ~ 0
DC
Text GLabel 7450 3400 2    50   Input ~ 0
MOSI
Text GLabel 7450 3100 2    50   Input ~ 0
MISO
Text GLabel 7450 3000 2    50   Input ~ 0
SPI_SCL
Text GLabel 8400 2150 2    50   Input ~ 0
CTP_SCL
Text GLabel 8100 2150 0    50   Input ~ 0
CTP_SDA
Connection ~ 8150 1300
Wire Wire Line
	8150 1300 8350 1300
Wire Wire Line
	8150 3200 7450 3200
Wire Wire Line
	8350 1700 8350 2000
Wire Wire Line
	8400 2000 8350 2000
Connection ~ 8350 2000
Wire Wire Line
	8350 2000 8350 2150
Wire Wire Line
	8150 1700 8150 2000
Wire Wire Line
	8100 2000 8150 2000
Connection ~ 8150 2000
Wire Wire Line
	8150 2000 8150 2150
Wire Wire Line
	8100 2150 8150 2150
Connection ~ 8150 2150
Wire Wire Line
	8150 2150 8150 3200
Wire Wire Line
	8400 2150 8350 2150
Connection ~ 8350 2150
Wire Wire Line
	8350 2150 8350 3300
Text GLabel 7450 2300 2    50   Input ~ 0
CS
Wire Wire Line
	9500 5500 9450 5500
Wire Wire Line
	9350 5900 8950 5900
Connection ~ 8950 5900
Wire Wire Line
	8950 5900 8950 6150
Wire Wire Line
	8950 5200 9500 5200
Wire Wire Line
	9450 6000 9450 5500
Wire Wire Line
	8950 5200 8950 5900
Connection ~ 9450 5500
Wire Wire Line
	9450 5500 9400 5500
Text GLabel 9400 5600 0    50   Input ~ 0
RESET
Wire Wire Line
	9150 4200 9300 4200
Wire Wire Line
	9300 4200 9500 4200
Connection ~ 9300 4200
Connection ~ 9250 4600
Wire Wire Line
	9400 5000 9400 5100
Connection ~ 9400 5000
Connection ~ 9400 5100
Wire Wire Line
	9400 5100 8900 5100
Wire Wire Line
	9400 5000 9400 4900
Wire Wire Line
	8900 4900 8900 5100
Wire Wire Line
	9150 4600 9250 4600
Wire Wire Line
	9400 1600 9400 1700
Connection ~ 9400 1700
Wire Wire Line
	9400 1700 9400 1800
Connection ~ 9400 1800
Wire Wire Line
	9200 1800 9400 1800
Wire Wire Line
	9400 750  9400 1000
Wire Wire Line
	9400 1000 9500 1000
$Comp
L 62684-50110:62684-50110 J2
U 1 1 6133B4EE
P 10000 3400
F 0 "J2" H 10330 3396 50  0000 L CNN
F 1 "62684-50110" H 10330 3305 50  0000 L CNN
F 2 "62684-50110:62684-50110" H 10400 3550 50  0001 L BNN
F 3 "" H 10000 3400 50  0001 L BNN
F 4 "Compliant" H 10500 3400 50  0001 L BNN "EU_RoHS_Compliance"
F 5 "62684-50110" H 10450 3700 50  0001 L BNN "Comment"
	1    10000 3400
	1    0    0    1   
$EndComp
Wire Wire Line
	9250 750  9250 800 
Wire Wire Line
	9250 750  9400 750 
Wire Wire Line
	9400 5600 9500 5600
Wire Wire Line
	9150 4100 9300 4100
Wire Wire Line
	9300 4100 9300 4200
Wire Wire Line
	9150 4300 9300 4300
Wire Wire Line
	9150 4400 9300 4400
Wire Wire Line
	9300 4400 9300 4300
Connection ~ 9300 4300
Wire Wire Line
	9300 4300 9500 4300
Wire Wire Line
	7550 5950 7550 6100
Wire Wire Line
	7550 6100 7550 6200
Connection ~ 7550 6100
Wire Wire Line
	5650 6750 5650 7000
Wire Wire Line
	5650 5800 5650 5550
Connection ~ 5650 5550
Wire Wire Line
	5750 5350 5650 5350
Connection ~ 5650 5350
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J3
U 1 1 61754D79
P 4250 4050
F 0 "J3" H 3807 4096 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 3800 3800 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical" H 4250 4050 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 3900 2800 50  0001 C CNN
	1    4250 4050
	1    0    0    -1  
$EndComp
Text GLabel 4750 3950 2    50   Input ~ 0
JTAG_TCK
Text GLabel 4750 4050 2    50   Input ~ 0
JTAG_TMS
Text GLabel 4750 4150 2    50   Input ~ 0
JTAG_TDO
Text GLabel 4750 4250 2    50   Input ~ 0
JTAG_TDI
$Comp
L power:GND #PWR0101
U 1 1 61758443
P 4250 4750
F 0 "#PWR0101" H 4250 4500 50  0001 C CNN
F 1 "GND" H 4255 4577 50  0000 C CNN
F 2 "" H 4250 4750 50  0001 C CNN
F 3 "" H 4250 4750 50  0001 C CNN
	1    4250 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4650 4150 4700
Wire Wire Line
	4150 4700 4250 4700
Wire Wire Line
	4250 4700 4250 4750
Wire Wire Line
	4250 4650 4250 4700
Connection ~ 4250 4700
$Comp
L power:+3V3 #PWR0102
U 1 1 6176DA99
P 4250 3450
F 0 "#PWR0102" H 4250 3300 50  0001 C CNN
F 1 "+3V3" H 4265 3623 50  0000 C CNN
F 2 "" H 4250 3450 50  0001 C CNN
F 3 "" H 4250 3450 50  0001 C CNN
	1    4250 3450
	1    0    0    -1  
$EndComp
Text GLabel 7450 2400 2    50   Input ~ 0
JTAG_TDI
Text GLabel 7450 2500 2    50   Input ~ 0
JTAG_TCK
Text GLabel 7450 2600 2    50   Input ~ 0
JTAG_TMS
Text GLabel 7450 2700 2    50   Input ~ 0
JTAG_TDO
Text GLabel 4750 3750 2    50   Input ~ 0
EN
$Comp
L LY68L6400SLIT:LY68L6400SLIT U4
U 1 1 6176F3CE
P 4200 2450
F 0 "U4" H 4250 2900 50  0000 C CNN
F 1 "LY68L6400SLIT" H 4450 2800 50  0000 C CNN
F 2 "Package_SO:SOP-8_3.76x4.96mm_P1.27mm" H 5050 3000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809140531_Lyontek-Inc--LY68L6400SLIT_C261881.pdf" H 3900 2300 50  0001 C CNN
	1    4200 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0103
U 1 1 6178529D
P 4100 1750
F 0 "#PWR0103" H 4100 1600 50  0001 C CNN
F 1 "+3V3" H 4115 1923 50  0000 C CNN
F 2 "" H 4100 1750 50  0001 C CNN
F 3 "" H 4100 1750 50  0001 C CNN
	1    4100 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6178F2A3
P 4150 2850
F 0 "#PWR0104" H 4150 2600 50  0001 C CNN
F 1 "GND" H 4155 2677 50  0000 C CNN
F 2 "" H 4150 2850 50  0001 C CNN
F 3 "" H 4150 2850 50  0001 C CNN
	1    4150 2850
	1    0    0    -1  
$EndComp
Text GLabel 3650 2550 0    50   Input ~ 0
SPICLK
Text GLabel 4750 2350 2    50   Input ~ 0
SPID
Text GLabel 4750 2450 2    50   Input ~ 0
SPIQ
Text GLabel 4750 2550 2    50   Input ~ 0
SPIWP
Text GLabel 4750 2650 2    50   Input ~ 0
SPIHD
Text GLabel 3450 2450 0    50   Input ~ 0
SPICS
$Comp
L Device:R R19
U 1 1 617732C4
P 3550 2150
F 0 "R19" H 3200 2200 50  0000 L CNN
F 1 "100KΩ" H 3200 2100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3480 2150 50  0001 C CNN
F 3 "~" H 3550 2150 50  0001 C CNN
	1    3550 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2450 3550 2450
Wire Wire Line
	3550 2300 3550 2450
Connection ~ 3550 2450
Wire Wire Line
	3550 2450 3650 2450
Text GLabel 6250 3200 0    50   Input ~ 0
SPIHD
Text GLabel 6250 3000 0    50   Input ~ 0
SPIQ
Text GLabel 6250 3300 0    50   Input ~ 0
SPIWP
Text GLabel 6250 3100 0    50   Input ~ 0
SPID
Text GLabel 6250 3400 0    50   Input ~ 0
SPICLK
Text GLabel 7450 2800 2    50   Input ~ 0
SPICS
Wire Wire Line
	4100 1750 4100 1900
$Comp
L Device:C_Small C10
U 1 1 61774A6F
P 4650 1900
F 0 "C10" V 4421 1900 50  0000 C CNN
F 1 "100nF" V 4512 1900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4650 1900 50  0001 C CNN
F 3 "~" H 4650 1900 50  0001 C CNN
	1    4650 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 1900 4100 1900
Connection ~ 4100 1900
Wire Wire Line
	4100 1900 3550 1900
Wire Wire Line
	3550 1900 3550 2000
Wire Wire Line
	4100 1900 4100 2100
$Comp
L power:GND #PWR0105
U 1 1 6178D625
P 4900 2000
F 0 "#PWR0105" H 4900 1750 50  0001 C CNN
F 1 "GND" H 4905 1827 50  0000 C CNN
F 2 "" H 4900 2000 50  0001 C CNN
F 3 "" H 4900 2000 50  0001 C CNN
	1    4900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1900 4900 1900
Wire Wire Line
	4900 1900 4900 2000
$Comp
L Switch:SW_SPDT SW3
U 1 1 6189A8B9
P 3050 950
F 0 "SW3" H 3050 1235 50  0000 C CNN
F 1 "SW_SPDT" H 3050 1144 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Slide_1P2T_CK_OS102011MS2Q" H 3050 950 50  0001 C CNN
F 3 "~" H 3050 950 50  0001 C CNN
	1    3050 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 950  2850 950 
NoConn ~ 3250 1050
Wire Wire Line
	3250 850  3400 850 
Wire Wire Line
	3400 750  3400 850 
Connection ~ 3400 850 
Wire Wire Line
	3400 850  3500 850 
$EndSCHEMATC
