/*
 * adc.c
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

#include "adc.h"

void adcInit(void) {
	DDRC &= ~(3);
	ADMUX = 0;
	ADMUX |= (1 << REFS0); // Ref. Voltage: Vcc
	ADCSRA |= (1 << ADPS2) | (1 << ADPS0); // Prescaler 64
	ADCSRA |= (1 << ADEN); // Enable adc
	adcStartConversion(0);
	adcGetResult();
}

void adcStartConversion(uint8_t channel) {
	ADMUX &= 0xF0; // Clear channel selection bits
	ADMUX |= (channel & 0x0F); // Set channel
	ADCSRA |= (1 << ADSC); // start conversion
}

uint8_t adcIsFinished(void) {
	// Return 1 if ADSC is 0
	if (ADCSRA & (1 << ADSC)) {
		return 0;
	} else {
		return 1;
	}
}

uint16_t adcGetResult(void) {
	while (adcIsFinished() == 0);
	ADCSRA &= ~(1 << ADSC);
	return ADCW;
}

uint8_t adcGetByte(void) {
	uint16_t tmp = adcGetResult();
	tmp = tmp >> 2;
	return tmp;
}
