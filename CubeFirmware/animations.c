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
*/

// Prototypes for all animations
void simpleAnimationA(void);
void simpleAnimationB(void);
void simpleAnimationC(void);
void simpleAnimationD(void);
void simpleAnimationE(void);
void simpleAnimationF(void);

// Array of animation functions
#define NUMOFANIMATIONS 6
void (*animations[NUMOFANIMATIONS])(void) = { &simpleAnimationA, &simpleAnimationB,
								&simpleAnimationC, &simpleAnimationD, &simpleAnimationE,
								&simpleAnimationF };

#define WAVELENGTH 2

uint8_t numOfAnimations(void) {
	return NUMOFANIMATIONS;
}

void executeAnimation(uint8_t id) {
	if (id < NUMOFANIMATIONS) {
		animations[id](); // Call animation
	}
}

void simpleAnimationA(void) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();
	// Up-wave
	for(y = 0; y < 8; y++) {
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

void simpleAnimationB(void) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();
	// Down-wave (Frames 9-15 of showoff.cube)
	for(y = 7; y >= 0; y--) {
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

void simpleAnimationC(void) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();
	// x-axis wave
	for(x = 0; x < 8; x++) {
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

void simpleAnimationD(void) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();
	for(x = 7; x >= 0; x--) {
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

void simpleAnimationE(void) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();
	// z-axis-wave
	for(z = 0; z < 8; z++) {
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

void simpleAnimationF(void) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();
	for(z = 7; z >= 0; z--) {
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
