// The serial register table for A4964

// 0.PWM config 
const uint16_t MOD_3                  (0b0 << 9);      // Modulation Mode 3-Phase BLDC
const uint16_t MOD_2                  (0b1 << 9);      // Modulation Mode 2-Phase DC motor
const uint16_t PMD_EDGE               (0b0 << 7);       // Brigde PWM Mode (Edge alignet)
const uint16_t PMD_CENTER             (0b1 << 7);       // Brigde PWM Mode (Center alignet)

#define PW_PWM_FREQ(x)                ((x & 0b111111) << 1)
const uint16_t PW_PWM_FREQ_20KHZ      (0b1001100 << 1);
// 1.PWM config
const uint16_t DP_PERIOD_0_2          (0b000 << 7);     // PWM Dither Step Period
const uint16_t DP_PERIOD_0_4          (0b001 << 7);     // t∆pw = -0,2µs-(n * 0,2µs)
const uint16_t DP_PERIOD_0_6          (0b010 << 7);
const uint16_t DP_PERIOD_0_8          (0b011 << 7);
const uint16_t DP_PERIOD_1            (0b100 << 7);
const uint16_t DP_PERIOD_1_2          (0b101 << 7);
const uint16_t DP_PERIOD_1_4          (0b110 << 7);
const uint16_t DP_PERIOD_1_6          (0b111 << 7);

const uint16_t DD_TIME_1              (0b00 << 5);      // PWM dither dwell time
const uint16_t DD_TIME_2              (0b01 << 5);      // in ms
const uint16_t DD_TIME_5              (0b10 << 5);
const uint16_t DD_TIME_10             (0b11 << 5);

const uint8_t DS_DITHER_DISABLE       (0b0000 << 1);    // DP_PERIOD_x and DD_TIME_x will be ignored. PWM Dither will be disabled
const uint8_t DS_STEP_COUNT_3         (0b0011 << 1);
const uint8_t DS_STEP_COUNT_5         (0b0101 << 1);    // Decimal number is a number of steps
const uint8_t DS_STEP_COUNT_7         (0b0111 << 1);
const uint8_t DS_STEP_COUNT_9         (0b1010 << 1);
const uint8_t DS_STEP_COUNT_11        (0b1011 << 1);
const uint8_t DS_STEP_COUNT_13        (0b1101 << 1);
const uint8_t DS_STEP_COUNT_15        (0b1111 << 1);
// 2.Bridge config
const uint16_t SA_AMP_GAIN_2_5        (0b00 << 7);      // Sense Amp Gain
const uint16_t SA_AMP_GAIN_5          (0b01 << 7);
const uint16_t SA_AMP_GAIN_10         (0b10 << 7);
const uint16_t SA_AMP_GAIN_25         (0b11 << 7);

const uint16_t DT_MOSFET_100          (0b000000 << 1);  // Dead time for MOSFET switching
const uint16_t DT_MOSFET_500          (0b001010 << 1);
const uint16_t DT_MOSFET_1000         (0b010100 << 1);
const uint16_t DT_MOSFET_2000         (0b101000 << 1);
const uint16_t DT_MOSFET_3000         (0b111100 << 1);
const uint16_t DT_MOSFET_3150         (0b111111 << 1);
// 3. Gate drive config
const uint16_t IR1_QUICKLY            (0b0000 << 5);
const uint16_t IR1_ON_5               (0b0001 << 5);
const uint16_t IR1_ON_15              (0b0011 << 5);
const uint16_t IR1_ON_40              (0b1000 << 5);
const uint16_t IR1_ON_75              (0b1111 << 5);

const uint16_t IR2_QUICKLY            (0b0000 << 1);
const uint16_t IR2_ON_5               (0b0001 << 1);
const uint16_t IR2_ON_10              (0b0010 << 1);
const uint16_t IR2_ON_15              (0b0011 << 1);
const uint16_t IR2_ON_40              (0b1000 << 1);
const uint16_t IR2_ON_75              (0b1111 << 1);
// 4. Gate drive config
const uint16_t IF1_QUICKLY            (0b0000 << 5);
const uint16_t IF1_OFF_5              (0b0001 << 5);
const uint16_t IF1_OFF_15             (0b0011 << 5);
const uint16_t IF1_OFF_40             (0b1000 << 5);
const uint16_t IF1_OFF_60             (0b1100 << 5);
const uint16_t IF1_OFF_75             (0b1111 << 5);

const uint16_t IF2_QUICKLY            (0b0000 << 1);
const uint16_t IF2_OFF_5              (0b0001 << 1);
const uint16_t IF2_OFF_15             (0b0011 << 1);
const uint16_t IF2_OFF_40             (0b1000 << 1);
const uint16_t IF2_OFF_75             (0b1111 << 1);
// 5. Gate drive config
const uint16_t TRS_ON_TIME_0          (0b0000 << 5);
const uint16_t TRS_ON_TIME_100        (0b0010 << 5);
const uint16_t TRS_ON_TIME_300        (0b0110 << 5);
const uint16_t TRS_ON_TIME_500        (0b1010 << 5);
const uint16_t TRS_ON_TIME_750        (0b1111 << 5);

const uint16_t TFS_OFF_TIME_0         (0b0000 << 1);
const uint16_t TFS_OFF_TIME_100       (0b0010 << 1);
const uint16_t TFS_OFF_TIME_300       (0b0011 << 1);
const uint16_t TFS_OFF_TIME_500       (0b0101 << 1);
const uint16_t TFS_OFF_TIME_600       (0b1100 << 1);
const uint16_t TFS_OFF_TIME_750       (0b1111 << 1);
// 6. Current limit configuration
const uint16_t OBT_BLANK_TIME_1       (0b00011 << 5);
const uint16_t OBT_BLANK_TIME_2       (0b01000 << 5);
const uint16_t OBT_BLANK_TIME_3       (0b01011 << 5);
const uint16_t OBT_BLANK_TIME_3_6     (0b10000 << 5);
const uint16_t OBT_BLANK_TIME_4       (0b10010 << 5);
const uint16_t OBT_BLANK_TIME_6       (0b11100 << 5);
const uint16_t OBT_BLANK_TIME_6_6     (0b11111 << 5);

const uint16_t VIL_SCALE_1_16         (0b0000 << 1);
const uint16_t VIL_SCALE_8_16         (0b0111 << 1);
const uint16_t VIL_SCALE_16_16        (0b1111 << 1);      // DEF VAL
// 7.VDS monitor (VDS Monitor and Sense Amp Configuration)
const uint16_t MIT_TRESHOLD_200       (0b00 << 8);        // DEF VAL
const uint16_t MIT_TRESHOLD_100       (0b01 << 8);
const uint16_t MIT_TRESHOLD_50        (0b10 << 8);
const uint16_t MIT_TRESHOLD_25        (0b11 << 8);

#define VT_V_TRESHOLD(x)              ((x & 0b111111) << 1)
const uint16_t VT_V_TRESHOLD_1_2      (0b011000 << 1);
// 8.VDS monitor (VDS Monitor Configuration)
const uint16_t VDQ_DEBOUNCE           (0b0 << 8);
const uint16_t VDQ_BLANK              (0b1 << 8);

#define VQT_QUAL_TIME(x)              ((x & 0b111111) << 1)
const uint16_t VQT_QUAL_TIME_1_2      (0b011000 << 1);
// 9. Wathdog config
#define WM_MIN_TIME(x)                ((x & 0b11111) << 1)
const uint16_t WM_MIN_TIME_21         (0b01010 << 1);
// 10. Wathdog config
const uint16_t WC_DISABLE             (0b0000 << 6);      // Disables the wathdog func
const uint16_t WC_F_CYCLE_COUNT_1     (0b0001 << 6);
const uint16_t WC_F_CYCLE_COUNT_5     (0b0101 << 6);
const uint16_t WC_F_CYCLE_COUNT_10    (0b1010 << 6);
const uint16_t WC_F_CYCLE_COUNT_15    (0b1111 << 6);

const uint16_t WW_WINDOW_TIME_10      (0b00000 << 1);
const uint16_t WW_WINDOW_TIME_50      (0b00100 << 1);
const uint16_t WW_WINDOW_TIME_100     (0b01001 << 1);
const uint16_t WW_WINDOW_TIME_200     (0b10011 << 1);
const uint16_t WW_WINDOW_TIME_320     (0b11111 << 1);
// 11.Commutation
const uint16_t CP_SS_PROP_GAIN_1      (0b0111 << 5);
const uint16_t CP_SS_PROP_GAIN_2      (0b1000 << 5);
const uint16_t CP_SS_PROP_GAIN_16     (0b1011 << 5);
const uint16_t CP_SS_PROP_GAIN_32     (0b1100 << 5);
const uint16_t CP_SS_PROP_GAIN_64     (0b1101 << 5);
const uint16_t CP_SS_PROP_GAIN_128    (0b1110 << 5);
const uint16_t CP_SS_PROP_GAIN_256    (0b1111 << 5);

const uint16_t CP_SS_INTEG_GAIN_1     (0b0111 << 1);
const uint16_t CP_SS_INTEG_GAIN_2     (0b1000 << 1);
const uint16_t CP_SS_INTEG_GAIN_16    (0b1011 << 1);
const uint16_t CP_SS_INTEG_GAIN_32    (0b1100 << 1);
const uint16_t CP_SS_INTEG_GAIN_64    (0b1101 << 1);
const uint16_t CP_SS_INTEG_GAIN_128   (0b1110 << 1);
const uint16_t CP_SS_INTEG_GAIN_256    (0b1111 << 1);
// 12. Commutation
const uint16_t CPT_TC_PROP_GAIN_1     (0b0111 << 5);
const uint16_t CPT_TC_PROP_GAIN_2     (0b1000 << 5);
const uint16_t CPT_TC_PROP_GAIN_16    (0b1011 << 5);
const uint16_t CPT_TC_PROP_GAIN_32    (0b1100 << 5);
const uint16_t CPT_TC_PROP_GAIN_64    (0b1101 << 5);
const uint16_t CPT_TC_PROP_GAIN_128   (0b1110 << 5);
const uint16_t CPT_TC_PROP_GAIN_256   (0b1111 << 5);

const uint16_t CIT_TC_INTEG_GAIN_1    (0b0111 << 1);
const uint16_t CIT_TC_INTEG_GAIN_2    (0b1000 << 1);
const uint16_t CIT_TC_INTEG_GAIN_16   (0b1011 << 1);
const uint16_t CIT_TC_INTEG_GAIN_32   (0b1100 << 1);
const uint16_t CIT_TC_INTEG_GAIN_64   (0b1101 << 1);
const uint16_t CIT_TC_INTEG_GAIN_128  (0b1110 << 1);
const uint16_t CIT_TC_INTEG_GAIN_256  (0b1111 << 1);
// 13.
#define BW_DETECT_WINDOW(x)           ((x & 0b11111) << 1)
// 14. BEMF Config
const uint16_t BS_SMPL_CYCLE_1        (0b00 << 5);
const uint16_t BS_SMPL_CYCLE_2        (0b01 << 5);
const uint16_t BS_SMPL_CYCLE_3        (0b10 << 5);
const uint16_t BS_SMPL_CYCLE_6        (0b11 << 5);

#define BF_BEMF_TIME(x)               ((x & 0b1111) << 1)
const uint16_t BF_WM_FILTER_TIME_0    (0b0000 << 1);
const uint16_t BF_WM_FILTER_TIME_200  (0b0001 << 1);
const uint16_t BF_WM_FILTER_TIME_1000 (0b0101 << 1);
// 15. BEMF Config
const uint16_t HT_ALIGMENT_0          (0b0000 << 6);
const uint16_t HT_ALIGMENT_400        (0b0010 << 6);
const uint16_t HT_ALIGMENT_1000       (0b0100 << 6);
const uint16_t HT_ALIGMENT_2000       (0b1010 << 6);
const uint16_t HT_ALIGMENT_3000       (0b1111 << 6);

const uint16_t HD_PWM_ALIG_3_125      (0b0000 << 1);
const uint16_t HD_PWM_ALIG_6_25       (0b0001 << 1);
const uint16_t HD_PWM_ALIG_9_375      (0b0010 << 1);
const uint16_t HD_PWM_ALIG_12_5       (0b0011 << 1);
const uint16_t HD_PWM_ALIG_18_75      (0b0111 << 1);
const uint16_t HD_PWM_ALIG_28_125     (0b1000 << 1);
const uint16_t HD_PWM_ALIG_34_375     (0b1010 << 1);
const uint16_t HD_PWM_ALIG_43_75      (0b1101 << 1);
const uint16_t HD_PWM_ALIG_50         (0b1111 << 1);
// 16. Startup config
const uint16_t STM_COASM_OFF          (0b0 << 9);
const uint16_t STM_COASM_ON           (0b1 << 9);

const uint16_t RSC_OFF                (0b0 << 8);
const uint16_t RSC_ON                 (0b1 << 8);

const uint16_t KM_RATIO_0_30          (0b0000 << 3);
const uint16_t KM_RATIO_0_45          (0b0011 << 3);
const uint16_t KM_RATIO_0_55          (0b0101 << 3);
const uint16_t KM_RATIO_0_65          (0b0111 << 3);
const uint16_t KM_RATIO_0_75          (0b1001 << 3);
const uint16_t KM_RATIO_0_85          (0b1011 << 3);
const uint16_t KM_RATIO_0_95          (0b1101 << 3);
const uint16_t KM_RATIO_1_05          (0b1111 << 3);

const uint16_t HR_DUTY_CYCLE_0        (0b00 << 1);
const uint16_t HR_DUTY_CYCLE_25       (0b01 << 1);
const uint16_t HR_DUTY_CYCLE_50       (0b10 << 1);
const uint16_t HR_DUTY_CYCLE_100      (0b11 << 1);
// 17. Startup configuration
const uint16_t WIN_MODE_OFF           (0b0 << 8);
const uint16_t WIN_MODE_ON            (0b1 << 8);

const uint16_t WMF_DETEC_FREQ_0_4     (0b000 << 5);
const uint16_t WMF_DETEC_FREQ_3_6     (0b001 << 5);
const uint16_t WMF_DETEC_FREQ_6_8     (0b010 << 5);
const uint16_t WMF_DETEC_FREQ_10      (0b011 << 5);
const uint16_t WMF_DETEC_FREQ_13_2    (0b100 << 5);
const uint16_t WMF_DETEC_FREQ_16_4    (0b101 << 5);
const uint16_t WMF_DETEC_FREQ_19_6    (0b110 << 5);
const uint16_t WMF_DETEC_FREQ_22_8    (0b111 << 5);

const uint16_t WBD_BRAKING_6_25       (0b0000 << 1);
const uint16_t WBD_BRAKING_12_5       (0b0001 << 1);
const uint16_t WBD_BRAKING_25         (0b0011 << 1);
const uint16_t WBD_BRAKING_37_5       (0b0101 << 1);
const uint16_t WBD_BRAKING_50         (0b0111 << 1);
const uint16_t WBD_BRAKING_75         (0b1011 << 1);
const uint16_t WBD_BRAKING_100        (0b1111 << 1);
// 18. Startup configuration
const uint16_t SF2_FINAL_FREQ_10      (0b0000 << 5);
const uint16_t SF2_FINAL_FREQ_12_5    (0b0001 << 5);
const uint16_t SF2_FINAL_FREQ_15      (0b0010 << 5);
const uint16_t SF2_FINAL_FREQ_20      (0b0100 << 5);
const uint16_t SF2_FINAL_FREQ_25      (0b0110 << 5);
const uint16_t SF2_FINAL_FREQ_30      (0b0110 << 5);
const uint16_t SF2_FINAL_FREQ_35      (0b1010 << 5);
const uint16_t SF2_FINAL_FREQ_40      (0b1100 << 5);
const uint16_t SF2_FINAL_FREQ_45      (0b1110 << 5);
const uint16_t SF2_FINAL_FREQ_45_7    (0b1111 << 5);

const uint16_t SF1_INITIAL_FREQ_0_5   (0b0000 << 1);
const uint16_t SF1_INITIAL_FREQ_1     (0b0001 << 1);
const uint16_t SF1_INITIAL_FREQ_2     (0b0011 << 1);
const uint16_t SF1_INITIAL_FREQ_3     (0b0101 << 1);
const uint16_t SF1_INITIAL_FREQ_3_5   (0b0110 << 1);
const uint16_t SF1_INITIAL_FREQ_4     (0b0111 << 1);
const uint16_t SF1_INITIAL_FREQ_5     (0b1001 << 1);
const uint16_t SF1_INITIAL_FREQ_6     (0b1011 << 1);
const uint16_t SF1_INITIAL_FREQ_7     (0b1101 << 5);
const uint16_t SF1_INITIAL_FREQ_8     (0b1111 << 1);
// 19. Startup config
#define SD2_FINAL_DUTY_CYCLE(x)       (x << 5)
const uint16_t SD2_FINAL_CYC_6_25     (0b0000 << 5);
const uint16_t SD2_FINAL_CYC_18_75    (0b0010 << 5);
const uint16_t SD2_FINAL_CYC_31_25    (0b0100 << 5);
const uint16_t SD2_FINAL_CYC_43_75    (0b0110 << 5);
const uint16_t SD2_FINAL_CYC_65_25    (0b1000 << 5);
const uint16_t SD2_FINAL_CYC_68_75    (0b1010 << 5);
const uint16_t SD2_FINAL_CYC_81_2     (0b1100 << 5);
const uint16_t SD2_FINAL_CYC_93_75    (0b1110 << 5);
const uint16_t SD2_FINAL_CYC_100      (0b1111 << 5);

#define SD1_INITIAL_DUTY_CYCLE(x)       (x << 1)
const uint16_t SD1_INITIAL_CYC_6_25   (0b0000 << 1);
const uint16_t SD1_INITIAL_CYC_12_5   (0b0001 << 1);
const uint16_t SD1_INITIAL_CYC_18_75  (0b0010 << 1);
const uint16_t SD1_INITIAL_CYC_31_25  (0b0100 << 1);
const uint16_t SD1_INITIAL_CYC_43_75  (0b0110 << 1);
const uint16_t SD1_INITIAL_CYC_65_25  (0b1000 << 1);
const uint16_t SD1_INITIAL_CYC_68_75  (0b1010 << 1);
const uint16_t SD1_INITIAL_CYC_81_2   (0b1100 << 1);
const uint16_t SD1_INITIAL_CYC_93_75  (0b1110 << 1);
const uint16_t SD1_INITIAL_CYC_100    (0b1111 << 1);
// 20. Startup configuration
const uint16_t STS_STEP_TIME_10       (0b0000 << 5);
const uint16_t STS_STEP_TIME_20       (0b0001 << 5);
const uint16_t STS_STEP_TIME_80       (0b0100 << 5);
const uint16_t STS_STEP_TIME_160      (0b1000 << 5);
const uint16_t STS_STEP_TIME_240      (0b1100 << 5);
const uint16_t STS_STEP_TIME_300      (0b1111 << 5);

#define SFS_FINAL_RAMP_FREQ(x)        (x << 1)
// 21. Speed loop
#define SGL_ACCELER_LIM(x)            (x << 5)

#define SG_GAIN(x)                    (x << 1)
// 22. Speed loop
const uint16_t DV_CYCLE_COMP_OFF      (0b00 << 8);
const uint16_t DV_CYCLE_COMP_12V      (0b01 << 8);
const uint16_t DV_CYCLE_COMP_24V      (0b10 << 8);
//const uint16_t DV_CYCLE_COMP_12V ??

const uint16_t DF_DECEL_FACTOR_1      (0b00 << 6);
const uint16_t DF_DECEL_FACTOR_2      (0b01 << 6);
const uint16_t DF_DECEL_FACTOR_5      (0b10 << 6);
const uint16_t DF_DECEL_FACTOR_10     (0b11 << 6);

#define SR_SPEED_CTRL_RES(x)          ((x & 0b11111) << 1)
const uint16_t SR_SPEED_CTRL_RES_0_1  (0b000 << 1);
const uint16_t SR_SPEED_CTRL_RES_0_2  (0b001 << 1);
const uint16_t SR_SPEED_CTRL_RES_0_4  (0b010 << 1);
const uint16_t SR_SPEED_CTRL_RES_0_8  (0b011 << 1);
const uint16_t SR_SPEED_CTRL_RES_1_6  (0b100 << 1);
const uint16_t SR_SPEED_CTRL_RES_3_2  (0b101 << 1);
const uint16_t SR_SPEED_CTRL_RES_3_21 (0b110 << 1);
const uint16_t SR_SPEED_CTRL_RES_3_22 (0b111 << 1);
// 23. Speed control loop config
#define SL_LOW_THRESHOLD(x)           (x & 0b1111 << 5)

#define SH_HIGH_THRESHOLD(x)          (x & 0b1111 << 1)
// 24. NVM Write
// do NVM write
// 25. System configuration
const uint16_t ESF_NO_STOP_ON_FAIL    (0b0 << 9);
const uint16_t ESF_STOP_ON_FAIL       (0b1 << 9);

const uint16_t VLR_LOGIC_V_3_3        (0b0 << 8);
const uint16_t VLR_LOGIC_V_5          (0b1 << 8);

const uint16_t VRG_GATE_V_8           (0b0 << 7);
const uint16_t VRG_GATE_V_11          (0b1 << 7);

const uint16_t OPM_SPI_ONLY           (0b0 << 6);
const uint16_t OPM_STAND_ALONE        (0b1 << 6);

const uint16_t LWK_PWM_WAKE_MDOE      (0b0 << 5);
const uint16_t LWK_LIN_WAKE_MDOE      (0b1 << 5);

const uint16_t IPI_ACT_HIGH           (0b0 << 4);
const uint16_t IPI_ACT_LOW            (0b1 << 4);

const uint16_t DIL_I_LIM_OFF          (0b0 << 3);
const uint16_t DIL_I_LIM_ON           (0b1 << 3);

const uint16_t CM_CLOSED_LOOP_SPEED   (0b00 << 1);
const uint16_t CM_CLOSED_LOOP_SPEED_2 (0b01 << 1);
const uint16_t CM_CLOSED_LOOP_CURRENT (0b10 << 1);
const uint16_t CM_OPEN_LOOP_SPEED     (0b11 << 1);
// 26. Phase advance
const uint16_t PAM_PHASE_ADV_MAN      (0b0 << 9);
const uint16_t PAM_PHASE_ADV_AUTO     (0b1 << 9);

const uint16_t KIP_AUTO_PHASE_CTRL_1  (0b00 << 7);
const uint16_t KIP_AUTO_PHASE_CTRL_2  (0b01 << 7);
const uint16_t KIP_AUTO_PHASE_CTRL_4  (0b10 << 7);
const uint16_t KIP_AUTO_PHASE_CTRL_8  (0b11 << 7);

#define PA_PHASE_ADV(x)               ((x & 0b111111) << 1)
// 27. Motor function control
const uint16_t LEN_LIN_STANDBY        (0b0 << 8);
const uint16_t LEN_LIN_ACTIVE         (0b1 << 8);

const uint16_t GTS_NO_CHANGE_0        (0b0 << 7);
const uint16_t GTS_NO_CHANGE_1        (0b1 << 7);
//const uint16_t GTS_NO_CHANGE_1_0      ();
//const uint16_t GTS_ENTER_SLEEP_0_1    ();

const uint16_t OVM_OVERMOD_OFF        (0b00 << 5);
const uint16_t OVM_OVERMOD_112_5      (0b01 << 5);
const uint16_t OVM_OVERMOD_125        (0b10 << 5);
const uint16_t OVM_OVERMOD_150        (0b11 << 5);

const uint16_t DRM_MODE_SINE          (0b0 << 4);
const uint16_t DRM_MODE_TRAPEZ        (0b1 << 4);

const uint16_t BRK_OFF                (0b0 << 3);
const uint16_t BRK_ON                 (0b1 << 3);

const uint16_t DIR_FORWARD            (0b0 << 2);
const uint16_t DIR_REVERSE            (0b1 << 2);

const uint16_t RUN_OFF_COAST          (0b0 << 1);
const uint16_t RUN_ON                 (0b1 << 1);
// 28. MASK
