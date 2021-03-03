EESchema Schematic File Version 4
LIBS:aircontrol-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ESP8266-LolinV3-aircontrol"
Date "2021-03-02"
Rev "1.0"
Comp "@hassio:gazizova.net"
Comment1 ""
Comment2 "Azat Gazizov"
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2400 3050 2900 3050
Wire Wire Line
	2400 3150 2900 3150
Wire Wire Line
	2400 3250 2900 3250
Wire Wire Line
	2400 3350 2900 3350
Wire Wire Line
	2400 3450 2900 3450
Wire Wire Line
	2400 3550 2900 3550
Wire Wire Line
	2400 3650 2900 3650
Wire Wire Line
	2400 3750 2900 3750
Wire Wire Line
	2400 3850 2900 3850
Wire Wire Line
	2400 3950 2900 3950
Wire Wire Line
	2400 4050 2900 4050
Wire Wire Line
	2400 4150 2900 4150
Wire Wire Line
	2400 4250 2900 4250
Wire Wire Line
	2400 4350 2900 4350
Wire Wire Line
	4500 2950 5100 2950
Wire Wire Line
	4500 3450 5100 3450
Wire Wire Line
	4500 3950 5100 3950
Wire Wire Line
	4500 4050 5100 4050
Wire Wire Line
	4500 4150 5100 4150
Wire Wire Line
	4500 3050 5100 3050
Wire Wire Line
	4500 3150 5100 3150
Wire Wire Line
	4500 3650 5100 3650
Wire Wire Line
	4500 3750 5100 3750
Wire Wire Line
	4500 3850 5100 3850
Wire Wire Line
	2400 2950 2900 2950
Wire Wire Line
	4500 4350 5100 4350
Wire Wire Line
	4500 4250 5100 4250
$Comp
L aircontrol-rescue:NodeMCUv3-ESP8266 U?
U 1 1 60401A27
P 3700 3650
F 0 "U?" H 3700 4737 60  0000 C CNN
F 1 "NodeMCUv3-ESP8266" H 3700 4631 60  0000 C CNN
F 2 "" H 3100 2800 60  0000 C CNN
F 3 "" H 3100 2800 60  0000 C CNN
	1    3700 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 604029F8
P 7050 4100
F 0 "C?" H 7165 4146 50  0000 L CNN
F 1 "C" H 7165 4055 50  0000 L CNN
F 2 "" H 7088 3950 50  0001 C CNN
F 3 "~" H 7050 4100 50  0001 C CNN
	1    7050 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60402AE6
P 6000 4200
F 0 "C?" H 6115 4246 50  0000 L CNN
F 1 "C" H 6115 4155 50  0000 L CNN
F 2 "" H 6038 4050 50  0001 C CNN
F 3 "~" H 6000 4200 50  0001 C CNN
	1    6000 4200
	1    0    0    -1  
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_C K?
U 1 1 60402FFD
P 6850 3550
F 0 "K?" H 7280 3596 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 7280 3505 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 7300 3500 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 6850 3550 50  0001 C CNN
	1    6850 3550
	1    0    0    -1  
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_C K?
U 1 1 6040311E
P 5800 3650
F 0 "K?" H 6230 3696 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 6230 3605 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6250 3600 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 5800 3650 50  0001 C CNN
	1    5800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3250 6650 3250
Wire Wire Line
	4500 3350 5600 3350
$Comp
L Device:R R?
U 1 1 60409148
P 7450 4100
F 0 "R?" H 7520 4146 50  0000 L CNN
F 1 "R" H 7520 4055 50  0000 L CNN
F 2 "" V 7380 4100 50  0001 C CNN
F 3 "~" H 7450 4100 50  0001 C CNN
	1    7450 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60409274
P 6350 4200
F 0 "R?" H 6420 4246 50  0000 L CNN
F 1 "R" H 6420 4155 50  0000 L CNN
F 2 "" V 6280 4200 50  0001 C CNN
F 3 "~" H 6350 4200 50  0001 C CNN
	1    6350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4350 6000 4350
Wire Wire Line
	7450 4250 7050 4250
$Comp
L Motor:Motor_AC M?
U 1 1 6040B545
P 9850 3600
F 0 "M?" H 10008 3596 50  0000 L CNN
F 1 "Motor_AC" H 10008 3505 50  0000 L CNN
F 2 "" H 9850 3510 50  0001 C CNN
F 3 "~" H 9850 3510 50  0001 C CNN
	1    9850 3600
	1    0    0    -1  
$EndComp
$Comp
L power:AC #PWR?
U 1 1 6040BA9D
P 8850 2900
F 0 "#PWR?" H 8850 2800 50  0001 C CNN
F 1 "AC" H 8850 3175 50  0000 C CNN
F 2 "" H 8850 2900 50  0001 C CNN
F 3 "" H 8850 2900 50  0001 C CNN
	1    8850 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 6040BB01
P 8850 3050
F 0 "#PWR?" H 8850 2850 50  0001 C CNN
F 1 "GNDPWR" H 8854 2896 50  0000 C CNN
F 2 "" H 8850 3000 50  0001 C CNN
F 3 "" H 8850 3000 50  0001 C CNN
	1    8850 3050
	1    0    0    -1  
$EndComp
Text Notes 8750 3000 0    50   ~ 0
220 V
Wire Wire Line
	8850 2900 7150 2900
Wire Wire Line
	6100 2900 6100 3350
Wire Wire Line
	7150 3250 7150 2900
Connection ~ 7150 2900
Wire Wire Line
	7150 2900 6100 2900
Wire Wire Line
	6350 4350 7050 4350
Connection ~ 6350 4350
Wire Wire Line
	7050 4250 7050 4350
Connection ~ 7050 4250
Connection ~ 7050 4350
Wire Wire Line
	7050 4350 9850 4350
Wire Wire Line
	8850 3050 9850 3050
Wire Wire Line
	9850 3050 9850 3400
Wire Wire Line
	5600 4000 5300 4000
Wire Wire Line
	4500 3550 5300 3550
Wire Wire Line
	7050 3850 7050 3950
Wire Wire Line
	7450 3950 7050 3950
Connection ~ 7050 3950
Wire Wire Line
	6350 4050 6000 4050
Wire Wire Line
	6000 4050 6000 3950
Connection ~ 6000 4050
Wire Wire Line
	9850 3900 9850 4350
Wire Wire Line
	6650 4000 5600 4000
Wire Wire Line
	5600 4000 5600 3950
Wire Wire Line
	6650 3850 6650 4000
Connection ~ 5600 4000
Wire Wire Line
	5300 3550 5300 4000
$EndSCHEMATC