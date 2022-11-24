################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../examples/scroll/lv_example_scroll_1.c \
../examples/scroll/lv_example_scroll_2.c \
../examples/scroll/lv_example_scroll_3.c \
../examples/scroll/lv_example_scroll_4.c \
../examples/scroll/lv_example_scroll_5.c \
../examples/scroll/lv_example_scroll_6.c 

OBJS += \
./examples/scroll/lv_example_scroll_1.o \
./examples/scroll/lv_example_scroll_2.o \
./examples/scroll/lv_example_scroll_3.o \
./examples/scroll/lv_example_scroll_4.o \
./examples/scroll/lv_example_scroll_5.o \
./examples/scroll/lv_example_scroll_6.o 

C_DEPS += \
./examples/scroll/lv_example_scroll_1.d \
./examples/scroll/lv_example_scroll_2.d \
./examples/scroll/lv_example_scroll_3.d \
./examples/scroll/lv_example_scroll_4.d \
./examples/scroll/lv_example_scroll_5.d \
./examples/scroll/lv_example_scroll_6.d 


# Each subdirectory must supply rules for building sources it contributes
examples/scroll/%.o examples/scroll/%.su: ../examples/scroll/%.c examples/scroll/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/examples" -I"C:/Users/giahu/source/TFT/examples/anim" -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_widgets" -I"C:/Users/giahu/source/TFT/lvgl/src" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_draw" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_core" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_themes" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_misc" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_hal" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_font" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_gpu" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_internal.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-examples-2f-scroll

clean-examples-2f-scroll:
	-$(RM) ./examples/scroll/lv_example_scroll_1.d ./examples/scroll/lv_example_scroll_1.o ./examples/scroll/lv_example_scroll_1.su ./examples/scroll/lv_example_scroll_2.d ./examples/scroll/lv_example_scroll_2.o ./examples/scroll/lv_example_scroll_2.su ./examples/scroll/lv_example_scroll_3.d ./examples/scroll/lv_example_scroll_3.o ./examples/scroll/lv_example_scroll_3.su ./examples/scroll/lv_example_scroll_4.d ./examples/scroll/lv_example_scroll_4.o ./examples/scroll/lv_example_scroll_4.su ./examples/scroll/lv_example_scroll_5.d ./examples/scroll/lv_example_scroll_5.o ./examples/scroll/lv_example_scroll_5.su ./examples/scroll/lv_example_scroll_6.d ./examples/scroll/lv_example_scroll_6.o ./examples/scroll/lv_example_scroll_6.su

.PHONY: clean-examples-2f-scroll

