################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/lv_draw/lv_draw.c \
../lvgl/src/lv_draw/lv_draw_arc.c \
../lvgl/src/lv_draw/lv_draw_basic.c \
../lvgl/src/lv_draw/lv_draw_img.c \
../lvgl/src/lv_draw/lv_draw_label.c \
../lvgl/src/lv_draw/lv_draw_line.c \
../lvgl/src/lv_draw/lv_draw_rect.c \
../lvgl/src/lv_draw/lv_draw_triangle.c \
../lvgl/src/lv_draw/lv_img_cache.c \
../lvgl/src/lv_draw/lv_img_decoder.c 

OBJS += \
./lvgl/src/lv_draw/lv_draw.o \
./lvgl/src/lv_draw/lv_draw_arc.o \
./lvgl/src/lv_draw/lv_draw_basic.o \
./lvgl/src/lv_draw/lv_draw_img.o \
./lvgl/src/lv_draw/lv_draw_label.o \
./lvgl/src/lv_draw/lv_draw_line.o \
./lvgl/src/lv_draw/lv_draw_rect.o \
./lvgl/src/lv_draw/lv_draw_triangle.o \
./lvgl/src/lv_draw/lv_img_cache.o \
./lvgl/src/lv_draw/lv_img_decoder.o 

C_DEPS += \
./lvgl/src/lv_draw/lv_draw.d \
./lvgl/src/lv_draw/lv_draw_arc.d \
./lvgl/src/lv_draw/lv_draw_basic.d \
./lvgl/src/lv_draw/lv_draw_img.d \
./lvgl/src/lv_draw/lv_draw_label.d \
./lvgl/src/lv_draw/lv_draw_line.d \
./lvgl/src/lv_draw/lv_draw_rect.d \
./lvgl/src/lv_draw/lv_draw_triangle.d \
./lvgl/src/lv_draw/lv_img_cache.d \
./lvgl/src/lv_draw/lv_img_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/lv_draw/%.o lvgl/src/lv_draw/%.su: ../lvgl/src/lv_draw/%.c lvgl/src/lv_draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/demo" -include"C:/Users/giahu/source/TFT/lvgl/lvgl.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-lv_draw

clean-lvgl-2f-src-2f-lv_draw:
	-$(RM) ./lvgl/src/lv_draw/lv_draw.d ./lvgl/src/lv_draw/lv_draw.o ./lvgl/src/lv_draw/lv_draw.su ./lvgl/src/lv_draw/lv_draw_arc.d ./lvgl/src/lv_draw/lv_draw_arc.o ./lvgl/src/lv_draw/lv_draw_arc.su ./lvgl/src/lv_draw/lv_draw_basic.d ./lvgl/src/lv_draw/lv_draw_basic.o ./lvgl/src/lv_draw/lv_draw_basic.su ./lvgl/src/lv_draw/lv_draw_img.d ./lvgl/src/lv_draw/lv_draw_img.o ./lvgl/src/lv_draw/lv_draw_img.su ./lvgl/src/lv_draw/lv_draw_label.d ./lvgl/src/lv_draw/lv_draw_label.o ./lvgl/src/lv_draw/lv_draw_label.su ./lvgl/src/lv_draw/lv_draw_line.d ./lvgl/src/lv_draw/lv_draw_line.o ./lvgl/src/lv_draw/lv_draw_line.su ./lvgl/src/lv_draw/lv_draw_rect.d ./lvgl/src/lv_draw/lv_draw_rect.o ./lvgl/src/lv_draw/lv_draw_rect.su ./lvgl/src/lv_draw/lv_draw_triangle.d ./lvgl/src/lv_draw/lv_draw_triangle.o ./lvgl/src/lv_draw/lv_draw_triangle.su ./lvgl/src/lv_draw/lv_img_cache.d ./lvgl/src/lv_draw/lv_img_cache.o ./lvgl/src/lv_draw/lv_img_cache.su ./lvgl/src/lv_draw/lv_img_decoder.d ./lvgl/src/lv_draw/lv_img_decoder.o ./lvgl/src/lv_draw/lv_img_decoder.su

.PHONY: clean-lvgl-2f-src-2f-lv_draw

