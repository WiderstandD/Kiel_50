// sketch0_apr07a
// Erleuterung in Ccccccccccccc cs 1.6

#include "Arduino.h"
//#include "Motor.h"
#include "SPI.h"
#include "main.h"
#include "motor_settings.h"


uint16_t countSetBits(unsigned int n)
{
  unsigned int count = 0;
  while (n)
  {
    count += n & 1;
    n >>= 1;
  }
  return count;
}

void dialup(uint16_t addr, uint16_t val) {

  foo = (addr | SPI_WRITE | val);
  count = countSetBits(foo);

  if ((count % 2) == 0) {
    foo2 = (foo | PARITY);
    Serial.print("if passed, counter: ");
    Serial.println(count);
    Serial.print("parity result: ");
    Serial.println(foo2, BIN);

    SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3));
    digitalWrite(PIN_CS, LOW);
    SPI.transfer16(foo2);
    digitalWrite(PIN_CS, HIGH);
  }
  else {
    Serial.print("else...no parity: ");
    Serial.println(foo, BIN);

    SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3));
    digitalWrite(PIN_CS, LOW);
    SPI.transfer16(foo);
    digitalWrite(PIN_CS, HIGH);
  }
  Serial.println("dialup_end");
}

void temperature() {

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  SPI.transfer16(REG_BRS_TEMP);  // Write the RBS in temperature rading mode
  digitalWrite(PIN_CS, HIGH);

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  rdng_temp = SPI.transfer16(REG_RD_ONLY);  // Read the register 31
  digitalWrite(PIN_CS, HIGH);

  Serial.print("Temperature: ");
  Serial.println((367.7 - ((rdng_temp & 0b11111111110) >> 1) * 0.451), 2); // Refer to A4964 manual page 77

}

void showspeed() {

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  SPI.transfer16(REG_RBS_SPEED);  // Write the RBS in temperature rading mode
  digitalWrite(PIN_CS, HIGH);

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  rdng_speed = SPI.transfer16(REG_RD_ONLY);  // Read the register 31
  digitalWrite(PIN_CS, HIGH);
  //uint16_t shifted = ((rdng_speed& 0b11111111110)>>1);

  Serial.print("Speed (rpm): ");
  Serial.println((((((rdng_speed & 0b11111111110) >> 1) * 1.6) * 60) / 7), 4); // Refer to A4964 manual page 77
  //Serial.println(shifted, DEC);

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  rdng_speed = SPI.transfer16(REG_RD_ONLY);  // Read the register 31
  digitalWrite(PIN_CS, HIGH);
  //uint16_t shifted = ((rdng_speed& 0b11111111110)>>1);

  Serial.print("Speed (Hz): ");
  Serial.println((((rdng_speed & 0b11111111110) >> 1) * 1.6), 4); // Refer to A4964 manual page 77
  //Serial.println(shifted, DEC);

}

void duty_cycle() {

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  SPI.transfer16(REG_RBS_DUTY_CYCLE);  // Write the RBS in voltage rading mode
  digitalWrite(PIN_CS, HIGH);

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  rdng_duty_cycle = SPI.transfer16(REG_RD_ONLY);  // Read the register 31
  digitalWrite(PIN_CS, HIGH);
  Serial.print("Peak Duty Cycle: ");
  Serial.println((((rdng_duty_cycle & 0b11111111110) >> 1) / 1023) * 100, 3);

}

void applied_phase_advance() {

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  SPI.transfer16(REG_RBS_PHASE_ADV);  // Write the RBS in voltage rading mode
  digitalWrite(PIN_CS, HIGH);

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  rdng_phase_adv = SPI.transfer16(REG_RD_ONLY);  // Read the register 31
  digitalWrite(PIN_CS, HIGH);
  Serial.print("Applied Phase Advance: ");
  Serial.println(((rdng_phase_adv & 0b11111111110) >> 1) * 0.7, 3);

}

void voltage() {

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  SPI.transfer16(REG_RBS_VOLT);  // Write the RBS in voltage rading mode
  digitalWrite(PIN_CS, HIGH);

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  rdng_volt = SPI.transfer16(REG_RD_ONLY);  // Read the register 31
  digitalWrite(PIN_CS, HIGH);
  Serial.print("Voltage: ");
  Serial.println(((rdng_volt & 0b11111111110) >> 1) * 0.0528, 3);

}

void current() {

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  SPI.transfer16(REG_RBS_CURRENT);  // Write the RBS in current rading mode
  digitalWrite(PIN_CS, HIGH);

  SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3)); // Start SPI dialog with settings for A4964
  digitalWrite(PIN_CS, LOW);
  rdng_current = SPI.transfer16(REG_RD_ONLY);  // Read the register 31
  digitalWrite(PIN_CS, HIGH);
  Serial.print("Current: ");
  Serial.println(((((rdng_current & 0b11111111110) >> 1) / 50) * 1, 76), 3);

}

/*
uint16_t speedref() {
  int poti_0 = analogRead(A0);

  uint16_t cloopspeed = map(poti_0, 0, 1023, 2, 2046);
  uint16_t shift = (0 << 0);
  uint16_t regadd = (ADDR_WRT_ONLY | cloopspeed);
  regadd == (regadd | shift);
  uint16_t count = countSetBits(regadd);

}*/

void writeregisters() {

  dialup(ADDR_PWM_CONF_0, MOD_3 | PMD_CENTER | PW_PWM_FREQ(0b100110));
  //dialup(ADDR_PWM_CONF_1, DS_DITHER_DISABLE),
  dialup(ADDR_PWM_CONF_1, DP_PERIOD_1_2 | DD_TIME_2 | DS_STEP_COUNT_15);
  dialup(ADDR_BRGE_CONF, SA_AMP_GAIN_2_5 | DT_MOSFET_500);
  dialup(ADDR_GATE_DRV_CONF_0, IR1_ON_40 | IR2_ON_10);
  dialup(ADDR_GATE_DRV_CONF_1, IF1_OFF_60 | IF2_OFF_15);
  dialup(ADDR_GATE_DRV_CONF_2, TRS_ON_TIME_300 | TFS_OFF_TIME_600);
  dialup(ADDR_I_LIM_CONF, OBT_BLANK_TIME_3_6 | VIL_SCALE_16_16);
  dialup(ADDR_VDS_0, MIT_TRESHOLD_200 | VT_V_TRESHOLD_1_2);
  dialup(ADDR_VDS_1, VDQ_DEBOUNCE | VQT_QUAL_TIME_1_2);
  dialup(ADDR_WATCH_DOG_0, WM_MIN_TIME_21);
  dialup(ADDR_WATCH_DOG_1, WC_DISABLE);     // Register Nr. 10
  dialup(ADDR_COMMT_0, CP_SS_PROP_GAIN_2 | CP_SS_INTEG_GAIN_2);
  dialup(ADDR_COMMT_1, CPT_TC_PROP_GAIN_2 | CIT_TC_INTEG_GAIN_2);
  dialup(ADDR_BEMF_CONF_0, BW_DETECT_WINDOW(0b11111));
  dialup(ADDR_BEMF_CONF_1, BS_SMPL_CYCLE_6 | BF_WM_FILTER_TIME_200);
  dialup(ADDR_STR_CONF_0, HT_ALIGMENT_400 | HD_PWM_ALIG_3_125);   // Register Nr. 15
  dialup(ADDR_STR_CONF_1, STM_COASM_OFF | RSC_OFF | KM_RATIO_0_30 | HR_DUTY_CYCLE_0);
  dialup(ADDR_STR_CONF_2, WIN_MODE_OFF);
  dialup(ADDR_STR_CONF_3, SF2_FINAL_FREQ_10 | SF1_INITIAL_FREQ_0_5);
  dialup(ADDR_STR_CONF_4, SD2_FINAL_CYC_18_75 | SD1_INITIAL_CYC_6_25);
  dialup(ADDR_STR_CONF_5, STS_STEP_TIME_160 | SFS_FINAL_RAMP_FREQ(0b0011));  // Register Nr. 20
  dialup(ADDR_SPEED_LOOP_0, SGL_ACCELER_LIM(0b00111) | SG_GAIN(0b1000));
  dialup(ADDR_SPEED_LOOP_1, DV_CYCLE_COMP_OFF | DF_DECEL_FACTOR_1 | SR_SPEED_CTRL_RES_0_1);
  dialup(ADDR_SPEED_LOOP_2, SL_LOW_THRESHOLD(0b0001) | SH_HIGH_THRESHOLD(0b1100));

  dialup(ADDR_SYS, ESF_NO_STOP_ON_FAIL | VLR_LOGIC_V_5 | VRG_GATE_V_8 | OPM_STAND_ALONE | LWK_PWM_WAKE_MDOE | IPI_ACT_LOW | DIL_I_LIM_OFF | CM_CLOSED_LOOP_SPEED_2); // REG Nr. 25
  dialup(ADDR_PHA_ADV, PAM_PHASE_ADV_AUTO | KIP_AUTO_PHASE_CTRL_4);
  dialup(ADDR_MOT_FUN, LEN_LIN_STANDBY | GTS_NO_CHANGE_0 | OVM_OVERMOD_OFF | DRM_MODE_SINE | BRK_ON | DIR_REVERSE | RUN_ON);

}

void bitbanging() {

  dialup(ADDR_PWM_CONF_0, PWM_CONF_0_DEF);
  dialup(ADDR_PWM_CONF_1, PWM_CONF_1_DEF);
  dialup(ADDR_BRGE_CONF, BRGE_CONF_DEF);
  dialup(ADDR_GATE_DRV_CONF_0, GATE_DRV_CONF_0_DEF);
  dialup(ADDR_GATE_DRV_CONF_1, GATE_DRV_CONF_1_DEF);
  dialup(ADDR_GATE_DRV_CONF_2, GATE_DRV_CONF_2_DEF);
  dialup(ADDR_I_LIM_CONF, I_LIM_CONF_DEF);
  dialup(ADDR_VDS_0, VDS_0_DEF);
  dialup(ADDR_VDS_1, VDS_1_DEF);
  dialup(ADDR_WATCH_DOG_0, WATCH_DOG_0_DEF);
  dialup(ADDR_WATCH_DOG_1, WATCH_DOG_1_DEF);
  dialup(ADDR_COMMT_0, COMMT_0_DEF);
  dialup(ADDR_COMMT_1, COMMT_1_DEF);
  dialup(ADDR_BEMF_CONF_0, BEMF_CONF_0_DEF);
  dialup(ADDR_BEMF_CONF_1, BEMF_CONF_1_DEF);
  dialup(ADDR_STR_CONF_0, STR_CONF_0_DEF);
  dialup(ADDR_STR_CONF_1, STR_CONF_1_DEF);
  dialup(ADDR_STR_CONF_2, STR_CONF_2_DEF);
  dialup(ADDR_STR_CONF_3, STR_CONF_3_DEF);
  dialup(ADDR_STR_CONF_4, STR_CONF_4_DEF);
  dialup(ADDR_STR_CONF_5, STR_CONF_5_DEF);
  dialup(ADDR_SPEED_LOOP_0, SPEED_LOOP_0_DEF);
  dialup(ADDR_SPEED_LOOP_1, SPEED_LOOP_1_DEF);
  dialup(ADDR_SPEED_LOOP_2, SPEED_LOOP_2_DEF);
  dialup(ADDR_SYS, SYS_DEF);
  dialup(ADDR_PHA_ADV, PHA_ADV_DEF);
  dialup(ADDR_MOT_FUN, MOT_FUN_DEF);

  dialup(ADDR_WRT_ONLY, WRT_ONLY_DEF);

}

void speedreference(){
  // To do: Read ADC from potentiometer, convert the value to 9 bit value (use map() func)
  const int analogPin = A0;
  uint16_t A0_val = 0;
  uint16_t A0_conv = 0;
  uint16_t A0_ready = 0;
  // The "A0_val" is 10bit meaning 0 to 1023 dec. long. Need to be converted to 9bit meaning 0 to 511 dec. long.
  A0_val = analogRead(analogPin);
  A0_conv = map(A0_val, 0, 1023, 0, 511);
  // To do: Shift converted value to 1 bit left
  A0_ready = (A0_conv << 1);
  // To do: Output the "Fref" to Serial interface in Hz
  Serial.print("BINary data A0_ready: ");
  Serial.println(A0_ready, BIN);

  Serial.print("Speed ref in Hz: ");
  Serial.println(SR_SPEED_CTRL_RES_1_6 * A0_ready, DEC);
  // To do: Sent SPI data to "ADDR_WRT_ONLY"
  foo = (ADDR_WRT_ONLY | A0_ready);
  count = countSetBits(foo);

  if ((count % 2) == 0) {
    foo2 = (foo | PARITY);

    SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3));
    digitalWrite(PIN_CS, LOW);
    SPI.transfer16(foo2);
    digitalWrite(PIN_CS, HIGH);
  }
  else {

    SPI.beginTransaction(SPISettings(SPI_SPEED, MSBFIRST, SPI_MODE3));
    digitalWrite(PIN_CS, LOW);
    SPI.transfer16(foo);
    digitalWrite(PIN_CS, HIGH);
  }
  
}


void setup() {

  SPI.begin();
  pinMode(PIN_CS, OUTPUT);
  // put your setup code here, to run once:
  Serial.begin(115200);
  delay(100);

  Serial.print("Pass the setup sequence ");
  Serial.println("");
  //bitbanging();
  Serial.println("Made the bit banging");
  //bitbanging();

  writeregisters();

  //setspeedloop();

  //For pwm
  pinMode(9, OUTPUT);
  //pinMode(10, OUTPUT);
  TCCR1A = _BV(COM1A1) | _BV(COM1B1) ; // phase and frequency correct mode. NON-inverted mode
  // TCCR1A = _BV(COM1A1) | _BV(COM1B1) | _BV(COM1A0) | _BV(COM1B0) ;
  //phase/frequency correct mode. SELECT THIS FOR INVERTED OUTPUTS.
  TCCR1B = _BV(WGM13) | _BV(CS11);
  // Select mode 8 and select divide by 8 on main clock.

}

void loop() {

  temperature();
  voltage();
  current();
  showspeed();
  duty_cycle();
  applied_phase_advance();
  Serial.println("");
  //speedreference();
  //Serial.println();
  delay(200);

  /*
    //PWM in loop
    ICR1 = 1000; // for ICR1 = 1000, frequency = 1kHz.
    pwm1 = analogRead(A2); // read duty from A2 for PWM 2
    //pwm2 = analogRead(A0); // read duty from A0 for PWM 1
    xxx = float(pwm2);
    // Turn read values from the POTs to float for mathematical
    // adjustment.
    yyy = float(pwm1);
    xxx = xxx * ICR1;
    // Multiply with ICR1 and divide by 1023 to give required percentage
    yyy = yyy * ICR1;
    xxx = xxx / 1023;
    yyy = yyy / 1023;
    //Assign values to OCR Registers, which output the PWM duty cycle.
    OCR1B = int(xxx);
    OCR1A = int(yyy);
  */

}
