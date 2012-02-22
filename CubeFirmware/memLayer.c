/*
 * memLayer.c
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
 #include <stdint.h>
 #include <avr/io.h>
 #include <stdlib.h>
 #include "mem.h"
 #include "memLayer.h"

// Free after usage!
uint8_t *getFrame(uint16_t frameNumber) {
	return memGetBytes(32 + (65 * frameNumber), 65);
}

// 65 bytes framedata, data and duration...
void setFrame(uint16_t frameNumber, uint8_t *frameData) {
	memWriteBytes(32 + (65 * frameNumber), frameData, 65);
}

void clearMem() {
	uint32_t i;
	for (i = 0; i < MemLength; i++) {
		memWriteByte(i, 0);
	}
}

uint16_t getAnimationCount() {
	uint16_t animationCount = memGetByte(0);
	animationCount |= (memGetByte(1) << 8);
	return animationCount;
}

void setAnimationCount(uint16_t c) {
	memWriteByte(0, (uint8_t)(c & 0x00FF));
	memWriteByte(0, (uint8_t)((c & 0xFF00) >> 8));
}