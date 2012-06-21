/*
 * visualizer.c
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
#include <stdint.h>

#include <visualizer.h>
#include <cube.h>
#include <buffhelp.h>

void simpleVisualization(uint8_t *data) {
	uint8_t *buff;
	int8_t i, h, max, d;

	buff = buffNew();

	buffClearAllPixels(buff);

	for(i = 0; i < 7; i++) {
		max = data[i] / 31;
		
		// d = 7;
		for (d = 0; d < 8; d++) {
			// h = max;
			for (h = 0; h < max; h++) {
				buffSetPixel(buff, i, h, d);
			}
		}
	}

	setImage(buff);
	buffFree(buff);
}

void wave3DVisualization(uint8_t *data) {

}