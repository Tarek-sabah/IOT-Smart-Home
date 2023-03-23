################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MCAL/UART/UART_prg.c 

OBJS += \
./MCAL/UART/UART_prg.o 

C_DEPS += \
./MCAL/UART/UART_prg.d 


# Each subdirectory must supply rules for building sources it contributes
MCAL/UART/%.o: ../MCAL/UART/%.c MCAL/UART/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\APP" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\CONFIG" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\LCD" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\CONFIG" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\DC_Motor" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\ESP8266" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\LCD" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\LDR" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\LED" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\LM35" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\HAL\MQTT" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\LIB" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\ADC" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\DIO" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\EXTI" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\Global_Interrupt" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\PORT" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\Timer0" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\Timer1" -I"D:\Tarek\Work\Learning\NTI\4 Months Program\AVR\AVR Projects\Smart Home V2_\SmartHomeECU2\MCAL\UART" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


