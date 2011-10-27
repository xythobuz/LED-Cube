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
#include <avr/interrupt.h>
#include <util/delay.h>
#include "uart.h"
#include "cube.h"

#ifndef F_CPU
#define F_CPU 16000000L
#endif

void init(void) {
	uint8_t ctr = 0;
	DDRD = 0xFF; // Mosfets as Output
	DDRB = 0xFF;
	DDRC = 0xFF; // Latch Enable
	DDRA = 0xFF; // Latch Data
	
	uart_init(UART_BAUD_SELECT(19200, 16000000L));

	TCCR1A |= (1 << WGM12); // CTC Mode
	TCCR1B |= (1 << CS10); // No prescaler
	OCR1A = 3968;
	TIMSK = (1 << OCIE1A); // Enable Overflow Interrupt

	imgBuffer = malloc(8 * sizeof(uint8_t*));
	if (imgBuffer == NULL) {
		// TO-DO:
		// error!
	}
	for(ctr = 0; ctr < 8; ctr++) {
		imgBuffer[ctr] = malloc(8 * sizeof(uint8_t));
		if (imgBuffer[ctr] == NULL) {
			// TO-DO:
			// error!
		}
	}

	sei(); // Enable Interrupts
}

int main(void) {
	
	init();

	while (1) {
		
	}
	return 0;
}
