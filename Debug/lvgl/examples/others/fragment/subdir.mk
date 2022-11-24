################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/examples/others/fragment/lv_example_fragment_1.c \
../lvgl/examples/others/fragment/lv_example_fragment_2.c 

OBJS += \
./lvgl/examples/others/fragment/lv_example_fragment_1.o \
./lvgl/examples/others/fragment/lv_example_fragment_2.o 

C_DEPS += \
./lvgl/examples/others/fragment/lv_example_fragment_1.d \
./lvgl/examples/others/fragment/lv_example_fragment_2.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/examples/others/fragment/%.o lvgl/examples/others/fragment/%.su: ../lvgl/examples/others/fragment/%.c lvgl/examples/others/fragment/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/lvgl/porting" -I"C:/Users/giahu/source/TFT/lvgl/examples" -I"C:/Users/giahu/source/TFT/lvgl/src" -I"C:/Users/giahu/source/TFT/lvgl/src/widgets" -I"C:/Users/giahu/source/TFT/lvgl/src/core" -I"C:/Users/giahu/source/TFT/lvgl/src/draw" -I"C:/Users/giahu/source/TFT/lvgl/src/font" -I"C:/Users/giahu/source/TFT/lvgl/src/hal" -I"C:/Users/giahu/source/TFT/lvgl/src/layouts" -I"C:/Users/giahu/source/TFT/lvgl/src/libs" -I"C:/Users/giahu/source/TFT/lvgl/src/misc" -I"C:/Users/giahu/source/TFT/lvgl/src/others" -I"C:/Users/giahu/source/TFT/lvgl/src/themes" -include"C:/Users/giahu/source/TFT/lvgl/lvgl.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-examples-2f-others-2f-fragment

clean-lvgl-2f-examples-2f-others-2f-fragment:
	-$(RM) ./lvgl/examples/others/fragment/lv_example_fragment_1.d ./lvgl/examples/others/fragment/lv_example_fragment_1.o ./lvgl/examples/others/fragment/lv_example_fragment_1.su ./lvgl/examples/others/fragment/lv_example_fragment_2.d ./lvgl/examples/others/fragment/lv_example_fragment_2.o ./lvgl/examples/others/fragment/lv_example_fragment_2.su

.PHONY: clean-lvgl-2f-examples-2f-others-2f-fragment

