/*
 * TIEMR1_Lcfg.c
 *
 *  Created on: Mar 3, 2023
 *      Author: tarek
 */

#include "STD_TYPES.h"
#include "TIMER1_types.h"
#include "TIMER1_cfg.h"

const TIMER1_SETTINGS_CONFIG TIMER1_SETTINGS_INIT={
		TIMER1_CLK_SOURCE_0_PRESCALING,
		TIMER1_PWM_Fast_8bit,
		OUTPUT_COMPARE_Mode_NORMAL_1A,
		OUTPUT_COMPARE_Mode_CLEAR_1B,
};
