/*
 * Author: Mark Gajevskis
 * Date: 9 March 2019
 * Board: Arduino UNO
 * Chip: A4964
 * Communication protocol: 4-wire HW SPI
 * Logic voltage: 5V
 * Logic voltage shiftig: NO
 * USART baudrate: 9600
 * 
 * 
 * Input: register 29 "Readback Select"
 * 
 * This code write the "Register Select" in 
 * order to set the register 31 in Read Only 
 * mode. The data is send to the host pc via UART.
 * 
 * 
 */

#include <SPI.h>


// Definition of the 29:Readback Select registers as a complete write command. 
#define REG_RBS_AMP ((uint16_t) 0b1110110000000101)   // RBS[2:0] [ 010 ] Avr. supply current
#define REG_RBS_VOLT ((uint16_t)0b1110110000000110) // RBS[2:0] [ 011 ] Supply Voltage
#define REG_RBS_TEMP ((uint16_t) 0b1110110000001001)  // RBS[2:0] [ 100 ] Chip temperatute 
#define REG_RBS_APADV ((uint16_t) 0b1110110000001110)  // RBS[2:0] [ 111 ] Applied phase advance
#define REG_RBS_MSPEED ((uint16_t) 0b1110110000000011)  // RSB[2:0] [ 001 ] Motor speed
// Definition of the 25: System register, the OPM 1 for the 'Stand-alone with SPI'
#define REG_OPM_1 ((uint16_t) 0b1100111111000001)  // REG_25_SYS_OPM
// Definition of the 31: Read Only regiter 
#define REG_RD_ONLY ((uint16_t) 0b1111100000000000) // First 15-11 bits are adress 10-0 value in bin
#define REG_RBS0_DIAG ((uint16_t) 0b1110110000000001)  //Definitioin of the Redback Select REG for DIAG output 
// Definition of the SPI HW
#define PIN_CS 10
#define SPI_SPEED 20000

// ------------VARIABLES------------
// rdng stays for "reading value"

uint16_t rdng_amp;
uint16_t rdng_volt;
uint16_t rdng_temp;
uint16_t rdng_apadv;
uint16_t rdng_mspeed;
uint16_t rdng_diag;

// ____________VARIABLES END____________

void voltage(){
// This function prints out voltage value (VDD) in serial
  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  SPI.transfer16(REG_RBS_VOLT);  // Write the RBS in voltage rading mode
  digitalWrite(PIN_CS, HIGH);

  delay(2);

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  rdng_volt = SPI.transfer16(REG_RD_ONLY);  // Read the register 31
  digitalWrite(PIN_CS, HIGH);
  
  Serial.println(" ");
  Serial.print("Voltage: ");
  Serial.println(((rdng_volt & 0b11111111110)>>1)*0.0528, 2);  // Refer to A4964 manual page 77
}

void temperature(){
// This function prints out temperature value in serial
  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  SPI.transfer16(REG_RBS_TEMP);  // Write the RBS in temperature rading mode
  digitalWrite(PIN_CS, HIGH);

  delay(2);

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  rdng_temp = SPI.transfer16(REG_RD_ONLY);  // Read the register 31
  digitalWrite(PIN_CS, HIGH);
  
  Serial.println(" ");
  Serial.print("Temperature: ");
  Serial.println((367.7 - ((rdng_temp & 0b11111111110)>>1)*0.451), 2);  // Refer to A4964 manual page 77
}

void applied_phase_advance(){
// This function prints out temperature value in serial
  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  SPI.transfer16(REG_RBS_APADV);  // Write the RBS in temperature rading mode
  digitalWrite(PIN_CS, HIGH);

  delay(2);

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  rdng_apadv = SPI.transfer16(REG_RD_ONLY);  // Read the register 31
  digitalWrite(PIN_CS, HIGH);
  
  Serial.println(" ");
  Serial.print("Applied phase advance: ");
  Serial.println(((rdng_apadv& 0b11111111110)>>1)/1023);  // Refer to A4964 manual page 77
}

void motor_speed(){
// This function prints out motor speed value in serial
  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  SPI.transfer16(REG_RBS_MSPEED);  // Write the RBS in temperature rading mode
  digitalWrite(PIN_CS, HIGH);

  delay(2);

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  rdng_mspeed = SPI.transfer16(REG_RD_ONLY);  // Read the register 31
  digitalWrite(PIN_CS, HIGH);
  
  Serial.println(" ");
  Serial.print("Motor speed: ");
  Serial.println((rdng_mspeed& 0b11111111110)>>1);  // Refer to A4964 manual page 77
}

void diagnostics(){
// This function prints out the diag output in serial
  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  SPI.transfer16(REG_RBS0_DIAG);  // Write the RBS in temperature rading mode
  digitalWrite(PIN_CS, HIGH);

  delay(2);

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  rdng_diag = SPI.transfer16(REG_RD_ONLY);  // Read the register 31
  digitalWrite(PIN_CS, HIGH);
  
  Serial.println(" ");
  Serial.print("DIAG_OUTPUT: ");
  Serial.println(rdng_diag, BIN); 
}

void set_OPM_1(){

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3));
  digitalWrite(PIN_CS, LOW);
  SPI.transfer16(REG_OPM_1);
  digitalWrite(PIN_CS, HIGH);
}

void setup() {

  Serial.begin(9600);
  SPI.begin();
  pinMode(PIN_CS, OUTPUT);
}

void loop() { 
  set_OPM_1();
  voltage();
  motor_speed();
  temperature();
  applied_phase_advance();
  diagnostics();
  Serial.println("///////////////////////////////////////////");
}
