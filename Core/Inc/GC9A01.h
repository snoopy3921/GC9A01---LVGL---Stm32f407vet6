/*
 * GC9A01.h
 *
 *  Created on: Nov 16, 2022
 *      Author: giahu
 */

#ifndef INC_GC9A01_H_
#define INC_GC9A01_H_

#include "main.h"

#include "lvgl.h"


#define GC9A01_DIRECT_MODE		0
#define GC9A01_BUFFER_MODE		1
#define GC9A01_MODE GC9A01_BUFFER_MODE

#define GC9A01_SPI_PORT hspi1
extern SPI_HandleTypeDef GC9A01_SPI_PORT;

#define GC9A01_SCL_Pin 		SCLK_Pin
#define GC9A01_SCL_Port 	SCLK_GPIO_Port
#define GC9A01_SDA_Pin 		MOSI_Pin
#define GC9A01_SDA_Port 	MOSI_GPIO_Port
#define GC9A01_DCX_Pin 		D_CX_Pin
#define GC9A01_DCX_Port 	D_CX_GPIO_Port

#define GC9A01_DCX_Cmd() 	HAL_GPIO_WritePin(GC9A01_DCX_Port, GC9A01_DCX_Pin, GPIO_PIN_RESET)
#define GC9A01_DCX_Data() 	HAL_GPIO_WritePin(GC9A01_DCX_Port, GC9A01_DCX_Pin, GPIO_PIN_SET)
#define RESET_HIGH()        HAL_GPIO_WritePin(RST_GPIO_Port, RST_Pin, GPIO_PIN_SET)
#define RESET_LOW()         HAL_GPIO_WritePin(RST_GPIO_Port, RST_Pin, GPIO_PIN_RESET)

// Command codes:
#define COL_ADDR_SET        0x2A
#define ROW_ADDR_SET        0x2B
#define MEM_WR              0x2C
#define COLOR_MODE          0x3A
#define COLOR_MODE__12_BIT  0x03
#define COLOR_MODE__16_BIT  0x05
#define COLOR_MODE__18_BIT  0x06
#define MEM_WR_CONT         0x3C
#define ON                  1
#define OFF                 0


void my_flush_cb(lv_disp_drv_t * disp_drv, const lv_area_t * area, lv_color_t * color_p);
void GC9A01_init(void);
void GC9A01_Update(void);
void SwapBytes(uint16_t *color);
void GC9A01_HardReset(void);
void GC9A01_SetWindow(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1);
void GC9A01_DrawPixel(int16_t x, int16_t y, uint16_t* color);
uint16_t GC9A01_GetPixel(int16_t x, int16_t y);
void GC9A01A_FillRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);


#endif /* INC_GC9A01_H_ */
