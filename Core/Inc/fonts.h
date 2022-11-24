/*
 * fonts.h
 *
 *  Created on: Nov 19, 2022
 *      Author: giahu
 */

#ifndef INC_FONTS_H_
#define INC_FONTS_H_
#include "main.h"
//ASCII
 typedef struct {
     const uint16_t *data;
     uint16_t width;
     uint16_t height;
     uint8_t dataSize;
     } tImage;
 typedef struct {
     long int code;
     const tImage *image;
     } tChar;
 typedef struct {
     int length;
     const tChar *chars;
     } tFont;

extern tFont Font16;
#endif /* INC_FONTS_H_ */
