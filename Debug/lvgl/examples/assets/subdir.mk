################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/examples/assets/animimg001.c \
../lvgl/examples/assets/animimg002.c \
../lvgl/examples/assets/animimg003.c \
../lvgl/examples/assets/dial.c \
../lvgl/examples/assets/hour_hand.c \
../lvgl/examples/assets/img_caret_down.c \
../lvgl/examples/assets/img_cogwheel_alpha16.c \
../lvgl/examples/assets/img_cogwheel_argb.c \
../lvgl/examples/assets/img_cogwheel_chroma_keyed.c \
../lvgl/examples/assets/img_cogwheel_indexed16.c \
../lvgl/examples/assets/img_cogwheel_rgb.c \
../lvgl/examples/assets/img_hand.c \
../lvgl/examples/assets/img_skew_strip.c \
../lvgl/examples/assets/img_star.c \
../lvgl/examples/assets/imgbtn_left.c \
../lvgl/examples/assets/imgbtn_mid.c \
../lvgl/examples/assets/imgbtn_right.c \
../lvgl/examples/assets/min_hand.c \
../lvgl/examples/assets/sec_hand.c 

OBJS += \
./lvgl/examples/assets/animimg001.o \
./lvgl/examples/assets/animimg002.o \
./lvgl/examples/assets/animimg003.o \
./lvgl/examples/assets/dial.o \
./lvgl/examples/assets/hour_hand.o \
./lvgl/examples/assets/img_caret_down.o \
./lvgl/examples/assets/img_cogwheel_alpha16.o \
./lvgl/examples/assets/img_cogwheel_argb.o \
./lvgl/examples/assets/img_cogwheel_chroma_keyed.o \
./lvgl/examples/assets/img_cogwheel_indexed16.o \
./lvgl/examples/assets/img_cogwheel_rgb.o \
./lvgl/examples/assets/img_hand.o \
./lvgl/examples/assets/img_skew_strip.o \
./lvgl/examples/assets/img_star.o \
./lvgl/examples/assets/imgbtn_left.o \
./lvgl/examples/assets/imgbtn_mid.o \
./lvgl/examples/assets/imgbtn_right.o \
./lvgl/examples/assets/min_hand.o \
./lvgl/examples/assets/sec_hand.o 

C_DEPS += \
./lvgl/examples/assets/animimg001.d \
./lvgl/examples/assets/animimg002.d \
./lvgl/examples/assets/animimg003.d \
./lvgl/examples/assets/dial.d \
./lvgl/examples/assets/hour_hand.d \
./lvgl/examples/assets/img_caret_down.d \
./lvgl/examples/assets/img_cogwheel_alpha16.d \
./lvgl/examples/assets/img_cogwheel_argb.d \
./lvgl/examples/assets/img_cogwheel_chroma_keyed.d \
./lvgl/examples/assets/img_cogwheel_indexed16.d \
./lvgl/examples/assets/img_cogwheel_rgb.d \
./lvgl/examples/assets/img_hand.d \
./lvgl/examples/assets/img_skew_strip.d \
./lvgl/examples/assets/img_star.d \
./lvgl/examples/assets/imgbtn_left.d \
./lvgl/examples/assets/imgbtn_mid.d \
./lvgl/examples/assets/imgbtn_right.d \
./lvgl/examples/assets/min_hand.d \
./lvgl/examples/assets/sec_hand.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/examples/assets/%.o lvgl/examples/assets/%.su: ../lvgl/examples/assets/%.c lvgl/examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/lvgl/examples" -I"C:/Users/giahu/source/TFT/lvgl/src" -I"C:/Users/giahu/source/TFT/lvgl/src/widgets" -I"C:/Users/giahu/source/TFT/lvgl/src/core" -I"C:/Users/giahu/source/TFT/lvgl/src/draw" -I"C:/Users/giahu/source/TFT/lvgl/src/font" -I"C:/Users/giahu/source/TFT/lvgl/src/hal" -I"C:/Users/giahu/source/TFT/lvgl/src/misc" -include"C:/Users/giahu/source/TFT/lvgl/lvgl.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_api_map.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_internal.h" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_kconfig.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-examples-2f-assets

clean-lvgl-2f-examples-2f-assets:
	-$(RM) ./lvgl/examples/assets/animimg001.d ./lvgl/examples/assets/animimg001.o ./lvgl/examples/assets/animimg001.su ./lvgl/examples/assets/animimg002.d ./lvgl/examples/assets/animimg002.o ./lvgl/examples/assets/animimg002.su ./lvgl/examples/assets/animimg003.d ./lvgl/examples/assets/animimg003.o ./lvgl/examples/assets/animimg003.su ./lvgl/examples/assets/dial.d ./lvgl/examples/assets/dial.o ./lvgl/examples/assets/dial.su ./lvgl/examples/assets/hour_hand.d ./lvgl/examples/assets/hour_hand.o ./lvgl/examples/assets/hour_hand.su ./lvgl/examples/assets/img_caret_down.d ./lvgl/examples/assets/img_caret_down.o ./lvgl/examples/assets/img_caret_down.su ./lvgl/examples/assets/img_cogwheel_alpha16.d ./lvgl/examples/assets/img_cogwheel_alpha16.o ./lvgl/examples/assets/img_cogwheel_alpha16.su ./lvgl/examples/assets/img_cogwheel_argb.d ./lvgl/examples/assets/img_cogwheel_argb.o ./lvgl/examples/assets/img_cogwheel_argb.su ./lvgl/examples/assets/img_cogwheel_chroma_keyed.d ./lvgl/examples/assets/img_cogwheel_chroma_keyed.o ./lvgl/examples/assets/img_cogwheel_chroma_keyed.su ./lvgl/examples/assets/img_cogwheel_indexed16.d ./lvgl/examples/assets/img_cogwheel_indexed16.o ./lvgl/examples/assets/img_cogwheel_indexed16.su ./lvgl/examples/assets/img_cogwheel_rgb.d ./lvgl/examples/assets/img_cogwheel_rgb.o ./lvgl/examples/assets/img_cogwheel_rgb.su ./lvgl/examples/assets/img_hand.d ./lvgl/examples/assets/img_hand.o ./lvgl/examples/assets/img_hand.su ./lvgl/examples/assets/img_skew_strip.d ./lvgl/examples/assets/img_skew_strip.o ./lvgl/examples/assets/img_skew_strip.su ./lvgl/examples/assets/img_star.d ./lvgl/examples/assets/img_star.o ./lvgl/examples/assets/img_star.su ./lvgl/examples/assets/imgbtn_left.d ./lvgl/examples/assets/imgbtn_left.o ./lvgl/examples/assets/imgbtn_left.su ./lvgl/examples/assets/imgbtn_mid.d ./lvgl/examples/assets/imgbtn_mid.o ./lvgl/examples/assets/imgbtn_mid.su ./lvgl/examples/assets/imgbtn_right.d ./lvgl/examples/assets/imgbtn_right.o ./lvgl/examples/assets/imgbtn_right.su ./lvgl/examples/assets/min_hand.d ./lvgl/examples/assets/min_hand.o ./lvgl/examples/assets/min_hand.su ./lvgl/examples/assets/sec_hand.d ./lvgl/examples/assets/sec_hand.o ./lvgl/examples/assets/sec_hand.su

.PHONY: clean-lvgl-2f-examples-2f-assets

