# Kiel_50
Arduino UNO shield for sensorless three-phase BLDC motors. The "Kiel 50" shield comes with the main chip A4964 from "Allegro microsystems". This chip is All-in-one: the motor controller, N-Channel MOSFET driver, Voltage regulator, MCU watchdog. The abbility to programm this chip via SPI using Arduino makes it easy to use it for many projects. After configuration was uploaded to the controller and saved to the NVM it can run without Arduino as well.  

![Board_1](/pictures/Kiel_50_H1.jpg)
![Board_2](/pictures/Kiel_50_H2.jpg)
![Board_3](/pictures/Kiel_50_Hbottom.jpg)

Communications: SPI 

Speed control: via SPI or PWM

Safety features: 1) Peak current limiting
				 2) Ignition switch interface
				 3) MCU watchdog and reset
			 	 4) Diagnostics, status, current, and speed feedback

Programmable control modes: 1) Closed-loop speed
							2) Closed-loop current
							3) Open-loop speed

