/*
 * mem.c
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
#include <stdlib.h>
#include <stdint.h>
#include "twi.h"
#include "mem.h"
#include "serial.h"
#include "strings.h"

// address is a number between (inclusive) zero and 131071
uint8_t memGetByte(uint32_t address) {
	uint8_t addA, addB, memAddress = MEMTWIADDRESS, ret;
	if (address >= 65536) {
		// Address needs more than 16 bits, we have to set the PAGE bit in i2c address
		memAddress |= 2;
	}
	addA = address & 0xFF00;
	addB = address & 0xFF;

	if (i2c_start(memAddress | I2C_WRITE) == 0) { // Send start, write address to read
		i2c_write(addA);
		i2c_write(addB); // Give address to memory
		i2c_rep_start(memAddress | I2C_READ); // Start again, this time reading
		ret = i2c_readNak(); // Read one byte from memory
		i2c_stop();
		return ret;
	} else {
		return 0;
	}
}

// Free returned memory!
uint8_t *memGetBytes(uint32_t address, uint8_t length) {
	// We could use the High-Speed Mode of the FM24V10 here, but we don't, right now...
	uint8_t addA, addB, memAddress = MEMTWIADDRESS, i, *ret;
	if (address >= 65536) {
		// Address needs more than 16 bits, we have to set the PAGE bit in i2c address
		memAddress |= 2;
	}
	addA = address & 0xFF00;
	addB = address & 0xFF;
	ret = (uint8_t *)malloc(length); // Allocate memory for values read
	if (ret == NULL) {
		serialWriteString(getString(24));
		return NULL;
	}

	if (i2c_start(memAddress | I2C_WRITE) == 0) {
		i2c_write(addA);
		i2c_write(addB);
		i2c_rep_start(memAddress | I2C_READ);
		for (i = 0; i < (length - 1); i++) {
			ret[i] = i2c_readAck();
		}
		ret[length - 1] = i2c_readNak();
		i2c_stop();
		return ret;
	} else {
		return NULL;
	}
}

void memWriteByte(uint32_t address, uint8_t data) {
	uint8_t addA, addB, memAddress = MEMTWIADDRESS;
	if (address >= 65536) {
		// Address needs more than 16 bits, we have to set the PAGE bit in i2c address
		memAddress |= 2;
	}
	addA = address & 0xFF00;
	addB = address & 0xFF;
	if (i2c_start(memAddress | I2C_WRITE) == 0) {
		i2c_write(addA);
		i2c_write(addB); // Give address to memory
		i2c_write(data);
		i2c_stop();
	}
}

void memWriteBytes(uint32_t address, uint8_t *data, uint8_t length) {
	uint8_t addA, addB, memAddress = MEMTWIADDRESS, i;
	if (address >= 65536) {
		// Address needs more than 16 bits, we have to set the PAGE bit in i2c address
		memAddress |= 2;
	}
	addA = address & 0xFF00;
	addB = address & 0xFF;
	if (i2c_start(memAddress | I2C_WRITE) == 0) {
		i2c_write(addA);
		i2c_write(addB); // Give address to memory
		for (i = 0; i < length; i++) {
			i2c_write(data[i]);
		}
		i2c_stop();
	}
}
