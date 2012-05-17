/*
 * cube.c
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
// Uses Timer 1!
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include <util/atomic.h>

#ifdef DEBUG
#include "serial.h"
#include "strings.h"
#endif
#include "cube.h"

#ifndef F_CPU
#define F_CPU 16000000L
#endif

/*
 * 24 fps, 8 layers => 192 Interrupts per second
 * We are at 16MHz, so we count to:
 * 16000000 / 192 = 83333,33...
 * We can only count to 2^16, therefore we have a second counter
 * COUNT * (COUNT2 + 1) = Realcount
 * 41666 * 2 = 83332
 * This is flickering really hard.
 *
 * COUNT2 set to 0 on the other hand, thus producing 48fps,
 * works flicker-free. Now we just return imgFlag / 2 as isFinished(),
 * so we still fake 24fps for the main program...
 */

#define COUNT 41666
#define COUNT2 0

volatile uint8_t imgBuffer[8][8];
volatile uint8_t changedFlag = 0;
volatile uint8_t imgFlag = 0;
volatile uint8_t layer = 0;
volatile uint8_t toggleFlag = 0;

inline void isrCall(void);

volatile uint32_t timesTriggered = 0;
volatile uint8_t warningDisplayed = 0;

ISR(TIMER1_COMPA_vect) {
	if (toggleFlag >= COUNT2) {
		isrCall();
		toggleFlag = 0;
		timesTriggered++;
	} else {
		toggleFlag++;
	}
}

uint32_t getTriggerCount(void) {
	return timesTriggered;
}

void setImage(uint8_t *img) {
	uint8_t i, j;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		changedFlag = 1;
		imgFlag = 0;
		for (i = 0; i < 8; i++) {
			for (j = 0; j < 8; j++) {
				imgBuffer[j][i] = ~(img[j + (i * 8)]);
			}
		}
	}
}

void fillBuffer(uint8_t val) {
	uint8_t i, j;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		changedFlag = 1;
		imgFlag = 0;
		for (i = 0; i < 8; i++) {
			for (j = 0; j < 8; j++) {
				imgBuffer[i][j] = ~(val);
			}
		}
	}
}

uint8_t isFinished(void) {
	return (imgFlag / 2);
}

void initCube(void) {
	TCCR1B |= (1 << CS10) | (1 << WGM12); // Prescaler: 1, CTC Mode
	OCR1A = COUNT;
	TIMSK = (1 << OCIE1A); // Enable Output Compare Interrupt
}

void close(void) {
	TIMSK &= ~(1 << OCIE1A); // Disable interrupt
}

// Data is sent to 8 Fet bits...
inline void setFet(uint8_t data) {
	PORTD = (data & ~(3)); // Doesn't interfere with serial communication...
	PORTB = (PORTB & ~(24)) | ((data << 3) & 24);
}

// Give id of latch, 0 - 7
inline void selectLatch(uint8_t latchNr) {
	// Disable all latches
	PORTC &= ~(0xFC); // 2 - 7
	PORTB &= ~(6); // 0 & 1

	// Enable desired latch
	if (latchNr > 1) {
		PORTC |= (1 << latchNr);
	} else {
		PORTB |= (1 << (latchNr + 1));
	}
}

inline void setLatch(uint8_t latchNr, uint8_t data) {
	selectLatch(latchNr); // Activate current latch
	PORTA = data; // Put latch data
	asm volatile("nop"::); // Wait for latch
}

inline void isrCall(void) {
	uint8_t latchCtr = 0;

	if (changedFlag != 0) {
		// The picture changed. Restart!
		layer = 0;
		changedFlag = 0;
	}
	setFet(0);
	for (; latchCtr < 8; latchCtr++) {
		setLatch(latchCtr, imgBuffer[layer][latchCtr]); // Put out all the data
	}
	setFet(1 << layer);
	
	// Select next layer
	if (layer < 7) {
		layer++;
	} else {
		layer = 0;
		imgFlag++; // Finished
	}
}
