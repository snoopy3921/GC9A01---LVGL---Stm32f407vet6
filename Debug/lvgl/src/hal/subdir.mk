################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/hal/lv_hal_disp.c \
../lvgl/src/hal/lv_hal_indev.c \
../lvgl/src/hal/lv_hal_tick.c 

OBJS += \
./lvgl/src/hal/lv_hal_disp.o \
./lvgl/src/hal/lv_hal_indev.o \
./lvgl/src/hal/lv_hal_tick.o 

C_DEPS += \
./lvgl/src/hal/lv_hal_disp.d \
./lvgl/src/hal/lv_hal_indev.d \
./lvgl/src/hal/lv_hal_tick.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/hal/%.o lvgl/src/hal/%.su: ../lvgl/src/hal/%.c lvgl/src/hal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/lvgl/examples" -I"C:/Users/giahu/source/TFT/lvgl/src" -I"C:/Users/giahu/source/TFT/lvgl/src/widgets" -I"C:/Users/giahu/source/TFT/lvgl/src/core" -I"C:/Users/giahu/source/TFT/lvgl/src/draw" -I"C:/Users/giahu/source/TFT/lvgl/src/font" -I"C:/Users/giahu/source/TFT/lvgl/src/hal" -I"C:/Users/giahu/source/TFT/lvgl/src/misc" -include"C:/Users/giahu/source/TFT/lvgl/lvgl.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_api_map.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_internal.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_kconfig.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-hal

clean-lvgl-2f-src-2f-hal:
	-$(RM) ./lvgl/src/hal/lv_hal_disp.d ./lvgl/src/hal/lv_hal_disp.o ./lvgl/src/hal/lv_hal_disp.su ./lvgl/src/hal/lv_hal_indev.d ./lvgl/src/hal/lv_hal_indev.o ./lvgl/src/hal/lv_hal_indev.su ./lvgl/src/hal/lv_hal_tick.d ./lvgl/src/hal/lv_hal_tick.o ./lvgl/src/hal/lv_hal_tick.su

.PHONY: clean-lvgl-2f-src-2f-hal

