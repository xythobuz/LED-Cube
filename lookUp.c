/*
 * lookUp.c
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
// Small utility to create a look up table for CubeFirmware.
// This is needed for our second cube, because we mirrored the connection cable.

#include <stdio.h>

int flip(int d) {
	int n;
	int converted = 0;
	for (n = 0; n < 8; n++) {
		if (d & (1 << (7 - n))) {
			converted |= (1 << n);
		}
	}
	return converted;
}

int flipAdjacent(int d) {
	int n;
	int converted = 0;

	for (n = 0; n < 7; n+= 2) {
		if (d & (1 << n)) {
			converted |= (1 << (n + 1));
		} else {
			converted &= ~(1 << (n + 1));
		}
		if (d & (1 << (n + 1))) {
			converted |= (1 << n);
		} else {
			converted &= ~(1 << n);
		}
	}
	return converted;
}

int main() {
	int byte;

	printf("uint8_t lookUp[256] = {");
	for (byte = 0; byte < 256; byte++) {
		printf(" %d", flipAdjacent(flip(byte));
		if (((byte % 10) == 0) && (byte > 0)) {
			printf(",\n");
		} else if (byte < 255) {
			printf(", ");
		}
	}
	printf(" }\n");
	return 0;
}
