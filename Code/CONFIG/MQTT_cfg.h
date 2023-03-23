/*
 * MQTT_cfg.h
 *
 *  Created on: Mar 16, 2023
 *      Author: tarek
 */

#ifndef CONFIG_MQTT_CFG_H_
#define CONFIG_MQTT_CFG_H_


#define MQTT_PROTOCOL_LEVEL			4

#define MQTT_CTRL_CONNECT			0x1
#define MQTT_CTRL_CONNECTACK		0x2
#define MQTT_CTRL_PUBLISH			0x3
#define MQTT_CTRL_PUBACK			0x4
#define MQTT_CTRL_PUBREC			0x5
#define MQTT_CTRL_PUBREL			0x6
#define MQTT_CTRL_PUBCOMP			0x7
#define MQTT_CTRL_SUBSCRIBE			0x8
#define MQTT_CTRL_SUBACK			0x9
#define MQTT_CTRL_UNSUBSCRIBE		0xA
#define MQTT_CTRL_UNSUBACK			0xB
#define MQTT_CTRL_PINGREQ			0xC
#define MQTT_CTRL_PINGRESP			0xD
#define MQTT_CTRL_DISCONNECT		0xE

#define MQTT_QOS_1					0x1
#define MQTT_QOS_0					0x0






#endif /* CONFIG_MQTT_CFG_H_ */
