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
#endif
#include "cube.h"

#ifndef F_CPU
#define F_CPU 16000000L
#endif

// Should be 41666
#define COUNT 41666

/*
 * We have:
 * Fosc / prescaler / fps / interruptsPerFrame = interruptCount
 * 16000000 / 1 / 24 / 8 = 83333 (round-a-bout)
 * That means, 192 Interrupts per second, 1920 after 10 secs!
 *
 * Small Study: Interrupt count after 10 seconds
 *
 * |-------------------------------|
 * |  COUNT   |  1   | 41666 |     |
 * |----------|------|-------|-----|
 * | intcount | 2451 | 2451  |     |
 * |-------------------------------|
 *
 * Haha, what's up with that?
 */

volatile uint8_t imgBuffer[8][8];
volatile uint8_t changedFlag = 0;
volatile uint8_t imgFlag = 0;
volatile uint8_t layer = 0;

inline void isrCall(void);

volatile uint32_t timesTriggered = 0;

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
				imgBuffer[i][j] = ~(img[j + (i * 8)]);
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
	return imgFlag;
}

void initCube(void) {
	TCCR1A |= (1 << WGM12); // CTC Mode
	TCCR1B |= (1 << CS10); // Prescaler: 1
	OCR1A = COUNT;
	TIMSK = (1 << OCIE1A); // Enable Output Compare Interrupt
}

void close(void) {
	TIMSK &= ~(1 << OCIE1A); // Disable interrupt
}

ISR(TIMER1_COMPA_vect) {
	isrCall();
	timesTriggered++;
}

// Data is sent to 8 Fet bits...
inline void setFet(uint8_t data) {
	PORTD = (data & ~(3)); // Doesn't interfere with serial communication...
	PORTB = (PORTB & ~(24)) | ((data << 3) & 24);
}

// Give id of latch, 0 - 7
inline void selectLatch(uint8_t latchNr) {
	PORTC = 0;
	if (latchNr < 8) {
		PORTC = 1 << latchNr;
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
	// setFet(0);
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
