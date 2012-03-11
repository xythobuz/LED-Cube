/*
 * time.c
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
// Uses Timer 0!
#include <stdlib.h>
#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "time.h"

// Interrupt:
// Prescaler 256
// Count to 208
// Execute every 3 times
// => 1 Interrupt per millisecond

volatile uint64_t systemTime = 0; // Overflows in 500 million years... :)
volatile uint8_t isrCounter = 0;

void initSystemTimer() {
	TCCR0 |= (1 << WGM01) | (1 << CS02); // Prescaler: 256, CTC Mode
	OCR0 = 208;
	TIMSK |= (1 << TOIE0); // Enable overflow interrupt
}

ISR(TIMER0_OVF_vect) {
	if (isrCounter >= 2) {
		isrCounter = 0;
		systemTime++;
	} else {
		isrCounter++;
	}
}

uint64_t getSystemTime() {
	return systemTime;
}