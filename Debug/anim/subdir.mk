################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../anim/lv_example_anim_1.c \
../anim/lv_example_anim_2.c \
../anim/lv_example_anim_3.c \
../anim/lv_example_anim_timeline_1.c 

OBJS += \
./anim/lv_example_anim_1.o \
./anim/lv_example_anim_2.o \
./anim/lv_example_anim_3.o \
./anim/lv_example_anim_timeline_1.o 

C_DEPS += \
./anim/lv_example_anim_1.d \
./anim/lv_example_anim_2.d \
./anim/lv_example_anim_3.d \
./anim/lv_example_anim_timeline_1.d 


# Each subdirectory must supply rules for building sources it contributes
anim/%.o anim/%.su: ../anim/%.c anim/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/demo" -I"C:/Users/giahu/source/TFT/anim" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-anim

clean-anim:
	-$(RM) ./anim/lv_example_anim_1.d ./anim/lv_example_anim_1.o ./anim/lv_example_anim_1.su ./anim/lv_example_anim_2.d ./anim/lv_example_anim_2.o ./anim/lv_example_anim_2.su ./anim/lv_example_anim_3.d ./anim/lv_example_anim_3.o ./anim/lv_example_anim_3.su ./anim/lv_example_anim_timeline_1.d ./anim/lv_example_anim_timeline_1.o ./anim/lv_example_anim_timeline_1.su

.PHONY: clean-anim

