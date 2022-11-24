################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/demo.c \
../demo/img_bubble_pattern.c 

OBJS += \
./demo/demo.o \
./demo/img_bubble_pattern.o 

C_DEPS += \
./demo/demo.d \
./demo/img_bubble_pattern.d 


# Each subdirectory must supply rules for building sources it contributes
demo/%.o demo/%.su: ../demo/%.c demo/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/demo" -include"C:/Users/giahu/source/TFT/lvgl/lvgl.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-demo

clean-demo:
	-$(RM) ./demo/demo.d ./demo/demo.o ./demo/demo.su ./demo/img_bubble_pattern.d ./demo/img_bubble_pattern.o ./demo/img_bubble_pattern.su

.PHONY: clean-demo

