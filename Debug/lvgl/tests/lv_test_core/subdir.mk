################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/tests/lv_test_core/lv_test_core.c \
../lvgl/tests/lv_test_core/lv_test_obj.c \
../lvgl/tests/lv_test_core/lv_test_style.c 

OBJS += \
./lvgl/tests/lv_test_core/lv_test_core.o \
./lvgl/tests/lv_test_core/lv_test_obj.o \
./lvgl/tests/lv_test_core/lv_test_style.o 

C_DEPS += \
./lvgl/tests/lv_test_core/lv_test_core.d \
./lvgl/tests/lv_test_core/lv_test_obj.d \
./lvgl/tests/lv_test_core/lv_test_style.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/tests/lv_test_core/%.o lvgl/tests/lv_test_core/%.su: ../lvgl/tests/lv_test_core/%.c lvgl/tests/lv_test_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/examples" -I"C:/Users/giahu/source/TFT/examples/anim" -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_widgets" -I"C:/Users/giahu/source/TFT/lvgl/src" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_draw" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_core" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_themes" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_misc" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_hal" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_font" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_gpu" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_internal.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-tests-2f-lv_test_core

clean-lvgl-2f-tests-2f-lv_test_core:
	-$(RM) ./lvgl/tests/lv_test_core/lv_test_core.d ./lvgl/tests/lv_test_core/lv_test_core.o ./lvgl/tests/lv_test_core/lv_test_core.su ./lvgl/tests/lv_test_core/lv_test_obj.d ./lvgl/tests/lv_test_core/lv_test_obj.o ./lvgl/tests/lv_test_core/lv_test_obj.su ./lvgl/tests/lv_test_core/lv_test_style.d ./lvgl/tests/lv_test_core/lv_test_style.o ./lvgl/tests/lv_test_core/lv_test_style.su

.PHONY: clean-lvgl-2f-tests-2f-lv_test_core

