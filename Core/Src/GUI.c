/*
 * GUI.c
 *
 *  Created on: Nov 19, 2022
 *      Author: giahu
 */
#include "GUI.h"
#include "GC9A01.h"
volatile PAINT Paint;


void Paint_DrawImage(const uint16_t *image, uint16_t xStart, uint16_t yStart, uint16_t W_Image, uint16_t H_Image)
{
  int i, j;
  for (j = 0; j < H_Image; j++) {
    for (i = 0; i < W_Image; i++) {
      if (xStart + i < 240  &&  yStart + j < 240) //Exceeded part does not display
      {

    	  GC9A01_DrawPixel(xStart + i, yStart + j, &image[j * W_Image  + i ]);

      }

    }
  }
  GC9A01_Update();
}
void Paint_DrawChar(uint16_t xStart, uint16_t yStart, const uint16_t Acsii_Char, tFont* Font16)
{

	//uint32_t Char_Offset = (Acsii_Char - ' ') * Font->Height * (Font->Width / 8 + (Font->Width % 8 ? 1 : 0));
	//const tImage *ThisImage = &Font16->chars[1].image[1];//->image[Acsii_Char - ' '];
	//Paint_DrawImage(ThisImage->data, xStart,yStart, (ThisImage->width)*2, ThisImage->height);
	//GC9A01_Update();
}
//void Paint_DrawString_EN(uint16_t Xstart, uint16_t Ystart, const uint16_t * pString,
//                         sFONT* Font, uint16_t Color_Background, uint16_t Color_Foreground )
//{
//	uint16_t Xpoint = Xstart;
//	uint16_t Ypoint = Ystart;
//
//  if (Xstart > Paint.Width || Ystart > Paint.Height) {
//    //Debug("Paint_DrawString_EN Input exceeds the normal display range\r\n");
//    return;
//  }
//
//  while (* pString != '\0') {
//    //if X direction filled , reposition to(Xstart,Ypoint),Ypoint is Y direction plus the Height of the character
//    if ((Xpoint + Font->Width ) > Paint.Width ) {
//      Xpoint = Xstart;
//      Ypoint += Font->Height;
//    }
//
//    // If the Y direction is full, reposition to(Xstart, Ystart)
//    if ((Ypoint  + Font->Height ) > Paint.Height ) {
//      Xpoint = Xstart;
//      Ypoint = Ystart;
//    }
//    Paint_DrawChar(Xpoint, Ypoint, * pString, Font, Color_Background, Color_Foreground);
//
//    //The next character of the address
//    pString ++;
//
//    //The next word of the abscissa increases the font of the broadband
//    Xpoint += Font->Width;
//  }
//
//  GC9A01_Update();
//}
