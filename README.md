# Kiel_50 - Programmable ESC for the BLDC and PMSM Motors
Kiel 50 is the Arduino UNO shield for driving sensor-less three-phase BLDC motor. The main advantage is the sinusoidal current drive. By monitoring the back-EMF (BEMF) the motor can run without the independent rotor position sensor aka hall sensor or encoder. The chip is able to sense the BEMF from very low rpm up to high rpm. The speed can be set and adjusted using PWM or SPI. The Kiel 50 shield comes with the main chip A4964 from "Allegro MicroSystems". This chip is All-in-one: the motor controller, N-Channel MOSFET driver, voltage regulator, MCU watchdog. The ability to program this chip via SPI using Arduino makes it easy to use for many projects. After the configurations were uploaded to the controller and saved to the NVM it can run without Arduino as well.

![Board_1](/pictures/Kiel_50_H1.jpg)
![Board_3](/pictures/Kiel_50_Hbottom.jpg)

Measurement of the three-phase (Voltage Ch.1,2,3)

![Measurement1](oscillograms/1.PNG)

Measurment of the three-phase (Voltage Ch.1,2,3 + Current Ch.4 (GN))
![Measurement2](oscillograms/3.PNG)

# How to start
---
### Hardware for the first start
- Kiel_50 board
- Three phase BLDC motor
- Arduino UNO
- Power supply 5.5V - 50V with at least 1A (for small motors)
- Main PC for programming

### Software for the first start
- Arduino IDE
- The Software for the Arduino UNO 
---
First git clone the repository and 

Let‘s start: After git clone the Project navigate to the main directory with source code. Open it with Arduino IDE and compile. If you get no errors, plug the Kiel 50 board.

First turn: The Arduino UNO is connected to the Kiel 50. NO motor is connected to the Kiel 50 board. The Arduino UNO have ($test) sketch loaded.

# Aplication design
Aplication example: Free rotating motors, pump, fan.

# Feachures
|Driving modes

Speed control: via SPI or PWM

Hardware design features: 
   1. Min component size 0802 SMD for easy hand soldering.
   2. Radiator for the heat dissipation from the IC.

# Technical specification
|Characteristic|Symbol|Note|Raiting|Unit|
| --- | --- | --- | --- | --- |
|Supply voltage|Vsup| |5.5 - 50|V|
|Logic voltage|VLR|REG 25 - VLR|3.3 - 5|V|
|Maximal current|Imax|Fused: F2|10|A|
|Maximal logic current|Ilog|Fused: F1|290|mA|
|Gate drive regulator voltage|REG 25 - VRG|8 or 11|V|
|Bridge PWM frequency|ƒpw|REG 0 - PW|14.2 - 50|Khz|
|SPI frequency|ƒspi||2|Mhz|




Safety features: 0) Undervoltage lockout
				 1) Peak current limiting
				 2) Ignition switch
				 3) MCU watchdog and reset
				 4) MOSFET test
			 	 5) Diagnostics, status, current, and speed feedback

Programmable driving modes: 1) Closed-loop speed
							2) Closed-loop current
							3) Open-loop speed

# Keywords:
-ESC - electric speed controller
-BLDC - Brushless DC electric motor
-PMSM - Permanent magnet synchronous motor
-DC - Direct current
-IDE - Integrated Development Environment

## Notes: