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
#include <avr/wdt.h>

#include "adc.h"
#include "eq.h"
#include "twislave.h"

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

int main(void) {
	uint8_t *music;

	MCUCSR = 0;
	wdt_disable();

	DDRB = 0x3F;
	DDRC = 0x0C;
	DDRD = 0xFF;
	
	twiInit(0x42); // All TWI action happens completely in the background.
	adcInit();
	equalizerInit();

	blinkStatus();
	blinkStatus();

	wdt_enable(WDTO_500MS); // Enable watchdog reset after 500ms

	music = equalizerGet();
	twiSetDataToSend(music);
	free(music);

	while (1) {
		if (twiDataWasSent()) {
			PORTB ^= (1 << PB2); // Toggle for every transaction
			
			music = equalizerGet();
			twiSetDataToSend(music);
			free(music);
		}

		// Heartbeat
		PORTB ^= (1 << PB1);
		_delay_ms(1); // Everything locks if this is removed :(
		// still don't know why...

		wdt_reset();
	}

	return 0;
}
