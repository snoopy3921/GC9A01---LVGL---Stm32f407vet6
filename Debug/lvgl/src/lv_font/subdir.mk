################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/lv_font/lv_font.c \
../lvgl/src/lv_font/lv_font_fmt_txt.c \
../lvgl/src/lv_font/lv_font_roboto_12.c \
../lvgl/src/lv_font/lv_font_roboto_16.c \
../lvgl/src/lv_font/lv_font_roboto_22.c \
../lvgl/src/lv_font/lv_font_roboto_28.c \
../lvgl/src/lv_font/lv_font_unscii_8.c 

OBJS += \
./lvgl/src/lv_font/lv_font.o \
./lvgl/src/lv_font/lv_font_fmt_txt.o \
./lvgl/src/lv_font/lv_font_roboto_12.o \
./lvgl/src/lv_font/lv_font_roboto_16.o \
./lvgl/src/lv_font/lv_font_roboto_22.o \
./lvgl/src/lv_font/lv_font_roboto_28.o \
./lvgl/src/lv_font/lv_font_unscii_8.o 

C_DEPS += \
./lvgl/src/lv_font/lv_font.d \
./lvgl/src/lv_font/lv_font_fmt_txt.d \
./lvgl/src/lv_font/lv_font_roboto_12.d \
./lvgl/src/lv_font/lv_font_roboto_16.d \
./lvgl/src/lv_font/lv_font_roboto_22.d \
./lvgl/src/lv_font/lv_font_roboto_28.d \
./lvgl/src/lv_font/lv_font_unscii_8.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/lv_font/%.o lvgl/src/lv_font/%.su: ../lvgl/src/lv_font/%.c lvgl/src/lv_font/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/demo" -include"C:/Users/giahu/source/TFT/lvgl/lvgl.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-lv_font

clean-lvgl-2f-src-2f-lv_font:
	-$(RM) ./lvgl/src/lv_font/lv_font.d ./lvgl/src/lv_font/lv_font.o ./lvgl/src/lv_font/lv_font.su ./lvgl/src/lv_font/lv_font_fmt_txt.d ./lvgl/src/lv_font/lv_font_fmt_txt.o ./lvgl/src/lv_font/lv_font_fmt_txt.su ./lvgl/src/lv_font/lv_font_roboto_12.d ./lvgl/src/lv_font/lv_font_roboto_12.o ./lvgl/src/lv_font/lv_font_roboto_12.su ./lvgl/src/lv_font/lv_font_roboto_16.d ./lvgl/src/lv_font/lv_font_roboto_16.o ./lvgl/src/lv_font/lv_font_roboto_16.su ./lvgl/src/lv_font/lv_font_roboto_22.d ./lvgl/src/lv_font/lv_font_roboto_22.o ./lvgl/src/lv_font/lv_font_roboto_22.su ./lvgl/src/lv_font/lv_font_roboto_28.d ./lvgl/src/lv_font/lv_font_roboto_28.o ./lvgl/src/lv_font/lv_font_roboto_28.su ./lvgl/src/lv_font/lv_font_unscii_8.d ./lvgl/src/lv_font/lv_font_unscii_8.o ./lvgl/src/lv_font/lv_font_unscii_8.su

.PHONY: clean-lvgl-2f-src-2f-lv_font

