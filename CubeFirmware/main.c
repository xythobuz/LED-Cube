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
#include <avr/interrupt.h>
#include "uart.h"
#include "cube.h"
#include "time.h"
#include "audio.h"

#ifndef F_CPU
#define F_CPU 16000000L
#endif

uint8_t audioModeSelected(void);
inline void setPixelBuffer(uint8_t x, uint8_t y, uint8_t z, uint8_t **buf);
inline void clearPixelBuffer(uint8_t x, uint8_t y, uint8_t z, uint8_t **buf);
void setRow(uint8_t x, uint8_t z, uint8_t height, uint8_t **buf);
void visualizeAudioData(uint8_t *audioData, uint8_t **imageData);

int main(void) {
	char c;
	uint8_t *audioData;
	uint8_t **imageData;
	uint8_t i, j;
	uint64_t lastTimeChecked;
	uint8_t audioMode;

	DDRD = 0xFF; // Mosfets as Output
	DDRB = 0xFE;
	DDRC = 0xFF; // Latch Enable
	DDRA = 0xFF; // Latch Data

	imageData = (uint8_t **)malloc(8 * sizeof(uint8_t *));
	for (i = 0; i < 8; i++) {
		imageData[i] = (uint8_t *)malloc(8 * sizeof(uint8_t));
	}

	init(); // Initialize Cube Low-Level Code
	uart_init(UART_BAUD_SELECT(19200, 16000000L)); // Initialize Serial
	initSystemTimer();

	sei(); // Enable Interrupts

	audioMode = audioModeSelected();
	lastTimeChecked = getSystemTime();

	while (1) {
		if(audioMode) {
			// Get Audio Data and visualize it
			audioData = getAudioData();
			visualizeAudioData(audioData, imageData);
			setImage(imageData);
			free(audioData);
			while(!isFinished()); // Wait for it to display
		} else {
			// Look for commands, play from fram
			
		}

		if ((getSystemTime() - lastTimeChecked) > 1000) {
			// 1 second since we checked button position last time
			audioMode = audioModeSelected();
			lastTimeChecked = getSystemTime();
		}
	}

	close();
	return 0;
}

// Blocks 10ms or more
uint8_t audioModeSelected(void) {
	// Switch: PB0, Low active
	uint64_t startTime = getSystemTime();
	uint8_t startState = PINB & (1 << PB0);

	while((getSystemTime() - startTime) < 10); // Wait 10ms

	if ((PINB & (1 << PB0)) != startState) {
		return audioModeSelected();
	} else {
		return startState;
	}
}

inline void setPixelBuffer(uint8_t x, uint8_t y, uint8_t z, uint8_t **buf) {
	buf[z][y] |= (1 << x);
}

inline void clearPixelBuffer(uint8_t x, uint8_t y, uint8_t z, uint8_t **buf) {
	buf[z][y] &= ~(1 << x);
}

void setBuffer(uint8_t d, uint8_t *buf, uint8_t length) {
	uint8_t i;
	for (i = 0; i < length; i++) {
		buf[i] = d;
	}
}

void setRow(uint8_t x, uint8_t z, uint8_t height, uint8_t **buf) {
	uint8_t i = 0;
	for (; i < height; i++) {
		setPixelBuffer(x, i, z, buf);
	}
}

void visualizeAudioData(uint8_t *audioData, uint8_t **imageData) {
	uint8_t i;
	for (i = 0; i < 8; i++) {
		setBuffer(0, imageData[i], 8);
	}

	// 8 LEDs, Max Val 255:
	// 256 / 8 = 32 => Divide by 31 (FACTOR) to get num of leds to light
	// 255 / FACTOR = 8,...
	// 127 / FACTOR = 4,...

	#define FACTOR 31

	// Could not figure out a way to represent this easily in a loop
	// without using a shitload of 'if's...
	setRow(0, 0, (audioData[0] / FACTOR), imageData);
	setRow(0, 1, (audioData[0] / FACTOR), imageData);
	setRow(1, 0, (audioData[0] / FACTOR), imageData);

	setRow(0, 2, (audioData[1] / FACTOR), imageData);
	setRow(0, 3, (audioData[1] / FACTOR), imageData);
	setRow(1, 1, (audioData[1] / FACTOR), imageData);
	setRow(1, 2, (audioData[1] / FACTOR), imageData);
	setRow(2, 0, (audioData[1] / FACTOR), imageData);
	setRow(2, 1, (audioData[1] / FACTOR), imageData);

	setRow(0, 4, (audioData[2] / FACTOR), imageData);
	setRow(0, 5, (audioData[2] / FACTOR), imageData);
	setRow(1, 3, (audioData[2] / FACTOR), imageData);
	setRow(1, 4, (audioData[2] / FACTOR), imageData);
	setRow(2, 2, (audioData[2] / FACTOR), imageData);
	setRow(2, 3, (audioData[2] / FACTOR), imageData);
	setRow(3, 0, (audioData[2] / FACTOR), imageData);
	setRow(3, 1, (audioData[2] / FACTOR), imageData);
	setRow(3, 2, (audioData[2] / FACTOR), imageData);
	setRow(4, 0, (audioData[2] / FACTOR), imageData);
	setRow(4, 1, (audioData[2] / FACTOR), imageData);

	setRow(0, 6, (audioData[3] / FACTOR), imageData);
	setRow(0, 7, (audioData[3] / FACTOR), imageData);
	setRow(1, 5, (audioData[3] / FACTOR), imageData);
	setRow(1, 6, (audioData[3] / FACTOR), imageData);
	setRow(2, 4, (audioData[3] / FACTOR), imageData);
	setRow(2, 5, (audioData[3] / FACTOR), imageData);
	setRow(3, 3, (audioData[3] / FACTOR), imageData);
	setRow(3, 4, (audioData[3] / FACTOR), imageData);
	setRow(4, 2, (audioData[3] / FACTOR), imageData);
	setRow(4, 3, (audioData[3] / FACTOR), imageData);
	setRow(5, 0, (audioData[3] / FACTOR), imageData);
	setRow(5, 1, (audioData[3] / FACTOR), imageData);
	setRow(5, 2, (audioData[3] / FACTOR), imageData);
	setRow(6, 0, (audioData[3] / FACTOR), imageData);
	setRow(6, 1, (audioData[3] / FACTOR), imageData);

	setRow(1, 7, (audioData[4] / FACTOR), imageData);
	setRow(2, 6, (audioData[4] / FACTOR), imageData);
	setRow(2, 7, (audioData[4] / FACTOR), imageData);
	setRow(3, 5, (audioData[4] / FACTOR), imageData);
	setRow(3, 6, (audioData[4] / FACTOR), imageData);
	setRow(4, 4, (audioData[4] / FACTOR), imageData);
	setRow(4, 5, (audioData[4] / FACTOR), imageData);
	setRow(5, 3, (audioData[4] / FACTOR), imageData);
	setRow(5, 4, (audioData[4] / FACTOR), imageData);
	setRow(6, 2, (audioData[4] / FACTOR), imageData);
	setRow(6, 3, (audioData[4] / FACTOR), imageData);
	setRow(7, 0, (audioData[4] / FACTOR), imageData);
	setRow(7, 1, (audioData[4] / FACTOR), imageData);

	setRow(3, 7, (audioData[5] / FACTOR), imageData);
	setRow(4, 6, (audioData[5] / FACTOR), imageData);
	setRow(4, 7, (audioData[5] / FACTOR), imageData);
	setRow(5, 5, (audioData[5] / FACTOR), imageData);
	setRow(5, 6, (audioData[5] / FACTOR), imageData);
	setRow(6, 4, (audioData[5] / FACTOR), imageData);
	setRow(6, 5, (audioData[5] / FACTOR), imageData);
	setRow(7, 2, (audioData[5] / FACTOR), imageData);
	setRow(7, 3, (audioData[5] / FACTOR), imageData);
	setRow(7, 4, (audioData[5] / FACTOR), imageData);

	setRow(5, 7, (audioData[6] / FACTOR), imageData);
	setRow(6, 6, (audioData[6] / FACTOR), imageData);
	setRow(6, 7, (audioData[6] / FACTOR), imageData);
	setRow(7, 5, (audioData[6] / FACTOR), imageData);
	setRow(7, 6, (audioData[6] / FACTOR), imageData);
	setRow(7, 7, (audioData[6] / FACTOR), imageData);
}
