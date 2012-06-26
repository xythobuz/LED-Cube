/*
 * transmit.c
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

#define TIMEOUTPERFRAME 500

// These are global variables from main.c
extern char buffer[11];

void recieveAnimations(void) {
	uint8_t animCount, a, frameCount, f, i, c;
	uint16_t completeCount = 0;
	uint8_t *frame = (uint8_t *)malloc(65);
	uint64_t timestamp = getSystemTime();
	uint64_t timeout = TIMEOUTPERFRAME;

	serialWrite(OK); // We are ready...

	while (!serialHasChar()) { // Wait for answer
		if ((getSystemTime() - timestamp) <= timeout) {
			wdt_reset();
		} else {
			setAnimationCount(0);
			return;
		}
	}
	c = serialGet();
	animCount = c; // Got animation count
	serialWrite(OK);

	for (a = 0; a < animCount; a++) {
		while (!serialHasChar()) { // Wait for answer
			if ((getSystemTime() - timestamp) <= timeout) {
				wdt_reset();
			} else {
				setAnimationCount(0);
				return;
			}
		}
		c = serialGet();
		frameCount = c; // Got frame count
		serialWrite(OK);

		for (f = 0; f < frameCount; f++) {
			timeout += TIMEOUTPERFRAME;
			while (!serialHasChar()) { // Wait for answer
				if ((getSystemTime() - timestamp) <= timeout) {
					wdt_reset();
				} else {
					setAnimationCount(0);
					return;
				}
			}
			c = serialGet();
			frame[64] = c; // Got duration
			serialWrite(OK);

			for (i = 0; i < 64; i++) {
				while (!serialHasChar()) { // Wait for answer
					if ((getSystemTime() - timestamp) <= timeout) {
						wdt_reset();
					} else {
						setAnimationCount(0);
						return;
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
		if ((getSystemTime() - timestamp) <= timeout) {
			wdt_reset();
		} else {
			setAnimationCount(0);
			return;
		}
	}
	c = serialGet();
	while (!serialHasChar()) { // Wait for answer
		if ((getSystemTime() - timestamp) <= timeout) {
			wdt_reset();
		} else {
			setAnimationCount(0);
			return;
		}
	}
	c = serialGet();
	while (!serialHasChar()) { // Wait for answer
		if ((getSystemTime() - timestamp) <= timeout) {
			wdt_reset();
		} else {
			setAnimationCount(0);
			return;
		}
	}
	c = serialGet();
	while (!serialHasChar()) { // Wait for answer
		if ((getSystemTime() - timestamp) <= timeout) {
			wdt_reset();
		} else {
			setAnimationCount(0);
			return;
		}
	}
	c = serialGet();

	serialWrite(OK);

	setAnimationCount(completeCount);
}

void transmitAnimations(void) {
	serialWrite(ERROR);
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

void printTime(void) {
	serialWriteString(getString(14));
	serialWriteString(ltoa(getSystemTime(), buffer, 10));
	serialWriteString("ms");
	if (getSystemTime() > 60000) {
		serialWriteString(" (");
		serialWriteString(itoa(getSystemTime() / 60000, buffer, 10));
		serialWriteString(" min)");
	}
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
}

void dumpFrame(uint8_t *f) {
	uint8_t zeile, spalte;
	for (zeile = 0; zeile < 8; zeile++) {
		serialWrite(zeile + '0');
		serialWriteString(": ");
		for (spalte = 0; spalte < 8; spalte++) {
			itoa(f[(8 * zeile) + spalte], buffer, 16);
			serialWriteString(buffer);
			serialWrite(' ');
		}
		serialWrite('\n');
	}
	serialWriteString(getString(35));
	itoa(f[64], buffer, 10);
	serialWriteString(buffer);
	serialWrite('\n');
}

uint8_t *readLine(void) {
	uint8_t ptr = 0;
	while(1) {
		wdt_reset();
		if (serialHasChar()) {
			buffer[ptr] = serialGet();
			serialWrite(buffer[ptr]);
			if ((buffer[ptr] == '\n') || (ptr == sizeof(buffer) - 1)) {
				buffer[ptr] = '\0';
				return (uint8_t *)buffer;
			}
			ptr++;
		}

	}
}

uint8_t readNumber(uint8_t base) {
	uint8_t *s = readLine();
	uint8_t val = (uint8_t)strtoul((char *)s, NULL, base);
	return val;
}

void writeNumber(uint8_t num, uint8_t base) {
	itoa(num, buffer, base);
	serialWriteString(buffer);
}

uint8_t *readAFrame(void) {
	uint8_t *frame = (uint8_t *)malloc(65);
	uint8_t byte;

	serialWriteString(getString(35)); // "Duration: "
	frame[64] = readNumber(10);
	for (byte = 0; byte < 64; byte++) {
		writeNumber(byte, 10);
		serialWriteString(": "); // "xx: "
		frame[byte] = readNumber(16);
	}
	serialWriteString(getString(33));
	return frame;
}

void simpleAnimationInput(void) {
	uint8_t start, j, d;
	int8_t i;
	uint8_t data[8] = {0, 0, 0, 0, 0, 0, 0, 0};
	uint8_t *frame = (uint8_t *)malloc(65);
	frame[64] = 2;

	serialWriteString(getString(36));
	start = readNumber(10);
	serialWriteString(getString(37));
	for (i = 0; i < 8; i++) {
		writeNumber(i, 10);
		serialWriteString(": ");
		data[i] = readNumber(16);
	}
	serialWriteString(getString(38));
	for (i = 0; i < 8; i++) {
		d = 0;
		for (j = 0; j < 64; j++) {
			if ((j < (8 * (i + 1))) && (j >= (8 * i))) {
				frame[j] = data[d++];
			} else {
				frame[j] = 0;
			}
		}
		setFrame(i + start, frame);
	}
	serialWriteString(getString(33)); // Done
	free(frame);
}
