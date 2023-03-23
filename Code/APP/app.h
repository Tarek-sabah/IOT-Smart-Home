/*
 * app.h
 *
 * Created: 3/8/2023 2:47:51 PM
 *  Author: Sara
 */ 


#ifndef APP_H_
#define APP_H_

#include "STD_TYPES.h"

//#define LED_ON				1
//#define LED_OFF				2
//#define MOTOR_OFF			3
//#define MOTOR_ON			4
//#define MOTOR_30_PWM_ON 	5
//#define MOTOR_70_PWM_ON 	6
//#define LOGOUT_SYSTEM		7

/*#define	A_LED_OFF          "LED_OFF"
#define	A_MOTOR_OFF        "M_MOTOR_OFF"
#define	A_MOTOR_30_PWM_ON  "M_MOTOR_30_PWM_ON"
#define	A_MOTOR_70_PWM_ON  "M_MOTOR_70_PWM_ON"
#define	A_LOGOUT_SYSTEM    "M_LOGOUT_SYSTEM"
#define A_LED_ON          ِ  "M_LED_ON"
#define A_TEMP_SEND	 	   "M_SEND_TEMP"*/

#define	A_LED_OFF          "LEDOFF"
#define	A_MOTOR_OFF        "MOTOROFF"
#define	A_MOTOR_30_PWM_ON  "MOTOR30"
#define	A_MOTOR_70_PWM_ON  "MOTOR70"
#define	A_LOGOUT_SYSTEM    "LOGOUT"

#warning "Becarful this deine is nout used, lease change it manually"
#define A_LED_ON          ِ  "LEDON"

#define A_TEMP_SEND	 	   "TEMP"

typedef enum
{
	LED_ON=1,
	LED_OFF,
	MOTOR_OFF,
	MOTOR_30_PWM_ON,
	MOTOR_70_PWM_ON,
	LOGOUT_SYSTEM,
	TEMP_SEND
}EN_WiFi_COMMAND_t;

void app_init();

void app_start();
//receives the Temp and send to mobile app
void Wifi_send_temp(u8 temp);

/*receives the WIFI command and return the u8 1 -> to ON LED, 2 -> to OFF LED
 3 -> to OFF motor, 4 -> to ON motor by 30% PWM, 5 -> to ON motor by 70% PWM,
 6 -> to logout for system. 
*/
u8 Read_Temp(void);
u8 Wifi_receive_command(void);

u8 Darkness_read(void);

void LED_ON_PWM(u8 duty);
void turn_led_off(void);

void turn_MOTOR_on(u8 duty);

void turn_MOTOR_off(void);

void ESP01_init(void);

#endif /* APP_H_ */
