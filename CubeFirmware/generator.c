/*
 * generator.c
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
#include <avr/io.h>
#include <util/delay.h>
#include <stdint.h>
#include <stdlib.h>
#include "memLayer.h"
#include "font.h"
#include "buffhelp.h"

// Generate 8 frames, store them from index start.
// data has 8 bytes --> 1 layer. This layer is moved from back to front.
void generateMovingAnimation(uint8_t *data, uint16_t start, uint8_t duration) {
	uint8_t i, j, d;
	uint8_t *frame = (uint8_t *)malloc(65);
	frame[64] = duration;

	for (i = 0; i < 8; i++) {
		d = 0;
		for (j = 0; j < 64; j++) {
			if ((j < (8 * (i + 1))) && (j >= (8 * i))) {
				frame[j] = data[d++];
			} else {
				frame[j] = 0;
			}
		}
		setFrame(i + start, frame);
	}
	free(frame);
}

void renderText(char *text, uint16_t start) {
	uint8_t *buf;

	while(text[0] != '\0') {
		generateMovingAnimation(getFont(text[0]), start, 1);
		start += 8;
		text++;
	}

	buf = buffNew();
	buf[64] = 12; // half second empty frame at end of text
	setFrame(start, buf);
	free(buf);
}