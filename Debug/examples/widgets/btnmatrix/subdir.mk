################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../examples/widgets/btnmatrix/lv_example_btnmatrix_1.c \
../examples/widgets/btnmatrix/lv_example_btnmatrix_2.c \
../examples/widgets/btnmatrix/lv_example_btnmatrix_3.c 

OBJS += \
./examples/widgets/btnmatrix/lv_example_btnmatrix_1.o \
./examples/widgets/btnmatrix/lv_example_btnmatrix_2.o \
./examples/widgets/btnmatrix/lv_example_btnmatrix_3.o 

C_DEPS += \
./examples/widgets/btnmatrix/lv_example_btnmatrix_1.d \
./examples/widgets/btnmatrix/lv_example_btnmatrix_2.d \
./examples/widgets/btnmatrix/lv_example_btnmatrix_3.d 


# Each subdirectory must supply rules for building sources it contributes
examples/widgets/btnmatrix/%.o examples/widgets/btnmatrix/%.su: ../examples/widgets/btnmatrix/%.c examples/widgets/btnmatrix/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/examples" -I"C:/Users/giahu/source/TFT/examples/anim" -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_widgets" -I"C:/Users/giahu/source/TFT/lvgl/src" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_draw" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_core" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_themes" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_misc" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_hal" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_font" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_gpu" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_internal.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-examples-2f-widgets-2f-btnmatrix

clean-examples-2f-widgets-2f-btnmatrix:
	-$(RM) ./examples/widgets/btnmatrix/lv_example_btnmatrix_1.d ./examples/widgets/btnmatrix/lv_example_btnmatrix_1.o ./examples/widgets/btnmatrix/lv_example_btnmatrix_1.su ./examples/widgets/btnmatrix/lv_example_btnmatrix_2.d ./examples/widgets/btnmatrix/lv_example_btnmatrix_2.o ./examples/widgets/btnmatrix/lv_example_btnmatrix_2.su ./examples/widgets/btnmatrix/lv_example_btnmatrix_3.d ./examples/widgets/btnmatrix/lv_example_btnmatrix_3.o ./examples/widgets/btnmatrix/lv_example_btnmatrix_3.su

.PHONY: clean-examples-2f-widgets-2f-btnmatrix

