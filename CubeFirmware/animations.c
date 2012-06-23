/*
 * animations.c
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
#include <stdint.h>
#include <stdlib.h>
#include <avr/io.h>
#include <avr/wdt.h>

#include <buffhelp.h>
#include <cube.h>

/*
	HOW TO Write a new Animation

A)	Think of a name, create a function Prototype right below this comment.
B)	Increment NUMOFANIMATION by the number of animations you are going to add.
C)	Put a function pointer to your new animation into the animations[] Array.
D)	Implement your animation!
	--> Get a buffer with buffNew(); Display it with setImage(); Free Buffer after usage!
	--> Return desired duration until the next animation is called, in frames (24fps)
*/

// Prototypes for all animations
void upWave(uint8_t i);
void downWave(uint8_t i);
void xWave1(uint8_t i);
void xWave2(uint8_t i);
void zWave1(uint8_t i);
void zWave2(uint8_t i);

// Array of animation functions
#define NUMOFANIMATIONS 0
uint8_t (*animations[NUMOFANIMATIONS])(void) = { };

#define WAVELENGTH 2

uint8_t numOfAnimations(void) {
	return NUMOFANIMATIONS + 24;
}

uint8_t executeAnimation(uint8_t id) {
	if (id < (6*4)) {
		if (id < 4) {
			upWave(id);
		} else if (id < 8) {
			downWave(id - 4);
		} else if (id < 12) {
			xWave1(id - 8);
		} else if (id < 16) {
			xWave2(id - 12);
		} else if (id < 20) {
			zWave1(id - 16);
		} else {
			zWave2(id - 20);
		}
		return 1;
	} else if ((id - (6*4)) < NUMOFANIMATIONS) {
		return animations[id - (6*4)](); // Call animation
	}
	return 1;
}

void upWave(uint8_t i) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();
	// Up-wave
	for(y = (i * 2); y < ((i * 2) + 2); y++) {
		for(x = 0; x < 8; x++) {
			for(z = 0; z < 8; z++) {
				buffSetPixel(buff, x, y, z);
			}
		}
		setImage(buff);
		while(isFinished() < WAVELENGTH) {
			wdt_reset();
		}
		buffClearAllPixels(buff);	
	}
	free(buff);
}

void downWave(uint8_t i) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();
	// Down-wave (Frames 9-15 of showoff.cube)
	for(y = (7 - (2 * i)); y >= ((7 - (2 * i)) - 1); y--) {
		for(x = 0; x < 8; x++) {
			for(z = 0; z < 8; z++) {
				buffSetPixel(buff, x, y, z);
			}
		}
		setImage(buff);
		while(isFinished() < WAVELENGTH) {
			wdt_reset();
		}
		buffClearAllPixels(buff);	
	}
	free(buff);
}

void xWave1(uint8_t i) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();
	// x-axis wave
	for(x = (i * 2); x < ((i * 2) + 2); x++) {
		for(y = 0; y < 8; y++) {
			for(z = 0; z < 8; z++) {
				buffSetPixel(buff, x, y, z);
			}
		}
		setImage(buff);
		while(isFinished() < WAVELENGTH) {
			wdt_reset();
		}
		buffClearAllPixels(buff);
	}
	free(buff);
}

void xWave2(uint8_t i) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();
	for(x = (7 - (2 * i)); x >= ((7 - (2 * i)) - 1); x--) {
		for(y = 0; y < 8; y++) {
			for(z = 0; z < 8; z++) {
				buffSetPixel(buff, x, y, z);
			}
		}
		setImage(buff);
		while(isFinished() < WAVELENGTH) {
			wdt_reset();
		}
		buffClearAllPixels(buff);
	}
	free(buff);
}

void zWave1(uint8_t i) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();
	// z-axis-wave
	for(z = (i * 2); z < ((i * 2) + 2); z++) {
		for(y = 0; y < 8; y++) {
			for(x = 0; x < 8; x++) {
				buffSetPixel(buff, x, y, z);
			}
		}
		setImage(buff);
		while(isFinished() < WAVELENGTH) {
			wdt_reset();
		}
		buffClearAllPixels(buff);
	}
	free(buff);
}

void zWave2(uint8_t i) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();
	for(z = (7 - (2 * i)); z >= ((7 - (2 * i)) - 1); z--) {
		for(x = 0; x < 8; x++) {
			for(y = 0; y < 8; y++) {
				buffSetPixel(buff, x, y, z);
			}
		}
		setImage(buff);
		while(isFinished() < WAVELENGTH) {
			wdt_reset();
		}
		buffClearAllPixels(buff);
	}
	free(buff);
}
