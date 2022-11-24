################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../examples/libs/tiny_ttf/lv_example_tiny_ttf_1.c \
../examples/libs/tiny_ttf/lv_example_tiny_ttf_2.c 

OBJS += \
./examples/libs/tiny_ttf/lv_example_tiny_ttf_1.o \
./examples/libs/tiny_ttf/lv_example_tiny_ttf_2.o 

C_DEPS += \
./examples/libs/tiny_ttf/lv_example_tiny_ttf_1.d \
./examples/libs/tiny_ttf/lv_example_tiny_ttf_2.d 


# Each subdirectory must supply rules for building sources it contributes
examples/libs/tiny_ttf/%.o examples/libs/tiny_ttf/%.su: ../examples/libs/tiny_ttf/%.c examples/libs/tiny_ttf/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/examples" -I"C:/Users/giahu/source/TFT/examples/anim" -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_widgets" -I"C:/Users/giahu/source/TFT/lvgl/src" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_draw" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_core" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_themes" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_misc" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_hal" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_font" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_gpu" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_internal.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-examples-2f-libs-2f-tiny_ttf

clean-examples-2f-libs-2f-tiny_ttf:
	-$(RM) ./examples/libs/tiny_ttf/lv_example_tiny_ttf_1.d ./examples/libs/tiny_ttf/lv_example_tiny_ttf_1.o ./examples/libs/tiny_ttf/lv_example_tiny_ttf_1.su ./examples/libs/tiny_ttf/lv_example_tiny_ttf_2.d ./examples/libs/tiny_ttf/lv_example_tiny_ttf_2.o ./examples/libs/tiny_ttf/lv_example_tiny_ttf_2.su

.PHONY: clean-examples-2f-libs-2f-tiny_ttf

