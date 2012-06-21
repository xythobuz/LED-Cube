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

void simpleVisualization(uint8_t *data);
void fullDepthVisualization(uint8_t *data);

#define NUMOFVISUALIZATIONS 2

void (*visualizations[NUMOFVISUALIZATIONS])(uint8_t *data) = { &simpleVisualization,
													&fullDepthVisualization };

uint8_t numberOfVisualizations(void) {
	return NUMOFVISUALIZATIONS;
}

void runVisualization(uint8_t *data, uint8_t id) {
	if (id < NUMOFVISUALIZATIONS)
		visualizations[id](data);
}

void simpleVUMeter(uint8_t *data, uint8_t *buff, uint8_t z) {
	uint8_t i, h, max;
	for(i = 0; i < 7; i++) {
		max = data[i] / 31;
		for (h = 0; h < max; h++) {
			if (i == 0) {
				buffSetPixel(buff, i, h / 2, z);
			}
			buffSetPixel(buff, i + 1, h, z);
		}
	}
}

void simpleVisualization(uint8_t *data) {
	uint8_t *buff;
	buff = buffNew();

	buffClearAllPixels(buff);

	simpleVUMeter(data, buff, 7);

	setImage(buff);
	buffFree(buff);
}

void fullDepthVisualization(uint8_t *data) {
	uint8_t *buff;
	uint8_t i;
	buff = buffNew();

	buffClearAllPixels(buff);

	for (i = 0; i < 8; i++) {
		simpleVUMeter(data, buff, i);
	}

	setImage(buff);
	buffFree(buff);
}