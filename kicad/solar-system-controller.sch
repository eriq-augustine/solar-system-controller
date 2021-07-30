EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 19685 19701
encoding utf-8
Sheet 1 1
Title "Solar System Controller"
Date "2021-07-21"
Rev "03.00.00"
Comp "Playhouse Profits"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Eriq Augustine"
$EndDescr
$Comp
L Device:R_Shunt R1
U 1 1 60F85425
P 15800 3400
F 0 "R1" V 15850 3600 50  0000 C CNN
F 1 "0.0003" V 15950 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 15730 3400 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-hcs.pdf" H 15800 3400 50  0001 C CNN
F 4 "https://www.digikey.com/en/products/detail/stackpole-electronics-inc/HCS1206FTL300/5574625" V 15800 3400 50  0001 C CNN "Part"
	1    15800 3400
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 60F86335
P 15800 3200
F 0 "F1" V 15603 3200 50  0000 C CNN
F 1 "5" V 15694 3200 50  0000 C CNN
F 2 "custom-footprints:fuse-holder-3557-2" V 15730 3200 50  0001 C CNN
F 3 "~" H 15800 3200 50  0001 C CNN
	1    15800 3200
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 60F87626
P 16850 3250
F 0 "J2" H 16930 3242 50  0000 L CNN
F 1 "Line_In" H 16930 3151 50  0000 L CNN
F 2 "digikey-footprints:Term_Block_1x2_P5.08MM" H 16850 3250 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/691137710002.pdf" H 16850 3250 50  0001 C CNN
F 4 "https://www.digikey.com/en/products/detail/w%C3%BCrth-elektronik/691137710002/6644051" H 16850 3250 50  0001 C CNN "Part"
	1    16850 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	16100 3200 16100 3250
Wire Wire Line
	15950 3200 16100 3200
Wire Wire Line
	16100 3350 16100 3400
Wire Wire Line
	16100 3400 16000 3400
$Comp
L Connector:Raspberry_Pi_2_3 J1
U 1 1 60F8BE55
P 3100 3050
F 0 "J1" H 2400 4550 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 2400 4450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical_SMD" H 3100 3050 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 3100 3050 50  0001 C CNN
	1    3100 3050
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Current:INA181 U2
U 1 1 60F94277
P 5800 5200
F 0 "U2" H 5950 5350 50  0000 L CNN
F 1 "500 Gain" H 5950 5050 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-" H 5850 5250 50  0001 C CNN
F 3 "https://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=https%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fina210" H 5950 5350 50  0001 C CNN
F 4 "https://www.digikey.com/en/products/detail/texas-instruments/INA212BIDCKT/3675148" H 5800 5200 50  0001 C CNN "Part"
F 5 "INA211BIDCKT" H 5800 5200 50  0001 C CNN "Number"
	1    5800 5200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Current:INA181 U3
U 1 1 60FA462E
P 15800 3950
F 0 "U3" H 15950 4100 50  0000 L CNN
F 1 "1000 Gain" H 15950 3800 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-" H 15850 4000 50  0001 C CNN
F 3 "https://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=https%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fina210" H 15950 4100 50  0001 C CNN
F 4 "https://www.digikey.com/en/products/detail/texas-instruments/INA212BIDCKT/3675148" H 15800 3950 50  0001 C CNN "Part"
F 5 "INA212BIDCKT" H 15800 3950 50  0001 C CNN "Number"
	1    15800 3950
	0    1    1    0   
$EndComp
$Comp
L Analog_ADC:MCP3008 U1
U 1 1 60FAEDE1
P 4300 5800
F 0 "U1" H 4300 6481 50  0000 C CNN
F 1 "MCP3008" H 4300 6390 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4400 5900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21295d.pdf" H 4400 5900 50  0001 C CNN
F 4 "https://www.digikey.com/en/products/detail/microchip-technology/MCP3008-I-P/319422" H 4300 5800 50  0001 C CNN "Part"
	1    4300 5800
	1    0    0    -1  
$EndComp
Text GLabel 2700 4350 3    50   Input ~ 0
BUS_NEG
Text GLabel 2900 1750 1    50   Input ~ 0
BUS_PI_5V
Text GLabel 3200 1750 1    50   Input ~ 0
PI_3V3
Text GLabel 15500 3850 0    50   Input ~ 0
PI_GND
Text GLabel 16100 3850 2    50   Input ~ 0
PI_5V
Wire Wire Line
	15500 3850 15500 4050
$Comp
L Analog_ADC:MCP3008 U?
U 1 1 60FB68B4
P 12550 11700
F 0 "U?" H 12150 12300 50  0000 C CNN
F 1 "SHUNT_ADC" H 12150 12200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 12650 11800 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21295d.pdf" H 12650 11800 50  0001 C CNN
F 4 "https://www.digikey.com/en/products/detail/microchip-technology/MCP3008-I-P/319422" H 12550 11700 50  0001 C CNN "Part"
	1    12550 11700
	1    0    0    -1  
$EndComp
Text GLabel 12450 12300 3    50   Input ~ 0
PI_GND
Wire Wire Line
	12450 12300 12750 12300
Text GLabel 12450 11200 1    50   Input ~ 0
PI_3V3
Wire Wire Line
	12450 11200 12750 11200
Text GLabel 11950 11400 0    50   Input ~ 0
SHUNT_ADC_CH0
Text GLabel 11950 11500 0    50   Input ~ 0
SHUNT_ADC_CH1
Text GLabel 11950 11600 0    50   Input ~ 0
SHUNT_ADC_CH2
Text GLabel 11950 11700 0    50   Input ~ 0
SHUNT_ADC_CH3
Text GLabel 11950 11800 0    50   Input ~ 0
SHUNT_ADC_CH4
Text GLabel 11950 11900 0    50   Input ~ 0
SHUNT_ADC_CH5
Text GLabel 11950 12000 0    50   Input ~ 0
SHUNT_ADC_CH6
Text GLabel 15800 4250 3    50   Input ~ 0
SHUNT_ADC_CH0
Wire Wire Line
	15900 3550 15900 3650
Wire Wire Line
	15700 3550 15700 3650
Text GLabel 14450 3400 0    50   Input ~ 0
BUS+
Wire Wire Line
	15600 3400 14450 3400
Text GLabel 3000 1750 1    50   Input ~ 0
PI_5V
Text GLabel 3300 1750 1    50   Input ~ 0
PI_3V3
Text GLabel 2800 4350 3    50   Input ~ 0
PI_GND
Text GLabel 2900 4350 3    50   Input ~ 0
PI_GND
Text GLabel 3000 4350 3    50   Input ~ 0
PI_GND
Text GLabel 3100 4350 3    50   Input ~ 0
PI_GND
Text GLabel 3200 4350 3    50   Input ~ 0
PI_GND
Text GLabel 3300 4350 3    50   Input ~ 0
PI_GND
Text GLabel 3400 4350 3    50   Input ~ 0
PI_GND
$Comp
L dk_Transistors-Bipolar-BJT-Single:KSC1815YTA Q?
U 1 1 60FCED7F
P 15400 1700
F 0 "Q?" H 15588 1647 60  0000 L CNN
F 1 "NPN" H 15588 1753 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3_Formed_Leads" H 15600 1900 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/KSC1815-D.pdf" H 15600 2000 60  0001 L CNN
F 4 "KSC1815YTACT-ND" H 15600 2100 60  0001 L CNN "Digi-Key_PN"
F 5 "KSC1815YTA" H 15600 2200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 15600 2300 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 15600 2400 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/KSC1815-D.pdf" H 15600 2500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/KSC1815YTA/KSC1815YTACT-ND/3908203" H 15600 2600 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 50V 0.15A TO-92" H 15600 2700 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 15600 2800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 15600 2900 60  0001 L CNN "Status"
F 13 "https://www.digikey.com/en/products/detail/on-semiconductor/KSC1815YTA/3908203" H 15400 1700 50  0001 C CNN "Part"
	1    15400 1700
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60FD18E2
P 14900 1700
F 0 "R?" V 14693 1700 50  0000 C CNN
F 1 "190" V 14784 1700 50  0000 C CNN
F 2 "" V 14830 1700 50  0001 C CNN
F 3 "~" H 14900 1700 50  0001 C CNN
	1    14900 1700
	0    1    1    0   
$EndComp
$Comp
L Isolator:LTV-817 U?
U 1 1 60FD3FD8
P 14300 1800
F 0 "U?" H 14300 1483 50  0000 C CNN
F 1 "OPTO" H 14300 1574 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 14100 1600 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 14300 1700 50  0001 L CNN
F 4 "https://www.digikey.com/en/products/detail/lite-on-inc/LTV-817/385836" H 14300 1800 50  0001 C CNN "Part"
	1    14300 1800
	1    0    0    1   
$EndComp
$Comp
L Device:D D?
U 1 1 60FD526F
P 15050 2400
F 0 "D?" H 15050 2183 50  0000 C CNN
F 1 "IN4007" H 15050 2274 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 15050 2400 50  0001 C CNN
F 3 "https://www.mccsemi.com/pdf/Products/1N4001~1N4007(DO-41).pdf" H 15050 2400 50  0001 C CNN
F 4 "https://www.digikey.com/en/products/detail/micro-commercial-co/1N4007-TP/773644" H 15050 2400 50  0001 C CNN "Part"
	1    15050 2400
	1    0    0    1   
$EndComp
Text GLabel 14300 2700 0    50   Input ~ 0
RAIL_5V
Text GLabel 15500 1350 1    50   Input ~ 0
RAIL_GND
$Comp
L Device:R R?
U 1 1 60FE2F32
P 13750 1700
F 0 "R?" V 13550 1750 50  0000 R CNN
F 1 "105" V 13650 1800 50  0000 R CNN
F 2 "" V 13680 1700 50  0001 C CNN
F 3 "~" H 13750 1700 50  0001 C CNN
	1    13750 1700
	0    1    1    0   
$EndComp
Text GLabel 14000 2100 3    50   Input ~ 0
PI_GND
$Comp
L Relay:SANYOU_SRD_Form_C K?
U 1 1 60FD58C8
P 15050 2900
F 0 "K?" V 15550 2900 50  0000 C CNN
F 1 "RELAY" V 15650 2900 50  0000 C CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 15500 2850 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 15050 2900 50  0001 C CNN
F 4 "70mA @ 5V" V 15050 2900 50  0001 C CNN "Current"
	1    15050 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	14000 1900 14000 2100
Wire Wire Line
	14600 1700 14750 1700
Wire Wire Line
	15050 1700 15200 1700
Wire Wire Line
	15500 1350 15500 1500
Wire Wire Line
	14300 2700 14600 2700
Wire Wire Line
	14600 1900 14600 2400
Connection ~ 14600 2700
Wire Wire Line
	14600 2700 14750 2700
Wire Wire Line
	14900 2400 14600 2400
Connection ~ 14600 2400
Wire Wire Line
	14600 2400 14600 2700
Wire Wire Line
	15500 1900 15500 2400
Wire Wire Line
	15500 2700 15350 2700
Wire Wire Line
	15200 2400 15500 2400
Connection ~ 15500 2400
Wire Wire Line
	15500 2400 15500 2700
Text GLabel 14450 3100 0    50   Input ~ 0
BUS-
Wire Wire Line
	14450 3100 14750 3100
Wire Wire Line
	15350 3200 15650 3200
$Comp
L Switch:SW_SP3T SW?
U 1 1 6103112B
P 13250 1700
F 0 "SW?" H 13250 1983 50  0000 C CNN
F 1 "SP3T" H 13250 1892 50  0000 C CNN
F 2 "custom-footprints:OS103011MS8QP1_SP3T" H 12625 1875 50  0001 C CNN
F 3 "https://www.ckswitches.com/media/1428/os.pdf" H 12625 1875 50  0001 C CNN
F 4 "100mA" H 13250 1700 50  0001 C CNN "Current"
F 5 "https://www.digikey.com/en/products/detail/c-k/OS103011MS8QP1/1981414" H 13250 1700 50  0001 C CNN "Part"
	1    13250 1700
	-1   0    0    -1  
$EndComp
Text GLabel 12900 1600 0    50   Input ~ 0
BUS_SIGNAL_3V3
Text GLabel 7900 1100 2    50   Input ~ 0
BUS_PI_5V
Text GLabel 7900 2100 2    50   Input ~ 0
BUS_UTIL_5V
Text GLabel 12900 1800 0    50   Input ~ 0
PI_LINE1_SWITCH
Text GLabel 5050 2150 0    50   Input ~ 0
PI_LINE1_SWITCH
Wire Wire Line
	12900 1600 13050 1600
Wire Wire Line
	12900 1800 13050 1800
NoConn ~ 13050 1700
Wire Wire Line
	13450 1700 13600 1700
Wire Wire Line
	13900 1700 14000 1700
Text GLabel 16550 3500 3    50   Input ~ 0
DIFF_ADC_PAIR1_HIGH
$Comp
L Analog_ADC:MCP3008 U?
U 1 1 60FDB10D
P 12550 9800
F 0 "U?" H 12200 10400 50  0000 C CNN
F 1 "DIFF_ADC" H 12200 10300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 12650 9900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21295d.pdf" H 12650 9900 50  0001 C CNN
F 4 "https://www.digikey.com/en/products/detail/microchip-technology/MCP3008-I-P/319422" H 12550 9800 50  0001 C CNN "Part"
	1    12550 9800
	1    0    0    -1  
$EndComp
Text GLabel 12450 9300 1    50   Input ~ 0
PI_3V3
Wire Wire Line
	12750 9300 12450 9300
Wire Wire Line
	12750 10400 12450 10400
Text GLabel 12450 10400 3    50   Input ~ 0
PI_GND
Text GLabel 11950 9500 0    50   Input ~ 0
DIFF_ADC_PAIR5_HIGH
Text GLabel 11950 9600 0    50   Input ~ 0
DIFF_ADC_PAIR5_LOW
Text GLabel 11950 9700 0    50   Input ~ 0
DIFF_ADC_PAIR6_HIGH
Text GLabel 11950 9800 0    50   Input ~ 0
DIFF_ADC_PAIR6_LOW
Text GLabel 11950 9900 0    50   Input ~ 0
DIFF_ADC_PAIR7_HIGH
Text GLabel 11950 10000 0    50   Input ~ 0
DIFF_ADC_PAIR7_LOW
Text GLabel 11950 10100 0    50   Input ~ 0
DIFF_ADC_PAIR8_HIGH
Text GLabel 11950 10200 0    50   Input ~ 0
DIFF_ADC_PAIR8_LOW
Text GLabel 16550 3100 1    50   Input ~ 0
DIFF_ADC_PAIR1_LOW
Wire Wire Line
	16100 3350 16550 3350
Wire Wire Line
	16100 3250 16550 3250
Wire Wire Line
	16550 3500 16550 3350
Connection ~ 16550 3350
Wire Wire Line
	16550 3350 16650 3350
Wire Wire Line
	16550 3100 16550 3250
Connection ~ 16550 3250
Wire Wire Line
	16550 3250 16650 3250
$Comp
L Converter_DCDC:OKI-78SR-5_1.5-W36-C U?
U 1 1 6100527D
P 7600 1100
F 0 "U?" H 7600 1342 50  0000 C CNN
F 1 "DC-DC-5V" H 7600 1251 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_muRata_OKI-78SR_Vertical" H 7650 850 50  0001 L CIN
F 3 "https://power.murata.com/data/power/oki-78sr.pdf" H 7600 1100 50  0001 C CNN
F 4 "https://www.digikey.com/en/products/detail/murata-power-solutions-inc/OKI-78SR-5-1-5-W36-C/2259781" H 7600 1100 50  0001 C CNN "Part"
F 5 "1.2" H 7600 1100 50  0001 C CNN "Current"
	1    7600 1100
	1    0    0    -1  
$EndComp
$Comp
L Converter_DCDC:OKI-78SR-5_1.5-W36-C U?
U 1 1 610063BE
P 7600 2100
F 0 "U?" H 7600 2342 50  0000 C CNN
F 1 "DC-DC-5V" H 7600 2251 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_muRata_OKI-78SR_Vertical" H 7650 1850 50  0001 L CIN
F 3 "https://power.murata.com/data/power/oki-78sr.pdf" H 7600 2100 50  0001 C CNN
F 4 "https://www.digikey.com/en/products/detail/murata-power-solutions-inc/OKI-78SR-5-1-5-W36-C/2259781" H 7600 2100 50  0001 C CNN "Part"
F 5 "1.2" H 7600 2100 50  0001 C CNN "Current"
	1    7600 2100
	1    0    0    -1  
$EndComp
Text GLabel 7300 1100 0    50   Input ~ 0
BUS_POS
Text GLabel 7600 1400 3    50   Input ~ 0
BUS_NEG
Text GLabel 7300 2100 0    50   Input ~ 0
BUS_POS
Text GLabel 7600 2400 3    50   Input ~ 0
BUS_NEG
NoConn ~ 15350 3000
Text GLabel 3900 3550 2    50   Input ~ 0
PI_SCLK
Text GLabel 13150 11600 2    50   Input ~ 0
PI_SCLK
Text GLabel 3900 3350 2    50   Input ~ 0
PI_MISO
Text GLabel 13150 11700 2    50   Input ~ 0
SHUNT_ADC_OUT
Text GLabel 3900 3450 2    50   Input ~ 0
PI_MOSI
Text GLabel 13150 11800 2    50   Input ~ 0
PI_MOSI
Text GLabel 3900 3250 2    50   Input ~ 0
PI_CE0
Text GLabel 3900 3150 2    50   Input ~ 0
PI_CE1
Text GLabel 13150 11900 2    50   Input ~ 0
PI_CE0
NoConn ~ 11950 12100
Text GLabel 13150 9700 2    50   Input ~ 0
PI_SCLK
Text GLabel 13150 9800 2    50   Input ~ 0
DIFF_ADC_OUT2
Text GLabel 13150 9900 2    50   Input ~ 0
PI_MOSI
Text GLabel 13150 10000 2    50   Input ~ 0
PI_CE1
Text GLabel 2300 3750 0    50   Input ~ 0
PI_CE3
$Comp
L Analog_ADC:MCP3008 U?
U 1 1 61057BC9
P 12550 7950
F 0 "U?" H 12200 8550 50  0000 C CNN
F 1 "DIFF_ADC" H 12200 8450 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 12650 8050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21295d.pdf" H 12650 8050 50  0001 C CNN
F 4 "https://www.digikey.com/en/products/detail/microchip-technology/MCP3008-I-P/319422" H 12550 7950 50  0001 C CNN "Part"
	1    12550 7950
	1    0    0    -1  
$EndComp
Text GLabel 12450 7450 1    50   Input ~ 0
PI_3V3
Wire Wire Line
	12750 7450 12450 7450
Wire Wire Line
	12750 8550 12450 8550
Text GLabel 12450 8550 3    50   Input ~ 0
PI_GND
Text GLabel 11950 7650 0    50   Input ~ 0
DIFF_ADC_PAIR1_HIGH
Text GLabel 11950 7750 0    50   Input ~ 0
DIFF_ADC_PAIR1_LOW
Text GLabel 11950 7850 0    50   Input ~ 0
DIFF_ADC_PAIR2_HIGH
Text GLabel 11950 7950 0    50   Input ~ 0
DIFF_ADC_PAIR2_LOW
Text GLabel 11950 8050 0    50   Input ~ 0
DIFF_ADC_PAIR3_HIGH
Text GLabel 11950 8150 0    50   Input ~ 0
DIFF_ADC_PAIR3_LOW
Text GLabel 11950 8250 0    50   Input ~ 0
DIFF_ADC_PAIR4_HIGH
Text GLabel 11950 8350 0    50   Input ~ 0
DIFF_ADC_PAIR4_LOW
Text GLabel 13150 7850 2    50   Input ~ 0
PI_SCLK
Text GLabel 13150 7950 2    50   Input ~ 0
DIFF_ADC_OUT1
Text GLabel 13150 8050 2    50   Input ~ 0
PI_MOSI
Text GLabel 13150 8150 2    50   Input ~ 0
PI_CE1
$Comp
L dk_Interface-Analog-Switches-Multiplexers-Demultiplexers:CD74HC4051E U?
U 1 1 61078403
P 8850 9550
F 0 "U?" H 8600 10300 60  0000 C CNN
F 1 "ADC_MUX" H 8600 10150 60  0000 C CNN
F 2 "digikey-footprints:DIP-16_W7.62mm" H 9050 9750 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fcd74hc4051" H 9050 9850 60  0001 L CNN
F 4 "296-12810-5-ND" H 9050 9950 60  0001 L CNN "Digi-Key_PN"
F 5 "CD74HC4051E" H 9050 10050 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 9050 10150 60  0001 L CNN "Category"
F 7 "Interface - Analog Switches, Multiplexers, Demultiplexers" H 9050 10250 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fcd74hc4051" H 9050 10350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/CD74HC4051E/296-12810-5-ND/475938" H 9050 10450 60  0001 L CNN "DK_Detail_Page"
F 10 "IC MUX/DEMUX 8X1 16DIP" H 9050 10550 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 9050 10650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9050 10750 60  0001 L CNN "Status"
F 13 "http://digikey.com/en/products/detail/texas-instruments/CD74HC4051E/475938?s=N4IgTCBcDaIMIBEDsAWAEnFAGArARgFEQBdAXyA" H 8850 9550 50  0001 C CNN "Part"
	1    8850 9550
	1    0    0    -1  
$EndComp
Text GLabel 8950 8850 1    50   Input ~ 0
PI_3V3
Text GLabel 8950 10250 3    50   Input ~ 0
PI_GND
Wire Wire Line
	8950 10250 9050 10250
NoConn ~ 9450 9350
NoConn ~ 8250 9150
NoConn ~ 8250 9250
NoConn ~ 8250 9450
NoConn ~ 8250 9550
Text GLabel 8250 9350 0    50   Input ~ 0
PI_MISO
Text GLabel 9450 9550 2    50   Input ~ 0
DIFF_ADC_OUT1
Text GLabel 9450 9650 2    50   Input ~ 0
DIFF_ADC_OUT2
Text GLabel 9450 9450 2    50   Input ~ 0
SHUNT_ADC_OUT
Text GLabel 8250 9650 0    50   Input ~ 0
PI_GND
Text GLabel 8250 9850 0    50   Input ~ 0
ADC_MUX_S1
Text GLabel 8250 9950 0    50   Input ~ 0
ADC_MUX_S0
Text GLabel 8250 9750 0    50   Input ~ 0
ADC_MUX_S2
Text GLabel 3900 2950 2    50   Input ~ 0
ADC_MUX_S2
Text GLabel 3900 2850 2    50   Input ~ 0
ADC_MUX_S1
Text GLabel 3900 2750 2    50   Input ~ 0
ADC_MUX_S0
$EndSCHEMATC
