EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Optopod"
Date "2021-03-25"
Rev "1.0"
Comp "E. Beroset"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R_Small_US R1
U 1 1 603AE044
P 3300 1300
F 0 "R1" H 3368 1346 50  0000 L CNN
F 1 "2.2K" H 3368 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3300 1300 50  0001 C CNN
F 3 "~" H 3300 1300 50  0001 C CNN
F 4 "R" H 3300 1300 50  0001 C CNN "Spice_Primitive"
F 5 "22K" H 3300 1300 50  0001 C CNN "Spice_Model"
F 6 "N" H 3300 1300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3300 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_Photo_NPN_EC Q1
U 1 1 603AFAFC
P 3200 1900
F 0 "Q1" H 3390 1946 50  0000 L CNN
F 1 "APTD3216P3C-P22" H 3390 1855 50  0000 L CNN
F 2 "Optopod:LED_Kingbright_APTD3216" H 3400 2000 50  0001 C CNN
F 3 "https://www.kingbrightusa.com/images/catalog/SPEC/APTD3216P3C-P22.pdf" H 3200 1900 50  0001 C CNN
F 4 "/home/ejb/spice_models/APTD3216P3C-P22.lib" H 3200 1900 50  0001 C CNN "Spice_Lib_File"
F 5 "APTD3216P3C-P22" H 3200 1900 50  0001 C CNN "Spice_Model"
F 6 "Q" H 3200 1900 50  0001 C CNN "Spice_Primitive"
F 7 "N" H 3200 1900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3200 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 603BE0D5
P 3300 2200
F 0 "#PWR05" H 3300 1950 50  0001 C CNN
F 1 "GND" H 3305 2027 50  0000 C CNN
F 2 "" H 3300 2200 50  0001 C CNN
F 3 "" H 3300 2200 50  0001 C CNN
	1    3300 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01
U 1 1 603BFEC7
P 3300 1050
F 0 "#PWR01" H 3300 900 50  0001 C CNN
F 1 "+3V3" H 3315 1223 50  0000 C CNN
F 2 "" H 3300 1050 50  0001 C CNN
F 3 "" H 3300 1050 50  0001 C CNN
	1    3300 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1050 3300 1200
Wire Wire Line
	3300 2100 3300 2200
$Comp
L power:GND #PWR010
U 1 1 603C4FFF
P 1200 3450
F 0 "#PWR010" H 1200 3200 50  0001 C CNN
F 1 "GND" H 1205 3277 50  0000 C CNN
F 2 "" H 1200 3450 50  0001 C CNN
F 3 "" H 1200 3450 50  0001 C CNN
	1    1200 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 603E404A
P 3400 4400
F 0 "R6" H 3468 4446 50  0000 L CNN
F 1 "2.2K" H 3468 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3400 4400 50  0001 C CNN
F 3 "~" H 3400 4400 50  0001 C CNN
F 4 "R" H 3400 4400 50  0001 C CNN "Spice_Primitive"
F 5 "22K" H 3400 4400 50  0001 C CNN "Spice_Model"
F 6 "N" H 3400 4400 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3400 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_Photo_NPN_EC Q5
U 1 1 603E4054
P 3300 5000
F 0 "Q5" H 3490 5046 50  0000 L CNN
F 1 "APTD3216P3C-P22" H 3490 4955 50  0000 L CNN
F 2 "Optopod:LED_Kingbright_APTD3216" H 3500 5100 50  0001 C CNN
F 3 "https://www.kingbrightusa.com/images/catalog/SPEC/APTD3216P3C-P22.pdf" H 3300 5000 50  0001 C CNN
F 4 "/home/ejb/spice_models/APTD3216P3C-P22.lib" H 3300 5000 50  0001 C CNN "Spice_Lib_File"
F 5 "APTD3216P3C-P22" H 3300 5000 50  0001 C CNN "Spice_Model"
F 6 "Q" H 3300 5000 50  0001 C CNN "Spice_Primitive"
F 7 "N" H 3300 5000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3300 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 603E4065
P 3400 5300
F 0 "#PWR016" H 3400 5050 50  0001 C CNN
F 1 "GND" H 3405 5127 50  0000 C CNN
F 2 "" H 3400 5300 50  0001 C CNN
F 3 "" H 3400 5300 50  0001 C CNN
	1    3400 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR011
U 1 1 603E4083
P 3400 4150
F 0 "#PWR011" H 3400 4000 50  0001 C CNN
F 1 "+3V3" H 3415 4323 50  0000 C CNN
F 2 "" H 3400 4150 50  0001 C CNN
F 3 "" H 3400 4150 50  0001 C CNN
	1    3400 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4150 3400 4300
Wire Wire Line
	3400 5200 3400 5300
Wire Wire Line
	1200 3200 1200 3450
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60408702
P 1300 4350
F 0 "#FLG01" H 1300 4425 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 4523 50  0000 C CNN
F 2 "" H 1300 4350 50  0001 C CNN
F 3 "~" H 1300 4350 50  0001 C CNN
	1    1300 4350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6040E656
P 1800 4500
F 0 "#FLG02" H 1800 4575 50  0001 C CNN
F 1 "PWR_FLAG" H 1800 4673 50  0000 C CNN
F 2 "" H 1800 4500 50  0001 C CNN
F 3 "~" H 1800 4500 50  0001 C CNN
	1    1800 4500
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR014
U 1 1 6040F07A
P 1800 4350
F 0 "#PWR014" H 1800 4200 50  0001 C CNN
F 1 "+3V3" H 1815 4523 50  0000 C CNN
F 2 "" H 1800 4350 50  0001 C CNN
F 3 "" H 1800 4350 50  0001 C CNN
	1    1800 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 60413F11
P 1300 4500
F 0 "#PWR015" H 1300 4250 50  0001 C CNN
F 1 "GND" H 1305 4327 50  0000 C CNN
F 2 "" H 1300 4500 50  0001 C CNN
F 3 "" H 1300 4500 50  0001 C CNN
	1    1300 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4500 1300 4350
Wire Wire Line
	1800 4500 1800 4350
Wire Wire Line
	1400 3200 1200 3200
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 603C3473
P 1600 3100
F 0 "J1" H 1650 3417 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 1650 3326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Horizontal" H 1600 3100 50  0001 C CNN
F 3 "~" H 1600 3100 50  0001 C CNN
F 4 "V" H 1600 3100 50  0001 C CNN "Spice_Primitive"
F 5 "dc 3.3" H 1600 3100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1600 3100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "6,5" H 1600 3100 50  0001 C CNN "Spice_Node_Sequence"
	1    1600 3100
	1    0    0    -1  
$EndComp
Text GLabel 1400 3100 0    50   Input ~ 0
TX2
Text GLabel 1900 3100 2    50   Input ~ 0
RX1
Text GLabel 1900 3000 2    50   Input ~ 0
TX1
$Comp
L pspice:VSOURCE Vin1
U 1 1 60413706
P 8550 1650
F 0 "Vin1" H 8778 1696 50  0000 L CNN
F 1 "pulse(0 3.3 0.1u 0.1u 0.1u 1u 2u)" H 8778 1605 50  0000 L CNN
F 2 "" H 8550 1650 50  0001 C CNN
F 3 "~" H 8550 1650 50  0001 C CNN
	1    8550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60413B86
P 8550 1950
F 0 "#PWR04" H 8550 1700 50  0001 C CNN
F 1 "GND" H 8555 1777 50  0000 C CNN
F 2 "" H 8550 1950 50  0001 C CNN
F 3 "" H 8550 1950 50  0001 C CNN
	1    8550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1350 8550 1100
Text Notes 9150 2000 0    50   ~ 0
.tran 1n 4u
Wire Notes Line
	7350 700  10400 700 
Wire Notes Line
	10400 700  10400 2650
Wire Notes Line
	10400 2650 7350 2650
Wire Notes Line
	7350 2650 7350 700 
Text Notes 8300 800  0    50   ~ 0
SPICE simulation only
Text Notes 8050 2600 0    50   ~ 0
Note: only the TX1 circuit is simulated in ngspice.
Wire Wire Line
	3300 1400 3300 1600
Wire Wire Line
	3400 4500 3400 4650
Text GLabel 1400 3000 0    50   Input ~ 0
RX2
Text GLabel 3800 1600 2    50   Output ~ 0
RX1
Text GLabel 3800 4650 2    50   Output ~ 0
RX2
Wire Wire Line
	3800 1600 3300 1600
Connection ~ 3300 1600
Wire Wire Line
	3300 1600 3300 1700
Wire Wire Line
	4850 2400 5100 2400
Wire Wire Line
	3800 4650 3400 4650
Connection ~ 3400 4650
Wire Wire Line
	3400 4650 3400 4800
$Comp
L Transistor_BJT:BC817 Q3
U 1 1 605DB7EE
P 5700 2400
F 0 "Q3" H 5891 2446 50  0000 L CNN
F 1 "BC817" H 5891 2355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5900 2325 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC817_SER.pdf" H 5700 2400 50  0001 L CNN
F 4 "X" H 5700 2400 50  0001 C CNN "Spice_Primitive"
F 5 "BC817-40" H 5700 2400 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5700 2400 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/ejb/spice_models/BC817-40.lib" H 5700 2400 50  0001 C CNN "Spice_Lib_File"
F 8 "3,1,2" H 5700 2400 50  0001 C CNN "Spice_Node_Sequence"
	1    5700 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 605DC8D0
P 5200 2400
F 0 "R3" V 4995 2400 50  0000 C CNN
F 1 "5.1k" V 5086 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5200 2400 50  0001 C CNN
F 3 "~" H 5200 2400 50  0001 C CNN
	1    5200 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 605DCEF7
P 5800 1700
F 0 "R2" H 5868 1746 50  0000 L CNN
F 1 "330" H 5868 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5800 1700 50  0001 C CNN
F 3 "~" H 5800 1700 50  0001 C CNN
	1    5800 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 605DD4D7
P 5800 2800
F 0 "#PWR08" H 5800 2550 50  0001 C CNN
F 1 "GND" H 5805 2627 50  0000 C CNN
F 2 "" H 5800 2800 50  0001 C CNN
F 3 "" H 5800 2800 50  0001 C CNN
	1    5800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2800 5800 2600
Wire Wire Line
	5500 2400 5400 2400
$Comp
L power:+3V3 #PWR02
U 1 1 605E5132
P 5800 1300
F 0 "#PWR02" H 5800 1150 50  0001 C CNN
F 1 "+3V3" H 5815 1473 50  0000 C CNN
F 2 "" H 5800 1300 50  0001 C CNN
F 3 "" H 5800 1300 50  0001 C CNN
	1    5800 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1300 5800 1600
$Comp
L Device:R_Small_US R5
U 1 1 605E6400
P 5400 2650
F 0 "R5" H 5468 2696 50  0000 L CNN
F 1 "1.5k" H 5468 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5400 2650 50  0001 C CNN
F 3 "~" H 5400 2650 50  0001 C CNN
	1    5400 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 605E6914
P 5400 2800
F 0 "#PWR07" H 5400 2550 50  0001 C CNN
F 1 "GND" H 5405 2627 50  0000 C CNN
F 2 "" H 5400 2800 50  0001 C CNN
F 3 "" H 5400 2800 50  0001 C CNN
	1    5400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2800 5400 2750
Wire Wire Line
	5400 2550 5400 2400
Connection ~ 5400 2400
Wire Wire Line
	5400 2400 5300 2400
$Comp
L Transistor_BJT:BC817 Q4
U 1 1 6063BC60
P 6800 4850
F 0 "Q4" H 6991 4896 50  0000 L CNN
F 1 "BC817" H 6991 4805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7000 4775 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC817_SER.pdf" H 6800 4850 50  0001 L CNN
F 4 "X" H 6800 4850 50  0001 C CNN "Spice_Primitive"
F 5 "BC817-40" H 6800 4850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6800 4850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/ejb/spice_models/BC817-40.lib" H 6800 4850 50  0001 C CNN "Spice_Lib_File"
F 8 "3,1,2" H 6800 4850 50  0001 C CNN "Spice_Node_Sequence"
	1    6800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5550 6900 5700
Wire Wire Line
	6900 6000 6900 6150
$Comp
L power:+3V3 #PWR013
U 1 1 6063BECC
P 6900 4150
F 0 "#PWR013" H 6900 4000 50  0001 C CNN
F 1 "+3V3" H 6915 4323 50  0000 C CNN
F 2 "" H 6900 4150 50  0001 C CNN
F 3 "" H 6900 4150 50  0001 C CNN
	1    6900 4150
	1    0    0    -1  
$EndComp
Text GLabel 5300 5250 0    50   Input ~ 0
TX2
Wire Wire Line
	5300 5250 5550 5250
$Comp
L Device:R_Small_US R9
U 1 1 6063BED8
P 6900 5450
F 0 "R9" H 6968 5496 50  0000 L CNN
F 1 "91" H 6968 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6900 5450 50  0001 C CNN
F 3 "~" H 6900 5450 50  0001 C CNN
	1    6900 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 6063BEE7
P 6900 5850
F 0 "D2" V 6939 5732 50  0000 R CNN
F 1 "APTD3216F3C-P22" V 6848 5732 50  0000 R CNN
F 2 "Optopod:LED_Kingbright_APTD3216" H 6900 5850 50  0001 C CNN
F 3 "https://www.kingbrightusa.com/images/catalog/SPEC/APTD3216F3C-P22.pdf" H 6900 5850 50  0001 C CNN
F 4 "D" H 6900 5850 50  0001 C CNN "Spice_Primitive"
F 5 "APTD3216SF4C-P22" H 6900 5850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6900 5850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/ejb/spice_models/APTD3216SF4C-P22.lib" H 6900 5850 50  0001 C CNN "Spice_Lib_File"
F 8 "2,1" H 6900 5850 50  0001 C CNN "Spice_Node_Sequence"
	1    6900 5850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 6063BEF1
P 6900 6150
F 0 "#PWR019" H 6900 5900 50  0001 C CNN
F 1 "GND" H 6905 5977 50  0000 C CNN
F 2 "" H 6900 6150 50  0001 C CNN
F 3 "" H 6900 6150 50  0001 C CNN
	1    6900 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5050 6900 5350
$Comp
L Transistor_BJT:BC817 Q6
U 1 1 6063BF01
P 6150 5250
F 0 "Q6" H 6341 5296 50  0000 L CNN
F 1 "BC817" H 6341 5205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6350 5175 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC817_SER.pdf" H 6150 5250 50  0001 L CNN
F 4 "X" H 6150 5250 50  0001 C CNN "Spice_Primitive"
F 5 "BC817-40" H 6150 5250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6150 5250 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/ejb/spice_models/BC817-40.lib" H 6150 5250 50  0001 C CNN "Spice_Lib_File"
F 8 "3,1,2" H 6150 5250 50  0001 C CNN "Spice_Node_Sequence"
	1    6150 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 6063BF0B
P 5650 5250
F 0 "R8" V 5445 5250 50  0000 C CNN
F 1 "5.1k" V 5536 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5650 5250 50  0001 C CNN
F 3 "~" H 5650 5250 50  0001 C CNN
	1    5650 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 6063BF15
P 6250 4550
F 0 "R7" H 6318 4596 50  0000 L CNN
F 1 "330" H 6318 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6250 4550 50  0001 C CNN
F 3 "~" H 6250 4550 50  0001 C CNN
	1    6250 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 6063BF1F
P 6250 5650
F 0 "#PWR018" H 6250 5400 50  0001 C CNN
F 1 "GND" H 6255 5477 50  0000 C CNN
F 2 "" H 6250 5650 50  0001 C CNN
F 3 "" H 6250 5650 50  0001 C CNN
	1    6250 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5650 6250 5450
Wire Wire Line
	6250 5050 6250 4850
Connection ~ 6250 4850
Wire Wire Line
	6250 4850 6250 4650
Wire Wire Line
	5950 5250 5850 5250
$Comp
L power:+3V3 #PWR012
U 1 1 6063BF2E
P 6250 4150
F 0 "#PWR012" H 6250 4000 50  0001 C CNN
F 1 "+3V3" H 6265 4323 50  0000 C CNN
F 2 "" H 6250 4150 50  0001 C CNN
F 3 "" H 6250 4150 50  0001 C CNN
	1    6250 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4150 6250 4450
$Comp
L Device:R_Small_US R10
U 1 1 6063BF39
P 5850 5500
F 0 "R10" H 5918 5546 50  0000 L CNN
F 1 "1.5k" H 5918 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5850 5500 50  0001 C CNN
F 3 "~" H 5850 5500 50  0001 C CNN
	1    5850 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6063BF43
P 5850 5650
F 0 "#PWR017" H 5850 5400 50  0001 C CNN
F 1 "GND" H 5855 5477 50  0000 C CNN
F 2 "" H 5850 5650 50  0001 C CNN
F 3 "" H 5850 5650 50  0001 C CNN
	1    5850 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5650 5850 5600
Wire Wire Line
	5850 5400 5850 5250
Connection ~ 5850 5250
Wire Wire Line
	5850 5250 5750 5250
Wire Wire Line
	6900 4150 6900 4650
Wire Wire Line
	6250 4850 6600 4850
Wire Wire Line
	2350 3200 2350 2900
$Comp
L power:+3V3 #PWR06
U 1 1 603C4A82
P 2350 2900
F 0 "#PWR06" H 2350 2750 50  0001 C CNN
F 1 "+3V3" H 2365 3073 50  0000 C CNN
F 2 "" H 2350 2900 50  0001 C CNN
F 3 "" H 2350 2900 50  0001 C CNN
	1    2350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3200 2350 3200
Wire Wire Line
	5800 2000 5800 1800
Wire Wire Line
	5800 2200 5800 2000
Connection ~ 5800 2000
Wire Wire Line
	5800 2000 6150 2000
Wire Wire Line
	6450 1300 6450 1800
Wire Wire Line
	6450 2200 6450 2500
$Comp
L power:GND #PWR09
U 1 1 603BF65D
P 6450 3300
F 0 "#PWR09" H 6450 3050 50  0001 C CNN
F 1 "GND" H 6455 3127 50  0000 C CNN
F 2 "" H 6450 3300 50  0001 C CNN
F 3 "" H 6450 3300 50  0001 C CNN
	1    6450 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 603AD435
P 6450 3000
F 0 "D1" V 6489 2882 50  0000 R CNN
F 1 "APTD3216F3C-P22" V 6398 2882 50  0000 R CNN
F 2 "Optopod:LED_Kingbright_APTD3216" H 6450 3000 50  0001 C CNN
F 3 "https://www.kingbrightusa.com/images/catalog/SPEC/APTD3216F3C-P22.pdf" H 6450 3000 50  0001 C CNN
F 4 "D" H 6450 3000 50  0001 C CNN "Spice_Primitive"
F 5 "APTD3216SF4C-P22" H 6450 3000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6450 3000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/ejb/spice_models/APTD3216SF4C-P22.lib" H 6450 3000 50  0001 C CNN "Spice_Lib_File"
F 8 "2,1" H 6450 3000 50  0001 C CNN "Spice_Node_Sequence"
	1    6450 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 603AC095
P 6450 2600
F 0 "R4" H 6518 2646 50  0000 L CNN
F 1 "91" H 6518 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6450 2600 50  0001 C CNN
F 3 "~" H 6450 2600 50  0001 C CNN
	1    6450 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR03
U 1 1 603BF9A7
P 6450 1300
F 0 "#PWR03" H 6450 1150 50  0001 C CNN
F 1 "+3V3" H 6465 1473 50  0000 C CNN
F 2 "" H 6450 1300 50  0001 C CNN
F 3 "" H 6450 1300 50  0001 C CNN
	1    6450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3150 6450 3300
Wire Wire Line
	6450 2700 6450 2850
$Comp
L Transistor_BJT:BC817 Q2
U 1 1 603A974A
P 6350 2000
F 0 "Q2" H 6541 2046 50  0000 L CNN
F 1 "BC817" H 6541 1955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6550 1925 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC817_SER.pdf" H 6350 2000 50  0001 L CNN
F 4 "X" H 6350 2000 50  0001 C CNN "Spice_Primitive"
F 5 "BC817-40" H 6350 2000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6350 2000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/ejb/spice_models/BC817-40.lib" H 6350 2000 50  0001 C CNN "Spice_Lib_File"
F 8 "3,1,2" H 6350 2000 50  0001 C CNN "Spice_Node_Sequence"
	1    6350 2000
	1    0    0    -1  
$EndComp
Text GLabel 8550 1100 1    50   Input ~ 0
TX1
Text GLabel 4850 2400 0    50   Input ~ 0
TX1
$EndSCHEMATC
