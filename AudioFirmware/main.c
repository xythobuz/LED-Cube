/*
 * main.c
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
#include <stdlib.h>
#include <stdint.h>
#include <avr/io.h>
#include <util/delay.h>

#include "adc.h"
#include "eq.h"

#ifndef F_CPU
#define F_CPU 16000000L
#endif

void blinkStatus(void) {
	PORTB |= (1 << PB2);
	PORTB &= ~(1 << PB1);
	_delay_ms(250);
	PORTB &= ~(1 << PB2);
	PORTB |= (1 << PB1);
	_delay_ms(250);
}

void showMusicOnLED(void) {
	uint8_t *music;
	uint8_t i, val;

	music = equalizerGet();
	val = 0;
	for (i = 0; i < 7; i++) {
		val += music[i];
	}
	val /= 7;

	free(music);

	if (val >= 20) {
		PORTB |= (1 << PB2);
	} else {
		PORTB &= ~(1 << PB2);
	}
}

void showPotOnLED(void) {
	uint8_t val = 0;
	adcStartConversion(0x01); // 0x0E -> 1,3 V Ref.
	val = adcGetByte();

	if (val >= 127) {
		PORTB |= (1 << PB1);
	} else {
		PORTB &= ~(1 << PB1);
	}
}

int main(void) {
	DDRB = 0x3F;
	DDRC = 0x0C;
	DDRD = 0xFF;
	
	adcInit();
	equalizerInit();

	blinkStatus();
	blinkStatus();

	// Blink led :)
	while (1) {		
		//showPotOnLED();
		showMusicOnLED();
		
		// Heartbeat
		PORTB ^= (1 << PB1);
		_delay_ms(1);
	}

	return 0;
}
