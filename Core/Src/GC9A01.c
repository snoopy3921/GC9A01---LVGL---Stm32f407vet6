/*
 * GC9A01.c
 *
 *  Created on: Nov 16, 2022
 *      Author: giahu
 */
#include "GC9A01.h"
#include "GUI.h"
#include "lvgl.h"
//#include "lv_hal_disp.h"

#define GC9A01A_Width	240
#define GC9A01A_Height 	240
#define USE_DMA
#define DMA_MIN_SIZE  8



#if (GC9A01_MODE == GC9A01_BUFFER_MODE)
static uint16_t ScreenBuff[GC9A01A_Height * GC9A01A_Width];
#endif



uint8_t GC9A01_X_Start = 0, GC9A01_Y_Start = 0;

void SwapBytes(uint16_t *color) {
	uint8_t temp = *color >> 8;
	*color = (*color << 8) | temp;
}
static void GC9A01_WriteCmd(uint8_t cmd){
	GC9A01_DCX_Cmd();
	HAL_SPI_Transmit(&GC9A01_SPI_PORT, &cmd, 1, 100);
	//HAL_SPI_Transmit_DMA(&GC9A01_SPI_PORT, &cmd, 1);
}
static void GC9A01_WriteByte(uint8_t data){
	GC9A01_DCX_Data();
	HAL_SPI_Transmit(&GC9A01_SPI_PORT, &data, 1, 100);
	//HAL_SPI_Transmit_DMA(&GC9A01_SPI_PORT, &data, 1);
}
static void GC9A01_WriteBuff(uint8_t buff, size_t buff_size)
{
	GC9A01_DCX_Data();
	HAL_SPI_Transmit(&GC9A01_SPI_PORT, &buff, buff_size,100);


}
void my_flush_cb(lv_disp_drv_t * disp_drv, const lv_area_t * area, lv_color_t * color_p)
{

	GC9A01_SetWindow(area->x1, area->y1, area->x2 , area->y2 );
	uint8_t* buff = color_p;
		GC9A01_DCX_Data();
		uint16_t len = (area->x2 - area->x1 + 1) * (area->y2 - area->y1 + 1);
		uint16_t chunk_size;
		while (len > 0) {
			chunk_size = len > 30000  ? 30000  : len;
			if (DMA_MIN_SIZE <= len)
				{
					HAL_SPI_Transmit_DMA(&GC9A01_SPI_PORT, buff, chunk_size*2);
					while (GC9A01_SPI_PORT.hdmatx->State != HAL_DMA_STATE_READY);
				}
			else
			HAL_SPI_Transmit(&GC9A01_SPI_PORT, buff, chunk_size*2, HAL_MAX_DELAY);
			buff += chunk_size*2;
			len -= chunk_size;
		}

    /* IMPORTANT!!!
     * Inform the graphics library that you are ready with the flushing*/
    lv_disp_flush_ready(disp_drv);
}

void GC9A01_HardReset(void) {
	RESET_LOW();
	HAL_Delay(10);
	RESET_HIGH();
	HAL_Delay(150);
}

static void ColumnSet(uint16_t ColumnStart, uint16_t ColumnEnd) {
	if (ColumnStart > ColumnEnd)
		return;
	if (ColumnEnd > 240)
		return;

	ColumnStart += GC9A01_X_Start;
	ColumnEnd += GC9A01_X_Start;

	GC9A01_WriteCmd(0x2A); // Column set
	GC9A01_WriteByte(ColumnStart >> 8);
	GC9A01_WriteByte(ColumnStart & 0xFF);
	GC9A01_WriteByte(ColumnEnd >> 8);
	GC9A01_WriteByte(ColumnEnd & 0xFF);
}

static void RowSet(uint16_t RowStart, uint16_t RowEnd) {
	if (RowStart > RowEnd)
		return;
	if (RowEnd > 240)
		return;

	RowStart += GC9A01_Y_Start;
	RowEnd += GC9A01_Y_Start;

	GC9A01_WriteCmd(0x2B); // Row set
	GC9A01_WriteByte(RowStart >> 8);
	GC9A01_WriteByte(RowStart & 0xFF);
	GC9A01_WriteByte(RowEnd >> 8);
	GC9A01_WriteByte(RowEnd & 0xFF);
}
void GC9A01_SetWindow(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1) {
	ColumnSet(x0, x1);
	RowSet(y0, y1);

	GC9A01_WriteCmd(0x2C);//Memory write
}


#if (GC9A01_MODE == GC9A01_DIRECT_MODE)

	void GC9A01_RamWrite(uint16_t pBuff, uint16_t Len)
	{

		while (Len--)
		{
			GC9A01_WriteByte(pBuff >> 8);
			GC9A01_WriteByte(pBuff & 0xFF);
		}

	}
	void GC9A01_DrawPixel(int16_t x, int16_t y, uint16_t color)
	{
		if ((x < 0) ||(x >= GC9A01A_Width) || (y < 0) || (y >= GC9A01A_Height)) return;

		GC9A01_SetWindow(x, y, x, y);
		GC9A01_RamWrite(color, 1);
	}
	void GC9A01_FillRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color)
	{
	  if ((x >= GC9A01A_Width) || (y >= GC9A01A_Height))
		return;

	  if ((x + w) > 240)
		w = 240 - x;

	  if ((y + h) > 240)
		h = 240 - y;

	  GC9A01_SetWindow(x, y, x + w - 1, y + h - 1);

	  for (uint32_t i = 0; i < (h * w); i++)
		  GC9A01_RamWrite(color, 1);
	}
#else

void GC9A01_DrawPixel(int16_t x, int16_t y, uint16_t* color) {
	if ((x < 0) || (x >= GC9A01A_Width) || (y < 0) || (y >= GC9A01A_Height))
		return;

	SwapBytes(color);
	ScreenBuff[y * GC9A01A_Width + x] = *color;

}

uint16_t GC9A01_GetPixel(int16_t x, int16_t y) {
	if ((x < 0) || (x >= GC9A01A_Width) || (y < 0) || (y >= GC9A01A_Height))
		return 0;

	uint16_t color = ScreenBuff[y * GC9A01A_Width + x];
	SwapBytes(&color);
	return color;
}

void GC9A01_FillRect(int16_t x, int16_t y, int16_t w, int16_t h,
		uint16_t color) {
	if ((w <= 0) || (h <= 0) || (x >= GC9A01A_Width) || (y >= GC9A01A_Height))
		return;

	if (x < 0) {
		w += x;
		x = 0;
	}
	if (y < 0) {
		h += y;
		y = 0;
	}

	if ((w <= 0) || (h <= 0))
		return;

	if ((x + w) > GC9A01A_Width)
		w = GC9A01A_Width - x;
	if ((y + h) > GC9A01A_Height)
		h = GC9A01A_Height - y;

	SwapBytes(&color);

	for (uint16_t row = 0; row < h; row++) {
		for (uint16_t col = 0; col < w; col++)
			//GC9A01A_DrawPixel(col, row, color);
			ScreenBuff[(y + row) * GC9A01A_Width + x + col] = color;
	}
	GC9A01_Update();
}

//void SendPart2() {
//	uint16_t len = GC9A01A_Width * GC9A01A_Height;
//	SPI_send_dma(GC9A01A_SPI_periph, 0, (uint8_t*) &ScreenBuff[len / 2], len,
//			0);
//}

void GC9A01_Update() {
	GC9A01_SetWindow(0, 0, GC9A01A_Width - 1, GC9A01A_Height - 1);
	uint8_t* buff = ScreenBuff;
	GC9A01_DCX_Data();
	uint16_t len = GC9A01A_Width * GC9A01A_Height;
	uint16_t chunk_size;
	while (len > 0) {
		chunk_size = len > 30000  ? 30000  : len;
		if (DMA_MIN_SIZE <= len)
			{
				HAL_SPI_Transmit_DMA(&GC9A01_SPI_PORT, buff, chunk_size*2);
				while (GC9A01_SPI_PORT.hdmatx->State != HAL_DMA_STATE_READY);
			}
		else HAL_SPI_Transmit(&GC9A01_SPI_PORT, buff, chunk_size*2, HAL_MAX_DELAY);
		buff += chunk_size*2;
		len -= chunk_size;
	}

}

#endif


void GC9A01_init(void){





	/*Regulative Initiation*/
	GC9A01_HardReset();
	GC9A01_WriteCmd(0xef); //Inter Register Enable2
	GC9A01_WriteCmd(0xeb);
	GC9A01_WriteByte(0x14);
	GC9A01_WriteCmd(0xfe); //Inter Register Enable1
	GC9A01_WriteCmd(0xef); //Inter Register Enable2

	GC9A01_WriteCmd(0xeb);
	GC9A01_WriteByte(0x14);

	GC9A01_WriteCmd(0x84);        // ?
	GC9A01_WriteByte(0x40);
	GC9A01_WriteCmd(0x85);        // ?
	GC9A01_WriteByte(0xFF);
	GC9A01_WriteCmd(0x86);        // ?
	GC9A01_WriteByte(0xFF);
	GC9A01_WriteCmd(0x87);        // ?
	GC9A01_WriteByte(0xFF);
	GC9A01_WriteCmd(0x88);        // ?
	GC9A01_WriteByte(0x0A);
	GC9A01_WriteCmd(0x89);        // ?
	GC9A01_WriteByte(0x21);
	GC9A01_WriteCmd(0x8A);        // ?
	GC9A01_WriteByte(0x00);
	GC9A01_WriteCmd(0x8B);        // ?
	GC9A01_WriteByte(0x80);
	GC9A01_WriteCmd(0x8C);        // ?
	GC9A01_WriteByte(0x01);
	GC9A01_WriteCmd(0x8D);        // ?
	GC9A01_WriteByte(0x01);
	GC9A01_WriteCmd(0x8E);        // ?
	GC9A01_WriteByte(0xFF);
	GC9A01_WriteCmd(0x8F);        // ?
	GC9A01_WriteByte(0xFF);

	GC9A01_WriteCmd(0xb6); //Scan direction S360 -> S1
	GC9A01_WriteByte(0x00);
	GC9A01_WriteByte(0x20);
	GC9A01_WriteCmd(0x3a); //Pixel format set
	GC9A01_WriteByte(0x05); //MCU 16 bit

	GC9A01_WriteCmd(0x90);        // ?
	GC9A01_WriteByte(0x08);
	GC9A01_WriteByte(0x08);
	GC9A01_WriteByte(0x08);
	GC9A01_WriteByte(0x08);
	GC9A01_WriteCmd(0xBD);        // ?
	GC9A01_WriteByte(0x06);
	GC9A01_WriteCmd(0xBC);        // ?
	GC9A01_WriteByte(0x00);
	GC9A01_WriteCmd(0xFF);        // ?
	GC9A01_WriteByte(0x60);
	GC9A01_WriteByte(0x01);
	GC9A01_WriteByte(0x04);

	GC9A01_WriteCmd(0xc3); //Power 2
	GC9A01_WriteByte(0x13);
	GC9A01_WriteCmd(0xc4); //Power 3
	GC9A01_WriteByte(0x13);
	GC9A01_WriteCmd(0xc9); //Power 4
	GC9A01_WriteByte(0x22);

	GC9A01_WriteCmd(0xBE);        // ?
	GC9A01_WriteByte(0x11);
	GC9A01_WriteCmd(0xE1);        // ?
	GC9A01_WriteByte(0x10);
	GC9A01_WriteByte(0x0E);
	GC9A01_WriteCmd(0xDF);        // ?
	GC9A01_WriteByte(0x21);
	GC9A01_WriteByte(0x0c);
	GC9A01_WriteByte(0x02);

	GC9A01_WriteCmd(0xF0); //Gamma 1
	GC9A01_WriteByte(0x45);
	GC9A01_WriteByte(0x09);
	GC9A01_WriteByte(0x08);
	GC9A01_WriteByte(0x08);
	GC9A01_WriteByte(0x26);
	GC9A01_WriteByte(0x2a);
	GC9A01_WriteCmd(0xF1); //Gamma 2
	GC9A01_WriteByte(0x43);
	GC9A01_WriteByte(0x70);
	GC9A01_WriteByte(0x72);
	GC9A01_WriteByte(0x36);
	GC9A01_WriteByte(0x37);
	GC9A01_WriteByte(0x6f);
	GC9A01_WriteCmd(0xF2); //Gamma 3
	GC9A01_WriteByte(0x45);
	GC9A01_WriteByte(0x09);
	GC9A01_WriteByte(0x08);
	GC9A01_WriteByte(0x08);
	GC9A01_WriteByte(0x26);
	GC9A01_WriteByte(0x2a);
	GC9A01_WriteCmd(0xF3); //Gamma 4
	GC9A01_WriteByte(0x43);
	GC9A01_WriteByte(0x70);
	GC9A01_WriteByte(0x72);
	GC9A01_WriteByte(0x36);
	GC9A01_WriteByte(0x37);
	GC9A01_WriteByte(0x6f);

	GC9A01_WriteCmd(0xED);        // ?
	GC9A01_WriteByte(0x1B);
	GC9A01_WriteByte(0x0B);
	GC9A01_WriteCmd(0xAE);        // ?
	GC9A01_WriteByte(0x77);
	GC9A01_WriteCmd(0xCD);        // ?
	GC9A01_WriteByte(0x63);
	GC9A01_WriteCmd(0x70);        // ?
	GC9A01_WriteByte(0x07);
	GC9A01_WriteByte(0x07);
	GC9A01_WriteByte(0x04);
	GC9A01_WriteByte(0x0E);
	GC9A01_WriteByte(0x0F);
	GC9A01_WriteByte(0x09);
	GC9A01_WriteByte(0x07);
	GC9A01_WriteByte(0x08);
	GC9A01_WriteByte(0x03);

	GC9A01_WriteCmd(0xe8); //4 dot inversion
	GC9A01_WriteByte(0x34);

	GC9A01_WriteCmd(0x62);        // ?
	GC9A01_WriteByte(0x18);
	GC9A01_WriteByte(0x0D);
	GC9A01_WriteByte(0x71);
	GC9A01_WriteByte(0xED);
	GC9A01_WriteByte(0x70);
	GC9A01_WriteByte(0x70);
	GC9A01_WriteByte(0x18);
	GC9A01_WriteByte(0x0F);
	GC9A01_WriteByte(0x71);
	GC9A01_WriteByte(0xEF);
	GC9A01_WriteByte(0x70);
	GC9A01_WriteByte(0x70);

	GC9A01_WriteCmd(0x63);        // ?
	GC9A01_WriteByte(0x18);
	GC9A01_WriteByte(0x11);
	GC9A01_WriteByte(0x71);
	GC9A01_WriteByte(0xF1);
	GC9A01_WriteByte(0x70);
	GC9A01_WriteByte(0x70);
	GC9A01_WriteByte(0x18);
	GC9A01_WriteByte(0x13);
	GC9A01_WriteByte(0x71);
	GC9A01_WriteByte(0xF3);
	GC9A01_WriteByte(0x70);
	GC9A01_WriteByte(0x70);

	GC9A01_WriteCmd(0x64);        // ?
	GC9A01_WriteByte(0x28);
	GC9A01_WriteByte(0x29);
	GC9A01_WriteByte(0xF1);
	GC9A01_WriteByte(0x01);
	GC9A01_WriteByte(0xF1);
	GC9A01_WriteByte(0x00);
	GC9A01_WriteByte(0x07);

	GC9A01_WriteCmd(0x66);        // ?
	GC9A01_WriteByte(0x3C);
	GC9A01_WriteByte(0x00);
	GC9A01_WriteByte(0xCD);
	GC9A01_WriteByte(0x67);
	GC9A01_WriteByte(0x45);
	GC9A01_WriteByte(0x45);
	GC9A01_WriteByte(0x10);
	GC9A01_WriteByte(0x00);
	GC9A01_WriteByte(0x00);
	GC9A01_WriteByte(0x00);

	GC9A01_WriteCmd(0x67);        // ?
	GC9A01_WriteByte(0x00);
	GC9A01_WriteByte(0x3C);
	GC9A01_WriteByte(0x00);
	GC9A01_WriteByte(0x00);
	GC9A01_WriteByte(0x00);
	GC9A01_WriteByte(0x01);
	GC9A01_WriteByte(0x54);
	GC9A01_WriteByte(0x10);
	GC9A01_WriteByte(0x32);
	GC9A01_WriteByte(0x98);

	GC9A01_WriteCmd(0x74);        // ?
	GC9A01_WriteByte(0x10);
	GC9A01_WriteByte(0x85);
	GC9A01_WriteByte(0x80);
	GC9A01_WriteByte(0x00);
	GC9A01_WriteByte(0x00);
	GC9A01_WriteByte(0x4E);
	GC9A01_WriteByte(0x00);

	GC9A01_WriteCmd(0x98);        // ?
	GC9A01_WriteByte(0x3e);
	GC9A01_WriteByte(0x07);

	GC9A01_WriteCmd(0x36); //Memory data access control
	GC9A01_WriteByte(0x08);//0x08 bgr, 0x00 rgb


	//GC9A01_WriteCmd(0x35); //Tearing effect ON
	GC9A01_WriteCmd(0x34); //Tearing effect OFF
	//GC9A01_WriteByte(0x00);

	GC9A01_WriteCmd(0x21); //Inversion ON
	GC9A01_WriteCmd(0x11); //Sleep mode OUT
	HAL_Delay(120);
	GC9A01_WriteCmd(0x29); //Display ON
	HAL_Delay(20);





}
