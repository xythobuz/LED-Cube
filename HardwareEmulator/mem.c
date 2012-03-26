/*
 * mem.c - HardwareEmulator
 * frame is represented as 65 bytes.
 * 0 - 63: frame data
 * 64: duration, 0 => 1/24th second
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "mem.h"

char *mem = NULL;
int frameCount = 0;

// return != 0 if error
int addFrame(char *frame) {
	char *newMem, *oldMem = mem;
	int i;

	if (oldMem != NULL) {
		newMem = (char *)malloc(65 * frameCount);
		if (newMem == NULL) {
			return 1;
		}
		memcpy(newMem, oldMem, 65 * frameCount); // Copy old frames
		free(oldMem);
	} else {
		// oldMem == NULL
		frameCount = 0;
		newMem = (char *)malloc(65);
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