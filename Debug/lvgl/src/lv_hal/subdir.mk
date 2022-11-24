################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/lv_hal/lv_hal_disp.c \
../lvgl/src/lv_hal/lv_hal_indev.c \
../lvgl/src/lv_hal/lv_hal_tick.c 

OBJS += \
./lvgl/src/lv_hal/lv_hal_disp.o \
./lvgl/src/lv_hal/lv_hal_indev.o \
./lvgl/src/lv_hal/lv_hal_tick.o 

C_DEPS += \
./lvgl/src/lv_hal/lv_hal_disp.d \
./lvgl/src/lv_hal/lv_hal_indev.d \
./lvgl/src/lv_hal/lv_hal_tick.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/lv_hal/%.o lvgl/src/lv_hal/%.su: ../lvgl/src/lv_hal/%.c lvgl/src/lv_hal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/demo" -include"C:/Users/giahu/source/TFT/lvgl/lvgl.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-lv_hal

clean-lvgl-2f-src-2f-lv_hal:
	-$(RM) ./lvgl/src/lv_hal/lv_hal_disp.d ./lvgl/src/lv_hal/lv_hal_disp.o ./lvgl/src/lv_hal/lv_hal_disp.su ./lvgl/src/lv_hal/lv_hal_indev.d ./lvgl/src/lv_hal/lv_hal_indev.o ./lvgl/src/lv_hal/lv_hal_indev.su ./lvgl/src/lv_hal/lv_hal_tick.d ./lvgl/src/lv_hal/lv_hal_tick.o ./lvgl/src/lv_hal/lv_hal_tick.su

.PHONY: clean-lvgl-2f-src-2f-lv_hal

