################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/env_support/pikascript/pika_lv_point_t.c \
../lvgl/env_support/pikascript/pika_lv_timer_t.c \
../lvgl/env_support/pikascript/pika_lv_wegit.c \
../lvgl/env_support/pikascript/pika_lvgl.c \
../lvgl/env_support/pikascript/pika_lvgl_indev_t.c \
../lvgl/env_support/pikascript/pika_lvgl_lv_event.c \
../lvgl/env_support/pikascript/pika_lvgl_lv_obj.c \
../lvgl/env_support/pikascript/pika_lvgl_lv_style_t.c 

OBJS += \
./lvgl/env_support/pikascript/pika_lv_point_t.o \
./lvgl/env_support/pikascript/pika_lv_timer_t.o \
./lvgl/env_support/pikascript/pika_lv_wegit.o \
./lvgl/env_support/pikascript/pika_lvgl.o \
./lvgl/env_support/pikascript/pika_lvgl_indev_t.o \
./lvgl/env_support/pikascript/pika_lvgl_lv_event.o \
./lvgl/env_support/pikascript/pika_lvgl_lv_obj.o \
./lvgl/env_support/pikascript/pika_lvgl_lv_style_t.o 

C_DEPS += \
./lvgl/env_support/pikascript/pika_lv_point_t.d \
./lvgl/env_support/pikascript/pika_lv_timer_t.d \
./lvgl/env_support/pikascript/pika_lv_wegit.d \
./lvgl/env_support/pikascript/pika_lvgl.d \
./lvgl/env_support/pikascript/pika_lvgl_indev_t.d \
./lvgl/env_support/pikascript/pika_lvgl_lv_event.d \
./lvgl/env_support/pikascript/pika_lvgl_lv_obj.d \
./lvgl/env_support/pikascript/pika_lvgl_lv_style_t.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/env_support/pikascript/%.o lvgl/env_support/pikascript/%.su: ../lvgl/env_support/pikascript/%.c lvgl/env_support/pikascript/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/lvgl/examples" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_internal.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-env_support-2f-pikascript

clean-lvgl-2f-env_support-2f-pikascript:
	-$(RM) ./lvgl/env_support/pikascript/pika_lv_point_t.d ./lvgl/env_support/pikascript/pika_lv_point_t.o ./lvgl/env_support/pikascript/pika_lv_point_t.su ./lvgl/env_support/pikascript/pika_lv_timer_t.d ./lvgl/env_support/pikascript/pika_lv_timer_t.o ./lvgl/env_support/pikascript/pika_lv_timer_t.su ./lvgl/env_support/pikascript/pika_lv_wegit.d ./lvgl/env_support/pikascript/pika_lv_wegit.o ./lvgl/env_support/pikascript/pika_lv_wegit.su ./lvgl/env_support/pikascript/pika_lvgl.d ./lvgl/env_support/pikascript/pika_lvgl.o ./lvgl/env_support/pikascript/pika_lvgl.su ./lvgl/env_support/pikascript/pika_lvgl_indev_t.d ./lvgl/env_support/pikascript/pika_lvgl_indev_t.o ./lvgl/env_support/pikascript/pika_lvgl_indev_t.su ./lvgl/env_support/pikascript/pika_lvgl_lv_event.d ./lvgl/env_support/pikascript/pika_lvgl_lv_event.o ./lvgl/env_support/pikascript/pika_lvgl_lv_event.su ./lvgl/env_support/pikascript/pika_lvgl_lv_obj.d ./lvgl/env_support/pikascript/pika_lvgl_lv_obj.o ./lvgl/env_support/pikascript/pika_lvgl_lv_obj.su ./lvgl/env_support/pikascript/pika_lvgl_lv_style_t.d ./lvgl/env_support/pikascript/pika_lvgl_lv_style_t.o ./lvgl/env_support/pikascript/pika_lvgl_lv_style_t.su

.PHONY: clean-lvgl-2f-env_support-2f-pikascript

