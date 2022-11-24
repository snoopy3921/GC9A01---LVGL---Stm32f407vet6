################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/lv_themes/lv_theme.c \
../lvgl/src/lv_themes/lv_theme_alien.c \
../lvgl/src/lv_themes/lv_theme_default.c \
../lvgl/src/lv_themes/lv_theme_material.c \
../lvgl/src/lv_themes/lv_theme_mono.c \
../lvgl/src/lv_themes/lv_theme_nemo.c \
../lvgl/src/lv_themes/lv_theme_night.c \
../lvgl/src/lv_themes/lv_theme_templ.c \
../lvgl/src/lv_themes/lv_theme_zen.c 

OBJS += \
./lvgl/src/lv_themes/lv_theme.o \
./lvgl/src/lv_themes/lv_theme_alien.o \
./lvgl/src/lv_themes/lv_theme_default.o \
./lvgl/src/lv_themes/lv_theme_material.o \
./lvgl/src/lv_themes/lv_theme_mono.o \
./lvgl/src/lv_themes/lv_theme_nemo.o \
./lvgl/src/lv_themes/lv_theme_night.o \
./lvgl/src/lv_themes/lv_theme_templ.o \
./lvgl/src/lv_themes/lv_theme_zen.o 

C_DEPS += \
./lvgl/src/lv_themes/lv_theme.d \
./lvgl/src/lv_themes/lv_theme_alien.d \
./lvgl/src/lv_themes/lv_theme_default.d \
./lvgl/src/lv_themes/lv_theme_material.d \
./lvgl/src/lv_themes/lv_theme_mono.d \
./lvgl/src/lv_themes/lv_theme_nemo.d \
./lvgl/src/lv_themes/lv_theme_night.d \
./lvgl/src/lv_themes/lv_theme_templ.d \
./lvgl/src/lv_themes/lv_theme_zen.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/lv_themes/%.o lvgl/src/lv_themes/%.su: ../lvgl/src/lv_themes/%.c lvgl/src/lv_themes/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/demo" -include"C:/Users/giahu/source/TFT/lvgl/lvgl.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-lv_themes

clean-lvgl-2f-src-2f-lv_themes:
	-$(RM) ./lvgl/src/lv_themes/lv_theme.d ./lvgl/src/lv_themes/lv_theme.o ./lvgl/src/lv_themes/lv_theme.su ./lvgl/src/lv_themes/lv_theme_alien.d ./lvgl/src/lv_themes/lv_theme_alien.o ./lvgl/src/lv_themes/lv_theme_alien.su ./lvgl/src/lv_themes/lv_theme_default.d ./lvgl/src/lv_themes/lv_theme_default.o ./lvgl/src/lv_themes/lv_theme_default.su ./lvgl/src/lv_themes/lv_theme_material.d ./lvgl/src/lv_themes/lv_theme_material.o ./lvgl/src/lv_themes/lv_theme_material.su ./lvgl/src/lv_themes/lv_theme_mono.d ./lvgl/src/lv_themes/lv_theme_mono.o ./lvgl/src/lv_themes/lv_theme_mono.su ./lvgl/src/lv_themes/lv_theme_nemo.d ./lvgl/src/lv_themes/lv_theme_nemo.o ./lvgl/src/lv_themes/lv_theme_nemo.su ./lvgl/src/lv_themes/lv_theme_night.d ./lvgl/src/lv_themes/lv_theme_night.o ./lvgl/src/lv_themes/lv_theme_night.su ./lvgl/src/lv_themes/lv_theme_templ.d ./lvgl/src/lv_themes/lv_theme_templ.o ./lvgl/src/lv_themes/lv_theme_templ.su ./lvgl/src/lv_themes/lv_theme_zen.d ./lvgl/src/lv_themes/lv_theme_zen.o ./lvgl/src/lv_themes/lv_theme_zen.su

.PHONY: clean-lvgl-2f-src-2f-lv_themes

