/*
 * eq.c
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
#include <util/delay.h>

#include "eq.h"
#include "adc.h"

#define RESETDELAY 1 /* in µs */
#define RESETSTROBEDELAY 72 /* in µs */
#define STROBEDELAY 18 /* in µs */
#define READDELAY 36 /* in µs */

#if ((STROBEDELAY * 2) + READDELAY) < 72
#error Strobe to Strobe Delay too short
#endif

void equalizerInit(void) {
	DDRC |= 12; // Strobe: PC2
				// Reset: PC3
				// Out: ADC0
	PORTC |= (1 << PC3); // Reset enabled
	_delay_us(RESETDELAY);

}

uint8_t *equalizerGet(void) {
	uint8_t *result = (uint8_t *)malloc(7); // Has to work... If not, were screwed anyway :)
	uint8_t i, offset = getOffset();

	PORTC &= ~(1 << PC3); // Disable reset
	_delay_us(RESETSTROBEDELAY); // Wait trs

	for (i = 0; i < 7; i++) {
		PORTC |= (1 << PC2); // Strobe '1'
		_delay_us(STROBEDELAY); // create minimal pulse width
		PORTC &= ~(1 << PC2);
		_delay_us(READDELAY); // Wait for result to appear
		adcStartConversion(0x00);
		result[i] = offset + adcGetByte();
		_delay_us(STROBEDELAY);
	}

	PORTC |= (1 << PC3); // Enable reset

	return result;
}

uint8_t getOffset(void) {
	adcStartConversion(0x01);
	return (adcGetByte() / 2);
}
