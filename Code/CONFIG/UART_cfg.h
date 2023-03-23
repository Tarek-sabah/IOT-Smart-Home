/*
 * UART_cng.h
 *
 *  Created on: Mar 10, 2023
 *      Author: tarek
 */

#ifndef UART_CFG_H_
#define UART_CFG_H_


#include "UART_types.h"

typedef struct {
	DATA_SIZE			SELECT_DATA_SIZE;
	PARITY_MOOD			SELECT_PARITY_MOOD;
	SYNCHORINZATION		SELECT_SYNCHORINZATION;
	STOP_BIT			SELECT_STOP_BIT;
	u16					BAUD_RATE;

}UART_ConfigType;


#endif /* UART_CFG_H_ */
