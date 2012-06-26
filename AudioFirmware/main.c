/*
 * main.c
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
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>

#include "adc.h"
#include "eq.h"
#include "twislave.h"

#ifndef F_CPU
#define F_CPU 16000000L
#endif

int main(void) {
	uint8_t *music = result;

	MCUCSR = 0;
	wdt_disable();

	DDRB = 6; // LEDs as Output
	DDRC = 12; // MSGEQ7 Pins as Output
	DDRD = 0; // Nothing on this Port!
	
	twiInit(0x42); // All TWI action happens completely in the background.
	adcInit();
	equalizerInit();

	sei(); // Enable interrupts

	wdt_enable(WDTO_500MS); // Enable watchdog reset after 500ms

	twiSetDataToSend(music);

	while (1) {
		if (twiDataWasSent()) {
			PORTB ^= (1 << PB2); // Toggle for every transaction
			music = equalizerGet();
			twiSetDataToSend(music);
		}
		wdt_reset();
	}

	return 0;
}
