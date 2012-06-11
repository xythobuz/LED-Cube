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
void upWave(void);
void downWave(void);
void xWave1(void);
void xWave2(void);
void zWave1(void);
void zWave2(void);
void tinyCube(void);
void smallCube(void);
void bigCube(void);
void fullCube(void);


// Array of animation functions
#define NUMOFANIMATIONS 10
void (*animations[NUMOFANIMATIONS])(void) = { &upWave, &downWave,
								&xWave1, &xWave2, &zWave1,
								&zWave2, &tinyCube, &smallCube, &bigCube, &fullCube };

#define WAVELENGTH 2

uint8_t numOfAnimations(void) {
	return NUMOFANIMATIONS;
}

void executeAnimation(uint8_t id) {
	if (id < NUMOFANIMATIONS) {
		animations[id](); // Call animation
	}
}

void upWave(void) {
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

void downWave(void) {
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

void xWave1(void) {
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

void xWave2(void) {
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

void zWave1(void) {
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

void zWave2(void) {
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

void tinyCube(void) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();

	//Cube_1
	buffSetPixel(buff, 3, 3, 3);
	buffSetPixel(buff, 4, 3, 3);
	buffSetPixel(buff, 4, 4, 3);
	buffSetPixel(buff, 4, 4, 4);
	setImage(buff);
	while(isFinished() < WAVELENGTH) {
		wdt_reset();	
	}
	buffClearAllPixels(buff);

	free(buff);
}

void smallCube (void){
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();

	//Cube_2
	for(x = 2; x < 6; x++) {
		for(y = 2; y < 6; y++) {
			buffSetPixel(buff, x, y, 2);
			buffSetPixel(buff, x, y, 5);
		}
	}
	for(y = 2; y < 6; y++) {
		for(z = 2; z < 6; z++) {
			buffSetPixel(buff, 2, y, z);
			buffSetPixel(buff, 5, y, z);
		}
	}
	for(x = 2; x < 6; x++) {
		for(z = 2; z < 6; z++) {
			buffSetPixel(buff, x, 2, z);
			buffSetPixel(buff, x, 5, z);
		}
	}
	setImage(buff);
	while(isFinished() < WAVELENGTH) {
		wdt_reset();	
	}
	buffClearAllPixels(buff);
	free(buff);
}
void bigCube (void) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();

	//Cube_3
	for(x = 1; x < 7; x++){
		for(y = 1; y < 7; y++) {
			buffSetPixel(buff, x, y, 1);
			buffSetPixel(buff, x, y, 6);
		}
	}
	for(y = 1; y < 7; y++){
		for(z = 1; z < 7; z++) {
			buffSetPixel(buff, 1, y, z);
			buffSetPixel(buff, 6, y, z);
		}
	}
	for(x = 1; x < 7; x++){
		for(z = 1; z < 7; z++) {
			buffSetPixel(buff, x, 1, z);
			buffSetPixel(buff, x, 6, z);
		}
	}
	setImage(buff);
	while(isFinished() < WAVELENGTH) {
		wdt_reset();	
	}
	buffClearAllPixels(buff);

	free(buff);
}
void fullCube (void) {
	uint8_t *buff;
	int8_t x, y, z;

	buff = buffNew();
	
	//Cube_4
	for(x = 0; x < 8; x++){
		for(y = 0; y < 8; y++) {
			buffSetPixel(buff, x, y, 0);
			buffSetPixel(buff, x, y, 7);
		}
	}
	for(y = 0; y < 8; y++){
		for(z = 0; z < 8; z++) {
			buffSetPixel(buff, 0, y, z);
			buffSetPixel(buff, 8, y, z);
		}
	}
	for(x = 0; x < 8; x++){
		for(z = 0; z < 8; z++) {
			buffSetPixel(buff, x, 0, z);
			buffSetPixel(buff, x, 8, z);
		}
	}
	setImage(buff);
	while(isFinished() < WAVELENGTH) {
		wdt_reset();	
	}
	buffClearAllPixels(buff);

	free(buff);
}
