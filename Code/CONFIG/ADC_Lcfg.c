/*
 * ADC_Lcfg.c
 *
 *  Created on: Mar 3, 2023
 *      Author: musta
 */


#include "ADC_types.h"

const ADC_config_type ADC_conf_LM35 = {
		ADC_AVCC,ADC_LEFT_ADJUST,ADC_SINGLE_TRIGGER,ADC1,ADC_DIV_BY_64
};
