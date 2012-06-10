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
#include <avr/io.h>
#include <avr/wdt.h>

#include <buffhelp.h>
#include <cube.h>

// Prototypes for all animations
void simpleAnimation(void);
void anotherAnimation(void);

// Array of animation functions
#define NUMOFANIMATIONS 2
void (*animations[NUMOFANIMATIONS])(void) = {&simpleAnimation, &anotherAnimation};

uint8_t numOfAnimations(void) {
	return NUMOFANIMATIONS;
}

void executeAnimation(uint8_t id) {
	if (id < NUMOFANIMATIONS) {
		animations[id](); // Call animation
	}
}

void simpleAnimation(void) {
	uint8_t *buff;
	int8_t x, y, z, i;
	
	buff = buffNew();

	//Up-wave
	for(i = 0; i < 3; i++) { //Display frame 3/24 seconds
		for(y = 0; y < 8; y++) {
			for(x = 0; x < 8; x++) {
				for(z = 0; z < 8; z++) {
					buffSetPixel(buff, x, y, z);
				}
			}

			setImage(buff);
			while(!isFinished()) {
				wdt_reset();
			}
	
			buffClearAllPixels(buff);	
		}
	}
	// Down-wave (Frames 9-15 of showoff.cube)
	for(i = 0; i < 3; i++) {
		for(y = 7; y >= 0; y--) {
			for(x = 0; x < 8; x++) {
				for(z = 0; z < 8; z++) {
					buffSetPixel(buff, x, y, z);
				}
			}
	
			setImage(buff);
			while(!isFinished()) {
				wdt_reset();
			}
		
			buffClearAllPixels(buff);	
		}
	}

	//x-axis wave
	for(i = 0; i < 3; i++){
		for(x = 0; x < 8; x++) {
			for(y = 0; y < 8; y++) {
				for(z = 0; z < 8; z++) {
					buffSetPixel(buff, x, y, z);
				}
			}
	
			setImage(buff);
			while(!isFinished()) {
				wdt_reset();
			}
			
			buffClearAllPixels(buff);
		}
		
			for(x = 7; x >= 0; x--) {
				for(y = 0; y < 8; y++) {
					for(z = 0; z < 8; z++) {
						buffSetPixel(buff, x, y, z);
				}
			}
	
			setImage(buff);
			while(!isFinished()) {
				wdt_reset();
			}
		
			buffClearAllPixels(buff);
		}
	}

	//z-axis-wave
	for(i = 0; i < 3; i++) {
		for(z = 0; z < 8; z++) {
			for(y = 0; y < 8; y++) {
				for(x = 0; x < 8; x++) {
					buffSetPixel(buff, x, y, z);
				}
			}
	
			setImage(buff);
			while(!isFinished()) {
				wdt_reset();
			}
			
			buffClearAllPixels(buff);
		}
		
		for(z = 7; z >= 0; z--) {
			for(x = 0; x < 8; x++) {
				for(y = 0; y < 8; y++) {
					buffSetPixel(buff, x, y, z);
				}
			}
	
			setImage(buff);
			while(!isFinished()) {
				wdt_reset();
			}
	
			buffClearAllPixels(buff);
		}
	}
}

void anotherAnimation(void) {

}
