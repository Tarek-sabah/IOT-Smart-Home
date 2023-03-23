/*
 * LDR_Lcfg.c
 *
 *  Created on: Mar 12, 2023
 *      Author: musta
 */


#include "ADC_types.h"

const ADC_config_type ADC_conf_LDR = {
		ADC_AVCC,ADC_LEFT_ADJUST,ADC_SINGLE_TRIGGER,ADC0,ADC_DIV_BY_64
};
