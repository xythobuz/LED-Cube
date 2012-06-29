/*
 * font.c
 *
 * Copyright 2012 Thomas Buck <xythobuz@me.com>
 *
 * This file is part of LED-Cube.
 *
 * LED-Cube is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * LED-Cube is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with LED-Cube.  If not, see <http://www.gnu.org/licenses/>.
 */
#include <stdint.h>
#include <avr/io.h>
#include <avr/pgmspace.h>

uint8_t font[95][8];
uint8_t fontBuff[8];

uint8_t *getFont(char c) {
	uint8_t i;
	if (!((c >= 0x20) && (c <= 0x7E))) {
		if ((c == '\r') || (c == '\n')) {
			c = '!';
		} else {
			c = '?';
		}
	}
	for (i = 0; i < 8; i++) {
		fontBuff[i] = pgm_read_byte(&(font[(uint8_t)(c - 0x20)][i]));
	}
	return fontBuff;
}


// Source: http://www.mikrocontroller.net/topic/54860
// Author: Benedikt K
// This is a LCD Font originally for Codepage 850.
// Because of size restraints, i cut everything but
// the printable ascii range, 0x20 to 0x7E
// Not really pretty on the cube, but enough for now.
uint8_t font[95][8] PROGMEM = {
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},	// 0x20
	{0x0C,0x1E,0x1E,0x0C,0x0C,0x00,0x0C,0x00},	// 0x21
	{0x36,0x36,0x36,0x00,0x00,0x00,0x00,0x00},	// 0x22
	{0x36,0x36,0x7F,0x36,0x7F,0x36,0x36,0x00},	// 0x23
	{0x0C,0x3E,0x03,0x1E,0x30,0x1F,0x0C,0x00},	// 0x24
	{0x00,0x63,0x33,0x18,0x0C,0x66,0x63,0x00},	// 0x25
	{0x1C,0x36,0x1C,0x6E,0x3B,0x33,0x6E,0x00},	// 0x26
	{0x06,0x06,0x03,0x00,0x00,0x00,0x00,0x00},	// 0x27
	{0x18,0x0C,0x06,0x06,0x06,0x0C,0x18,0x00},	// 0x28
	{0x06,0x0C,0x18,0x18,0x18,0x0C,0x06,0x00},	// 0x29
	{0x00,0x66,0x3C,0xFF,0x3C,0x66,0x00,0x00},	// 0x2A
	{0x00,0x0C,0x0C,0x3F,0x0C,0x0C,0x00,0x00},	// 0x2B
	{0x00,0x00,0x00,0x00,0x00,0x0E,0x0C,0x06},	// 0x2C
	{0x00,0x00,0x00,0x3F,0x00,0x00,0x00,0x00},	// 0x2D
	{0x00,0x00,0x00,0x00,0x00,0x0C,0x0C,0x00},	// 0x2E
	{0x60,0x30,0x18,0x0C,0x06,0x03,0x01,0x00},	// 0x2F
	{0x1E,0x33,0x3B,0x3F,0x37,0x33,0x1E,0x00},	// 0x30
	{0x0C,0x0F,0x0C,0x0C,0x0C,0x0C,0x3F,0x00},	// 0x31
	{0x1E,0x33,0x30,0x1C,0x06,0x33,0x3F,0x00},	// 0x32
	{0x1E,0x33,0x30,0x1C,0x30,0x33,0x1E,0x00},	// 0x33
	{0x38,0x3C,0x36,0x33,0x7F,0x30,0x30,0x00},	// 0x34
	{0x3F,0x03,0x1F,0x30,0x30,0x33,0x1E,0x00},	// 0x35
	{0x1C,0x06,0x03,0x1F,0x33,0x33,0x1E,0x00},	// 0x36
	{0x3F,0x33,0x30,0x18,0x0C,0x06,0x06,0x00},	// 0x37
	{0x1E,0x33,0x33,0x1E,0x33,0x33,0x1E,0x00},	// 0x38
	{0x1E,0x33,0x33,0x3E,0x30,0x18,0x0E,0x00},	// 0x39
	{0x00,0x00,0x0C,0x0C,0x00,0x0C,0x0C,0x00},	// 0x3A
	{0x00,0x00,0x0C,0x0C,0x00,0x0E,0x0C,0x06},	// 0x3B
	{0x18,0x0C,0x06,0x03,0x06,0x0C,0x18,0x00},	// 0x3C
	{0x00,0x00,0x3F,0x00,0x3F,0x00,0x00,0x00},	// 0x3D
	{0x06,0x0C,0x18,0x30,0x18,0x0C,0x06,0x00},	// 0x3E
	{0x1E,0x33,0x30,0x18,0x0C,0x00,0x0C,0x00},	// 0x3F
	{0x3E,0x63,0x7B,0x7B,0x7B,0x03,0x1E,0x00},	// 0x40
	{0x0C,0x1E,0x33,0x33,0x3F,0x33,0x33,0x00},	// 0x41
	{0x3F,0x66,0x66,0x3E,0x66,0x66,0x3F,0x00},	// 0x42
	{0x3C,0x66,0x03,0x03,0x03,0x66,0x3C,0x00},	// 0x43
	{0x3F,0x36,0x66,0x66,0x66,0x36,0x3F,0x00},	// 0x44
	{0x7F,0x46,0x16,0x1E,0x16,0x46,0x7F,0x00},	// 0x45
	{0x7F,0x46,0x16,0x1E,0x16,0x06,0x0F,0x00},	// 0x46
	{0x3C,0x66,0x03,0x03,0x73,0x66,0x7C,0x00},	// 0x47
	{0x33,0x33,0x33,0x3F,0x33,0x33,0x33,0x00},	// 0x48
	{0x1E,0x0C,0x0C,0x0C,0x0C,0x0C,0x1E,0x00},	// 0x49
	{0x78,0x30,0x30,0x30,0x33,0x33,0x1E,0x00},	// 0x4A
	{0x67,0x66,0x36,0x1E,0x36,0x66,0x67,0x00},	// 0x4B
	{0x0F,0x06,0x06,0x06,0x46,0x66,0x7F,0x00},	// 0x4C
	{0x63,0x77,0x7F,0x6B,0x63,0x63,0x63,0x00},	// 0x4D
	{0x63,0x67,0x6F,0x7B,0x73,0x63,0x63,0x00},	// 0x4E
	{0x1C,0x36,0x63,0x63,0x63,0x36,0x1C,0x00},	// 0x4F
	{0x3F,0x66,0x66,0x3E,0x06,0x06,0x0F,0x00},	// 0x50
	{0x1E,0x33,0x33,0x33,0x3B,0x1E,0x38,0x00},	// 0x51
	{0x3F,0x66,0x66,0x3E,0x1E,0x36,0x67,0x00},	// 0x52
	{0x1E,0x33,0x07,0x1C,0x38,0x33,0x1E,0x00},	// 0x53
	{0x3F,0x2D,0x0C,0x0C,0x0C,0x0C,0x1E,0x00},	// 0x54
	{0x33,0x33,0x33,0x33,0x33,0x33,0x3F,0x00},	// 0x55
	{0x33,0x33,0x33,0x33,0x33,0x1E,0x0C,0x00},	// 0x56
	{0x63,0x63,0x63,0x6B,0x7F,0x77,0x63,0x00},	// 0x57
	{0x63,0x63,0x36,0x1C,0x36,0x63,0x63,0x00},	// 0x58
	{0x33,0x33,0x33,0x1E,0x0C,0x0C,0x1E,0x00},	// 0x59
	{0x7F,0x33,0x19,0x0C,0x46,0x63,0x7F,0x00},	// 0x5A
	{0x1E,0x06,0x06,0x06,0x06,0x06,0x1E,0x00},	// 0x5B
	{0x03,0x06,0x0C,0x18,0x30,0x60,0x40,0x00},	// 0x5C
	{0x1E,0x18,0x18,0x18,0x18,0x18,0x1E,0x00},	// 0x5D
	{0x08,0x1C,0x36,0x63,0x00,0x00,0x00,0x00},	// 0x5E
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF},	// 0x5F
	{0x0C,0x0C,0x18,0x00,0x00,0x00,0x00,0x00},	// 0x60
	{0x00,0x00,0x1E,0x30,0x3E,0x33,0x6E,0x00},	// 0x61
	{0x07,0x06,0x3E,0x66,0x66,0x66,0x3D,0x00},	// 0x62
	{0x00,0x00,0x1E,0x33,0x03,0x33,0x1E,0x00},	// 0x63
	{0x38,0x30,0x30,0x3E,0x33,0x33,0x6E,0x00},	// 0x64
	{0x00,0x00,0x1E,0x33,0x3F,0x03,0x1E,0x00},	// 0x65
	{0x1C,0x36,0x06,0x0F,0x06,0x06,0x0F,0x00},	// 0x66
	{0x00,0x00,0x6E,0x33,0x33,0x3E,0x30,0x1F},	// 0x67
	{0x07,0x06,0x36,0x6E,0x66,0x66,0x67,0x00},	// 0x68
	{0x0C,0x00,0x0E,0x0C,0x0C,0x0C,0x1E,0x00},	// 0x69
	{0x18,0x00,0x1E,0x18,0x18,0x18,0x1B,0x0E},	// 0x6A
	{0x07,0x06,0x66,0x36,0x1E,0x36,0x67,0x00},	// 0x6B
	{0x0E,0x0C,0x0C,0x0C,0x0C,0x0C,0x1E,0x00},	// 0x6C
	{0x00,0x00,0x37,0x7F,0x6B,0x63,0x63,0x00},	// 0x6D
	{0x00,0x00,0x1F,0x33,0x33,0x33,0x33,0x00},	// 0x6E
	{0x00,0x00,0x1E,0x33,0x33,0x33,0x1E,0x00},	// 0x6F
	{0x00,0x00,0x3B,0x66,0x66,0x3E,0x06,0x0F},	// 0x70
	{0x00,0x00,0x6E,0x33,0x33,0x3E,0x30,0x78},	// 0x71
	{0x00,0x00,0x1B,0x36,0x36,0x06,0x0F,0x00},	// 0x72
	{0x00,0x00,0x3E,0x03,0x1E,0x30,0x1F,0x00},	// 0x73
	{0x08,0x0C,0x3E,0x0C,0x0C,0x2C,0x18,0x00},	// 0x74
	{0x00,0x00,0x33,0x33,0x33,0x33,0x6E,0x00},	// 0x75
	{0x00,0x00,0x33,0x33,0x33,0x1E,0x0C,0x00},	// 0x76
	{0x00,0x00,0x63,0x63,0x6B,0x7F,0x36,0x00},	// 0x77
	{0x00,0x00,0x63,0x36,0x1C,0x36,0x63,0x00},	// 0x78
	{0x00,0x00,0x33,0x33,0x33,0x3E,0x30,0x1F},	// 0x79
	{0x00,0x00,0x3F,0x19,0x0C,0x26,0x3F,0x00},	// 0x7A
	{0x38,0x0C,0x0C,0x07,0x0C,0x0C,0x38,0x00},	// 0x7B
	{0x18,0x18,0x18,0x00,0x18,0x18,0x18,0x00},	// 0x7C
	{0x07,0x0C,0x0C,0x38,0x0C,0x0C,0x07,0x00},	// 0x7D
	{0x6E,0x3B,0x00,0x00,0x00,0x00,0x00,0x00},	// 0x7E
};