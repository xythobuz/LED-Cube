/*
 * buffhelp.h
 *
 * Copyright 2012 Thomas Buck <xythobuz@me.com>
 * Copyright 2012 Max Nuding <max.nuding@gmail.com>
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
#include <stdint.h>
#include <stdlib.h>
#include <serial.h>
#include <strings.h>

void buffClearAllPixels(uint8_t *buffer) {
	uint8_t i;
	for(i = 0; i < 64; i++) {	
		buffer[i] = 0;
	}
}

uint8_t *buffNew(void) {
	uint8_t *tmp = (uint8_t *)malloc(65);
	if (tmp == NULL) {
		serialWriteString(getString(24)); // Display warning, don't care for CubeControl
		while(1); // Ran out of heap => Watchdog Reset
	}
	buffClearAllPixels(tmp);
	tmp[64] = 1;
	return tmp;
}

void buffSetPixel(uint8_t *buffer, uint8_t x, uint8_t y, uint8_t z) {
	buffer[(8 * (7 - z)) + (7 - y)] |= (1 << x);
}

void buffClearPixel(uint8_t *buffer, uint8_t x, uint8_t y, uint8_t z) {
	buffer[(8 * (7 - z)) + (7 - y)] &= ~(1 << x);
}

void buffFree(uint8_t *buffer) {
	free(buffer);
}
