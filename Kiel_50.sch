EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Kiel 50"
Date "2019-06-08"
Rev "A"
Comp "Mark Gajevskis"
Comment1 "BLDC sensorless sine wave controller shield for the Arduino"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8500 1600 1    60   ~ 0
Vin
Text Label 8900 1450 1    60   ~ 0
IOREF
Text Label 8450 2500 0    60   ~ 0
A0
Text Label 8450 2600 0    60   ~ 0
A1
Text Label 8450 2700 0    60   ~ 0
A2
Text Label 8450 2800 0    60   ~ 0
A3
Text Label 8450 2900 0    60   ~ 0
A4(SDA)_0
Text Label 8450 3000 0    60   ~ 0
A5(SCL)_0
Text Label 10100 3000 0    60   ~ 0
0(Rx)
Text Label 10100 2800 0    60   ~ 0
2
Text Label 10100 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2725 0    39   ~ 0
3(**)
Text Label 10100 2600 0    60   ~ 0
4
Text Label 10100 2500 0    60   ~ 0
5(**)
Text Label 10100 2400 0    60   ~ 0
6(**)
Text Label 10100 2300 0    60   ~ 0
7
Text Label 10100 2100 0    60   ~ 0
8
Text Label 10100 2000 0    60   ~ 0
9(**)
Text Label 10600 1950 0    60   ~ 0
10(**/SS)
Text Label 10600 1850 0    60   ~ 0
11(**/MOSI)
Text Label 10600 1750 0    60   ~ 0
12(MISO)
Text Label 10600 1650 0    60   ~ 0
13(SCK)
Text Label 10100 1400 0    60   ~ 0
AREF
NoConn ~ 8950 1600
Text Label 10100 1300 0    60   ~ 0
A4(SDA)_1
Text Label 10100 1200 0    60   ~ 0
A5(SCL)_1
Text Notes 8100 775  0    60   ~ 0
Pin header disposition \nfor the “Arduino Uno”\nboard Rev 3.
Text Label 8200 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 8700 1450
F 0 "#PWR01" H 8700 1300 50  0001 C CNN
F 1 "+3.3V" V 8700 1700 50  0000 C CNN
F 2 "" H 8700 1450 50  0000 C CNN
F 3 "" H 8700 1450 50  0000 C CNN
	1    8700 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 8600 1350
F 0 "#PWR02" H 8600 1200 50  0001 C CNN
F 1 "+5V" V 8600 1550 50  0000 C CNN
F 2 "" H 8600 1350 50  0000 C CNN
F 3 "" H 8600 1350 50  0000 C CNN
	1    8600 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 8850 3150
F 0 "#PWR03" H 8850 2900 50  0001 C CNN
F 1 "GND" H 8850 3000 50  0000 C CNN
F 2 "" H 8850 3150 50  0000 C CNN
F 3 "" H 8850 3150 50  0000 C CNN
	1    8850 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 9850 3150
F 0 "#PWR04" H 9850 2900 50  0001 C CNN
F 1 "GND" H 9850 3000 50  0000 C CNN
F 2 "" H 9850 3150 50  0000 C CNN
F 3 "" H 9850 3150 50  0000 C CNN
	1    9850 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9150 2700
F 0 "P2" H 9150 2300 50  0000 C CNN
F 1 "Analog" V 9250 2700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" V 9300 2750 20  0000 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Boom-Precision-Elec-2-54mm-1x6-Header_C37208.pdf" H 9150 2700 50  0001 C CNN
F 4 "Pin Header / Female Header 0.100\"（2.54mm） 2.54mm 1x6 " H 9150 2700 50  0001 C CNN "Description"
F 5 "-40°C ~ +105°C" H 9150 2700 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 9150 2700 50  0001 C CNN "RoHS"
F 7 "C37208" H 9150 2700 50  0001 C CNN "LCSC Part #"
	1    9150 2700
	1    0    0    -1  
$EndComp
Wire Notes Line
	8075 825  9475 825 
Wire Notes Line
	9475 825  9475 475 
Wire Wire Line
	8900 1450 8900 1700
Wire Wire Line
	8900 1700 8950 1700
Wire Wire Line
	8950 1900 8700 1900
Wire Wire Line
	8950 2000 8600 2000
Wire Wire Line
	8950 2300 8500 2300
Wire Wire Line
	8950 2100 8850 2100
Wire Wire Line
	8950 2200 8850 2200
Connection ~ 8850 2200
Wire Wire Line
	8500 2300 8500 1450
Wire Wire Line
	8600 2000 8600 1350
Wire Wire Line
	8700 1900 8700 1450
Wire Wire Line
	8950 2600 8450 2600
Wire Wire Line
	8950 2700 8450 2700
Wire Wire Line
	8950 2800 8450 2800
Wire Wire Line
	8950 2900 8450 2900
Wire Wire Line
	8950 3000 8450 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 9550 1600
F 0 "P3" H 9550 2150 50  0000 C CNN
F 1 "Digital" V 9650 1600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" V 9700 1600 20  0000 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Made-in-China-Headers-Pins-2-54mm-1-10P_C57369.pdf" H 9550 1600 50  0001 C CNN
F 4 "Pin Header / Female Header 0.100\"（2.54mm） 2.54 1*10" H 9550 1600 50  0001 C CNN "Description"
F 5 "-40°C ~ +105°C" H 9550 1600 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 9550 1600 50  0001 C CNN "RoHS"
F 7 "C57369" H 9550 1600 50  0001 C CNN "LCSC Part #"
	1    9550 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9750 2100 10100 2100
Wire Wire Line
	9750 2000 10100 2000
Wire Wire Line
	9750 1900 10100 1900
Wire Wire Line
	9750 1800 10100 1800
Wire Wire Line
	9750 1700 10100 1700
Wire Wire Line
	9750 1600 10100 1600
Wire Wire Line
	9750 1400 10100 1400
Wire Wire Line
	9750 1300 10100 1300
Wire Wire Line
	9750 1200 10100 1200
Wire Wire Line
	9750 3000 10100 3000
Wire Wire Line
	9750 2900 10100 2900
Wire Wire Line
	9750 2800 10100 2800
Wire Wire Line
	9750 2700 10100 2700
Wire Wire Line
	9750 2600 10100 2600
Wire Wire Line
	9750 2500 10100 2500
Wire Wire Line
	9750 2400 10100 2400
Wire Wire Line
	9750 2300 10100 2300
Wire Wire Line
	9750 1500 9850 1500
Wire Wire Line
	9850 1500 9850 3150
Wire Wire Line
	8850 2100 8850 2200
Wire Wire Line
	8850 2200 8850 3150
Wire Notes Line
	8050 500  8050 3450
Wire Wire Line
	8950 1800 8200 1800
Text Notes 9250 1600 0    60   ~ 0
1
$Comp
L BLDC_Driver:A4964 U1
U 1 1 5CFABC30
P 4075 4675
F 0 "U1" H 4075 6275 50  0000 C CNN
F 1 "A4964" H 4075 6375 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm_with_heat_pad" H 4175 4575 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/A4964-Datasheet.ashx" H 4075 4675 50  0001 C CNN
F 4 "Three-phase, sensorless, brushless DC (BLDC) motor controller" H 4075 4675 50  0001 C CNN "Description"
F 5 "-40°C ~ +150°C" H 4075 4675 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 4075 4675 50  0001 C CNN "RoHS"
F 7 "Not available " H 4075 4675 50  0001 C CNN "LCSC Part #"
F 8 "2855946" H 4075 4675 50  0001 C CNN "Farnell order code"
	1    4075 4675
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GDS Q2
U 1 1 5CFB5A97
P 7000 1425
F 0 "Q2" H 7206 1471 50  0000 L CNN
F 1 "RU7570L" H 7200 1575 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 7200 1525 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Shenzhen-ruichips-Semicon-RU7570L_C128586.pdf" H 7000 1425 50  0001 C CNN
F 4 "MOSFET N Trench 75V 70A 4V @ 250uA 12 mΩ @ 35A" H 7000 1425 50  0001 C CNN "Description"
F 5 "-55°C ~ +175°C" H 7000 1425 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 7000 1425 50  0001 C CNN "RoHS"
F 7 "C128586" H 7000 1425 50  0001 C CNN "LCSC Part #"
	1    7000 1425
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5CFD2112
P 6600 1625
F 0 "R13" V 6600 1600 50  0000 C CNN
F 1 "100K" V 6700 1575 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 1625 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904041010_Uniroyal-Elec-TC0525F1003T5E_C57246.pdf" H 6600 1625 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 100KOhms ±1% 1/10W" H 6600 1625 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 6600 1625 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 6600 1625 50  0001 C CNN "RoHS"
F 7 "C57246" H 6600 1625 50  0001 C CNN "LCSC Part #"
	1    6600 1625
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5CFDA1BF
P 6250 2225
F 0 "#PWR0102" H 6250 1975 50  0001 C CNN
F 1 "GND" H 6255 2052 50  0000 C CNN
F 2 "" H 6250 2225 50  0001 C CNN
F 3 "" H 6250 2225 50  0001 C CNN
	1    6250 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1425 6750 1425
Wire Wire Line
	6750 1425 6750 1625
Connection ~ 6750 1425
Wire Wire Line
	6750 1425 6800 1425
Wire Wire Line
	7100 1625 7100 1725
Wire Wire Line
	6700 2025 6750 2025
Wire Wire Line
	6450 2225 6250 2225
Wire Wire Line
	6750 2225 6750 2025
Connection ~ 6750 2025
Wire Wire Line
	6750 2025 6800 2025
$Comp
L power:VDD #PWR0103
U 1 1 5CFE6588
P 7100 1225
F 0 "#PWR0103" H 7100 1075 50  0001 C CNN
F 1 "VDD" H 7117 1398 50  0000 C CNN
F 2 "" H 7100 1225 50  0001 C CNN
F 3 "" H 7100 1225 50  0001 C CNN
	1    7100 1225
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR0104
U 1 1 5CFE70BD
P 7100 2225
F 0 "#PWR0104" H 7100 2075 50  0001 C CNN
F 1 "VSS" H 7118 2398 50  0000 C CNN
F 2 "" H 7100 2225 50  0001 C CNN
F 3 "" H 7100 2225 50  0001 C CNN
	1    7100 2225
	-1   0    0    1   
$EndComp
Text GLabel 7150 1725 2    50   Input ~ 0
A_Phase
Wire Wire Line
	7100 1725 7150 1725
Connection ~ 7100 1725
Wire Wire Line
	7100 1225 7550 1225
Wire Wire Line
	7550 1225 7550 1325
Connection ~ 7100 1225
Wire Wire Line
	7550 1625 7550 2225
Wire Wire Line
	7550 2225 7100 2225
Wire Wire Line
	4775 2775 5675 2775
Wire Wire Line
	4775 2875 5375 2875
Wire Wire Line
	4775 2975 5075 2975
Wire Wire Line
	4775 3225 5675 3225
Wire Wire Line
	5675 3225 5675 3075
Wire Wire Line
	5075 3275 5075 3425
Wire Wire Line
	5075 3425 4775 3425
Wire Wire Line
	4775 3325 5375 3325
Wire Wire Line
	5375 3325 5375 3175
Text GLabel 7050 1725 0    50   Input ~ 0
SA
Wire Wire Line
	7050 1725 7100 1725
Text GLabel 5725 3225 2    50   Input ~ 0
SA
Wire Wire Line
	5675 3225 5725 3225
Connection ~ 5675 3225
$Comp
L Device:C C5
U 1 1 5D0267FB
P 4625 2075
F 0 "C5" V 4877 2075 50  0000 C CNN
F 1 "470nF" V 4786 2075 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4663 1925 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811291635_TDK-CGA5L2X7R2A474KT0Y0U_C338107.pdf" H 4625 2075 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 470nF 100V" H 4625 2075 50  0001 C CNN "Description"
F 5 "-55 ~ +125°C" H 4625 2075 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 4625 2075 50  0001 C CNN "RoHS"
F 7 "C338107" H 4625 2075 50  0001 C CNN "LCSC Part #"
	1    4625 2075
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5D0346DF
P 6250 3750
F 0 "#PWR0106" H 6250 3500 50  0001 C CNN
F 1 "GND" H 6255 3577 50  0000 C CNN
F 2 "" H 6250 3750 50  0001 C CNN
F 3 "" H 6250 3750 50  0001 C CNN
	1    6250 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2950 6750 2950
Wire Wire Line
	6750 2950 6750 3150
Connection ~ 6750 2950
Wire Wire Line
	6750 2950 6800 2950
Wire Wire Line
	7100 3150 7100 3250
Wire Wire Line
	6700 3550 6750 3550
Wire Wire Line
	6450 3750 6250 3750
Wire Wire Line
	6750 3750 6750 3550
Connection ~ 6750 3550
Wire Wire Line
	6750 3550 6800 3550
$Comp
L power:VDD #PWR0107
U 1 1 5D0346F6
P 7100 2750
F 0 "#PWR0107" H 7100 2600 50  0001 C CNN
F 1 "VDD" H 7117 2923 50  0000 C CNN
F 2 "" H 7100 2750 50  0001 C CNN
F 3 "" H 7100 2750 50  0001 C CNN
	1    7100 2750
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR0108
U 1 1 5D0346FC
P 7100 3750
F 0 "#PWR0108" H 7100 3600 50  0001 C CNN
F 1 "VSS" H 7118 3923 50  0000 C CNN
F 2 "" H 7100 3750 50  0001 C CNN
F 3 "" H 7100 3750 50  0001 C CNN
	1    7100 3750
	-1   0    0    1   
$EndComp
Text GLabel 7150 3250 2    50   Input ~ 0
B_Phase
Wire Wire Line
	7100 3250 7150 3250
Connection ~ 7100 3250
Wire Wire Line
	7100 2750 7550 2750
Wire Wire Line
	7550 2750 7550 2850
Wire Wire Line
	7550 3150 7550 3750
Wire Wire Line
	7550 3750 7100 3750
Wire Wire Line
	7050 3250 7100 3250
$Comp
L power:GND #PWR0110
U 1 1 5D03D38A
P 6250 5275
F 0 "#PWR0110" H 6250 5025 50  0001 C CNN
F 1 "GND" H 6255 5102 50  0000 C CNN
F 2 "" H 6250 5275 50  0001 C CNN
F 3 "" H 6250 5275 50  0001 C CNN
	1    6250 5275
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4475 6750 4475
Wire Wire Line
	6750 4475 6750 4675
Connection ~ 6750 4475
Wire Wire Line
	6750 4475 6800 4475
Wire Wire Line
	7100 4675 7100 4775
Wire Wire Line
	6700 5075 6750 5075
Wire Wire Line
	6450 5275 6250 5275
Wire Wire Line
	6750 5275 6750 5075
Connection ~ 6750 5075
Wire Wire Line
	6750 5075 6800 5075
$Comp
L power:VDD #PWR0111
U 1 1 5D03D3A1
P 7100 4275
F 0 "#PWR0111" H 7100 4125 50  0001 C CNN
F 1 "VDD" H 7117 4448 50  0000 C CNN
F 2 "" H 7100 4275 50  0001 C CNN
F 3 "" H 7100 4275 50  0001 C CNN
	1    7100 4275
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR0112
U 1 1 5D03D3A7
P 7100 5275
F 0 "#PWR0112" H 7100 5125 50  0001 C CNN
F 1 "VSS" H 7118 5448 50  0000 C CNN
F 2 "" H 7100 5275 50  0001 C CNN
F 3 "" H 7100 5275 50  0001 C CNN
	1    7100 5275
	-1   0    0    1   
$EndComp
Text GLabel 7150 4775 2    50   Input ~ 0
C_Phase
Wire Wire Line
	7100 4775 7150 4775
Connection ~ 7100 4775
Wire Wire Line
	7100 4775 7100 4850
Wire Wire Line
	7100 4275 7550 4275
Wire Wire Line
	7550 4275 7550 4375
Wire Wire Line
	7550 4675 7550 5275
Wire Wire Line
	7550 5275 7100 5275
Text GLabel 7050 4775 0    50   Input ~ 0
SC
Wire Wire Line
	7050 4775 7100 4775
Text GLabel 7050 3250 0    50   Input ~ 0
SB
Text GLabel 5425 3325 2    50   Input ~ 0
SB
Wire Wire Line
	5375 3325 5425 3325
Connection ~ 5375 3325
Text GLabel 5125 3425 2    50   Input ~ 0
SC
Wire Wire Line
	5075 3425 5125 3425
Connection ~ 5075 3425
Text GLabel 4775 3725 2    50   Output ~ 0
GHA
Text GLabel 4775 3825 2    50   Output ~ 0
GHB
Text GLabel 4775 3925 2    50   Output ~ 0
GHC
Text GLabel 4775 4175 2    50   Output ~ 0
GLA
Text GLabel 4775 4275 2    50   Output ~ 0
GLB
Text GLabel 4775 4375 2    50   Output ~ 0
GLC
Text GLabel 6350 1425 0    50   Input ~ 0
GHA
Text GLabel 6350 2950 0    50   Input ~ 0
GHB
Text GLabel 6350 4475 0    50   Input ~ 0
GHC
Wire Wire Line
	6350 1425 6400 1425
Wire Wire Line
	6350 2950 6400 2950
Wire Wire Line
	6350 4475 6400 4475
Text GLabel 6350 2025 0    50   Input ~ 0
GLA
Text GLabel 6350 3550 0    50   Input ~ 0
GLB
Text GLabel 6350 5075 0    50   Input ~ 0
GLC
Wire Wire Line
	6350 2025 6400 2025
Wire Wire Line
	6350 3550 6400 3550
Wire Wire Line
	6350 5075 6400 5075
$Comp
L power:VDD #PWR0113
U 1 1 5D0612E4
P 4875 2575
F 0 "#PWR0113" H 4875 2425 50  0001 C CNN
F 1 "VDD" H 4892 2748 50  0000 C CNN
F 2 "" H 4875 2575 50  0001 C CNN
F 3 "" H 4875 2575 50  0001 C CNN
	1    4875 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	4775 2625 4875 2625
Wire Wire Line
	4875 2625 4875 2575
$Comp
L Device:CP C4
U 1 1 5D06AB01
P 4175 1675
F 0 "C4" H 4125 1575 50  0000 R CNN
F 1 "100µF" H 4125 1825 50  0000 R CNN
F 2 "Capacitor_SMD:C_Elec_6.3x7.7" H 4213 1525 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/ROQANG-VT1E101M0607_C141426.pdf" H 4175 1675 50  0001 C CNN
F 4 "Aluminum Electrolytic Capacitors - SMD 100uF ±20% 25V " H 4175 1675 50  0001 C CNN "Description"
F 5 "-55℃~+105℃" H 4175 1675 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 4175 1675 50  0001 C CNN "RoHS"
F 7 "C141426" H 4175 1675 50  0001 C CNN "LCSC Part #"
	1    4175 1675
	-1   0    0    1   
$EndComp
Wire Wire Line
	4175 2375 4175 2075
Wire Wire Line
	4175 2075 4475 2075
Wire Wire Line
	4275 2375 4275 2225
Wire Wire Line
	4275 2225 4975 2225
Wire Wire Line
	4975 2225 4975 2075
Wire Wire Line
	4975 2075 4775 2075
Wire Wire Line
	3875 1825 3875 1925
Wire Wire Line
	3875 1925 4025 1925
Wire Wire Line
	4175 1925 4175 1825
Wire Wire Line
	3875 1525 3875 1425
Wire Wire Line
	3875 1425 4025 1425
Wire Wire Line
	4175 1425 4175 1525
Wire Wire Line
	4025 1925 4025 2375
Connection ~ 4025 1925
Wire Wire Line
	4025 1925 4175 1925
$Comp
L power:GND #PWR0114
U 1 1 5D0B2B8E
P 4025 1325
F 0 "#PWR0114" H 4025 1075 50  0001 C CNN
F 1 "GND" H 4030 1152 50  0000 C CNN
F 2 "" H 4025 1325 50  0001 C CNN
F 3 "" H 4025 1325 50  0001 C CNN
	1    4025 1325
	-1   0    0    1   
$EndComp
Wire Wire Line
	4025 1325 4025 1425
Connection ~ 4025 1425
Wire Wire Line
	4025 1425 4175 1425
$Comp
L power:VDD #PWR0115
U 1 1 5D0B8FA6
P 3700 1125
F 0 "#PWR0115" H 3700 975 50  0001 C CNN
F 1 "VDD" H 3717 1298 50  0000 C CNN
F 2 "" H 3700 1125 50  0001 C CNN
F 3 "" H 3700 1125 50  0001 C CNN
	1    3700 1125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5D0BA415
P 4075 4575
F 0 "#PWR0117" H 4075 4325 50  0001 C CNN
F 1 "GND" H 4080 4402 50  0000 C CNN
F 2 "" H 4075 4575 50  0001 C CNN
F 3 "" H 4075 4575 50  0001 C CNN
	1    4075 4575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5D0BAA2E
P 3875 4575
F 0 "#PWR0118" H 3875 4325 50  0001 C CNN
F 1 "GND" H 3880 4402 50  0000 C CNN
F 2 "" H 3875 4575 50  0001 C CNN
F 3 "" H 3875 4575 50  0001 C CNN
	1    3875 4575
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x03 SW3
U 1 1 5D0BCA19
P 2775 1875
F 0 "SW3" H 2775 1825 50  0000 C CNN
F 1 "SW_DIP_x03(RED)" H 2775 1699 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx03_Slide_9.78x9.8mm_W7.62mm_P2.54mm" H 2775 1875 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Made-in-China-VDG-S-03HG-R_C52648.pdf" H 2775 1875 50  0001 C CNN
F 4 "DIP Switches SPST 3 2.54mm, Full VDG/S-03HG-R(red-Gold-plated) " H 2775 1875 50  0001 C CNN "Description"
F 5 "-20°C ~ +70°C" H 2775 1875 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2775 1875 50  0001 C CNN "RoHS"
F 7 "C52648" H 2775 1875 50  0001 C CNN "LCSC Part #"
	1    2775 1875
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5D0C8586
P 2125 1875
F 0 "R3" V 2125 1825 50  0000 C CNN
F 1 "1K" V 2075 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2055 1875 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904041107_Uniroyal-Elec-TC0525F1001T5E_C75781.pdf" H 2125 1875 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 1KOhms ±1% 1/10W" H 2125 1875 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 2125 1875 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2125 1875 50  0001 C CNN "RoHS"
F 7 "C75781" H 2125 1875 50  0001 C CNN "LCSC Part #"
	1    2125 1875
	0    1    1    0   
$EndComp
Wire Wire Line
	3075 1875 3175 1875
Wire Wire Line
	3175 1875 3175 1975
Wire Wire Line
	3175 1975 3275 1975
Wire Wire Line
	3275 1975 3275 2075
Wire Wire Line
	3075 2075 3175 2075
Wire Wire Line
	3175 2075 3175 1975
Connection ~ 3175 1975
Wire Wire Line
	3075 1975 3175 1975
Wire Wire Line
	3275 2375 3275 2575
Wire Wire Line
	3275 2575 3375 2575
$Comp
L power:GND #PWR0119
U 1 1 5D0E30BC
P 1825 2075
F 0 "#PWR0119" H 1825 1825 50  0001 C CNN
F 1 "GND" H 1830 1902 50  0000 C CNN
F 2 "" H 1825 2075 50  0001 C CNN
F 3 "" H 1825 2075 50  0001 C CNN
	1    1825 2075
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0120
U 1 1 5D0E4E8C
P 1575 1975
F 0 "#PWR0120" H 1575 1825 50  0001 C CNN
F 1 "VDD" H 1593 2148 50  0000 C CNN
F 2 "" H 1575 1975 50  0001 C CNN
F 3 "" H 1575 1975 50  0001 C CNN
	1    1575 1975
	-1   0    0    1   
$EndComp
Wire Wire Line
	1575 1975 1975 1975
Wire Wire Line
	1825 2075 1975 2075
Wire Wire Line
	2275 2075 2475 2075
Wire Wire Line
	2275 1975 2475 1975
Wire Wire Line
	2275 1875 2475 1875
Wire Wire Line
	3625 2225 3625 2275
Wire Wire Line
	3625 2275 3925 2275
Wire Wire Line
	3925 2275 3925 2375
Connection ~ 3925 2275
$Comp
L power:GND #PWR0121
U 1 1 5D14003E
P 3625 1925
F 0 "#PWR0121" H 3625 1675 50  0001 C CNN
F 1 "GND" H 3725 2000 50  0000 C CNN
F 2 "" H 3625 1925 50  0001 C CNN
F 3 "" H 3625 1925 50  0001 C CNN
	1    3625 1925
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_DIP_x02 SW1
U 1 1 5D162F96
P 2225 2675
F 0 "SW1" H 2225 2625 50  0000 C CNN
F 1 "SW_DIP_x02(RED)" H 2225 2951 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx02_Slide_9.78x7.26mm_W7.62mm_P2.54mm" H 2225 2675 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Made-in-China-VDG-02HG-R_C3661.pdf" H 2225 2675 50  0001 C CNN
F 4 "ADIP Switches SPST 2 2.54mm, Full DIP" H 2225 2675 50  0001 C CNN "Description"
F 5 "-20°C ~ +70°C" H 2225 2675 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2225 2675 50  0001 C CNN "RoHS"
F 7 "C3661" H 2225 2675 50  0001 C CNN "LCSC Part #"
	1    2225 2675
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5D184320
P 2600 1450
F 0 "D1" H 2625 1350 50  0000 C CNN
F 1 "LED(GRN)" H 2550 1550 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 2600 1450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Wuxi-ARK-Tech-Elec-D-G080508G1-KS2_C107402.pdf" H 2600 1450 50  0001 C CNN
F 4 "Light Emitting Diodes (LED) Green 526~531nm 250~330mcd@5mA" H 2600 1450 50  0001 C CNN "Description"
F 5 "-30°C ~ +80°C" H 2600 1450 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2600 1450 50  0001 C CNN "RoHS"
F 7 "C107402" H 2600 1450 50  0001 C CNN "LCSC Part #"
	1    2600 1450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5D18F5E8
P 2750 1450
F 0 "#PWR0123" H 2750 1200 50  0001 C CNN
F 1 "GND" V 2755 1322 50  0000 R CNN
F 2 "" H 2750 1450 50  0001 C CNN
F 3 "" H 2750 1450 50  0001 C CNN
	1    2750 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1975 1875 1125 1875
Wire Wire Line
	1125 1875 1125 1525
Wire Wire Line
	1125 1125 1525 1125
Wire Wire Line
	1825 825  1825 925 
Text GLabel 8500 1450 1    50   Input ~ 0
MCU_Vin
Text GLabel 1975 3125 0    50   Output ~ 0
MCU_Vin
Text Notes 4925 2625 0    31   Italic 0
Must be connectet\nto any H-MOSFET\nas close as possible.
$Comp
L Device:R R19
U 1 1 5D1F10AE
P 4475 7300
F 0 "R19" H 4387 7254 50  0000 R CNN
F 1 "0.02R" H 4387 7345 50  0000 R CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 4405 7300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Prosperity-Dielectrics-FMF25FPJR020-LHL_C105360.pdf" H 4475 7300 50  0001 C CNN
F 4 "Low Resistors & Current Sense Resistors - Surface Mount 0.02Ohms ±1% 2W " H 4475 7300 50  0001 C CNN "Description"
F 5 "-55°C ~ +170°C" H 4475 7300 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 4475 7300 50  0001 C CNN "RoHS"
F 7 "C105360" H 4475 7300 50  0001 C CNN "LCSC Part #"
	1    4475 7300
	-1   0    0    -1  
$EndComp
$Comp
L power:VSS #PWR020
U 1 1 5D1F2DD8
P 4475 7500
F 0 "#PWR020" H 4475 7350 50  0001 C CNN
F 1 "VSS" H 4492 7673 50  0000 C CNN
F 2 "" H 4475 7500 50  0001 C CNN
F 3 "" H 4475 7500 50  0001 C CNN
	1    4475 7500
	1    0    0    1   
$EndComp
Text GLabel 3375 3275 0    50   Input ~ 0
CSP
Text GLabel 3375 3375 0    50   Input ~ 0
CSM
Text GLabel 8200 1900 3    50   Input ~ 0
MCU_RST
Wire Wire Line
	8200 1800 8200 1900
Text GLabel 4325 7475 0    50   Input ~ 0
CSP
Text GLabel 4325 7125 0    50   Input ~ 0
CSM
$Comp
L power:VDD #PWR012
U 1 1 5D2237A1
P 1375 2175
F 0 "#PWR012" H 1375 2025 50  0001 C CNN
F 1 "VDD" H 1375 2325 50  0000 C CNN
F 2 "" H 1375 2175 50  0001 C CNN
F 3 "" H 1375 2175 50  0001 C CNN
	1    1375 2175
	1    0    0    -1  
$EndComp
Text GLabel 1025 2325 1    50   Input ~ 0
MCU_IG
Wire Wire Line
	1375 2575 1525 2575
Wire Wire Line
	1825 2575 1925 2575
Wire Wire Line
	2525 2575 2625 2575
Wire Wire Line
	2625 2575 2625 2625
Wire Wire Line
	2525 2675 2625 2675
Wire Wire Line
	2625 2675 2625 2625
Connection ~ 2625 2625
Wire Wire Line
	1825 2675 1925 2675
$Comp
L power:VDD #PWR013
U 1 1 5D2833BE
P 1525 2675
F 0 "#PWR013" H 1525 2525 50  0001 C CNN
F 1 "VDD" V 1525 2775 50  0000 L CNN
F 2 "" H 1525 2675 50  0001 C CNN
F 3 "" H 1525 2675 50  0001 C CNN
	1    1525 2675
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5D28AA6F
P 8550 4500
F 0 "RV1" V 8550 4550 50  0000 R CNN
F 1 "R_POT(Package: 3386P)" V 8450 4925 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3386P_Vertical" H 8550 4500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/BOURNS-3386P-1-103TLF_C116302.pdf" H 8550 4500 50  0001 C CNN
F 4 "Precision Potentiometer ±10% 10KOhms ±100 ppm/℃" H 8550 4500 50  0001 C CNN "Description"
F 5 "-55°C ~ +125°C" H 8550 4500 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 8550 4500 50  0001 C CNN "RoHS"
F 7 "C116302" H 8550 4500 50  0001 C CNN "LCSC Part #"
	1    8550 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5D2A3DF9
P 3125 2475
F 0 "#PWR017" H 3125 2225 50  0001 C CNN
F 1 "GND" H 3125 2325 50  0000 C CNN
F 2 "" H 3125 2475 50  0001 C CNN
F 3 "" H 3125 2475 50  0001 C CNN
	1    3125 2475
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_DIP_x04 SW2
U 1 1 5D2A5948
P 2275 3325
F 0 "SW2" H 2275 3175 50  0000 C CNN
F 1 "SW_DIP_x04(BLUE)" H 2275 3675 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx04_Slide_9.78x12.34mm_W7.62mm_P2.54mm" H 2275 3325 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Made-in-China-VDG-S-04L_C47207.pdf" H 2275 3325 50  0001 C CNN
F 4 "DIP Switches SPST 4 2.54mm, Full Plugin DIP switch" H 2275 3325 50  0001 C CNN "Description"
F 5 "-20°C ~ +70°C" H 2275 3325 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2275 3325 50  0001 C CNN "RoHS"
F 7 "C47207" H 2275 3325 50  0001 C CNN "LCSC Part #"
	1    2275 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 3975 2675 3975
Wire Wire Line
	2575 3875 2675 3875
Wire Wire Line
	2675 3875 2675 3975
$Comp
L power:GND #PWR015
U 1 1 5D2DC6E5
P 1675 3875
F 0 "#PWR015" H 1675 3625 50  0001 C CNN
F 1 "GND" V 1680 3747 50  0000 R CNN
F 2 "" H 1675 3875 50  0001 C CNN
F 3 "" H 1675 3875 50  0001 C CNN
	1    1675 3875
	0    1    1    0   
$EndComp
Text GLabel 1975 3975 0    50   Input ~ 0
MCU_PWM
Wire Wire Line
	1025 2375 1025 2425
Wire Wire Line
	1025 2375 1075 2375
$Comp
L power:GND #PWR06
U 1 1 5D3204ED
P 1025 2725
F 0 "#PWR06" H 1025 2475 50  0001 C CNN
F 1 "GND" H 1030 2552 50  0000 C CNN
F 2 "" H 1025 2725 50  0001 C CNN
F 3 "" H 1025 2725 50  0001 C CNN
	1    1025 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	3025 2775 3025 2625
Wire Wire Line
	2625 2625 2825 2625
$Comp
L Device:C C2
U 1 1 5D358CCE
P 1075 3125
F 0 "C2" H 1125 3225 50  0000 C CNN
F 1 "1µF" V 1225 3125 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1113 2975 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL31B105KCHNNNE_C13832.pdf" H 1075 3125 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 1uF 100V" H 1075 3125 50  0001 C CNN "Description"
F 5 "-55°C ~ +125°C" H 1075 3125 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1075 3125 50  0001 C CNN "RoHS"
F 7 "C13832" H 1075 3125 50  0001 C CNN "LCSC Part #"
	1    1075 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2675 3875 2825 3875
Wire Wire Line
	2825 3875 2825 3825
Connection ~ 2675 3875
Wire Wire Line
	3375 2675 3225 2675
Wire Wire Line
	3225 2675 3225 2925
Wire Wire Line
	3225 2925 2925 2925
Wire Wire Line
	2925 2925 2925 3125
Wire Wire Line
	2925 3125 2575 3125
Wire Wire Line
	3375 2875 3275 2875
Wire Wire Line
	3275 2875 3275 2975
Wire Wire Line
	3275 2975 2975 2975
Wire Wire Line
	2975 2975 2975 3225
Wire Wire Line
	2975 3225 2825 3225
Wire Wire Line
	3375 2975 3325 2975
Wire Wire Line
	3325 2975 3325 3025
Wire Wire Line
	3325 3025 3025 3025
Wire Wire Line
	3025 3325 2575 3325
Wire Wire Line
	3025 3025 3025 3325
Wire Wire Line
	2675 3225 2675 3425
Wire Wire Line
	2675 3425 2575 3425
Connection ~ 2675 3225
Wire Wire Line
	2675 3225 2575 3225
$Comp
L power:GND #PWR07
U 1 1 5D429794
P 1075 3275
F 0 "#PWR07" H 1075 3025 50  0001 C CNN
F 1 "GND" H 1150 3100 50  0000 R CNN
F 2 "" H 1075 3275 50  0001 C CNN
F 3 "" H 1075 3275 50  0001 C CNN
	1    1075 3275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D42A26C
P 1825 3425
F 0 "R5" V 1825 3375 50  0000 C CNN
F 1 "10K" V 1925 3425 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1755 3425 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1812201732_Viking-Tech-AR05DTDW1002_C319940.pdf" H 1825 3425 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 10KOhms ±0.5% 1/8W" H 1825 3425 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 1825 3425 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1825 3425 50  0001 C CNN "RoHS"
F 7 "C319940" H 1825 3425 50  0001 C CNN "LCSC Part #"
	1    1825 3425
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5D42A7AA
P 1675 3425
F 0 "#PWR014" H 1675 3175 50  0001 C CNN
F 1 "GND" V 1680 3297 50  0000 R CNN
F 2 "" H 1675 3425 50  0001 C CNN
F 3 "" H 1675 3425 50  0001 C CNN
	1    1675 3425
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5D42CEE0
P 1375 4825
F 0 "J1" H 1425 5225 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 1575 5125 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 1375 4825 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Boom-Precision-Elec-2-54mm-2-5P-Straight-IDC-Box_C5665.pdf" H 1375 4825 50  0001 C CNN
F 4 "C5665" H 1375 4825 50  0001 C CNN "LCSC Part #"
F 5 "Yes" H 1375 4825 50  0001 C CNN "RoHS"
F 6 "-55°C ~ +105°C" H 1375 4825 50  0001 C CNN "Temperature"
F 7 "IDC Connectors 0.100\"(2.54mm) DIP RoHS" H 1375 4825 50  0001 C CNN "Description"
	1    1375 4825
	1    0    0    -1  
$EndComp
Text GLabel 1675 5025 2    50   Input ~ 0
GND
Wire Wire Line
	2925 2925 1525 2925
Wire Wire Line
	1525 2925 1525 2975
Connection ~ 2925 2925
Wire Wire Line
	1025 2325 1025 2375
Connection ~ 1025 2375
Wire Wire Line
	775  825  775  2975
$Comp
L power:GND #PWR05
U 1 1 5D541BE2
P 875 3275
F 0 "#PWR05" H 875 3025 50  0001 C CNN
F 1 "GND" H 880 3102 50  0000 C CNN
F 2 "" H 875 3275 50  0001 C CNN
F 3 "" H 875 3275 50  0001 C CNN
	1    875  3275
	1    0    0    -1  
$EndComp
Connection ~ 1075 2975
Wire Wire Line
	1075 2975 1525 2975
Text GLabel 1975 3225 0    50   Output ~ 0
MCU_WDOG
Text GLabel 1975 3325 0    50   Output ~ 0
MCU_RST
Wire Wire Line
	1975 4625 1975 4725
Wire Wire Line
	1875 4525 1875 4625
Wire Wire Line
	2775 4175 2775 4625
Wire Wire Line
	2775 4625 1975 4625
Wire Wire Line
	2825 4275 2825 4525
Wire Wire Line
	2825 4525 1875 4525
Wire Wire Line
	1875 4625 1675 4625
Wire Wire Line
	1675 4725 1975 4725
Wire Wire Line
	2725 4075 2725 4325
Wire Wire Line
	1175 4625 1125 4625
Wire Wire Line
	1125 4625 1125 4325
Wire Wire Line
	1125 4325 2725 4325
Wire Wire Line
	2875 4375 2875 4425
Wire Wire Line
	1175 4725 1025 4725
Wire Wire Line
	1025 4725 1025 4425
Wire Wire Line
	1025 4425 2875 4425
Wire Wire Line
	2825 3225 2825 3575
Wire Wire Line
	2825 3575 725  3575
Wire Wire Line
	725  3575 725  5175
Wire Wire Line
	725  5175 1975 5175
Connection ~ 2825 3225
Wire Wire Line
	2825 3225 2675 3225
Wire Wire Line
	3175 725  675  725 
Wire Wire Line
	675  725  675  5225
Wire Wire Line
	675  5225 2025 5225
Wire Wire Line
	2025 5225 2025 4825
Connection ~ 3175 1875
Wire Wire Line
	3175 1875 3175 725 
Wire Wire Line
	1675 4825 2025 4825
Wire Wire Line
	1675 4925 1975 4925
Wire Wire Line
	1975 4925 1975 5175
Text GLabel 3550 5400 2    50   Input ~ 0
MCU_STRn
Text GLabel 3550 5300 2    50   Input ~ 0
MCU_SCK
Text GLabel 3550 5200 2    50   Input ~ 0
MCU_MOSI
Text GLabel 3550 5100 2    50   Output ~ 0
MCU_MISO
Text GLabel 10100 1900 2    50   Output ~ 0
MCU_STRn
Text GLabel 10100 1600 2    50   Output ~ 0
MCU_SCK
Text GLabel 10100 1800 2    50   Output ~ 0
MCU_MOSI
Text GLabel 10100 2700 2    50   Output ~ 0
MCU_PWM
Wire Notes Line
	8050 3450 11225 3450
$Comp
L power:GND #PWR018
U 1 1 5D125C1D
P 3725 7050
F 0 "#PWR018" H 3725 6800 50  0001 C CNN
F 1 "GND" V 3725 6850 50  0000 C CNN
F 2 "" H 3725 7050 50  0001 C CNN
F 3 "" H 3725 7050 50  0001 C CNN
	1    3725 7050
	-1   0    0    -1  
$EndComp
$Comp
L power:VDD #PWR019
U 1 1 5D125CCD
P 3600 6425
F 0 "#PWR019" H 3600 6275 50  0001 C CNN
F 1 "VDD" V 3500 6425 50  0000 L CNN
F 2 "" H 3600 6425 50  0001 C CNN
F 3 "" H 3600 6425 50  0001 C CNN
	1    3600 6425
	0    -1   1    0   
$EndComp
$Comp
L Device:Fuse F2
U 1 1 5D127153
P 4475 6950
F 0 "F2" H 4535 6996 50  0000 L CNN
F 1 "Fuse_holder" H 4535 6905 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 4405 6950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/HONGJU-FH1-200CK-G_C268204.pdf" H 4475 6950 50  0001 C CNN
F 4 "Fuse-holder for overload protection " H 4475 6950 50  0001 C CNN "Description"
F 5 "-10°C ~ +70°C" H 4475 6950 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 4475 6950 50  0001 C CNN "RoHS"
F 7 "C268204" H 4475 6950 50  0001 C CNN "LCSC Part #"
	1    4475 6950
	1    0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 5D13E825
P 6400 7025
F 0 "J3" H 6350 7225 50  0000 L CNN
F 1 "Screw_Terminal_01x03_Motor(P=5.08mm)" V 6525 6350 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type101_RT01603HBWC_1x03_P5.08mm_Horizontal" H 6400 7025 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Ningbo-Kangnex-Elec-WJ2EDGR-5-08-3P_C70914.pdf" H 6400 7025 50  0001 C CNN
F 4 "Pluggable System Terminal Block PluginP=5.08mm (90°)" H 6400 7025 50  0001 C CNN "Description"
F 5 "-40°C ~ +130°C" H 6400 7025 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 6400 7025 50  0001 C CNN "RoHS"
F 7 "C70914" H 6400 7025 50  0001 C CNN "LCSC Part #"
	1    6400 7025
	1    0    0    -1  
$EndComp
Text GLabel 5925 6925 0    50   Input ~ 0
A_Phase
Text GLabel 5925 7025 0    50   Input ~ 0
B_Phase
Text GLabel 5925 7125 0    50   Input ~ 0
C_Phase
Text GLabel 8550 4350 1    50   Output ~ 0
MCU_Vin
$Comp
L power:GND #PWR021
U 1 1 5D1B6EBB
P 8550 4650
F 0 "#PWR021" H 8550 4400 50  0001 C CNN
F 1 "GND" H 8555 4477 50  0000 C CNN
F 2 "" H 8550 4650 50  0001 C CNN
F 3 "" H 8550 4650 50  0001 C CNN
	1    8550 4650
	1    0    0    -1  
$EndComp
Text GLabel 10075 4600 2    50   Output ~ 0
MCU_Analog_Pot
Wire Wire Line
	8250 2575 8250 2500
Wire Wire Line
	8250 2500 8950 2500
$Comp
L Switch:SW_Push SW6
U 1 1 5D1E875F
P 8850 4500
F 0 "SW6" V 8804 4648 50  0000 L CNN
F 1 "User_pusch_button" H 8875 4750 50  0000 L CNN
F 2 "Button_Switch_THT:XKB7070-Z-92" H 8850 4700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/XKB-XKB7070-Z-92_C318862.pdf" H 8850 4700 50  0001 C CNN
F 4 "Electrical Switches 7.00mm x 7.00mm 5.10mm 100mA @ 30VDC" H 8850 4500 50  0001 C CNN "Description"
F 5 "-15°C ~ +55°C" H 8850 4500 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 8850 4500 50  0001 C CNN "RoHS"
F 7 "C318862" H 8850 4500 50  0001 C CNN "LCSC Part #"
	1    8850 4500
	0    1    1    0   
$EndComp
Text GLabel 10075 4500 2    50   Output ~ 0
MCU_Push_button
Text GLabel 8850 5000 3    50   Input ~ 0
MCU_Vin
Text GLabel 10100 2800 2    50   Input ~ 0
MCU_Push_button
Wire Wire Line
	1525 1525 1125 1525
Connection ~ 1125 1525
Wire Wire Line
	1125 1525 1125 1125
$Comp
L Device:LED D3
U 1 1 5D2F33F5
P 2600 1200
F 0 "D3" H 2593 1416 50  0000 C CNN
F 1 "LED(RED)" H 2593 1325 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 2600 1200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1903150933_EKINGLUX-E6C0805URAC1UDA_C375451.pdf" H 2600 1200 50  0001 C CNN
F 4 "Light Emitting Diodes (LED) Red 616~626nm 70~150mcd@20mA" H 2600 1200 50  0001 C CNN "Description"
F 5 "-40°C ~ +90°C" H 2600 1200 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2600 1200 50  0001 C CNN "RoHS"
F 7 "C375451" H 2600 1200 50  0001 C CNN "LCSC Part #"
	1    2600 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1200 2800 1200
Wire Wire Line
	2800 1200 2800 825 
Connection ~ 1825 825 
$Comp
L power:GND #PWR016
U 1 1 5D33AAF4
P 1825 1725
F 0 "#PWR016" H 1825 1475 50  0001 C CNN
F 1 "GND" H 1675 1650 50  0000 C CNN
F 2 "" H 1825 1725 50  0001 C CNN
F 3 "" H 1825 1725 50  0001 C CNN
	1    1825 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	775  825  1825 825 
Wire Wire Line
	2000 1450 1950 1450
Wire Wire Line
	1950 1325 1825 1325
$Comp
L Device:R R9
U 1 1 5D38469E
P 2150 1200
F 0 "R9" V 2150 1250 50  0000 C CNN
F 1 "430R" V 2225 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2080 1200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Viking-Tech-ARG05FTC4300_C218576.pdf" H 2150 1200 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 430Ohms ±1% 1/8W" H 2150 1200 50  0001 C CNN "Description"
F 5 "-55°C ~+155°C" H 2150 1200 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2150 1200 50  0001 C CNN "RoHS"
F 7 "C218576" H 2150 1200 50  0001 C CNN "LCSC Part #"
	1    2150 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 1200 1950 1200
Wire Wire Line
	1950 1200 1950 1325
Connection ~ 1950 1325
Wire Wire Line
	2300 1200 2450 1200
Wire Wire Line
	2300 1450 2450 1450
Wire Wire Line
	1825 825  2800 825 
$Comp
L Device:R R12
U 1 1 5D44E1C1
P 3225 3825
F 0 "R12" V 3225 3800 50  0000 C CNN
F 1 "100R" V 3125 3825 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3155 3825 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1905161814_Uniroyal-Elec_C44786.pdf" H 3225 3825 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 100Ohms ±0.5% 1/4W" H 3225 3825 50  0001 C CNN "Description"
F 5 "-55°C~+155°C" H 3225 3825 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 3225 3825 50  0001 C CNN "RoHS"
F 7 "C44786" H 3225 3825 50  0001 C CNN "LCSC Part #"
	1    3225 3825
	0    1    1    0   
$EndComp
Wire Wire Line
	2825 3825 3075 3825
Wire Wire Line
	7100 3250 7100 3325
Connection ~ 7100 3325
Wire Wire Line
	7100 3325 7100 3350
Wire Wire Line
	6225 4675 6225 4850
Wire Wire Line
	6225 4850 7100 4850
Wire Wire Line
	6225 4675 6450 4675
Connection ~ 7100 4850
Wire Wire Line
	7100 4850 7100 4875
Wire Wire Line
	6225 3150 6225 3325
Wire Wire Line
	6225 3150 6450 3150
Wire Wire Line
	6225 3325 7100 3325
Wire Wire Line
	7100 1725 7100 1800
Wire Wire Line
	6450 1625 6225 1625
Wire Wire Line
	6225 1625 6225 1800
Wire Wire Line
	6225 1800 7100 1800
Connection ~ 7100 1800
Wire Wire Line
	7100 1800 7100 1825
Wire Wire Line
	3700 1425 3700 2000
Wire Wire Line
	3700 2000 3925 2000
Wire Wire Line
	3925 2000 3925 2275
$Comp
L Device:D_Schottky D4
U 1 1 5D536957
P 3700 1275
F 0 "D4" V 3746 1196 50  0000 R CNN
F 1 "D_Schottky(SS210)" H 3975 1400 50  0000 R CNN
F 2 "Diode_SMD:D_SMA" H 3700 1275 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Bourne-Semicon-Shenzhen-SS210_C306853.pdf" H 3700 1275 50  0001 C CNN
F 4 "Schottky Barrier Diodes (SBD)" H 3700 1275 50  0001 C CNN "Description"
F 5 "-65°C ~ +125°C" H 3700 1275 50  0001 C CNN "Operating Temperature"
F 6 "Yes" V 3700 1275 50  0001 C CNN "RoHS"
F 7 "C306853" H 3700 1275 50  0001 C CNN "LCSC Part #"
	1    3700 1275
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 4500 8750 4500
Wire Wire Line
	8750 4500 8750 5450
Wire Wire Line
	8750 5450 9300 5450
Wire Wire Line
	9300 4600 9300 5450
Wire Wire Line
	8850 4300 8850 4175
Wire Wire Line
	8850 4175 9300 4175
Wire Wire Line
	9300 4175 9300 4500
$Comp
L Connector:TestPoint_Probe TP2
U 1 1 5D645830
P 2925 2925
F 0 "TP2" V 3100 3075 50  0000 C CNN
F 1 "Keystone 5001" V 2975 3275 39  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 3125 2925 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Keystone-5001_C238122.pdf" H 3125 2925 50  0001 C CNN
F 4 "Test Points/Test Rings Through Hole" H 2925 2925 50  0001 C CNN "Description"
F 5 "xx°C ~ +290°C" H 2925 2925 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2925 2925 50  0001 C CNN "RoHS"
F 7 "C238122" H 2925 2925 50  0001 C CNN "LCSC Part #"
	1    2925 2925
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Probe TP1
U 1 1 5D6B563F
P 2825 2625
F 0 "TP1" V 3099 2680 50  0000 C CNN
F 1 "Keystone 5014" V 3016 2680 39  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 3025 2625 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Keystone-5014_C238128.pdf" H 3025 2625 50  0001 C CNN
F 4 "Test Points/Test Rings Through Hole (Yellow)" H 2825 2625 50  0001 C CNN "Description"
F 5 "xx°C ~ +290°C" H 2825 2625 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2825 2625 50  0001 C CNN "RoHS"
F 7 "C238128" H 2825 2625 50  0001 C CNN "LCSC Part #"
	1    2825 2625
	0    -1   -1   0   
$EndComp
Connection ~ 2825 2625
Wire Wire Line
	2825 2625 3025 2625
Wire Wire Line
	2675 3875 2675 3700
Wire Wire Line
	2675 3700 950  3700
Wire Wire Line
	950  4825 1175 4825
$Comp
L Device:C C6
U 1 1 5D094394
P 1250 6875
F 0 "C6" H 1200 7100 50  0000 L CNN
F 1 "1µF" H 1300 6775 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1288 6725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 1250 6875 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 1µF 100V " H 1250 6875 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 1250 6875 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1250 6875 50  0001 C CNN "RoHS"
F 7 "C28233" H 1250 6875 50  0001 C CNN "LCSC Part #"
	1    1250 6875
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR010
U 1 1 5D094AB4
P 1200 6725
F 0 "#PWR010" H 1200 6575 50  0001 C CNN
F 1 "VDD" V 1218 6852 50  0000 L CNN
F 2 "" H 1200 6725 50  0001 C CNN
F 3 "" H 1200 6725 50  0001 C CNN
	1    1200 6725
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 5D0EFA8B
P 1550 6150
F 0 "C3" H 1665 6196 50  0000 L CNN
F 1 "10nF" H 1665 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1588 6000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B103KCANNNC_C18741.pdf~" H 1550 6150 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 10nF 100V" H 1550 6150 50  0001 C CNN "Description"
F 5 "-55°C ~ +125°C" H 1550 6150 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1550 6150 50  0001 C CNN "RoHS"
F 7 "C18741" H 1550 6150 50  0001 C CNN "LCSC Part #"
	1    1550 6150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR08
U 1 1 5D0F0696
P 1175 6000
F 0 "#PWR08" H 1175 5850 50  0001 C CNN
F 1 "VDD" V 1193 6127 50  0000 L CNN
F 2 "" H 1175 6000 50  0001 C CNN
F 3 "" H 1175 6000 50  0001 C CNN
	1    1175 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1175 6000 1550 6000
$Comp
L Device:C C12
U 1 1 5D1E6610
P 3875 1675
F 0 "C12" H 3900 1775 50  0000 L CNN
F 1 "100nF" H 3900 1525 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3913 1525 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 3875 1675 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 100nF 100V " H 3875 1675 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 3875 1675 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 3875 1675 50  0001 C CNN "RoHS"
F 7 "C28233" H 3875 1675 50  0001 C CNN "LCSC Part #"
	1    3875 1675
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5D1E71D8
P 3625 2075
F 0 "C10" H 3750 2075 50  0000 L CNN
F 1 "100nF" H 3650 1950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3663 1925 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 3625 2075 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 100nF 100V " H 3625 2075 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 3625 2075 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 3625 2075 50  0001 C CNN "RoHS"
F 7 "C28233" H 3625 2075 50  0001 C CNN "LCSC Part #"
	1    3625 2075
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 5D227237
P 950 3850
F 0 "D2" V 996 3771 50  0000 R CNN
F 1 "D_Schottky(SS210)" V 725 4375 50  0000 R CNN
F 2 "Diode_SMD:D_SMA" H 950 3850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Bourne-Semicon-Shenzhen-SS210_C306853.pdf" H 950 3850 50  0001 C CNN
F 4 "Schottky Barrier Diodes (SBD)" H 950 3850 50  0001 C CNN "Description"
F 5 "-65°C ~ +125°C" H 950 3850 50  0001 C CNN "Operating Temperature"
F 6 "Yes" V 950 3850 50  0001 C CNN "RoHS"
F 7 "C306853" H 950 3850 50  0001 C CNN "LCSC Part #"
	1    950  3850
	0    1    1    0   
$EndComp
$Comp
L Device:C C15
U 1 1 5D228343
P 5075 3125
F 0 "C15" V 5327 3125 50  0000 C CNN
F 1 "470nF" V 5236 3125 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5113 2975 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811291635_TDK-CGA5L2X7R2A474KT0Y0U_C338107.pdf" H 5075 3125 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 470nF 100V" H 5075 3125 50  0001 C CNN "Description"
F 5 "-55 ~ +125°C" H 5075 3125 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 5075 3125 50  0001 C CNN "RoHS"
F 7 "C338107" H 5075 3125 50  0001 C CNN "LCSC Part #"
	1    5075 3125
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 5D228D5B
P 5375 3025
F 0 "C16" V 5627 3025 50  0000 C CNN
F 1 "470nF" V 5536 3025 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5413 2875 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811291635_TDK-CGA5L2X7R2A474KT0Y0U_C338107.pdf" H 5375 3025 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 470nF 100V" H 5375 3025 50  0001 C CNN "Description"
F 5 "-55 ~ +125°C" H 5375 3025 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 5375 3025 50  0001 C CNN "RoHS"
F 7 "C338107" H 5375 3025 50  0001 C CNN "LCSC Part #"
	1    5375 3025
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5D2294FD
P 5675 2925
F 0 "C17" V 5927 2925 50  0000 C CNN
F 1 "470nF" V 5836 2925 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5713 2775 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811291635_TDK-CGA5L2X7R2A474KT0Y0U_C338107.pdf" H 5675 2925 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 470nF 100V" H 5675 2925 50  0001 C CNN "Description"
F 5 "-55 ~ +125°C" H 5675 2925 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 5675 2925 50  0001 C CNN "RoHS"
F 7 "C338107" H 5675 2925 50  0001 C CNN "LCSC Part #"
	1    5675 2925
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 5D26771F
P 6550 4475
F 0 "R24" V 6550 4450 50  0000 C CNN
F 1 "100R" V 6450 4475 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6480 4475 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1905161814_Uniroyal-Elec_C44786.pdf" H 6550 4475 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 100Ohms ±0.5% 1/4W" H 6550 4475 50  0001 C CNN "Description"
F 5 "-55°C~+155°C" H 6550 4475 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 6550 4475 50  0001 C CNN "RoHS"
F 7 "C44786" H 6550 4475 50  0001 C CNN "LCSC Part #"
	1    6550 4475
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 5D268426
P 6550 3550
F 0 "R23" V 6550 3525 50  0000 C CNN
F 1 "100R" V 6450 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6480 3550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1905161814_Uniroyal-Elec_C44786.pdf" H 6550 3550 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 100Ohms ±0.5% 1/4W" H 6550 3550 50  0001 C CNN "Description"
F 5 "-55°C~+155°C" H 6550 3550 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 6550 3550 50  0001 C CNN "RoHS"
F 7 "C44786" H 6550 3550 50  0001 C CNN "LCSC Part #"
	1    6550 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 5D268BE7
P 6550 5075
F 0 "R25" V 6550 5050 50  0000 C CNN
F 1 "100R" V 6450 5075 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6480 5075 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1905161814_Uniroyal-Elec_C44786.pdf" H 6550 5075 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 100Ohms ±0.5% 1/4W" H 6550 5075 50  0001 C CNN "Description"
F 5 "-55°C~+155°C" H 6550 5075 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 6550 5075 50  0001 C CNN "RoHS"
F 7 "C44786" H 6550 5075 50  0001 C CNN "LCSC Part #"
	1    6550 5075
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 5D269150
P 6550 2950
F 0 "R22" V 6550 2925 50  0000 C CNN
F 1 "100R" V 6450 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6480 2950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1905161814_Uniroyal-Elec_C44786.pdf" H 6550 2950 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 100Ohms ±0.5% 1/4W" H 6550 2950 50  0001 C CNN "Description"
F 5 "-55°C~+155°C" H 6550 2950 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 6550 2950 50  0001 C CNN "RoHS"
F 7 "C44786" H 6550 2950 50  0001 C CNN "LCSC Part #"
	1    6550 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R21
U 1 1 5D2697CC
P 6550 2025
F 0 "R21" V 6550 2000 50  0000 C CNN
F 1 "100R" V 6450 2025 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6480 2025 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1905161814_Uniroyal-Elec_C44786.pdf" H 6550 2025 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 100Ohms ±0.5% 1/4W" H 6550 2025 50  0001 C CNN "Description"
F 5 "-55°C~+155°C" H 6550 2025 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 6550 2025 50  0001 C CNN "RoHS"
F 7 "C44786" H 6550 2025 50  0001 C CNN "LCSC Part #"
	1    6550 2025
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 5D269F10
P 6550 1425
F 0 "R20" V 6550 1400 50  0000 C CNN
F 1 "100R" V 6450 1425 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6480 1425 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1905161814_Uniroyal-Elec_C44786.pdf" H 6550 1425 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 100Ohms ±0.5% 1/4W" H 6550 1425 50  0001 C CNN "Description"
F 5 "-55°C~+155°C" H 6550 1425 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 6550 1425 50  0001 C CNN "RoHS"
F 7 "C44786" H 6550 1425 50  0001 C CNN "LCSC Part #"
	1    6550 1425
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5D26A49B
P 3275 2225
F 0 "R18" V 3275 2225 50  0000 C CNN
F 1 "100R" V 3175 2225 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3205 2225 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1905161814_Uniroyal-Elec_C44786.pdf" H 3275 2225 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 100Ohms ±0.5% 1/4W" H 3275 2225 50  0001 C CNN "Description"
F 5 "-55°C~+155°C" H 3275 2225 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 3275 2225 50  0001 C CNN "RoHS"
F 7 "C44786" H 3275 2225 50  0001 C CNN "LCSC Part #"
	1    3275 2225
	-1   0    0    1   
$EndComp
$Comp
L Device:C C20
U 1 1 5D26B4C0
P 7550 4525
F 0 "C20" H 7665 4571 50  0000 L CNN
F 1 "100nF" H 7665 4480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7588 4375 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 7550 4525 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 100nF 100V " H 7550 4525 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 7550 4525 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 7550 4525 50  0001 C CNN "RoHS"
F 7 "C28233" H 7550 4525 50  0001 C CNN "LCSC Part #"
	1    7550 4525
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5D26C21F
P 7550 3000
F 0 "C19" H 7665 3046 50  0000 L CNN
F 1 "100nF" H 7665 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7588 2850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 7550 3000 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 100nF 100V " H 7550 3000 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 7550 3000 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 7550 3000 50  0001 C CNN "RoHS"
F 7 "C28233" H 7550 3000 50  0001 C CNN "LCSC Part #"
	1    7550 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5D26CECF
P 7550 1475
F 0 "C18" H 7665 1521 50  0000 L CNN
F 1 "100nF" H 7665 1430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7588 1325 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 7550 1475 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 100nF 100V " H 7550 1475 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 7550 1475 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 7550 1475 50  0001 C CNN "RoHS"
F 7 "C28233" H 7550 1475 50  0001 C CNN "LCSC Part #"
	1    7550 1475
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC847 Q3
U 1 1 5D26E6C5
P 1725 1125
F 0 "Q3" H 1700 1300 50  0000 L CNN
F 1 "BC847" H 1400 1025 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1925 1050 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Nexperia-BC847B-215_C57668.pdf" H 1725 1125 50  0001 L CNN
F 4 "Transistors NPN 100mA 45V" H 1725 1125 50  0001 C CNN "Description"
F 5 "-65 ~ +150°C" H 1725 1125 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1725 1125 50  0001 C CNN "RoHS"
F 7 "C57668" H 1725 1125 50  0001 C CNN "LCSC Part #"
	1    1725 1125
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC807 Q4
U 1 1 5D270935
P 1725 1525
F 0 "Q4" H 1675 1375 50  0000 L CNN
F 1 "BC807" H 1400 1625 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1925 1450 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Guangdong-Hottech-BC807-40_C181152.pdf" H 1725 1525 50  0001 L CNN
F 4 "Transistors PNP 500mA 45V" H 1725 1525 50  0001 C CNN "Description"
F 5 "-55°C ~ +150°C" H 1725 1525 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1725 1525 50  0001 C CNN "RoHS"
F 7 "C181152" H 1725 1525 50  0001 C CNN "LCSC Part #"
	1    1725 1525
	1    0    0    1   
$EndComp
Connection ~ 1825 1325
$Comp
L Transistor_BJT:BC807 Q1
U 1 1 5D275A3E
P 1275 2375
F 0 "Q1" H 1225 2550 50  0000 L CNN
F 1 "BC807" H 1450 2425 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1475 2300 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Guangdong-Hottech-BC807-40_C181152.pdf" H 1275 2375 50  0001 L CNN
F 4 "Transistors PNP 500mA 45V" H 1275 2375 50  0001 C CNN "Description"
F 5 "-55°C ~ +150°C" H 1275 2375 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1275 2375 50  0001 C CNN "RoHS"
F 7 "C181152" H 1275 2375 50  0001 C CNN "LCSC Part #"
	1    1275 2375
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5D3061CD
P 3225 4075
F 0 "R14" V 3225 4050 50  0000 C CNN
F 1 "240R" V 3175 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3155 4075 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Viking-Tech-ARG05FTC2400_C218448.pdf" H 3225 4075 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 240Ohms ±1% 1/8W " H 3225 4075 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 3225 4075 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 3225 4075 50  0001 C CNN "RoHS"
F 7 "C218448" H 3225 4075 50  0001 C CNN "LCSC Part #"
	1    3225 4075
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5D308051
P 3225 4175
F 0 "R15" V 3225 4150 50  0000 C CNN
F 1 "240R" V 3175 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3155 4175 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Viking-Tech-ARG05FTC2400_C218448.pdf" H 3225 4175 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 240Ohms ±1% 1/8W " H 3225 4175 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 3225 4175 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 3225 4175 50  0001 C CNN "RoHS"
F 7 "C218448" H 3225 4175 50  0001 C CNN "LCSC Part #"
	1    3225 4175
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5D308395
P 3225 4275
F 0 "R16" V 3225 4250 50  0000 C CNN
F 1 "240R" V 3175 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3155 4275 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Viking-Tech-ARG05FTC2400_C218448.pdf" H 3225 4275 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 240Ohms ±1% 1/8W " H 3225 4275 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 3225 4275 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 3225 4275 50  0001 C CNN "RoHS"
F 7 "C218448" H 3225 4275 50  0001 C CNN "LCSC Part #"
	1    3225 4275
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5D3089E0
P 3225 4375
F 0 "R17" V 3225 4350 50  0000 C CNN
F 1 "240R" V 3175 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3155 4375 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Viking-Tech-ARG05FTC2400_C218448.pdf" H 3225 4375 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 240Ohms ±1% 1/8W " H 3225 4375 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 3225 4375 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 3225 4375 50  0001 C CNN "RoHS"
F 7 "C218448" H 3225 4375 50  0001 C CNN "LCSC Part #"
	1    3225 4375
	0    1    1    0   
$EndComp
Wire Wire Line
	2775 4175 3075 4175
Wire Wire Line
	2825 4275 3075 4275
Wire Wire Line
	2875 4375 3075 4375
Wire Wire Line
	2725 4075 3075 4075
$Comp
L Device:R R10
U 1 1 5D385A94
P 2150 1450
F 0 "R10" V 2150 1475 50  0000 C CNN
F 1 "430R" V 2225 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2080 1450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Viking-Tech-ARG05FTC4300_C218576.pdf" H 2150 1450 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 430Ohms ±1% 1/8W" H 2150 1450 50  0001 C CNN "Description"
F 5 "-55°C ~+155°C" H 2150 1450 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2150 1450 50  0001 C CNN "RoHS"
F 7 "C218576" H 2150 1450 50  0001 C CNN "LCSC Part #"
	1    2150 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5D386A3A
P 2125 1975
F 0 "R7" V 2125 1925 50  0000 C CNN
F 1 "1K" V 2075 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2055 1975 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904041107_Uniroyal-Elec-TC0525F1001T5E_C75781.pdf" H 2125 1975 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 1KOhms ±1% 1/10W" H 2125 1975 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 2125 1975 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2125 1975 50  0001 C CNN "RoHS"
F 7 "C75781" H 2125 1975 50  0001 C CNN "LCSC Part #"
	1    2125 1975
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5D387CE9
P 2125 2075
F 0 "R8" V 2125 2025 50  0000 C CNN
F 1 "1K" V 2075 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2055 2075 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904041107_Uniroyal-Elec-TC0525F1001T5E_C75781.pdf" H 2125 2075 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 1KOhms ±1% 1/10W" H 2125 2075 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 2125 2075 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2125 2075 50  0001 C CNN "RoHS"
F 7 "C75781" H 2125 2075 50  0001 C CNN "LCSC Part #"
	1    2125 2075
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D3886AE
P 1675 2575
F 0 "R2" V 1675 2525 50  0000 C CNN
F 1 "1K" V 1625 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1605 2575 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904041107_Uniroyal-Elec-TC0525F1001T5E_C75781.pdf" H 1675 2575 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 1KOhms ±1% 1/10W" H 1675 2575 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 1675 2575 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1675 2575 50  0001 C CNN "RoHS"
F 7 "C75781" H 1675 2575 50  0001 C CNN "LCSC Part #"
	1    1675 2575
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5D388DF2
P 1675 2675
F 0 "R4" V 1675 2625 50  0000 C CNN
F 1 "1K" V 1625 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1605 2675 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904041107_Uniroyal-Elec-TC0525F1001T5E_C75781.pdf" H 1675 2675 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 1KOhms ±1% 1/10W" H 1675 2675 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 1675 2675 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1675 2675 50  0001 C CNN "RoHS"
F 7 "C75781" H 1675 2675 50  0001 C CNN "LCSC Part #"
	1    1675 2675
	0    1    1    0   
$EndComp
Wire Wire Line
	775  2975 875  2975
$Comp
L Device:C C1
U 1 1 5D38A476
P 875 3125
F 0 "C1" H 875 3225 50  0000 L CNN
F 1 "100nF" V 725 3025 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 913 2975 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 875 3125 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 100nF 100V " H 875 3125 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 875 3125 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 875 3125 50  0001 C CNN "RoHS"
F 7 "C28233" H 875 3125 50  0001 C CNN "LCSC Part #"
	1    875  3125
	1    0    0    -1  
$EndComp
Connection ~ 875  2975
Wire Wire Line
	875  2975 1075 2975
$Comp
L Device:R R6
U 1 1 5D38B98F
P 1825 3875
F 0 "R6" V 1825 3825 50  0000 C CNN
F 1 "10K" V 1725 3875 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1755 3875 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1812201732_Viking-Tech-AR05DTDW1002_C319940.pdf" H 1825 3875 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 10KOhms ±0.5% 1/8W" H 1825 3875 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 1825 3875 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1825 3875 50  0001 C CNN "RoHS"
F 7 "C319940" H 1825 3875 50  0001 C CNN "LCSC Part #"
	1    1825 3875
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D38BFB2
P 1025 2575
F 0 "R1" V 1025 2525 50  0000 C CNN
F 1 "10K" V 1125 2575 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 955 2575 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1812201732_Viking-Tech-AR05DTDW1002_C319940.pdf" H 1025 2575 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 10KOhms ±0.5% 1/8W" H 1025 2575 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 1025 2575 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1025 2575 50  0001 C CNN "RoHS"
F 7 "C319940" H 1025 2575 50  0001 C CNN "LCSC Part #"
	1    1025 2575
	-1   0    0    1   
$EndComp
$Comp
L Device:R R26
U 1 1 5D38DF14
P 6600 2225
F 0 "R26" V 6600 2200 50  0000 C CNN
F 1 "100K" V 6700 2175 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 2225 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904041010_Uniroyal-Elec-TC0525F1003T5E_C57246.pdf" H 6600 2225 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 100KOhms ±1% 1/10W" H 6600 2225 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 6600 2225 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 6600 2225 50  0001 C CNN "RoHS"
F 7 "C57246" H 6600 2225 50  0001 C CNN "LCSC Part #"
	1    6600 2225
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 5D38E419
P 6600 3150
F 0 "R27" V 6600 3125 50  0000 C CNN
F 1 "100K" V 6700 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 3150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904041010_Uniroyal-Elec-TC0525F1003T5E_C57246.pdf" H 6600 3150 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 100KOhms ±1% 1/10W" H 6600 3150 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 6600 3150 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 6600 3150 50  0001 C CNN "RoHS"
F 7 "C57246" H 6600 3150 50  0001 C CNN "LCSC Part #"
	1    6600 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R28
U 1 1 5D38EBA8
P 6600 3750
F 0 "R28" V 6600 3725 50  0000 C CNN
F 1 "100K" V 6700 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 3750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904041010_Uniroyal-Elec-TC0525F1003T5E_C57246.pdf" H 6600 3750 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 100KOhms ±1% 1/10W" H 6600 3750 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 6600 3750 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 6600 3750 50  0001 C CNN "RoHS"
F 7 "C57246" H 6600 3750 50  0001 C CNN "LCSC Part #"
	1    6600 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R29
U 1 1 5D38F443
P 6600 4675
F 0 "R29" V 6600 4650 50  0000 C CNN
F 1 "100K" V 6700 4625 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 4675 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904041010_Uniroyal-Elec-TC0525F1003T5E_C57246.pdf" H 6600 4675 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 100KOhms ±1% 1/10W" H 6600 4675 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 6600 4675 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 6600 4675 50  0001 C CNN "RoHS"
F 7 "C57246" H 6600 4675 50  0001 C CNN "LCSC Part #"
	1    6600 4675
	0    1    1    0   
$EndComp
$Comp
L Device:R R30
U 1 1 5D38F9AC
P 6600 5275
F 0 "R30" V 6600 5250 50  0000 C CNN
F 1 "100K" V 6700 5225 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 5275 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904041010_Uniroyal-Elec-TC0525F1003T5E_C57246.pdf" H 6600 5275 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 100KOhms ±1% 1/10W" H 6600 5275 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 6600 5275 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 6600 5275 50  0001 C CNN "RoHS"
F 7 "C57246" H 6600 5275 50  0001 C CNN "LCSC Part #"
	1    6600 5275
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NMOS_GDS Q5
U 1 1 5D3900F9
P 7000 2025
F 0 "Q5" H 7206 2071 50  0000 L CNN
F 1 "RU7570L" H 7200 2175 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 7200 2125 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Shenzhen-ruichips-Semicon-RU7570L_C128586.pdf" H 7000 2025 50  0001 C CNN
F 4 "MOSFET N Trench 75V 70A 4V @ 250uA 12 mΩ @ 35A" H 7000 2025 50  0001 C CNN "Description"
F 5 "-55°C ~ +175°C" H 7000 2025 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 7000 2025 50  0001 C CNN "RoHS"
F 7 "C128586" H 7000 2025 50  0001 C CNN "LCSC Part #"
	1    7000 2025
	1    0    0    -1  
$EndComp
Connection ~ 7100 2225
$Comp
L Device:Q_NMOS_GDS Q6
U 1 1 5D3910BD
P 7000 2950
F 0 "Q6" H 7206 2996 50  0000 L CNN
F 1 "RU7570L" H 7200 3100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 7200 3050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Shenzhen-ruichips-Semicon-RU7570L_C128586.pdf" H 7000 2950 50  0001 C CNN
F 4 "MOSFET N Trench 75V 70A 4V @ 250uA 12 mΩ @ 35A" H 7000 2950 50  0001 C CNN "Description"
F 5 "-55°C ~ +175°C" H 7000 2950 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 7000 2950 50  0001 C CNN "RoHS"
F 7 "C128586" H 7000 2950 50  0001 C CNN "LCSC Part #"
	1    7000 2950
	1    0    0    -1  
$EndComp
Connection ~ 7100 2750
$Comp
L Device:Q_NMOS_GDS Q7
U 1 1 5D392952
P 7000 3550
F 0 "Q7" H 7206 3596 50  0000 L CNN
F 1 "RU7570L" H 7200 3700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 7200 3650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Shenzhen-ruichips-Semicon-RU7570L_C128586.pdf" H 7000 3550 50  0001 C CNN
F 4 "MOSFET N Trench 75V 70A 4V @ 250uA 12 mΩ @ 35A" H 7000 3550 50  0001 C CNN "Description"
F 5 "-55°C ~ +175°C" H 7000 3550 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 7000 3550 50  0001 C CNN "RoHS"
F 7 "C128586" H 7000 3550 50  0001 C CNN "LCSC Part #"
	1    7000 3550
	1    0    0    -1  
$EndComp
Connection ~ 7100 3750
$Comp
L Device:Q_NMOS_GDS Q8
U 1 1 5D3937A8
P 7000 4475
F 0 "Q8" H 7206 4521 50  0000 L CNN
F 1 "RU7570L" H 7200 4625 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 7200 4575 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Shenzhen-ruichips-Semicon-RU7570L_C128586.pdf" H 7000 4475 50  0001 C CNN
F 4 "MOSFET N Trench 75V 70A 4V @ 250uA 12 mΩ @ 35A" H 7000 4475 50  0001 C CNN "Description"
F 5 "-55°C ~ +175°C" H 7000 4475 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 7000 4475 50  0001 C CNN "RoHS"
F 7 "C128586" H 7000 4475 50  0001 C CNN "LCSC Part #"
	1    7000 4475
	1    0    0    -1  
$EndComp
Connection ~ 7100 4275
Wire Wire Line
	3025 2775 3125 2775
$Comp
L Device:R R11
U 1 1 5D398805
P 3125 2625
F 0 "R11" V 3125 2625 50  0000 C CNN
F 1 "10K" V 3025 2575 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3055 2625 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1812201732_Viking-Tech-AR05DTDW1002_C319940.pdf" H 3125 2625 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 10KOhms ±0.5% 1/8W" H 3125 2625 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 3125 2625 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 3125 2625 50  0001 C CNN "RoHS"
F 7 "C319940" H 3125 2625 50  0001 C CNN "LCSC Part #"
	1    3125 2625
	-1   0    0    1   
$EndComp
Connection ~ 3125 2775
Wire Wire Line
	3125 2775 3375 2775
Connection ~ 2725 4325
Wire Wire Line
	2725 4325 2725 5400
Connection ~ 2775 4625
Wire Wire Line
	2775 4625 2775 5300
Connection ~ 2825 4525
Connection ~ 2875 4425
Wire Wire Line
	2875 4425 2875 5100
Wire Wire Line
	2825 4525 2825 5200
Wire Wire Line
	1200 6725 1250 6725
Wire Wire Line
	1200 7025 1250 7025
Wire Wire Line
	4475 6800 4475 6725
$Comp
L Device:Fuse_Small F1
U 1 1 5D6D3541
P 3725 6950
F 0 "F1" V 3771 6902 50  0000 R CNN
F 1 "Fuse_SMD_290mA" V 3675 6925 50  0000 R CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3725 6950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/TECHFUSE-nSMD012_C70066.pdf" H 3725 6950 50  0001 C CNN
F 4 "Surface Mount Fuses 60V 100A 120mA 290mA " H 3725 6950 50  0001 C CNN "Description"
F 5 "-40°C ~ +85°C (in tripped state +125°C)" H 3725 6950 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 3725 6950 50  0001 C CNN "RoHS"
F 7 "C70066" H 3725 6950 50  0001 C CNN "LCSC Part #"
	1    3725 6950
	0    -1   1    0   
$EndComp
Wire Wire Line
	3725 6850 3725 6725
Wire Wire Line
	1950 1325 1950 1450
$Comp
L Device:R R31
U 1 1 5D0CA17C
P 8850 4850
F 0 "R31" V 8850 4875 50  0000 C CNN
F 1 "1K" V 8750 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8780 4850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904041107_Uniroyal-Elec-TC0525F1001T5E_C75781.pdf" H 8850 4850 50  0001 C CNN
F 4 "High Precision & Low TCR SMD Resistors 1KOhms ±1% 1/10W" H 8850 4850 50  0001 C CNN "Description"
F 5 "-55°C ~ +155°C" H 8850 4850 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 8850 4850 50  0001 C CNN "RoHS"
F 7 "C75781" H 8850 4850 50  0001 C CNN "LCSC Part #"
	1    8850 4850
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_DIP_x04 SW5
U 1 1 5D0CBB14
P 3250 5300
F 0 "SW5" H 3250 5150 50  0000 C CNN
F 1 "SW_DIP_x04(BLUE)" H 3250 5650 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx04_Slide_9.78x12.34mm_W7.62mm_P2.54mm" H 3250 5300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Made-in-China-VDG-S-04L_C47207.pdf" H 3250 5300 50  0001 C CNN
F 4 "DIP Switches SPST 4 2.54mm, Full Plugin DIP switch" H 3250 5300 50  0001 C CNN "Description"
F 5 "-20°C ~ +70°C" H 3250 5300 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 3250 5300 50  0001 C CNN "RoHS"
F 7 "C47207" H 3250 5300 50  0001 C CNN "LCSC Part #"
	1    3250 5300
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x02 SW4
U 1 1 5D0CD6D6
P 2275 3975
F 0 "SW4" H 2275 3925 50  0000 C CNN
F 1 "SW_DIP_x02(BLUE)" H 2275 3800 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx02_Slide_9.78x7.26mm_W7.62mm_P2.54mm" H 2275 3975 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Made-in-China-VDG-S-02L_C47206.pdf" H 2275 3975 50  0001 C CNN
F 4 "DIP Switches SPST 2 2.54mm, Full Plugin" H 2275 3975 50  0001 C CNN "Description"
F 5 "-20°C ~ +70°C" H 2275 3975 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2275 3975 50  0001 C CNN "RoHS"
F 7 "C47206" H 2275 3975 50  0001 C CNN "LCSC Part #"
	1    2275 3975
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9150 1900
F 0 "P1" H 9150 2350 50  0000 C CNN
F 1 "Power" V 9250 1900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" V 9300 1900 20  0000 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Nextronics-Engineering-Z-211-0811-0021-001_C190820.pdf" H 9150 1900 50  0001 C CNN
F 4 "Pin Header / Female Header 0.100\"（2.54mm） P=2.54mm" H 9150 1900 50  0001 C CNN "Description"
F 5 "-25°C ~ +105°C" H 9150 1900 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 9150 1900 50  0001 C CNN "RoHS"
F 7 "C190820" H 9150 1900 50  0001 C CNN "LCSC Part #"
	1    9150 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 5D087D3F
P 9550 2700
F 0 "P4" H 9550 3150 50  0000 C CNN
F 1 "Digital" V 9650 2700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" V 9700 2700 20  0000 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Nextronics-Engineering-Z-211-0811-0021-001_C190820.pdf" H 9550 2700 50  0001 C CNN
F 4 "Pin Header / Female Header 0.100\"（2.54mm） P=2.54mm" H 9550 2700 50  0001 C CNN "Description"
F 5 "-25°C ~ +105°C" H 9550 2700 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 9550 2700 50  0001 C CNN "RoHS"
F 7 "C190820" H 9550 2700 50  0001 C CNN "LCSC Part #"
	1    9550 2700
	-1   0    0    1   
$EndComp
Wire Notes Line
	7950 5575 6100 5575
Wire Notes Line
	6100 5575 6100 750 
Wire Notes Line
	6100 750  7950 750 
Wire Notes Line
	7950 750  7950 5575
Text Notes 6325 850  0    50   ~ 0
Output stage (N-Channel MOSFETs)
Wire Notes Line
	6100 875  7950 875 
Wire Notes Line
	8200 3650 8200 5550
Wire Notes Line
	8200 5550 10925 5550
Wire Notes Line
	10925 5550 10925 3650
Wire Notes Line
	10925 3650 8200 3650
Text Notes 8250 3775 0    50   ~ 0
User input (Speed control, programmable button and reset button)
Wire Notes Line
	8200 3825 10925 3825
Wire Wire Line
	950  4000 950  4825
Wire Wire Line
	2875 5100 2950 5100
Wire Wire Line
	2825 5200 2950 5200
Wire Wire Line
	2775 5300 2950 5300
Wire Wire Line
	2725 5400 2950 5400
Wire Notes Line
	2175 4275 2175 5625
Wire Notes Line
	2175 5625 600  5625
Wire Notes Line
	600  5625 600  4275
Wire Notes Line
	600  4275 2175 4275
Text Notes 650  5575 0    50   ~ 0
Logic-analyzer connector\nExternal SPI and PWM input
Wire Notes Line
	600  5375 2175 5375
Wire Notes Line
	3200 5775 3200 7750
Wire Notes Line
	3200 7750 5150 7750
Wire Notes Line
	5150 7750 5150 5775
Wire Notes Line
	5150 5775 3200 5775
Text Notes 3225 5950 0    50   ~ 0
Power supply connection (Screw terminal)\nUse dual connection for lower resistance
Wire Notes Line
	5500 5775 5500 7750
Wire Notes Line
	5500 7750 6600 7750
Wire Notes Line
	6600 7750 6600 5775
Wire Notes Line
	6600 5775 5500 5775
Text Notes 5525 6025 0    50   ~ 0
3 Phase terminal for\nBLDC motor connection\n(Pluggable screw terminal)
Wire Notes Line
	5500 6075 6600 6075
Wire Notes Line
	3200 5975 5150 5975
Wire Notes Line
	2850 5775 2850 7750
Wire Notes Line
	2850 7750 850  7750
Wire Notes Line
	850  7750 850  5775
Wire Notes Line
	850  5775 2850 5775
Text Notes 875  5875 0    50   ~ 0
Bypass and smoothing condensators
Wire Notes Line
	850  5900 2850 5900
Text Notes 7000 6850 0    197  ~ 39
Kiel 50
Text Notes 7300 7250 0    49   Italic 0
1
$Comp
L Connector:TestPoint_Probe TP3
U 1 1 5D522F04
P 3275 1975
F 0 "TP3" V 3450 2125 50  0000 C CNN
F 1 "Keystone 5001" V 3325 2325 39  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 3475 1975 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Keystone-5001_C238122.pdf" H 3475 1975 50  0001 C CNN
F 4 "Test Points/Test Rings Through Hole" H 3275 1975 50  0001 C CNN "Description"
F 5 "xx°C ~ +290°C" H 3275 1975 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 3275 1975 50  0001 C CNN "RoHS"
F 7 "C238122" H 3275 1975 50  0001 C CNN "LCSC Part #"
	1    3275 1975
	1    0    0    -1  
$EndComp
Connection ~ 3275 1975
$Comp
L Connector:TestPoint_Probe TP6
U 1 1 5D5237B8
P 4975 2075
F 0 "TP6" H 4900 2125 50  0000 C CNN
F 1 "Keystone 5001" V 5025 2425 39  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5175 2075 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Keystone-5001_C238122.pdf" H 5175 2075 50  0001 C CNN
F 4 "Test Points/Test Rings Through Hole" H 4975 2075 50  0001 C CNN "Description"
F 5 "xx°C ~ +290°C" H 4975 2075 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 4975 2075 50  0001 C CNN "RoHS"
F 7 "C238122" H 4975 2075 50  0001 C CNN "LCSC Part #"
	1    4975 2075
	1    0    0    -1  
$EndComp
Connection ~ 4975 2075
$Comp
L Connector:TestPoint_Probe TP5
U 1 1 5D523EE3
P 4175 2075
F 0 "TP5" H 4375 2125 50  0000 C CNN
F 1 "Keystone 5001" H 4400 1950 39  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 4375 2075 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Keystone-5001_C238122.pdf" H 4375 2075 50  0001 C CNN
F 4 "Test Points/Test Rings Through Hole" H 4175 2075 50  0001 C CNN "Description"
F 5 "xx°C ~ +290°C" H 4175 2075 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 4175 2075 50  0001 C CNN "RoHS"
F 7 "C238122" H 4175 2075 50  0001 C CNN "LCSC Part #"
	1    4175 2075
	1    0    0    -1  
$EndComp
Connection ~ 4175 2075
$Comp
L Connector:TestPoint_Probe TP4
U 1 1 5D524D20
P 3925 2275
F 0 "TP4" H 4150 2350 50  0000 C CNN
F 1 "Keystone 5001" H 4250 2425 39  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 4125 2275 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Keystone-5001_C238122.pdf" H 4125 2275 50  0001 C CNN
F 4 "Test Points/Test Rings Through Hole" H 3925 2275 50  0001 C CNN "Description"
F 5 "xx°C ~ +290°C" H 3925 2275 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 3925 2275 50  0001 C CNN "RoHS"
F 7 "C238122" H 3925 2275 50  0001 C CNN "LCSC Part #"
	1    3925 2275
	-1   0    0    1   
$EndComp
Connection ~ 7100 5275
$Comp
L Device:Q_NMOS_GDS Q9
U 1 1 5D394A85
P 7000 5075
F 0 "Q9" H 7206 5121 50  0000 L CNN
F 1 "RU7570L" H 7200 5225 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 7200 5175 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Shenzhen-ruichips-Semicon-RU7570L_C128586.pdf" H 7000 5075 50  0001 C CNN
F 4 "MOSFET N Trench 75V 70A 4V @ 250uA 12 mΩ @ 35A" H 7000 5075 50  0001 C CNN "Description"
F 5 "-55°C ~ +175°C" H 7000 5075 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 7000 5075 50  0001 C CNN "RoHS"
F 7 "C128586" H 7000 5075 50  0001 C CNN "LCSC Part #"
	1    7000 5075
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5D028E5D
P 4950 6625
F 0 "J2" H 4850 6350 50  0000 L CNN
F 1 "Screw_Terminal_01x04_Vin(P=5.08mm)" V 5075 6000 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type101_RT01602HBWC_1x02_P5.08mm_Horizontal" H 4950 6625 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Ningbo-Kangnex-Elec-WJ2EDGR-5-08-2P_C8383.pdf" H 4950 6625 50  0001 C CNN
F 4 "Pluggable System Terminal Block 2P P=5.08mm (90°)" H 4950 6625 50  0001 C CNN "Description"
F 5 "-40°C ~ +130°C" H 4950 6625 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 4950 6625 50  0001 C CNN "RoHS"
F 7 "C8383" H 4950 6625 50  0001 C CNN "LCSC Part #"
	1    4950 6625
	1    0    0    1   
$EndComp
Wire Wire Line
	4750 6725 4750 6625
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5D16FB6C
P 9775 4500
F 0 "JP1" H 9775 4850 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 9775 4700 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9775 4500 50  0001 C CNN
F 3 "Refer to the PCB" H 9775 4500 50  0001 C CNN
	1    9775 4500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5D170A05
P 9775 4600
F 0 "JP2" H 9775 4975 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 9775 4825 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9775 4600 50  0001 C CNN
F 3 "Refer to the PCB" H 9775 4600 50  0001 C CNN
	1    9775 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4500 9625 4500
Wire Wire Line
	9300 4600 9625 4600
Wire Wire Line
	9925 4500 10075 4500
Wire Wire Line
	9925 4600 10075 4600
Text GLabel 8250 2575 3    50   Input ~ 0
MCU_Analog_Pot
Text GLabel 10100 1700 2    50   Output ~ 0
MCU_MISO
Wire Wire Line
	4475 7500 4475 7475
Wire Wire Line
	4325 7475 4475 7475
Connection ~ 4475 7475
Wire Wire Line
	4475 7475 4475 7450
Wire Wire Line
	4475 7150 4475 7125
Wire Wire Line
	4325 7125 4475 7125
Wire Wire Line
	4475 7100 4475 7125
Connection ~ 4475 7125
Wire Wire Line
	3600 6425 4750 6425
Wire Wire Line
	5925 6925 6200 6925
Wire Wire Line
	5925 7025 6200 7025
Wire Wire Line
	5925 7125 6200 7125
$Comp
L Mechanical:Heatsink HS1
U 1 1 5D1F0C8B
P 4400 1150
F 0 "HS1" H 4325 1375 50  0000 L CNN
F 1 "Heatsink" H 4250 1050 50  0000 L CNN
F 2 "" H 4412 1150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/XSD-XSD1690-058_C286230.pdf" H 4412 1150 50  0001 C CNN
F 4 "C286230" H 4400 1150 50  0001 C CNN "LCSC Part #"
F 5 "Yes" H 4400 1150 50  0001 C CNN "RoHS"
F 6 "Heat Sinks 14x14x10mm RoHS" H 4400 1150 50  0001 C CNN "Description"
	1    4400 1150
	1    0    0    -1  
$EndComp
Text Notes 4700 1300 0    50   ~ 0
(Mechanical Peace)\nMust be placed at the “F.cu” \nthe heat will be carried from IC\nthrough the thermal vias
Wire Notes Line
	4200 750  6000 750 
Wire Notes Line
	6000 750  6000 1350
Wire Notes Line
	6000 1350 4200 1350
Wire Notes Line
	4200 1350 4200 750 
Wire Notes Line
	4200 850  6000 850 
Text Notes 4650 850  0    50   ~ 0
Heat sink 14x14x10mm
Wire Wire Line
	4750 6425 4750 6525
$Comp
L Switch:SW_Push SW7
U 1 1 5D323E2C
P 9550 5050
F 0 "SW7" V 9504 5198 50  0000 L CNN
F 1 "SW_Push" V 9595 5198 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 9550 5250 50  0001 C CNN
F 3 "~" H 9550 5250 50  0001 C CNN
	1    9550 5050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5D324494
P 9550 5250
F 0 "#PWR022" H 9550 5000 50  0001 C CNN
F 1 "GND" H 9555 5077 50  0000 C CNN
F 2 "" H 9550 5250 50  0001 C CNN
F 3 "" H 9550 5250 50  0001 C CNN
	1    9550 5250
	1    0    0    -1  
$EndComp
Text GLabel 10075 4700 2    50   Output ~ 0
MCU_RST
Wire Wire Line
	9550 4850 9550 4700
Wire Wire Line
	9550 4700 10075 4700
$Comp
L power:GNDPWR #PWR023
U 1 1 5D279829
P 3400 6725
F 0 "#PWR023" H 3400 6525 50  0001 C CNN
F 1 "GNDPWR" H 3404 6571 50  0000 C CNN
F 2 "" H 3400 6675 50  0001 C CNN
F 3 "" H 3400 6675 50  0001 C CNN
	1    3400 6725
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6725 3725 6725
Connection ~ 3725 6725
Wire Wire Line
	3725 6725 4475 6725
Connection ~ 4475 6725
Wire Wire Line
	4475 6725 4750 6725
$Comp
L power:GNDPWR #PWR011
U 1 1 5D2B7ACA
P 1200 7025
F 0 "#PWR011" H 1200 6825 50  0001 C CNN
F 1 "GNDPWR" H 1025 7025 50  0000 C CNN
F 2 "" H 1200 6975 50  0001 C CNN
F 3 "" H 1200 6975 50  0001 C CNN
	1    1200 7025
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5D2D6C06
P 1925 6875
F 0 "C7" H 1875 7100 50  0000 L CNN
F 1 "1µF" H 1975 6775 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1963 6725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 1925 6875 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 1µF 100V " H 1925 6875 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 1925 6875 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1925 6875 50  0001 C CNN "RoHS"
F 7 "C28233" H 1925 6875 50  0001 C CNN "LCSC Part #"
	1    1925 6875
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5D2D7268
P 2375 6875
F 0 "C8" H 2325 7100 50  0000 L CNN
F 1 "1µF" H 2425 6775 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2413 6725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 2375 6875 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 1µF 100V " H 2375 6875 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 2375 6875 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2375 6875 50  0001 C CNN "RoHS"
F 7 "C28233" H 2375 6875 50  0001 C CNN "LCSC Part #"
	1    2375 6875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D2D901B
P 1100 6300
F 0 "#PWR09" H 1100 6050 50  0001 C CNN
F 1 "GND" V 1100 6100 50  0000 C CNN
F 2 "" H 1100 6300 50  0001 C CNN
F 3 "" H 1100 6300 50  0001 C CNN
	1    1100 6300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1100 6300 1550 6300
Connection ~ 1250 6725
Connection ~ 1250 7025
Wire Wire Line
	1250 6725 1475 6725
Wire Wire Line
	1250 7025 1475 7025
$Comp
L Device:C C9
U 1 1 5D2F939C
P 1475 6875
F 0 "C9" H 1425 7100 50  0000 L CNN
F 1 "1µF" H 1525 6775 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1513 6725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 1475 6875 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 1µF 100V " H 1475 6875 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 1475 6875 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1475 6875 50  0001 C CNN "RoHS"
F 7 "C28233" H 1475 6875 50  0001 C CNN "LCSC Part #"
	1    1475 6875
	1    0    0    -1  
$EndComp
Connection ~ 1475 6725
Wire Wire Line
	1475 6725 1700 6725
Connection ~ 1475 7025
Wire Wire Line
	1475 7025 1700 7025
$Comp
L Device:C C11
U 1 1 5D2F9A6A
P 1700 6875
F 0 "C11" H 1625 7100 50  0000 L CNN
F 1 "1µF" H 1750 6775 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1738 6725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 1700 6875 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 1µF 100V " H 1700 6875 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 1700 6875 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1700 6875 50  0001 C CNN "RoHS"
F 7 "C28233" H 1700 6875 50  0001 C CNN "LCSC Part #"
	1    1700 6875
	1    0    0    -1  
$EndComp
Connection ~ 1700 6725
Connection ~ 1700 7025
$Comp
L Device:C C13
U 1 1 5D2FA25B
P 2150 6875
F 0 "C13" H 2075 7100 50  0000 L CNN
F 1 "1µF" H 2200 6775 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2188 6725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 2150 6875 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 1µF 100V " H 2150 6875 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 2150 6875 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2150 6875 50  0001 C CNN "RoHS"
F 7 "C28233" H 2150 6875 50  0001 C CNN "LCSC Part #"
	1    2150 6875
	1    0    0    -1  
$EndComp
Connection ~ 2150 6725
Wire Wire Line
	2150 6725 2375 6725
Connection ~ 2150 7025
Wire Wire Line
	2150 7025 2375 7025
Connection ~ 2375 6725
Connection ~ 2375 7025
$Comp
L Device:C C21
U 1 1 5D2FADC8
P 2600 6875
F 0 "C21" H 2525 7100 50  0000 L CNN
F 1 "1µF" H 2650 6775 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2638 6725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 2600 6875 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 1µF 100V " H 2600 6875 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 2600 6875 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2600 6875 50  0001 C CNN "RoHS"
F 7 "C28233" H 2600 6875 50  0001 C CNN "LCSC Part #"
	1    2600 6875
	1    0    0    -1  
$EndComp
Wire Wire Line
	2375 7025 2600 7025
Wire Wire Line
	2375 6725 2600 6725
$Comp
L Device:C C14
U 1 1 5D33F2BC
P 2450 6150
F 0 "C14" H 2565 6196 50  0000 L CNN
F 1 "100nF" H 2565 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2488 6000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B103KCANNNC_C18741.pdf~" H 2450 6150 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 100nF 100V" H 2450 6150 50  0001 C CNN "Description"
F 5 "-55°C ~ +125°C" H 2450 6150 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 2450 6150 50  0001 C CNN "RoHS"
F 7 "C18741" H 2450 6150 50  0001 C CNN "LCSC Part #"
	1    2450 6150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR025
U 1 1 5D33F2C2
P 2075 6000
F 0 "#PWR025" H 2075 5850 50  0001 C CNN
F 1 "VDD" V 2093 6127 50  0000 L CNN
F 2 "" H 2075 6000 50  0001 C CNN
F 3 "" H 2075 6000 50  0001 C CNN
	1    2075 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2075 6000 2450 6000
$Comp
L power:GND #PWR024
U 1 1 5D33F2C9
P 2000 6300
F 0 "#PWR024" H 2000 6050 50  0001 C CNN
F 1 "GND" V 2000 6100 50  0000 C CNN
F 2 "" H 2000 6300 50  0001 C CNN
F 3 "" H 2000 6300 50  0001 C CNN
	1    2000 6300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2000 6300 2450 6300
Connection ~ 1925 7025
Connection ~ 1925 6725
Wire Wire Line
	1925 7025 2150 7025
Wire Wire Line
	1700 7025 1925 7025
Wire Wire Line
	1925 6725 2150 6725
Wire Wire Line
	1700 6725 1925 6725
$Comp
L Device:C C22
U 1 1 5D3F60FD
P 1250 7400
F 0 "C22" H 1200 7625 50  0000 L CNN
F 1 "1µF" H 1300 7300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1288 7250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 1250 7400 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 1µF 100V " H 1250 7400 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 1250 7400 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1250 7400 50  0001 C CNN "RoHS"
F 7 "C28233" H 1250 7400 50  0001 C CNN "LCSC Part #"
	1    1250 7400
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR026
U 1 1 5D3F6103
P 1200 7250
F 0 "#PWR026" H 1200 7100 50  0001 C CNN
F 1 "VDD" V 1218 7377 50  0000 L CNN
F 2 "" H 1200 7250 50  0001 C CNN
F 3 "" H 1200 7250 50  0001 C CNN
	1    1200 7250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 7250 1250 7250
Wire Wire Line
	1200 7550 1250 7550
$Comp
L power:GNDPWR #PWR027
U 1 1 5D3F610B
P 1200 7550
F 0 "#PWR027" H 1200 7350 50  0001 C CNN
F 1 "GNDPWR" H 1204 7396 50  0000 C CNN
F 2 "" H 1200 7500 50  0001 C CNN
F 3 "" H 1200 7500 50  0001 C CNN
	1    1200 7550
	1    0    0    -1  
$EndComp
Connection ~ 1250 7250
Connection ~ 1250 7550
Wire Wire Line
	1250 7250 1475 7250
Wire Wire Line
	1250 7550 1475 7550
$Comp
L Device:C C23
U 1 1 5D3F612D
P 1475 7400
F 0 "C23" H 1425 7625 50  0000 L CNN
F 1 "1µF" H 1525 7300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1513 7250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 1475 7400 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 1µF 100V " H 1475 7400 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 1475 7400 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1475 7400 50  0001 C CNN "RoHS"
F 7 "C28233" H 1475 7400 50  0001 C CNN "LCSC Part #"
	1    1475 7400
	1    0    0    -1  
$EndComp
Connection ~ 1475 7250
Wire Wire Line
	1475 7250 1700 7250
Connection ~ 1475 7550
Wire Wire Line
	1475 7550 1700 7550
$Comp
L Device:C C24
U 1 1 5D3F613B
P 1700 7400
F 0 "C24" H 1625 7625 50  0000 L CNN
F 1 "1µF" H 1750 7300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1738 7250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21B104KCFNNNE_C28233.pdf~" H 1700 7400 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 1µF 100V " H 1700 7400 50  0001 C CNN "Description"
F 5 "-􏰂55°C 􏰃~ +􏰁125°C" H 1700 7400 50  0001 C CNN "Operating Temperature"
F 6 "Yes" H 1700 7400 50  0001 C CNN "RoHS"
F 7 "C28233" H 1700 7400 50  0001 C CNN "LCSC Part #"
	1    1700 7400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
