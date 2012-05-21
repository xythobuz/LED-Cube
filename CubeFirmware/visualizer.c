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

	buff = buffNew();
	buffFillRect(buff, 0, data[0] / 31, 0, 0, 0, 7, 1);
	buffFillRect(buff, 1, data[1] / 31, 0, 1, 0, 7, 1);
	buffFillRect(buff, 2, data[2] / 31, 0, 2, 0, 7, 1);
	buffFillRect(buff, 3, data[3] / 31, 0, 3, 0, 7, 1);
	buffFillRect(buff, 4, data[4] / 31, 0, 4, 0, 7, 1);
	buffFillRect(buff, 5, data[5] / 31, 0, 5, 0, 7, 1);
	buffFillRect(buff, 6, data[6] / 31, 0, 6, 0, 7, 1);
	setImage(buff);
	buffFree(buff);
}

void wave3DVisualization(uint8_t *data) {

}