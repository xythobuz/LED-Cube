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

#define FACTOR 31   // 8 LEDs, Max Val 255:
					// 256 / 8 = 32 => Divide by 31 (FACTOR) to get num of leds to light
					// 255 / FACTOR = 8,...
					// 127 / FACTOR = 4,...

void simpleVisualization(uint8_t *data);
void fullDepthVisualization(uint8_t *data);
void horribleWave(uint8_t *audioData);

#define NUMOFVISUALIZATIONS 3

void (*visualizations[NUMOFVISUALIZATIONS])(uint8_t *data) = { &simpleVisualization,
													&fullDepthVisualization, &horribleWave };

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
		max = data[i] / FACTOR;
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

void setPixelBuffer(uint8_t x, uint8_t y, uint8_t z, uint8_t *buf) {
	buf[(8 * (7 - z)) + (7 - y)] |= (1 << x); // z is inverted for beauty reasons
}

void setRow(uint8_t x, uint8_t z, uint8_t height, uint8_t *buf) {
	uint8_t i = 0;
	for (; i < height; i++) {
		setPixelBuffer(x, i, z, buf);
	}
}

void horribleWave(uint8_t *audioData) {
	uint8_t *imageData = buffNew();
	
	buffClearAllPixels(imageData);

	// Could not figure out a way to represent this easily in a loop
	// without using a shitload of 'if's...
	setRow(0, 0, (audioData[0] / FACTOR), imageData);
	setRow(0, 1, (audioData[0] / FACTOR), imageData);
	setRow(1, 0, (audioData[0] / FACTOR), imageData);

	setRow(0, 2, (audioData[1] / FACTOR), imageData);
	setRow(0, 3, (audioData[1] / FACTOR), imageData);
	setRow(1, 1, (audioData[1] / FACTOR), imageData);
	setRow(1, 2, (audioData[1] / FACTOR), imageData);
	setRow(2, 0, (audioData[1] / FACTOR), imageData);
	setRow(2, 1, (audioData[1] / FACTOR), imageData);

	setRow(0, 4, (audioData[2] / FACTOR), imageData);
	setRow(0, 5, (audioData[2] / FACTOR), imageData);
	setRow(1, 3, (audioData[2] / FACTOR), imageData);
	setRow(1, 4, (audioData[2] / FACTOR), imageData);
	setRow(2, 2, (audioData[2] / FACTOR), imageData);
	setRow(2, 3, (audioData[2] / FACTOR), imageData);
	setRow(3, 0, (audioData[2] / FACTOR), imageData);
	setRow(3, 1, (audioData[2] / FACTOR), imageData);
	setRow(3, 2, (audioData[2] / FACTOR), imageData);
	setRow(4, 0, (audioData[2] / FACTOR), imageData);
	setRow(4, 1, (audioData[2] / FACTOR), imageData);

	setRow(0, 6, (audioData[3] / FACTOR), imageData);
	setRow(0, 7, (audioData[3] / FACTOR), imageData);
	setRow(1, 5, (audioData[3] / FACTOR), imageData);
	setRow(1, 6, (audioData[3] / FACTOR), imageData);
	setRow(2, 4, (audioData[3] / FACTOR), imageData);
	setRow(2, 5, (audioData[3] / FACTOR), imageData);
	setRow(3, 3, (audioData[3] / FACTOR), imageData);
	setRow(3, 4, (audioData[3] / FACTOR), imageData);
	setRow(4, 2, (audioData[3] / FACTOR), imageData);
	setRow(4, 3, (audioData[3] / FACTOR), imageData);
	setRow(5, 0, (audioData[3] / FACTOR), imageData);
	setRow(5, 1, (audioData[3] / FACTOR), imageData);
	setRow(5, 2, (audioData[3] / FACTOR), imageData);
	setRow(6, 0, (audioData[3] / FACTOR), imageData);
	setRow(6, 1, (audioData[3] / FACTOR), imageData);

	setRow(1, 7, (audioData[4] / FACTOR), imageData);
	setRow(2, 6, (audioData[4] / FACTOR), imageData);
	setRow(2, 7, (audioData[4] / FACTOR), imageData);
	setRow(3, 5, (audioData[4] / FACTOR), imageData);
	setRow(3, 6, (audioData[4] / FACTOR), imageData);
	setRow(4, 4, (audioData[4] / FACTOR), imageData);
	setRow(4, 5, (audioData[4] / FACTOR), imageData);
	setRow(5, 3, (audioData[4] / FACTOR), imageData);
	setRow(5, 4, (audioData[4] / FACTOR), imageData);
	setRow(6, 2, (audioData[4] / FACTOR), imageData);
	setRow(6, 3, (audioData[4] / FACTOR), imageData);
	setRow(7, 0, (audioData[4] / FACTOR), imageData);
	setRow(7, 1, (audioData[4] / FACTOR), imageData);

	setRow(3, 7, (audioData[5] / FACTOR), imageData);
	setRow(4, 6, (audioData[5] / FACTOR), imageData);
	setRow(4, 7, (audioData[5] / FACTOR), imageData);
	setRow(5, 5, (audioData[5] / FACTOR), imageData);
	setRow(5, 6, (audioData[5] / FACTOR), imageData);
	setRow(6, 4, (audioData[5] / FACTOR), imageData);
	setRow(6, 5, (audioData[5] / FACTOR), imageData);
	setRow(7, 2, (audioData[5] / FACTOR), imageData);
	setRow(7, 3, (audioData[5] / FACTOR), imageData);
	setRow(7, 4, (audioData[5] / FACTOR), imageData);

	setRow(5, 7, (audioData[6] / FACTOR), imageData);
	setRow(6, 6, (audioData[6] / FACTOR), imageData);
	setRow(6, 7, (audioData[6] / FACTOR), imageData);
	setRow(7, 5, (audioData[6] / FACTOR), imageData);
	setRow(7, 6, (audioData[6] / FACTOR), imageData);
	setRow(7, 7, (audioData[6] / FACTOR), imageData);

	setImage(imageData);
	buffFree(imageData);
}
