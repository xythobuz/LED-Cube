/*
 * twislave.c
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
#include <avr/interrupt.h>
#include <stdint.h>

uint8_t data[7] = { 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42 };
uint8_t dataSent = 0;

ISR(TWI_vect) {
	static uint8_t dataPos = 0;
	switch (TWSR & ~(7)) {
		case 0xB0: case 0xA8: // We've been called
			dataPos = 1; // Prepare next position
			TWDR = data[0]; // Transmit first byte
			TWCR |= (1 << TWEA); // More follows
			dataSent = 0;
			break;
		case 0xB8: // We're doing fine
			if (dataPos >= 6) {
				// whoops, this shouldn't happen
				// we transmit the last byte again and stop as if nothing happened
				// we do this also if we reached the last byte
				dataPos = 0;
				TWDR = data[6];
				TWCR &= ~(1 << TWEA); // Nothing follows
				dataSent = 1;
			} else {
				TWDR = data[dataPos++]; // Transmit next byte
				TWCR |= (1 << TWEA); // More follows
				dataSent = 0;
			}
			break;
		case 0xC0: case 0xC8: // We're done
			TWCR |= (1 << TWEA);
			dataSent = 1;
			break;
	}

	TWCR |= (1 << TWINT); // Continue with bus operation
}

void twiInit(uint8_t address) {
	if (address == 0) { // set slave address
		TWAR = 1;
	} else {
		TWAR = address & ~(1);
	}
	TWCR = (1 << TWEN) | (1 << TWEA) | (1 << TWIE); // Enable twi, interrupt and acknowledge bit
}

void twiSetDataToSend(uint8_t *d) { // 7 bytes
	// We don't care if it interrupts while we update the data.
	// It will cause a single faulty frame. This will not be visible while showing many
	// readouts in a short time.
	uint8_t i;
	for (i = 0; i < 7; i++) {
		data[i] = d[i];
	}
	dataSent = 0;
}

uint8_t twiDataWasSent(void) {
	if (dataSent != 0) {
		return 1;
	} else {
		return 0;
	}
}
