/*
 * buffhelp.h
 *
 * Copyright 2011 Thomas Buck <xythobuz@me.com>
 * Copyright 2011 Max Nuding <max.nuding@gmail.com>
 * Copyright 2011 Felix Bäder <baeder.felix@gmail.com>
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

uint8_t *buffNew(void) {
	uint8_t i;
	uint8_t *tmp = (uint8_t *)malloc(64);
	if (tmp == NULL) {
#ifdef DEBUG
		serialWriteString(getString(24));
#endif
		while(1); // Ran out of heap => Watchdog Reset
	}
	for (i = 0; i < 64; i++) {
		// Clear pixels
		tmp[i] = 0;
	}
	return tmp;
}

void buffSetPixel(uint8_t *buffer, uint8_t x, uint8_t y, uint8_t z) {
	buffer[(8 * (7 - z)) + (7 - y)] |= (1 << x);
}

void buffClearPixel(uint8_t *buffer, uint8_t x, uint8_t y, uint8_t z) {
	buffer[(8 * (7 - z)) + (7 - y)] &= ~(1 << x);
}
void buffClearAllPixels(uint8_t *buffer) {
	uint8_t i;
	for(i = 0; i < 64; i++) {	
		buffer[i] = 0;
	}
}

void buffFree(uint8_t *buffer) {
	free(buffer);
}
