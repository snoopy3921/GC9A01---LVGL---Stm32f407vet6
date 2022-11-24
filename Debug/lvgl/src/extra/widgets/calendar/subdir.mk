################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/extra/widgets/calendar/lv_calendar.c \
../lvgl/src/extra/widgets/calendar/lv_calendar_header_arrow.c \
../lvgl/src/extra/widgets/calendar/lv_calendar_header_dropdown.c 

OBJS += \
./lvgl/src/extra/widgets/calendar/lv_calendar.o \
./lvgl/src/extra/widgets/calendar/lv_calendar_header_arrow.o \
./lvgl/src/extra/widgets/calendar/lv_calendar_header_dropdown.o 

C_DEPS += \
./lvgl/src/extra/widgets/calendar/lv_calendar.d \
./lvgl/src/extra/widgets/calendar/lv_calendar_header_arrow.d \
./lvgl/src/extra/widgets/calendar/lv_calendar_header_dropdown.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/extra/widgets/calendar/%.o lvgl/src/extra/widgets/calendar/%.su: ../lvgl/src/extra/widgets/calendar/%.c lvgl/src/extra/widgets/calendar/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/lvgl/examples" -I"C:/Users/giahu/source/TFT/lvgl/src" -I"C:/Users/giahu/source/TFT/lvgl/src/widgets" -I"C:/Users/giahu/source/TFT/lvgl/src/core" -I"C:/Users/giahu/source/TFT/lvgl/src/draw" -I"C:/Users/giahu/source/TFT/lvgl/src/font" -I"C:/Users/giahu/source/TFT/lvgl/src/hal" -I"C:/Users/giahu/source/TFT/lvgl/src/misc" -include"C:/Users/giahu/source/TFT/lvgl/lvgl.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_api_map.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_internal.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_kconfig.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-extra-2f-widgets-2f-calendar

clean-lvgl-2f-src-2f-extra-2f-widgets-2f-calendar:
	-$(RM) ./lvgl/src/extra/widgets/calendar/lv_calendar.d ./lvgl/src/extra/widgets/calendar/lv_calendar.o ./lvgl/src/extra/widgets/calendar/lv_calendar.su ./lvgl/src/extra/widgets/calendar/lv_calendar_header_arrow.d ./lvgl/src/extra/widgets/calendar/lv_calendar_header_arrow.o ./lvgl/src/extra/widgets/calendar/lv_calendar_header_arrow.su ./lvgl/src/extra/widgets/calendar/lv_calendar_header_dropdown.d ./lvgl/src/extra/widgets/calendar/lv_calendar_header_dropdown.o ./lvgl/src/extra/widgets/calendar/lv_calendar_header_dropdown.su

.PHONY: clean-lvgl-2f-src-2f-extra-2f-widgets-2f-calendar

