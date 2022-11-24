################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../examples/widgets/chart/lv_example_chart_1.c \
../examples/widgets/chart/lv_example_chart_2.c \
../examples/widgets/chart/lv_example_chart_3.c \
../examples/widgets/chart/lv_example_chart_4.c \
../examples/widgets/chart/lv_example_chart_5.c \
../examples/widgets/chart/lv_example_chart_6.c \
../examples/widgets/chart/lv_example_chart_7.c \
../examples/widgets/chart/lv_example_chart_8.c \
../examples/widgets/chart/lv_example_chart_9.c 

OBJS += \
./examples/widgets/chart/lv_example_chart_1.o \
./examples/widgets/chart/lv_example_chart_2.o \
./examples/widgets/chart/lv_example_chart_3.o \
./examples/widgets/chart/lv_example_chart_4.o \
./examples/widgets/chart/lv_example_chart_5.o \
./examples/widgets/chart/lv_example_chart_6.o \
./examples/widgets/chart/lv_example_chart_7.o \
./examples/widgets/chart/lv_example_chart_8.o \
./examples/widgets/chart/lv_example_chart_9.o 

C_DEPS += \
./examples/widgets/chart/lv_example_chart_1.d \
./examples/widgets/chart/lv_example_chart_2.d \
./examples/widgets/chart/lv_example_chart_3.d \
./examples/widgets/chart/lv_example_chart_4.d \
./examples/widgets/chart/lv_example_chart_5.d \
./examples/widgets/chart/lv_example_chart_6.d \
./examples/widgets/chart/lv_example_chart_7.d \
./examples/widgets/chart/lv_example_chart_8.d \
./examples/widgets/chart/lv_example_chart_9.d 


# Each subdirectory must supply rules for building sources it contributes
examples/widgets/chart/%.o examples/widgets/chart/%.su: ../examples/widgets/chart/%.c examples/widgets/chart/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/examples" -I"C:/Users/giahu/source/TFT/examples/anim" -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_widgets" -I"C:/Users/giahu/source/TFT/lvgl/src" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_draw" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_core" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_themes" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_misc" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_hal" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_font" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_gpu" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_internal.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-examples-2f-widgets-2f-chart

clean-examples-2f-widgets-2f-chart:
	-$(RM) ./examples/widgets/chart/lv_example_chart_1.d ./examples/widgets/chart/lv_example_chart_1.o ./examples/widgets/chart/lv_example_chart_1.su ./examples/widgets/chart/lv_example_chart_2.d ./examples/widgets/chart/lv_example_chart_2.o ./examples/widgets/chart/lv_example_chart_2.su ./examples/widgets/chart/lv_example_chart_3.d ./examples/widgets/chart/lv_example_chart_3.o ./examples/widgets/chart/lv_example_chart_3.su ./examples/widgets/chart/lv_example_chart_4.d ./examples/widgets/chart/lv_example_chart_4.o ./examples/widgets/chart/lv_example_chart_4.su ./examples/widgets/chart/lv_example_chart_5.d ./examples/widgets/chart/lv_example_chart_5.o ./examples/widgets/chart/lv_example_chart_5.su ./examples/widgets/chart/lv_example_chart_6.d ./examples/widgets/chart/lv_example_chart_6.o ./examples/widgets/chart/lv_example_chart_6.su ./examples/widgets/chart/lv_example_chart_7.d ./examples/widgets/chart/lv_example_chart_7.o ./examples/widgets/chart/lv_example_chart_7.su ./examples/widgets/chart/lv_example_chart_8.d ./examples/widgets/chart/lv_example_chart_8.o ./examples/widgets/chart/lv_example_chart_8.su ./examples/widgets/chart/lv_example_chart_9.d ./examples/widgets/chart/lv_example_chart_9.o ./examples/widgets/chart/lv_example_chart_9.su

.PHONY: clean-examples-2f-widgets-2f-chart

