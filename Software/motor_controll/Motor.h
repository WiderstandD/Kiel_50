//Header file for the A4964 lib

#ifndef Motor_h
#define Motor_h

#include "Arduino.h"



class Motor
{
  public:
    Motor();
    void test(char mychar);

    ///////////////SPI FUNCTIONS///////////////
    
    void pwm_conf_0(uint16_t SPI_MODE, uint16_t PHASE_MODE, uint16_t PW);
    void pwm_conf_1(uint16_t SPI_MODE, uint16_t PWM_DITHER_STEP, uint16_t PWM_DITHER_DWELL, uint16_t DITHER_STEP_COUNT);


    uint16_t voltage();
    ///////////////SPI FUNCTIONS END//////////

  private:
    //////////////PRIVATE CONSTANTS FOR SPI FUNCTIONS////////
    uint16_t _ADDR_PWM_CONF_0 = 0x000;
    uint16_t _ADDR_PWM_CONF_1 = 0x800;
    uint16_t _ADDR_BRGE_CONF = 0x1000;
    uint16_t _ADDR_GATE_DRV_CONF_0 = 0x1800;
    uint16_t _ADDR_GATE_DRV_CONF_1 = 0x2000;
    uint16_t _ADDR_GATE_DRV_CONF_2 = 0x2800;
    uint16_t _ADDR_I_LIM_CONF = 0x3000;
    uint16_t _ADDR_VDS_0 = 0x3800;
    uint16_t _ADDR_VDS_1 = 0x4000;
    uint16_t _ADDR_WATCH_DOG_0 = 0x4800;
    uint16_t _ADDR_WATCH_DOG_1 = 0x5000;
    uint16_t _ADDR_COMMT_0 = 0x5800;
    uint16_t _ADDR_COMMT_1 = 0x6000;
    uint16_t _ADDR_BEMF_CONF_0 = 0x6800;
    uint16_t _ADDR_BEMF_CONF_1 = 0x7000;
    uint16_t _ADDR_STR_CONF_0 = 0x7800;
    uint16_t _ADDR_STR_CONF_1 = 0x8000;
    uint16_t _ADDR_STR_CONF_2 = 0x8800;
    uint16_t _ADDR_STR_CONF_3 = 0x9000;
    uint16_t _ADDR_STR_CONF_4 = 0x9800;
    uint16_t _ADDR_STR_CONF_5 = 0xA000;
    uint16_t _ADDR_SPEED_LOOP_0 = 0xA800;
    uint16_t _ADDR_SPEED_LOOP_1 = 0xB000;
    uint16_t _ADDR_SPEED_LOOP_2 = 0xB800;
    uint16_t _ADDR_NVM_WR = 0xC000;
    uint16_t _ADDR_SYS = 0xC800;
    uint16_t _ADDR_PHA_ADV = 0xD000;
    uint16_t _ADDR_MOT_FUN = 0xD800;
    uint16_t _ADDR_MASK = 0xE000;
    uint16_t _ADDR_RDBACK_SEL = 0xE800;
    uint16_t _ADDR_WRT_ONLY = 0xF000;
    uint16_t _ADDR_RD_ONLY = 0xF800;
    
    /////////////PRIVATE CONSTANTS FOR SPI FUNCTIONS end/////


    //_ADDR_RDBACK_SEL CONFIG
    uint16_t diag_reg_conf = 0x000;  // DEF VAL
    uint16_t motor_speed_config = (0b1 << 1);
    uint16_t avg_supp_I = (0b1 << 2);
    uint16_t volt_conf = (0b11 << 1);
    uint16_t temp = (0b1 << 3);
    uint16_t dem_inp = (0b101 << 1);
    uint16_t brg_duty_cycle = (0b11 << 2);
    uint16_t app_phase_adv = (0b111 << 1);
    //_ADDR_RDBACK_SEL CONFIG END
    
    uint16_t _PHASE_MODE;
    
    char _mychar;
    uint16_t _SPI_MODE;
    uint16_t _PW;
};

#endif
