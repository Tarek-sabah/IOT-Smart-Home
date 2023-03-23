/*
 * TIMER1_cfg.h
 *
 *  Created on: Mar 3, 2023
 *      Author: tarek
 */

#ifndef TIMER1_CFG_H_
#define TIMER1_CFG_H_


#include "TIMER1_types.h"


/*ICU Trigger Pin*/
#define TRIGGER_PIN		DIO_PC5


typedef struct{
	TIMER1_CLK_SOURCE						CLK_SOURCE_TIMER1;
	TIMER1_Waveform_Generation_Mode			WGM;
	TIMER1_OUTPUT_COMPARE_MODE_1A			COM_1A;
	TIMER1_OUTPUT_COMPARE_MODE_1B			COM_1B;
}TIMER1_SETTINGS_CONFIG;


#endif /* TIMER1_CFG_H_ */
