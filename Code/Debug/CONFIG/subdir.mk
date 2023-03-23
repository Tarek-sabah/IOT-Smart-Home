################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CONFIG/ADC_Lcfg.c \
../CONFIG/Dio_Lcfg.c \
../CONFIG/ESP8266_Lcfg.c \
../CONFIG/EXTI_Lcfg.c \
../CONFIG/LCD_Lcfg.c \
../CONFIG/LDR_Lcfg.c \
../CONFIG/LED_Lcfg.c \
../CONFIG/Port_Lcfg.c \
../CONFIG/TIEMR1_Lcfg.c \
../CONFIG/TIMER0_Lcfg.c \
../CONFIG/UART_Lcfg.c 

OBJS += \
./CONFIG/ADC_Lcfg.o \
./CONFIG/Dio_Lcfg.o \
./CONFIG/ESP8266_Lcfg.o \
./CONFIG/EXTI_Lcfg.o \
./CONFIG/LCD_Lcfg.o \
./CONFIG/LDR_Lcfg.o \
./CONFIG/LED_Lcfg.o \
./CONFIG/Port_Lcfg.o \
./CONFIG/TIEMR1_Lcfg.o \
./CONFIG/TIMER0_Lcfg.o \
./CONFIG/UART_Lcfg.o 

C_DEPS += \
./CONFIG/ADC_Lcfg.d \
./CONFIG/Dio_Lcfg.d \
./CONFIG/ESP8266_Lcfg.d \
./CONFIG/EXTI_Lcfg.d \
./CONFIG/LCD_Lcfg.d \
./CONFIG/LDR_Lcfg.d \
./CONFIG/LED_Lcfg.d \
./CONFIG/Port_Lcfg.d \
./CONFIG/TIEMR1_Lcfg.d \
./CONFIG/TIMER0_Lcfg.d \
./CONFIG/UART_Lcfg.d 


# Each subdirectory must supply rules for building sources it contributes
CONFIG/%.o: ../CONFIG/%.c CONFIG/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\APP" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\CONFIG" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\LCD" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\CONFIG" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\DC_Motor" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\ESP8266" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\LCD" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\LDR" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\LED" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\LM35" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\MQTT" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\LIB" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\ADC" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\DIO" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\EXTI" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\Global_Interrupt" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\PORT" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\Timer0" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\Timer1" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\UART" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


