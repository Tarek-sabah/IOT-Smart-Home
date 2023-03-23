################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../HAL/WIFI_ESP01/ESP01_PROG.c 

OBJS += \
./HAL/WIFI_ESP01/ESP01_PROG.o 

C_DEPS += \
./HAL/WIFI_ESP01/ESP01_PROG.d 


# Each subdirectory must supply rules for building sources it contributes
HAL/WIFI_ESP01/%.o: ../HAL/WIFI_ESP01/%.c HAL/WIFI_ESP01/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\3Blue1Brown\many flash\SmartHomeECU2\APP" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\CONFIG" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\HAL" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\HAL\DC_Motor" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\HAL\LCD" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\HAL\LDR" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\HAL\LED" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\HAL\LM35" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\HAL\WIFI_ESP01" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\LIB" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\MCAL" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\MCAL\ADC" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\MCAL\DIO" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\MCAL\EXTI" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\MCAL\Global_Interrupt" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\MCAL\PORT" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\MCAL\Timer0" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\MCAL\Timer1" -I"E:\3Blue1Brown\many flash\SmartHomeECU2\MCAL\UART" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


