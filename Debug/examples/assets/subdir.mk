################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../examples/assets/animimg001.c \
../examples/assets/animimg002.c \
../examples/assets/animimg003.c \
../examples/assets/img_caret_down.c \
../examples/assets/img_cogwheel_alpha16.c \
../examples/assets/img_cogwheel_argb.c \
../examples/assets/img_cogwheel_chroma_keyed.c \
../examples/assets/img_cogwheel_indexed16.c \
../examples/assets/img_cogwheel_rgb.c \
../examples/assets/img_hand.c \
../examples/assets/img_skew_strip.c \
../examples/assets/img_star.c \
../examples/assets/imgbtn_left.c \
../examples/assets/imgbtn_mid.c \
../examples/assets/imgbtn_right.c 

OBJS += \
./examples/assets/animimg001.o \
./examples/assets/animimg002.o \
./examples/assets/animimg003.o \
./examples/assets/img_caret_down.o \
./examples/assets/img_cogwheel_alpha16.o \
./examples/assets/img_cogwheel_argb.o \
./examples/assets/img_cogwheel_chroma_keyed.o \
./examples/assets/img_cogwheel_indexed16.o \
./examples/assets/img_cogwheel_rgb.o \
./examples/assets/img_hand.o \
./examples/assets/img_skew_strip.o \
./examples/assets/img_star.o \
./examples/assets/imgbtn_left.o \
./examples/assets/imgbtn_mid.o \
./examples/assets/imgbtn_right.o 

C_DEPS += \
./examples/assets/animimg001.d \
./examples/assets/animimg002.d \
./examples/assets/animimg003.d \
./examples/assets/img_caret_down.d \
./examples/assets/img_cogwheel_alpha16.d \
./examples/assets/img_cogwheel_argb.d \
./examples/assets/img_cogwheel_chroma_keyed.d \
./examples/assets/img_cogwheel_indexed16.d \
./examples/assets/img_cogwheel_rgb.d \
./examples/assets/img_hand.d \
./examples/assets/img_skew_strip.d \
./examples/assets/img_star.d \
./examples/assets/imgbtn_left.d \
./examples/assets/imgbtn_mid.d \
./examples/assets/imgbtn_right.d 


# Each subdirectory must supply rules for building sources it contributes
examples/assets/%.o examples/assets/%.su: ../examples/assets/%.c examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/giahu/source/TFT/examples" -I"C:/Users/giahu/source/TFT/examples/anim" -I"C:/Users/giahu/source/TFT/lvgl" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_widgets" -I"C:/Users/giahu/source/TFT/lvgl/src" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_draw" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_core" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_themes" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_misc" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_hal" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_font" -I"C:/Users/giahu/source/TFT/lvgl/src/lv_gpu" -include"C:/Users/giahu/source/TFT/lvgl/src/lv_conf_internal.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-examples-2f-assets

clean-examples-2f-assets:
	-$(RM) ./examples/assets/animimg001.d ./examples/assets/animimg001.o ./examples/assets/animimg001.su ./examples/assets/animimg002.d ./examples/assets/animimg002.o ./examples/assets/animimg002.su ./examples/assets/animimg003.d ./examples/assets/animimg003.o ./examples/assets/animimg003.su ./examples/assets/img_caret_down.d ./examples/assets/img_caret_down.o ./examples/assets/img_caret_down.su ./examples/assets/img_cogwheel_alpha16.d ./examples/assets/img_cogwheel_alpha16.o ./examples/assets/img_cogwheel_alpha16.su ./examples/assets/img_cogwheel_argb.d ./examples/assets/img_cogwheel_argb.o ./examples/assets/img_cogwheel_argb.su ./examples/assets/img_cogwheel_chroma_keyed.d ./examples/assets/img_cogwheel_chroma_keyed.o ./examples/assets/img_cogwheel_chroma_keyed.su ./examples/assets/img_cogwheel_indexed16.d ./examples/assets/img_cogwheel_indexed16.o ./examples/assets/img_cogwheel_indexed16.su ./examples/assets/img_cogwheel_rgb.d ./examples/assets/img_cogwheel_rgb.o ./examples/assets/img_cogwheel_rgb.su ./examples/assets/img_hand.d ./examples/assets/img_hand.o ./examples/assets/img_hand.su ./examples/assets/img_skew_strip.d ./examples/assets/img_skew_strip.o ./examples/assets/img_skew_strip.su ./examples/assets/img_star.d ./examples/assets/img_star.o ./examples/assets/img_star.su ./examples/assets/imgbtn_left.d ./examples/assets/imgbtn_left.o ./examples/assets/imgbtn_left.su ./examples/assets/imgbtn_mid.d ./examples/assets/imgbtn_mid.o ./examples/assets/imgbtn_mid.su ./examples/assets/imgbtn_right.d ./examples/assets/imgbtn_right.o ./examples/assets/imgbtn_right.su

.PHONY: clean-examples-2f-assets

