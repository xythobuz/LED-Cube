/*
 * transmit.c
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
#include <avr/io.h>
#include <util/delay.h>
#include <stdint.h>
#include <stdlib.h>
#include <avr/wdt.h>
#include "memLayer.h"
#include "serial.h"
#include "time.h"
#include "strings.h"
#include "audio.h"

#define OK 0x42
#define ERROR 0x23

#define TRANSTIMEOUT 10000

// These are global variables from main.c
extern char buffer[11];
extern uint8_t refreshAnimationCount;

void recieveAnimations(void) {
	uint8_t animCount, a, frameCount, f, i, c;
	uint16_t completeCount = 0;
	uint8_t *frame = (uint8_t *)malloc(65);
	uint64_t timestamp = getSystemTime();

	serialWrite(OK); // We are ready...

	while (!serialHasChar()) { // Wait for answer
		if ((getSystemTime() - timestamp) <= TRANSTIMEOUT) {
			wdt_reset();
		}
	}
	c = serialGet();
	animCount = c; // Got animation count
	serialWrite(OK);

	for (a = 0; a < animCount; a++) {
		while (!serialHasChar()) { // Wait for answer
			if ((getSystemTime() - timestamp) <= TRANSTIMEOUT) {
				wdt_reset();
			}
		}
		c = serialGet();
		frameCount = c; // Got frame count
		serialWrite(OK);

		for (f = 0; f < frameCount; f++) {
			while (!serialHasChar()) { // Wait for answer
				if ((getSystemTime() - timestamp) <= TRANSTIMEOUT) {
					wdt_reset();
				}
			}
			c = serialGet();
			frame[64] = c; // Got duration
			serialWrite(OK);

			for (i = 0; i < 64; i++) {
				while (!serialHasChar()) { // Wait for answer
					if ((getSystemTime() - timestamp) <= TRANSTIMEOUT) {
						wdt_reset();
					}
				}
				c = serialGet();
				frame[i] = c; // Got data byte
			}
			serialWrite(OK);

			setFrame(completeCount++, frame);
		}
	}
	free(frame);

	while (!serialHasChar()) { // Wait for answer
		if ((getSystemTime() - timestamp) <= TRANSTIMEOUT) {
			wdt_reset();
		}
	}
	c = serialGet();
	while (!serialHasChar()) { // Wait for answer
		if ((getSystemTime() - timestamp) <= TRANSTIMEOUT) {
			wdt_reset();
		}
	}
	c = serialGet();
	while (!serialHasChar()) { // Wait for answer
		if ((getSystemTime() - timestamp) <= TRANSTIMEOUT) {
			wdt_reset();
		}
	}
	c = serialGet();
	while (!serialHasChar()) { // Wait for answer
		if ((getSystemTime() - timestamp) <= TRANSTIMEOUT) {
			wdt_reset();
		}
	}
	c = serialGet();

	serialWrite(OK);

	setAnimationCount(completeCount);
	refreshAnimationCount = 1;
}

void transmitAnimations(void) {
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

void sendAudioData(void) {
	uint8_t i;
	uint8_t *audioData = getAudioData();
	if (audioData == NULL) {
		serialWriteString(getString(21));
	} else {
		serialWriteString(getString(22));
		for (i = 0; i < 7; i++) {
			serialWrite(i + '0');
			serialWriteString(": ");
			itoa(audioData[i], buffer, 10);
			serialWriteString(buffer);
			serialWrite('\n');
		}
	}
}