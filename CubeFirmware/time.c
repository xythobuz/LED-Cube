/*
 * time.c
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
#include <stdlib.h>
#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "time.h"

// Uses Timer 0!
// Interrupt:
// Prescaler 64
// Count to 250
// => 1 Interrupt per millisecond

volatile uint64_t systemTime = 0; // Overflows in 500 million years... :)

void initSystemTimer() {
	TCCR0 |= (1 << WGM01) | (1 << CS01) | (1 << CS00); // Prescaler: 256, CTC Mode
	OCR0 = 250;
	TIMSK |= (1 << OCIE0); // Enable overflow interrupt
}

ISR(TIMER0_COMP_vect) {
	systemTime++;
}

uint64_t getSystemTime() {
	return systemTime;
}