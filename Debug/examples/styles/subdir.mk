################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../examples/styles/lv_example_style_1.c \
../examples/styles/lv_example_style_10.c \
../examples/styles/lv_example_style_11.c \
../examples/styles/lv_example_style_12.c \
../examples/styles/lv_example_style_13.c \
../examples/styles/lv_example_style_14.c \
../examples/styles/lv_example_style_15.c \
../examples/styles/lv_example_style_2.c \
../examples/styles/lv_example_style_3.c \
../examples/styles/lv_example_style_4.c \
../examples/styles/lv_example_style_5.c \
../examples/styles/lv_example_style_6.c \
../examples/styles/lv_example_style_7.c \
../examples/styles/lv_example_style_8.c \
../examples/styles/lv_example_style_9.c 

OBJS += \
./examples/styles/lv_example_style_1.o \
./examples/styles/lv_example_style_10.o \
./examples/styles/lv_example_style_11.o \
./examples/styles/lv_example_style_12.o \
./examples/styles/lv_example_style_13.o \
./examples/styles/lv_example_style_14.o \
./examples/styles/lv_example_style_15.o \
./examples/styles/lv_example_style_2.o \
./examples/styles/lv_example_style_3.o \
./examples/styles/lv_example_style_4.o \
./examples/styles/lv_example_style_5.o \
./examples/styles/lv_example_style_6.o \
./examples/styles/lv_example_style_7.o \
./examples/styles/lv_example_style_8.o \
./examples/styles/lv_example_style_9.o 

C_DEPS += \
./examples/styles/lv_example_style_1.d \
./examples/styles/lv_example_style_10.d \
./examples/styles/lv_example_style_11.d \
./examples/styles/lv_example_style_12.d \
./examples/styles/lv_example_style_13.d \
./examples/styles/lv_example_style_14.d \
./examples/styles/lv_example_style_15.d \
./examples/styles/lv_example_style_2.d \
./examples/styles/lv_example_style_3.d \
./examples/styles/lv_example_style_4.d \
./examples/styles/lv_example_style_5.d \
./examples/styles/lv_example_style_6.d \
./examples/styles/lv_example_style_7.d \
./examples/styles/lv_example_style_8.d \
./examples/styles/lv_example_style_9.d 


# Each subdirectory must supply rules for building sources it contributes
examples/styles/%.o examples/styles/%.su: ../examples/styles/%.c examples/styles/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/examples" -I"C:/Users/giahu/source/TFT/examples/anim" -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_widgets" -I"C:/Users/giahu/source/TFT/lvgl/src" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_draw" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_core" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_themes" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_misc" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_hal" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_font" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_gpu" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_internal.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-examples-2f-styles

clean-examples-2f-styles:
	-$(RM) ./examples/styles/lv_example_style_1.d ./examples/styles/lv_example_style_1.o ./examples/styles/lv_example_style_1.su ./examples/styles/lv_example_style_10.d ./examples/styles/lv_example_style_10.o ./examples/styles/lv_example_style_10.su ./examples/styles/lv_example_style_11.d ./examples/styles/lv_example_style_11.o ./examples/styles/lv_example_style_11.su ./examples/styles/lv_example_style_12.d ./examples/styles/lv_example_style_12.o ./examples/styles/lv_example_style_12.su ./examples/styles/lv_example_style_13.d ./examples/styles/lv_example_style_13.o ./examples/styles/lv_example_style_13.su ./examples/styles/lv_example_style_14.d ./examples/styles/lv_example_style_14.o ./examples/styles/lv_example_style_14.su ./examples/styles/lv_example_style_15.d ./examples/styles/lv_example_style_15.o ./examples/styles/lv_example_style_15.su ./examples/styles/lv_example_style_2.d ./examples/styles/lv_example_style_2.o ./examples/styles/lv_example_style_2.su ./examples/styles/lv_example_style_3.d ./examples/styles/lv_example_style_3.o ./examples/styles/lv_example_style_3.su ./examples/styles/lv_example_style_4.d ./examples/styles/lv_example_style_4.o ./examples/styles/lv_example_style_4.su ./examples/styles/lv_example_style_5.d ./examples/styles/lv_example_style_5.o ./examples/styles/lv_example_style_5.su ./examples/styles/lv_example_style_6.d ./examples/styles/lv_example_style_6.o ./examples/styles/lv_example_style_6.su ./examples/styles/lv_example_style_7.d ./examples/styles/lv_example_style_7.o ./examples/styles/lv_example_style_7.su ./examples/styles/lv_example_style_8.d ./examples/styles/lv_example_style_8.o ./examples/styles/lv_example_style_8.su ./examples/styles/lv_example_style_9.d ./examples/styles/lv_example_style_9.o ./examples/styles/lv_example_style_9.su

.PHONY: clean-examples-2f-styles

