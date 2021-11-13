
# Schematic

[Schematic](Schematic.pdf)

# Layout

[Layout](Layout.pdf)

# BOM

| Quantity | Description                      | Value           | Package            |
| -------- | -------------------------------- | --------------- | ------------------ |
| 3        | Capacitor                        | 22μF/6.3V       | 0603 (1608 Metric) |
| 5        | Capacitor                        | 0.1μF/50V       | 0603 (1608 Metric) |
| 1        | Capacitor                        | 4.7μF/6.3V      | 0603 (1608 Metric) |
| 1        | Diode (Schottsky)                | BAT760-7        | SOD-323            |
| 1        | Voltage suppressor               | SP0503BAHT      | SOT-143            |
| 1        | LED                              | LED             | 0603 (1608 Metric) |
| 1        | USB Type-C Receptacle            | 12401548E412A   |                    |
| 1        | 2.8" LCD w/Capacitive Touch      | [2770](www.adafruit.com/product/2770) |  |
| 1        | Flat pack ribbon cable connector | 62684-502100ALF | 50 pin 0.5 mm pitch |
| 2        | NPN Transistor                   | SS8050-G        | SOT-23             |
| 4        | Resistor                         | 68Ω             | 0603 (1608 Metric) |
| 2        | Resistor                         | 2KΩ             | 0603 (1608 Metric) |
| 1        | Resistor                         | 22K1Ω           | 0603 (1608 Metric) |
| 1        | Resistor                         | 47K5Ω           | 0603 (1608 Metric) |
| 4        | Resistor                         | 10KΩ            | 0603 (1608 Metric) |
| 2        | Resistor                         | 5K1Ω            | 0603 (1608 Metric) |
| 2        | Resistor                         | 2K2Ω            | 0603 (1608 Metric) |
| 2        | Tactile pushbutton               |                 |                    |
| 1        | MCU                              | ESP32-WROOM-32E |                    |
| 1        | Voltage Regulator                | AMS1117-3.3     | SOT-223            |
| 1        | Voltage Detector                 | BD48K33G-TLCT-ND| SOT-23-3           |
| 1        | USB-to-UART bridge controller    | CP2102N-A01     | QFN-28             |
| 1        | Slider 1P2T switch               | SK-12D07        |                    |

# TODO for board rev. 3

* Figure out touch panel communication issue.
* Get TX/RX LED's are working.
* Debug with JTAG to make sure it's working.
* Different ESD protection for USB.
