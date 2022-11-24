################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/examples/widgets/menu/lv_example_menu_1.c \
../lvgl/examples/widgets/menu/lv_example_menu_2.c \
../lvgl/examples/widgets/menu/lv_example_menu_3.c \
../lvgl/examples/widgets/menu/lv_example_menu_4.c \
../lvgl/examples/widgets/menu/lv_example_menu_5.c 

OBJS += \
./lvgl/examples/widgets/menu/lv_example_menu_1.o \
./lvgl/examples/widgets/menu/lv_example_menu_2.o \
./lvgl/examples/widgets/menu/lv_example_menu_3.o \
./lvgl/examples/widgets/menu/lv_example_menu_4.o \
./lvgl/examples/widgets/menu/lv_example_menu_5.o 

C_DEPS += \
./lvgl/examples/widgets/menu/lv_example_menu_1.d \
./lvgl/examples/widgets/menu/lv_example_menu_2.d \
./lvgl/examples/widgets/menu/lv_example_menu_3.d \
./lvgl/examples/widgets/menu/lv_example_menu_4.d \
./lvgl/examples/widgets/menu/lv_example_menu_5.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/examples/widgets/menu/%.o lvgl/examples/widgets/menu/%.su: ../lvgl/examples/widgets/menu/%.c lvgl/examples/widgets/menu/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/lvgl/examples" -I"C:/Users/giahu/source/TFT/lvgl/src" -I"C:/Users/giahu/source/TFT/lvgl/src/widgets" -I"C:/Users/giahu/source/TFT/lvgl/src/core" -I"C:/Users/giahu/source/TFT/lvgl/src/draw" -I"C:/Users/giahu/source/TFT/lvgl/src/font" -I"C:/Users/giahu/source/TFT/lvgl/src/hal" -I"C:/Users/giahu/source/TFT/lvgl/src/misc" -include"C:/Users/giahu/source/TFT/lvgl/lvgl.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_api_map.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_internal.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_kconfig.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-examples-2f-widgets-2f-menu

clean-lvgl-2f-examples-2f-widgets-2f-menu:
	-$(RM) ./lvgl/examples/widgets/menu/lv_example_menu_1.d ./lvgl/examples/widgets/menu/lv_example_menu_1.o ./lvgl/examples/widgets/menu/lv_example_menu_1.su ./lvgl/examples/widgets/menu/lv_example_menu_2.d ./lvgl/examples/widgets/menu/lv_example_menu_2.o ./lvgl/examples/widgets/menu/lv_example_menu_2.su ./lvgl/examples/widgets/menu/lv_example_menu_3.d ./lvgl/examples/widgets/menu/lv_example_menu_3.o ./lvgl/examples/widgets/menu/lv_example_menu_3.su ./lvgl/examples/widgets/menu/lv_example_menu_4.d ./lvgl/examples/widgets/menu/lv_example_menu_4.o ./lvgl/examples/widgets/menu/lv_example_menu_4.su ./lvgl/examples/widgets/menu/lv_example_menu_5.d ./lvgl/examples/widgets/menu/lv_example_menu_5.o ./lvgl/examples/widgets/menu/lv_example_menu_5.su

.PHONY: clean-lvgl-2f-examples-2f-widgets-2f-menu

