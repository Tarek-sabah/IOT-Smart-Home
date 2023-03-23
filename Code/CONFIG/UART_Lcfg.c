/*
 * UART_Lcfg.c
 *
 *  Created on: Mar 10, 2023
 *      Author: tarek
 */


#include "Std_Types.h"
#include "UART_Types.h"
#include "UART_cfg.h"


const UART_ConfigType UART_Config={
		size_8_bit,
		Parrity_Dis,
		Asynchronous,
		bit_1,
		9600,
};
