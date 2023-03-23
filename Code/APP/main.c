#include "app.h"
#include"UART_int.h"

extern const UART_ConfigType UART_Config;
int main(void)
{
	UART_Init(&UART_Config);

    /* Replace with your application code */

   app_init();
   app_start();

}
