/*
 * audio.c
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
#include <stdint.h>
#include <stdlib.h>

#include "twi.h"
#include "audio.h"

uint8_t ret[7]; // Buffer for data

// don't free returned memory! It's static mem
uint8_t *getAudioData(void) {
	// We read 7 bytes from our Audio µC
	uint8_t i;

	if (i2c_start(TWIADDRESSAUDIO | I2C_READ) == 0) {
		for (i = 0; i < 6; i++) {
			ret[i] = i2c_readAck();
		}
		ret[6] = i2c_readNak();
		i2c_stop();
		return ret;
	} else {
		return NULL;
	}
}
