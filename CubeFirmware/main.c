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

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <stdint.h>
#include <stdlib.h>
#include <avr/wdt.h>

#include "serial.h"
#include "cube.h"
#include "time.h"
#include "audio.h"
#include "mem.h"
#include "memLayer.h"
#include "twi.h"
#include "strings.h"
#include "visualizer.h"
#include "animations.h"
#include "transmit.h"

// Length of an idle animation frame, 24 -> 1 second
#define IDLELENGTH 48

void init(void);
uint8_t audioModeSelected(void);
uint8_t selfTest(void);
void serialHandler(char c);

uint8_t defaultImageCube[64] = {	0x81, 0x42, 0x24, 0x18, 0x18, 0x24, 0x42, 0x81,
									0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
									0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
									0x81, 0x42, 0x24, 0x18, 0x18, 0x24, 0x42, 0x81,
									0x81, 0x42, 0x24, 0x18, 0x18, 0x24, 0x42, 0x81,
									0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
									0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
									0x81, 0x42, 0x24, 0x18, 0x18, 0x24, 0x42, 0x81 };

#define NOERROR 0
// Audio does not answer
#define AUDIOERROR 1
// Memory does not answer
#define MEMORYERROR 2
// Memory not writeable
#define MEMORYWRITEERROR 4
// x = errorcode, e = error definition, not NOERROR
#define ISERROR(x, e) ((x) & (e))

uint8_t shouldRestart = 0;
uint8_t refreshAnimationCount = 0;
uint8_t lastButtonState = 0;
uint8_t maxButtonState = 1; // No audio, get's checked later
uint8_t disableAudioData = 0;
uint8_t disableMemory = 0;
uint8_t disableAnim = 0;

char buffer[11];

int main(void) {
	/*
		Quick Summary of the jobs main has to do:
		- Initialize Cube
		- Regularly check the buttonstate
		- Check for incoming serial transmission and run serialHandler
		- Check if animations are stored
		--> If yes, display them
		--> If no, display our idle animations
	*/

	uint8_t i;
	uint8_t imageIndex = 0, imageCount = 0;
	uint8_t idleIndex = 0, idleCount = 0;
	uint8_t lastButtonCheck;
	// uint8_t fpsWasSent = 0;
	// uint32_t temp;
	uint8_t *imageData = NULL, *audioData = NULL;
	uint8_t duration = 0;

	// Initialization:
	MCUCSR = 0; // Reset Watchdog
	wdt_disable();
	init(); // Initialize all subsystems, set port directions, enable interrupts
	wdt_enable(WDTO_1S); // Watchdog reset after 1 second
	i = selfTest(); // Run selftest, print errors
	// Disable subsystems if they are unavailable
	if (ISERROR(i, AUDIOERROR))
		disableAudioData = 1;
	if (ISERROR(i, MEMORYERROR) || ISERROR(i, MEMORYWRITEERROR))
		disableMemory = 1;
	serialWriteString(getString(0)); // Print Version

	audioModeSelected(); // Initial button state check
	lastButtonCheck = getSystemTime(); // Time we checked

	if (disableMemory == 0)
		imageCount = getAnimationCount(); // Retrieve image count from memory
	idleCount = numOfAnimations();
	if (disableAudioData == 0)
		maxButtonState = numberOfVisualizations() + 1; // Number of toggle steps for button

	while(1) { // Our Mainloop
		if (!shouldRestart) { // A flag to trigger a watchdog reset
			wdt_reset();
		}

		if (refreshAnimationCount) {
			refreshAnimationCount = 0;
			if (disableMemory == 0)
				imageCount = getAnimationCount();
		}

		if (serialHasChar()) { // Run serialHandler
			serialHandler((char)(serialGet()));
		}

		if ((getSystemTime() - lastButtonCheck) >= 150) { // Check button state every 150ms
			audioModeSelected();
			lastButtonCheck = getSystemTime();
		}

		if (lastButtonState == 0) {
			// Display animations, stored or built-in
			if (disableAnim == 0) {
				if ((imageCount > 0) && (disableMemory == 0)) {
					// Memory frames
					if (isFinished() > duration) {
						// Last frame was displayed long enough
						imageIndex = (imageIndex < (imageCount - 1)) ? (imageIndex + 1) : 0;
						imageData = getFrame(imageIndex);
						if (imageData == NULL) {
							duration = 24;
							setImage(defaultImageCube);
						} else {
							duration = imageData[64];
							setImage(imageData);
							free(imageData);
						}
					}
				} else {
					// Built-In Anims
					if (isFinished() > duration) {
						idleIndex = (idleIndex < (idleCount - 1)) ? (idleIndex + 1) : 0;
						duration = executeAnimation(idleIndex);
					}
				}
			}
		} else {
			// An audiomode is selected
			if (disableAudioData == 0) {
				if (isFinished()) {
					audioData = getAudioData();
					if (audioData != NULL) {
						runVisualization(audioData, (lastButtonState - 1));
					} else {
						lastButtonState = 0;
						duration = 24;
						setImage(defaultImageCube); // Quasi Error Screen
					}
				}
			} else {
				lastButtonState = 0;
			}
		}

		// Print fps after one second
		/* if ((getSystemTime() >= 1000) && (fpsWasSent == 0)) {
			temp = getTriggerCount();
			serialWriteString(ltoa(temp, buffer, 10));
			serialWriteString(getString(27));
			serialWriteString(ltoa((temp / 8), buffer, 10));
			serialWriteString(getString(28));
			fpsWasSent = 1;
		} */

	}

	close(); // This is of course unneccessary. We never reach this point.
	return 0;
}

void init(void) {
	DDRA = 0xFF; // Latch Data Bus as Output
	DDRD = 0xFC; DDRB = 24; // Mosfets as Output
	DDRC = 0xFC; DDRB |= 6; // Latch Enable as Output
	DDRB &= ~(1 << PB0); // Pushbutton as Input

	initCube();
	serialInit(25, 8, NONE, 1);
	i2c_init();
	initSystemTimer();
	sei(); // Enable Interrupts

	setImage(defaultImageCube); // Display something
}

uint8_t audioModeSelected(void) {
	// Pushbutton: PB0, Low active

	if (!(PINB & (1 << PB0))) {
		// Button pushed
		if (lastButtonState < (maxButtonState - 1)) {
			lastButtonState++;
		} else {
			lastButtonState = 0;
		}

	}
	return lastButtonState;
}

uint8_t selfTest(void) {
	uint8_t result = NOERROR;
	
	uint8_t *data = getAudioData();
	if (data == NULL) {
		result |= AUDIOERROR;
	} else {
	}

	data = memGetBytes(0, 1);
	if (data == NULL) {
		result |= MEMORYERROR;
	} else {
		free(data);
	}

	setGeneralPurposeByte(0, 0x23);
	if (getGeneralPurposeByte(0) != 0x23) {
		result |= MEMORYWRITEERROR;
	}

	if (result) { // Error in Selftest
		serialWriteString(getString(1));
		serialWriteString(itoa(result, buffer, 2));
		serialWrite('\n');
		if (ISERROR(result, AUDIOERROR)) {
			serialWriteString(getString(3));
		}
		if (ISERROR(result, MEMORYERROR)) {
			serialWriteString(getString(4));
		}
		if (ISERROR(result, MEMORYWRITEERROR)) {
			serialWriteString(getString(5));
		}
	}

	return result;
}

void randomAnimation(void) {
	uint8_t *b = (uint8_t *)malloc(64);
	uint8_t x, y, z;
	if (b == NULL) {
		serialWriteString(getString(24));
		return;
	}
	for (x = 0; x < 64; x++) {
		b[x] = 0;
	}
	while(1) {
		wdt_reset();
		setImage(b);
		while(isFinished() == 0);
		x = rand() / 4096;
		y = rand() / 4096;
		z = rand() / 4096;
		b[x + (8 * y)] ^= (1 << z);

		if (serialHasChar()) {
			serialWriteString(getString(25));
			free(b);
			serialGet();
			return;
		}
	}
	free(b);
}

void serialHandler(char c) {
	// Used letters:
	// a, b, c, d, e, f, g, h, i, n, q, r, s, t, u, v, x, y, 0, 1, 2, 3, #
	uint8_t i, y, z;
	uint8_t *tmp;

	switch(c) {
	case OK:
		serialWrite(OK);
		break;

	case 'h': case 'H': case '?':
		serialWriteString(getString(6));
		serialWriteString(getString(7));
		serialWriteString(getString(8));
		serialWriteString(getString(9));
		serialWriteString(getString(10));
		serialWriteString(getString(26));
		serialWriteString(getString(34));

		serialWriteString(getString(11));
		serialWriteString(getString(12));
		serialWriteString(getString(13));
		break;

	case 'd': case 'D':
		setAnimationCount(0);
		serialWrite(OK);
		refreshAnimationCount = 1;
		break;

	case 'f': case 'F':
		serialWriteString(getString(32));
		clearMem();
		serialWriteString(getString(33));
		refreshAnimationCount = 1;
		break;

	case 'g': case 'G':
		transmitAnimations();
		break;

	case 's': case 'S':
		recieveAnimations();
		refreshAnimationCount = 1;
		break;

	case 'v': case 'V':
		serialWriteString(getString(0));
		break;

	case 'm': case 'M':
		if (lastButtonState < (maxButtonState - 1)) {
			lastButtonState++;
		} else {
			lastButtonState = 0;
		}
		if (lastButtonState) {
			serialWriteString(getString(41));
		} else {
			serialWriteString(getString(40));
		}
		break;

	case 'q': case 'Q':
		shouldRestart = 1;
		serialWriteString(getString(30));
		break;

	case 'r': case 'R':
		randomAnimation();
		break;

	case 't': case 'T':
		printTime();
		break;

	case 'a': case 'A':
		sendAudioData();
		break;

	case 'c': case 'C':
		serialWriteString(itoa(getAnimationCount(), buffer, 10));
		serialWriteString(" (");
		serialWriteString(itoa(refreshAnimationCount, buffer, 10));
		serialWriteString(")");
		serialWriteString(getString(15));
		break;

	case 'u': case 'U':
		serialWriteString(getString(31));
		while(!serialHasChar()) {
			wdt_reset();
		}
		i = serialGet() - '0';
		serialWrite(i + '0');
		serialWrite('\n');
		tmp = getFrame(i);
		dumpFrame(tmp);
		free(tmp);
		break;

	case 'x': case 'X':
		// Get byte, store as animation count
		serialWriteString(getString(16));
		while (!serialHasChar());
		c = serialGet();
		setAnimationCount(c);
		serialWriteString(itoa(c, buffer, 10));
		serialWriteString(getString(17));
		break;

	case 'y': case 'Y':
		setAnimationCount(0x2201);
		serialWriteString(getString(18));
		break;

	case 'e': case 'E':
		selfTest();
		break;

	case 'n': case 'N':
		// snake();
		break;

	case '0':
		fillBuffer(0);
		disableAnim = 1;
		break;

	case '1':
		fillBuffer(0xFF);
		disableAnim = 1;
		break;

	case '3':
		setImage(defaultImageCube);
		disableAnim = 1;
		break;

	case '2':
		fillBuffer(0);
		while(1) {
			for (i = 0; i < 8; i++) {
				for (y = 0; y < 8; y++) {
					defaultImageCube[y + (i * 8)] = 0;
					for (z = 0; z < 8; z++) {
						defaultImageCube[y + (i * 8)] |= (1 << z);
						setImage(defaultImageCube);
						while (isFinished() == 0) {
							wdt_reset();
							if (serialHasChar()) {
								goto killMeForIt; // Yes I know...
								// But I need to break out of 2 while Loops...
							}
						}
					}
					// defaultImageCube[y + (i * 8)] = 0;
				}
			}
		}
		break;
killMeForIt:
		serialGet(); // Killed because we got a serial char. Remove it from buffer.
		serialWriteString(getString(25));
		break;

	case 'I': case 'i':
		serialWriteString(ltoa(getTriggerCount(), buffer, 10));
		serialWrite('\n');
		break;

	default:
		serialWrite(ERROR);
		break;
	}
	// c was used as temp var and does not contain the char anymore...!
}
