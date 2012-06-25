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
 #include <avr/wdt.h>
 #include "mem.h"
 #include "memLayer.h"
 #include "serial.h"

// We have 128*1024 bytes
// A Frame needs 65 bytes (64 data + duration)
// We place 2016 Frames in mem => 131040
// That gives us 32 bytes at the beginning, 0 -> 31
// The first frame starts at 32
// Framecount in 0 and 1
// General Purpose bytes 0 to 29, starting at 2

// Free after usage!
uint8_t *getFrame(uint16_t frameNumber) {
	return memGetBytes(32 + (65 * frameNumber), 65);
}

// 65 bytes framedata, data and duration...
void setFrame(uint16_t frameNumber, uint8_t *frameData) {
	memWriteBytes(32 + (65 * frameNumber), frameData, 65);
}

void setDuration(uint16_t frameNumber, uint8_t duration) {
	memWriteByte(32 + 64 + (65 * frameNumber), duration);
}

void clearMem() {
	uint32_t i;
	for (i = 0; i < MemLength; i++) {
		memWriteByte(i, 0);
		wdt_reset();
	}
}

uint16_t getAnimationCount() {
	uint8_t lsb = memGetByte(0);
	uint8_t msb = memGetByte(1);
	uint16_t animationCount = (uint16_t)lsb;
	animationCount |= (((uint16_t)(msb)) << 8);
	if (animationCount <= 2016) {
		return animationCount;
	} else {
		return 2016;
	}
}

void setAnimationCount(uint16_t c) {
	uint8_t lsb = (uint8_t)(c & 0x00FF);
	uint8_t msb = (uint8_t)((c & 0xFF00) >> 8);
	memWriteByte(0, lsb);
	memWriteByte(1, msb);
}

void setGeneralPurposeByte(uint8_t address, uint8_t data) {
	if (address < 30) {
		memWriteByte(address + 2, data);
	}
}

uint8_t getGeneralPurposeByte(uint8_t address) {
	if (address < 30) {
		return memGetByte(address + 2);
	} else {
		return 0;
	}
}