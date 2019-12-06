
/////////SPI CONFIG////////////////////
#define PIN_CS 10
#define SPI_SPEED 20000000
//#define PIN_D9 9 // Used for PWM
unsigned long duty1,duty2;
// Duty Cycle in terms of a percentage.
unsigned long plus;
// Value read from A1, in case plus mode is activated
float xxx;
// Float numbers to calculate duty for PWM 1 and PWM 2
float yyy;
unsigned long pwm1;
// Value read from A0 and A2 to give PWM duty cycle output in terms // of 0-5V
unsigned long pwm2;

/////////REGISTER MODE SELECTION //////
const uint16_t SPI_WRITE (1 << 10);
const uint16_t SPI_READ (0 << 10);
/////////REGISTER MODE SELECTION END////

///////////REGISTER ADDRES//////////////
uint16_t ADDR_PWM_CONF_0 = 0x000;
uint16_t ADDR_PWM_CONF_1 = 0x800;
uint16_t ADDR_BRGE_CONF = 0x1000;
uint16_t ADDR_GATE_DRV_CONF_0 = 0x1800;
uint16_t ADDR_GATE_DRV_CONF_1 = 0x2000;
uint16_t ADDR_GATE_DRV_CONF_2 = 0x2800;
uint16_t ADDR_I_LIM_CONF = 0x3000;
uint16_t ADDR_VDS_0 = 0x3800;
uint16_t ADDR_VDS_1 = 0x4000;
uint16_t ADDR_WATCH_DOG_0 = 0x4800;
uint16_t ADDR_WATCH_DOG_1 = 0x5000;
uint16_t ADDR_COMMT_0 = 0x5800;
uint16_t ADDR_COMMT_1 = 0x6000;
uint16_t ADDR_BEMF_CONF_0 = 0x6800;
uint16_t ADDR_BEMF_CONF_1 = 0x7000;
uint16_t ADDR_STR_CONF_0 = 0x7800;
uint16_t ADDR_STR_CONF_1 = 0x8000;
uint16_t ADDR_STR_CONF_2 = 0x8800;
uint16_t ADDR_STR_CONF_3 = 0x9000;
uint16_t ADDR_STR_CONF_4 = 0x9800;
uint16_t ADDR_STR_CONF_5 = 0xA000;
uint16_t ADDR_SPEED_LOOP_0 = 0xA800;
uint16_t ADDR_SPEED_LOOP_1 = 0xB000;
uint16_t ADDR_SPEED_LOOP_2 = 0xB800;
uint16_t ADDR_NVM_WR = 0xC000;
uint16_t ADDR_SYS = 0xC800;
uint16_t ADDR_PHA_ADV = 0xD000;
uint16_t ADDR_MOT_FUN = 0xD800;
uint16_t ADDR_MASK = 0xE000;
uint16_t ADDR_RDBACK_SEL = 0xE800;
uint16_t ADDR_WRT_ONLY = 0xF000;
uint16_t ADDR_RD_ONLY = 0xF800;
/////////REGISTER ADDRES END///////////
/////////DEF VAL CONF//////////////////
//uint16_t PWM_CONF_0_DEF = 0x4C;
//uint16_t PWM_CONF_0_DEF = 0xFC;
uint16_t PWM_CONF_0_DEF = 0b0011000100;
uint16_t PWM_CONF_1_DEF = 0b0000000000;
uint16_t BRGE_CONF_DEF = 0b0000101000;
//uint16_t GATE_DRV_CONF_0_DEF = 0x82;
//uint16_t GATE_DRV_CONF_1_DEF = 0xC3;
//uint16_t GATE_DRV_CONF_2_DEF = 0x6C;
uint16_t GATE_DRV_CONF_0_DEF = 0b0100000100;
uint16_t GATE_DRV_CONF_1_DEF = 0b0110000110;
uint16_t GATE_DRV_CONF_2_DEF = 0b0011011000;

uint16_t I_LIM_CONF_DEF = 0x10F;
uint16_t VDS_0_DEF = 0x18;
uint16_t VDS_1_DEF = 0x18;
//uint16_t WATCH_DOG_0_DEF = 0xA;
//uint16_t WATCH_DOG_1_DEF = 0x14A;
uint16_t WATCH_DOG_0_DEF = 0b0000000000;
uint16_t WATCH_DOG_1_DEF = 0b0000000000;  //Disables the Watchdog

uint16_t COMMT_0_DEF = 0x88;
uint16_t COMMT_1_DEF = 0x88;
uint16_t BEMF_CONF_0_DEF = 0x0;
uint16_t BEMF_CONF_1_DEF = 0x66; //1100110
//uint16_t STR_CONF_0_DEF = 0x4A;
uint16_t STR_CONF_0_DEF = 0b0000111110;
uint16_t STR_CONF_1_DEF = 0b1000010000; //0000 //REG 16
uint16_t STR_CONF_2_DEF = 0x230;
uint16_t STR_CONF_3_DEF = 0x22;
//uint16_t STR_CONF_4_DEF = 0x22;
uint16_t STR_CONF_4_DEF = 0b0000100010;
uint16_t STR_CONF_5_DEF = 0xE;
uint16_t SPEED_LOOP_0_DEF = 0x4A;
uint16_t SPEED_LOOP_1_DEF = 0x80;
uint16_t SPEED_LOOP_1_SR = 0b0010;
uint16_t SPEED_LOOP_2_DEF = 0x77; // Check it out again
//uint16_t NVM_WR_DEF = 0x000;   // DO NOT USE
uint16_t SYS_DEF = 0b0101001010;  // USING OPM = TRUE
//uint16_t SYS_2 = 0xB8;
uint16_t PHA_ADV_DEF = 0x768;
uint16_t MOT_FUN_DEF = 0x2;

// Setup in functions
uint16_t MASK_DEF = 0x100; // READ ONLY
//uint16_t RDBACK_SEL_DEF = 0x100; // Check it out again
uint16_t WRT_ONLY_DEF = 0b0000000000;
uint16_t RD_ONLY_DEF = 0x000;  // Setup it manualiy
/////////DEF VAL CONF END//////////////
/////////READ BACK SELECT DEFINES//////
uint16_t RBS_SEL_DIAG = 0x000;
uint16_t RBS_SEL_MOTOR_SPEED = 0x2;
uint16_t RBS_SEL_IAVG = 0x4;
uint16_t RBS_SEL_VOLT = 0x6;
uint16_t RBS_SEL_TEMP = 0x8;
uint16_t RBS_SEL_DEM_IN = 0xA;
uint16_t RBS_SEL_DUTY_CYC = 0xC;
uint16_t RBS_SEL_PHASE_ADVC = 0xE;

uint16_t RBS_SEL_DIAG_VOLT = 0x206;
///////Regifine the DEF val in bin ///////
uint16_t DEC_PWM_CONF_0_DEF = 0b0011001100; //PWM 19.8Khz
uint16_t DEC_PWM_CONF_1_DEF = 0b0000000000; //Disable the PWM Dither
uint16_t DEC_BRGE_CONF_DEF = 0b0000101000;
uint16_t DEC_GATE_DRV_CONF_0_DEF = 0b0100000100;
uint16_t DEC_GATE_DRV_CONF_1_DEF = 0b0110000110;
uint16_t DEC_GATE_DRV_CONF_2_DEF = 0b0011011000;
uint16_t DEC_I_LIM_CONF_DEF = 0b0000011110;
uint16_t DEC_VDS_0_DEF = 0b0000110000;
uint16_t DEC_VDS_1_DEF = 0b0000110000;
uint16_t DEC_WATCH_DOG_0_DEF = 0b0000000000;
uint16_t DEC_WATCH_DOG_1_DEF = 0b0000000000;  //Disables the Watchdog
uint16_t DEC_COMMT_0_DEF = 0b0100010000;
uint16_t DEC_COMMT_1_DEF = 0b0100010000;
uint16_t DEC_BEMF_CONF_0_DEF = 0b0000000010;
uint16_t DEC_BEMF_CONF_1_DEF = 0b0001100010; //1100110
uint16_t DEC_STR_CONF_0_DEF = 0b0010010100;
uint16_t DEC_STR_CONF_1_DEF = 0b1000110000; //Coast eneble //No restart on lost sync
uint16_t DEC_STR_CONF_2_DEF = 0x230;
uint16_t DEC_STR_CONF_3_DEF = 0x22;
uint16_t DEC_STR_CONF_4_DEF = 0x22;
uint16_t DEC_STR_CONF_5_DEF = 0xE;
uint16_t DEC_SPEED_LOOP_0_DEF = 0x4A;
uint16_t DEC_SPEED_LOOP_1_DEF = 0x80;
uint16_t DEC_SPEED_LOOP_1_SR = 0b0010;
uint16_t DEC_SPEED_LOOP_2_DEF = 0x77; // Check it out again
//////////////////////////////////////////
//////////////////////////////////////////
#define REG_RBS_SPEED ((uint16_t) 0b1110110000000011)
#define REG_RBS_VOLT ((uint16_t) 0b1110110000000110)
#define REG_RBS_CURRENT ((uint16_t) 0b1110110000000101)
#define REG_BRS_TEMP ((uint16_t) 0b1110110000001001)  // RBS[2:0] [ 100 ] Chip temperatute 
#define REG_RBS_DUTY_CYCLE ((uint16_t) 0b1110110000001010)
#define REG_RBS_PHASE_ADV ((uint16_t) 0b1110110000001111)
#define REG_RD_ONLY ((uint16_t) 0b1111100000000000)
/////////RDBCK SEL DEFINES END//////////

#define PHASE3_MODE (n << 9)
#define PHASE2_MODE (1 << 9)

#define BRGE_PWM_MODE

/////////////////PARITY////////////////
uint16_t PARITY (1 << 0);
/////////////PARITY END////////////////

float Av = 2.5; // Amp gain
float Rs = 0.02;  // Resistance of the shunt
float onesevensix = 1.76;  // STATIC, DO NOT EDIT

////////////////////
uint32_t count;
uint32_t foo;
uint32_t foo2;
uint32_t parfoo;
uint32_t raw;
uint32_t rdng_volt;
uint32_t rdng_current;
uint32_t rdng_temp;
uint32_t rdng_speed;
uint32_t rdng_duty_cycle;
uint32_t rdng_phase_adv;
////////////////////
