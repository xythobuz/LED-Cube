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

#ifndef F_CPU
#define F_CPU 16000000L
#endif
 
#define OK 0x42
#define ERROR 0x23

#define VERSION "8^3 LED-Cube v1\n"

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <stdint.h>
#include <stdlib.h>

#include "serial.h"
#include "cube.h"
#include "time.h"
#include "audio.h"
#include "memLayer.h"
#include "twi.h"

void serialHandler(char c);
void sendAudioData(void);
void recieveAnimations(void);
void transmitAnimations(void);
uint8_t audioModeSelected(void);
inline void setPixelBuffer(uint8_t x, uint8_t y, uint8_t z, uint8_t **buf);
inline void clearPixelBuffer(uint8_t x, uint8_t y, uint8_t z, uint8_t **buf);
void setRow(uint8_t x, uint8_t z, uint8_t height, uint8_t **buf);
void visualizeAudioData(uint8_t *audioData, uint8_t **imageData);

uint8_t refreshAnimationCount = 1;
uint8_t lastButtonState = 0;
char buffer[11];

int main(void) {
	uint8_t *audioData;
	uint8_t **imageData;
	uint8_t i, lastMode;
	uint16_t count;
	uint64_t lastChecked;

	initCube();
	serialInit(51, 8, NONE, 1);
	i2c_init();
	initSystemTimer();
	sei(); // Enable Interrupts

	DDRD = 0xFC; // Mosfets as Output
	DDRB = 0xFE;
	DDRC = 0xFF; // Latch Enable
	DDRA = 0xFF; // Latch Data

	imageData = (uint8_t **)malloc(8 * sizeof(uint8_t *));
	for (i = 0; i < 8; i++) {
		imageData[i] = (uint8_t *)malloc(8 * sizeof(uint8_t));
	}

#ifdef DEBUG
	refreshAnimationCount = 0; // Don't talk to FRAM yet...

	serialWriteString("Initialized: ");
	serialWriteString(VERSION);
	serialWriteString("Took ");
	serialWriteString(itoa(getSystemTime(), buffer, 10));
	serialWriteString(" ms!\n");
#endif

	lastMode = audioModeSelected();
	lastChecked = getSystemTime();

	while (1) {
		//if(lastMode) {
			// Get Audio Data and visualize it
			/* audioData = getAudioData();
			if (audioData != NULL) {
				visualizeAudioData(audioData, imageData);
				setImage(imageData);
				free(audioData);
			}
			while(!isFinished()); // Wait for it to display */
		//} else {
			// Look for commands, play from fram
			// We have 128*1024 bytes
			// A Frame needs 65 bytes (64 data + duration)
			// We place 2016 Frames in mem => 131040
			// That gives us 32 bytes at the beginning, 0 -> 31
			// The first frame starts at 32
			if (serialHasChar()) {
				serialHandler((char)(serialGet()));
			}

			/* if (refreshAnimationCount) {
				// Get animation count stored in FRAM via TWI, if needed
				count = getAnimationCount();
				refreshAnimationCount = 0;
			} */
		//}

		if ((getSystemTime() - lastChecked) > 100) {
			lastMode = audioModeSelected();
			lastChecked = getSystemTime();
		} 
	}

	close();
	return 0;
}

void serialHandler(char c) {
	// Used letters:
	// a, c, d, g, s, t, v, x
	switch(c) {
	case OK:
		serialWrite(OK);
		break;

	case 'd': case 'D':
		clearMem();
		serialWrite(OK);
		break;

	case 'g': case 'G':
		transmitAnimations();
		break;

	case 's': case 'S':
		recieveAnimations();
		break;

	case 'v': case 'V':
		serialWriteString(VERSION);
		break;

	case 't': case 'T':
		serialWriteString("System Time: ");
		serialWriteString(ltoa(getSystemTime(), buffer, 10));
		serialWriteString("ms");
		if (getSystemTime() > 1000) {
			serialWriteString(" (");
			serialWriteString(itoa(getSystemTime() / 1000, buffer, 10));
			itoa(getSystemTime() % 1000, buffer, 10);
			if (buffer[0] != '\0')
				serialWrite('.');
			if (buffer[2] == '\0') 
				serialWrite('0');
			if (buffer[1] == '\0')
				serialWrite('0');
			if (buffer[0] != '\0')
				serialWriteString(buffer);
			serialWriteString("s)\n");
		} else {
			serialWrite('\n');
		}
		break;

	case 'a': case 'A':
		sendAudioData();
		break;

	case 'c': case 'C':
		serialWriteString(itoa(getAnimationCount(), buffer, 10));
		serialWriteString(" Frames stored\n");
		break;

	case 'x': case 'X':
		// Get byte, store as animation count
		serialWriteString("Send a byte...");
		while (!serialHasChar());
		setAnimationCount(serialGet());
		serialWriteString(" Byte written!\n");
		break;

	case '\n':
		serialWriteString(VERSION);
		serialWriteString("See xythobuz.org for more Infos!\n");
		break;

	default:
		serialWrite(ERROR);
		break;
	}
}

void sendAudioData(void) {
	uint8_t i;
	uint8_t *audioData = getAudioData();
	if (audioData == NULL) {
		serialWriteString("Could not access device!\n");
		return;
	}

	serialWriteString("Audio Data:\n");
	for (i = 0; i < 7; i++) {
		serialWrite(i + '0');
		serialWriteString(": ");
		itoa(audioData[i], buffer, 10);
		serialWriteString(buffer);
		serialWrite('\n');
	}

	free(audioData);
}

void recieveAnimations() {
	uint8_t animCount, a, frameCount, f, i;
	uint16_t completeCount = 0, character;
	uint8_t frame[65];

	serialWrite(OK); // We are ready...

	character = serialGet();
	while (character & 0xFF00) { // Wait for answer
		character = serialGet();
	}

	animCount = (uint8_t)(character & 0x00FF); // Got animation count
	serialWrite(OK);

	for (a = 0; a < animCount; a++) {
		character = serialGet();
		while (character & 0xFF00) { // Wait for answer
			character = serialGet();
		}

		frameCount = (uint8_t)(character & 0x00FF); // Got frame count
		serialWrite(OK);

		for (f = 0; f < frameCount; f++) {
			character = serialGet();
			while (character & 0xFF00) { // Wait for answer
				character = serialGet();
			}

			frame[64] = (uint8_t)(character & 0x00FF); // Got duration
			serialWrite(OK);

			for (i = 0; i < 64; i++) {
				character = serialGet();
				while (character & 0xFF00) { // Wait for answer
					character = serialGet();
				}

				frame[i] = (uint8_t)(character & 0x00FF); // Got data byte
			}
			serialWrite(OK);

			setFrame(completeCount++, frame);
		}
	}

	character = serialGet();
	while (character & 0xFF00) { // Wait for answer
		character = serialGet();
	}
	character = serialGet();
	while (character & 0xFF00) { // Wait for answer
		character = serialGet();
	}
	character = serialGet();
	while (character & 0xFF00) { // Wait for answer
		character = serialGet();
	}
	character = serialGet();
	while (character & 0xFF00) { // Wait for answer
		character = serialGet();
	}
	serialWrite(OK);
	setAnimationCount(completeCount);
	refreshAnimationCount = 1;
}

void transmitAnimations() {
	// We store no animation information in here
	// So we have to place all frames in one or more
	// animations... We need 8 animations max...
	uint8_t animationsToGo;
	uint16_t framesToGo = getAnimationCount();
	uint16_t character;
	uint8_t a;
	uint8_t f, fMax, i;
	uint8_t *frame;

	if ((framesToGo % 255) == 0) {
		animationsToGo = framesToGo / 255;
	} else {
		animationsToGo = (framesToGo / 255) + 1;
	}

	serialWrite(OK);
	serialWrite(animationsToGo);
	while ((character = serialGet()) & 0xFF00); // Wait for answer
	if ((character & 0x00FF) != OK) { // Error code recieved
		return;
	}

	for (a = 0; a < animationsToGo; a++) {
		if (framesToGo > 255) {
			fMax = 255;
		} else {
			fMax = framesToGo;
		}

		serialWrite(fMax); // Number of Frames in current animation
		while ((character = serialGet()) & 0xFF00); // Wait for answer
		if ((character & 0x00FF) != OK) { // Error code recieved
			return;
		}

		for (f = 0; f < fMax; f++) {
			frame = getFrame(f + (255 * a));

			serialWrite(frame[64]); // frame duration
			while ((character = serialGet()) & 0xFF00); // Wait for answer
			if ((character & 0x00FF) != OK) { // Error code recieved
				free(frame);
				return;
			}

			for (i = 0; i < 64; i++) {
				serialWrite(frame[i]);
			}
			while ((character = serialGet()) & 0xFF00); // Wait for answer
			if ((character & 0x00FF) != OK) { // Error code recieved
				free(frame);
				return;
			}

			free(frame);
		}
		framesToGo -= fMax;
	}

	serialWrite(OK);
	serialWrite(OK);
	serialWrite(OK);
	serialWrite(OK);

	while ((character = serialGet()) & 0xFF00); // Wait for answer
	// Error code ignored...
}

uint8_t audioModeSelected(void) {
	// Pushbutton: PB0, Low active

	if (!(PINB & (1 << PB0))) {
		// Button pushed
		if (lastButtonState == 0) {
			lastButtonState = 1;
		} else {
			lastButtonState = 0;
		}

#ifdef DEBUG
		serialWriteString("New State (");
		serialWriteString(itoa(lastButtonState, buffer, 10));
		serialWriteString(")\n");
#endif

	}
	return lastButtonState;
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
