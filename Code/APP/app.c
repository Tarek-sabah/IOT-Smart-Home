#include "STD_TYPES.h"
#include <string.h>
#include "avr/delay.h"
#include "Port_int.h"
#include "GI_int.h"
#include "EXTI_int.h"
#include "ADC_int.h"
#include "LDR_int.h"
#include "LM35_int.h"
#include "DC_MOTOR_int.h"
#include "app.h"
#include "LCD_int.h"
#include "ESP8266_int.h"
/*External interrupt flag
when EXT_INT happens flag =1;
*/
void debug(u8 num)
{
	H_LCD_void_sendCommand(LCD_CMD_CLEAR);
	H_LCD_void_sendIntNum(num);
	_delay_ms(2000);
	H_LCD_void_sendData(' ');
}

void debugStr(const u8* str)
{
	H_LCD_void_sendCommand(LCD_CMD_CLEAR);
	H_LCD_void_sendString(str);
	_delay_ms(500);
}
extern const Port_ConfigType PORT_Config_Arr[PORT_PINS_CONFIG_ARR_SIZE];
static volatile u8 loginSuccess = 1, ledOn = 0;

void EXT_callBack(void)
{
	loginSuccess = 1;
//	debugStr("Welcom Home");
}


void app_init()
{

	M_GI_enable();

	Port_Init(PORT_Config_Arr);

	M_EXTI_void_enableInt(EXTI_INT0);

	M_EXTI_void_setCallBackFunction(EXT_callBack, EXTI_INT0);

	H_LCD_void_Init();

	ESP01_init();

	H_LDR_voidInit();

	H_DC_MOTOR_voidInit();

	H_LED_voidPWM_int();
}

void app_start()
{

	u8 Temp_value = 0;
	volatile u8 wifi_comm = 0;
	while (1)
	{
		if (loginSuccess == 1)
		{
//			if()
//			{
//				loginSuccess++;
//			}
			Read_Temp();
			_delay_ms(1);
			Temp_value = Read_Temp(); // Read LM35 Temp from channel 1

			wifi_comm = Wifi_receive_command(); // receive WiFi command

			if (ledOn) //LED ON by LDR_value PWM
			{
				Darkness_read();
				_delay_ms(10);//delay to read
				LED_ON_PWM(Darkness_read());
			}
			else
			{
				turn_led_off();
			}
			if (wifi_comm == MOTOR_OFF)  //MOTOR ON by 0% PWM
			{
				turn_MOTOR_off();
			}
			else if (wifi_comm == MOTOR_30_PWM_ON)  //MOTOR ON by 30% PWM
			{
				turn_MOTOR_on(30);
			}
			else if (wifi_comm == MOTOR_70_PWM_ON)  //MOTOR ON by 70% PWM
			{
				turn_MOTOR_on(70);
			}
			else if (wifi_comm == LOGOUT_SYSTEM) // logout
			{
				turn_MOTOR_off();
				LED_ON_PWM(0);
				loginSuccess=0;
			}
			else if (wifi_comm == TEMP_SEND)  //MOTOR ON by 70% PWM
			{
				Wifi_send_temp(Temp_value); // send Temp_value To mobile app
			}
		}
	}
}

void Wifi_send_temp(u8 temp)
{
	u8 string[20];
	sprintf(string,"Temp = %d",temp);
	_delay_ms(500);
//	H_ESP8266_void_sendPublish("OPENLABPRO", string);
	H_ESP8266_void_sendPublish("TEMP/setpoint/state",string);
	H_LCD_void_sendString("Done Sending");
}

u8 Read_Temp(void)
{
	return H_LM35_s16_getTemp();
}
u8 Wifi_receive_command(void)
{
//	debugStr("Here We are");
	u8 string[100];
	H_ESP_ReceiveString(string);

	if(strstr((const char*)string, "LEDON") != NULL)
	{
		debugStr("Turn on LED");
		ledOn = 1;
		return LED_ON;
	}
	else if (strstr((const char*)string, A_LED_OFF)!= NULL)
	{
		debugStr("Turn OFF LED");
		ledOn = 0;
		return LED_OFF;
	}
	else if(strstr((const char*)string, A_MOTOR_OFF)!= NULL)
	{
		debugStr("Turn on Motor");
		return MOTOR_OFF;
	}
	else if (strstr((const char*)string, A_MOTOR_30_PWM_ON)!= NULL)
	{
		debugStr("Motor 30% Duty");
		return MOTOR_30_PWM_ON;
	}
	else if (strstr((const char*)string, A_MOTOR_70_PWM_ON)!= NULL)
	{
		debugStr("Motor 70% Duty");
		return MOTOR_70_PWM_ON;
	}
	else if (strstr((const char*)string, A_LOGOUT_SYSTEM)!= NULL)
	{
		debugStr("Log out");
		return LOGOUT_SYSTEM;
	}
	else if (strstr((const char*)string, A_TEMP_SEND)!= NULL)
	{
		debugStr("Send Temp");
		return TEMP_SEND;
	}
	return 0;
}
u8 Darkness_read()
{
	u8 darknessValue = (H_LDR_u8GetLighteningValue() * 100) / 180;
	if (darknessValue > 100) darknessValue = 100;
	return darknessValue;
}
void LED_ON_PWM(u8 duty)
{
	H_LED_voidSetLedIntesity(duty);
	H_LED_void_turnON();
}

void turn_led_off(void)
{
	H_LED_void_turnOFF();
}

void turn_MOTOR_off(void)
{
//	H_DC_MOTOR_voidSetDutyCycle(0);
	H_DC_MOTOR_voidStop();
}
void turn_MOTOR_on(u8 duty)
{
	H_DC_MOTOR_voidSetDutyCycle(duty);
	H_DC_MOTOR_voidStart();
}

void ESP01_init()
{
	H_LCD_void_sendCommand(LCD_CMD_CLEAR);
	H_LCD_void_sendString("Init.");

	H_ESP8266_void_Init();

	H_LCD_void_sendCommand(LCD_CMD_CLEAR);
	H_LCD_void_sendString("Init..");

	 H_ESP8266_void_sendConnect("TST");

	 H_LCD_void_sendCommand(LCD_CMD_CLEAR);
	 H_LCD_void_sendString("Init...");
	 _delay_ms(1000);

	 H_ESP8266_void_sendPublish("OPENLABPRO","HELLO");
	_delay_ms(5000);

	 H_ESP8266_void_sendSubscribe("OPENLABPRO");

	 H_LCD_void_sendCommand(LCD_CMD_CLEAR);
	 H_LCD_void_sendIntNum(3);
	 H_LCD_void_sendString("Init done");
	_delay_ms(1000);


//	H_ESP8266_void_sendPublish("OPENLABPR1","HELLO");
//	_delay_ms(1000);

//
	//H_ESP8266_void_sendSubscribe("OPENLABPRO");
	_delay_ms(1000);
}
