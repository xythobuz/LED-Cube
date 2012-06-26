/*
 * mem.c - HardwareEmulator
 * frame is represented as 65 bytes.
 * 0 - 63: frame data
 * 64: duration, 0 => 1/24th second
 *
 * mem.c
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

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "mem.h"

char *mem = NULL;
int frameCount = 0;

// return != 0 if error
int addFrame(char *frame) {
	char *newMem;

	if (mem != NULL) {
		newMem = (char *)malloc(65 * (frameCount + 1));
		if (newMem == NULL) {
			return 1;
		}
		memcpy(newMem, mem, 65 * frameCount); // Copy old frames
		free(mem);
	} else {
		frameCount = 0;
		newMem = (char *)malloc(65 * (frameCount + 1));
		if (newMem == NULL) {
			return 1;
		}
	}

	memcpy((newMem + (65 * frameCount)), frame, 65); // Add new frame

	frameCount++;
	mem = newMem;
	return 0;
}

// returns NULL if error
char *getFrame(int index) {
	if (index >= frameCount) {
		return NULL;
	} else if (mem == NULL) {
		return NULL;
	} else {
		return (mem + (65 * index));
	}
}

int framesStored() {
	return frameCount;
}

void clearMemory() {
	free(mem);
	mem = NULL;
	frameCount = 0;
}