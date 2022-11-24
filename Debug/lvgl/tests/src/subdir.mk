################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/tests/src/lv_test_indev.c \
../lvgl/tests/src/lv_test_init.c 

OBJS += \
./lvgl/tests/src/lv_test_indev.o \
./lvgl/tests/src/lv_test_init.o 

C_DEPS += \
./lvgl/tests/src/lv_test_indev.d \
./lvgl/tests/src/lv_test_init.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/tests/src/%.o lvgl/tests/src/%.su: ../lvgl/tests/src/%.c lvgl/tests/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/lvgl/examples" -I"C:/Users/giahu/source/TFT/lvgl/src" -I"C:/Users/giahu/source/TFT/lvgl/src/widgets" -I"C:/Users/giahu/source/TFT/lvgl/src/core" -I"C:/Users/giahu/source/TFT/lvgl/src/draw" -I"C:/Users/giahu/source/TFT/lvgl/src/font" -I"C:/Users/giahu/source/TFT/lvgl/src/hal" -I"C:/Users/giahu/source/TFT/lvgl/src/misc" -include"C:/Users/giahu/source/TFT/lvgl/lvgl.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_api_map.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_internal.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_kconfig.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-tests-2f-src

clean-lvgl-2f-tests-2f-src:
	-$(RM) ./lvgl/tests/src/lv_test_indev.d ./lvgl/tests/src/lv_test_indev.o ./lvgl/tests/src/lv_test_indev.su ./lvgl/tests/src/lv_test_init.d ./lvgl/tests/src/lv_test_init.o ./lvgl/tests/src/lv_test_init.su

.PHONY: clean-lvgl-2f-tests-2f-src

