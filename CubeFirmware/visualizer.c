/*
 * visualizer.c
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
#include <avr/io.h>
#include <stdint.h>
#include <stdlib.h>

#include <visualizer.h>
#include <cube.h>
#include <buffhelp.h>

#define FACTOR 31   // 8 LEDs, Max Val 255:
					// 256 / 8 = 32 => Divide by 31 (FACTOR) to get num of leds to light
					// 255 / FACTOR = 8,...
					// 127 / FACTOR = 4,...
 #define THRESHOLD (FACTOR * 10 / 17)

uint8_t maxVal(uint8_t data, uint8_t log);
void setRow(uint8_t x, uint8_t z, uint8_t height, uint8_t *buf);
uint8_t average(uint8_t *data);
uint8_t maximum(uint8_t *data);
void filterData(uint8_t *data, uint8_t log);
void simpleVisualization(uint8_t *data);
void simpleSwitch(uint8_t *data);
void fullDepthVisualization(uint8_t *data);
void horribleWave(uint8_t *audioData);
void simpleLog(uint8_t *data);
void fullDepthLog(uint8_t *data);
void linLog(uint8_t *data);

#define LINEARVISUALS 4
void (*linear[LINEARVISUALS])(uint8_t *data) = { &simpleVisualization, &fullDepthVisualization,
											&simpleSwitch, &horribleWave };

#define LOGARITHMICVISUALS 3
void (*logarithmic[LOGARITHMICVISUALS])(uint8_t *data) = { &linLog, &simpleLog, &fullDepthLog };

#define NUMOFVISUALIZATIONS (LINEARVISUALS + LOGARITHMICVISUALS)

uint8_t logScale[8] = { 2, 4, 8, 16, 31, 63, 125, 250 }; // --> ca. (1 << (led + 1));

uint8_t numberOfVisualizations(void) {
	return NUMOFVISUALIZATIONS;
}

void runVisualization(uint8_t *data, uint8_t id) {
	if (id < NUMOFVISUALIZATIONS) {
		if (id < LINEARVISUALS) {
			filterData(data, 0); // Linear filter
			linear[id](data); // run it
		} else if ((id - LINEARVISUALS) < LOGARITHMICVISUALS) {
			filterData(data, 1); // Logarithmic filter
			logarithmic[id - LINEARVISUALS](data); // run it
		} else {
			// Invalid, do nothing!
		}
	}
}

uint8_t maximum(uint8_t *data) {
	uint8_t i, max = 0;
	for (i = 0; i < 7; i++) {
		if (data[i] > max) {
			max = data[i];
		}
	}
	return max;
}

uint8_t maxVal(uint8_t data, uint8_t log) {
	uint8_t max = 0;
	if (log) {
		while ((max <= 7) && (data > logScale[max])) // Some bitshifting would do it...
			max++; // But this is more fine grained
	} else {
		max = data / FACTOR;
	}
	return max;
}

uint8_t average(uint8_t *data) {
	uint16_t sum = 0;
	uint8_t i;
	for (i = 0; i < 7; i++) {
		sum += data[i];
	}
	sum /= 7;
	return (uint8_t)sum;
}

void filterData(uint8_t *data, uint8_t log) {
	uint8_t i;
	uint8_t max;

	if (log) {
		if (average(data) < THRESHOLD) {
			max = THRESHOLD;
		} else {
			max = THRESHOLD / 2;
		}
	} else {
		max = THRESHOLD;
	}
	if (average(data) < max) {
		for (i = 0; i < 7; i++) {
			data[i] = 0;
		}
	}
}

void simpleVUMeter(uint8_t *data, uint8_t *buff, uint8_t z, uint8_t log, uint8_t change) {
	uint8_t i, h = 0, max;
	for(i = 0; i < 7; i++) {
		max = maxVal(data[i], log);
		for (h = 0; h < max; h++) {
			if (i == 0) {
				if (change) {
					buffSetPixel(buff, i, z, (h * 10 / 15));
				} else {
					buffSetPixel(buff, i, (h * 10 / 15), z);
				}
				
			}
			if (change) {
				buffSetPixel(buff, i + 1, z, h);
			} else {
				buffSetPixel(buff, i + 1, h, z);
			}
			
		}
	}
}

void simpleLog(uint8_t *data) {
	uint8_t *buff;

	buff = buffNew();

	// setRow(0, 0, maxVal(average(data), 1), buff); // Show average
	simpleVUMeter(data, buff, 7, 1, 0);

	setImage(buff);
	buffFree(buff);
}

void simpleVisualization(uint8_t *data) {
	uint8_t *buff;
	buff = buffNew();

	// setRow(0, 0, maxVal(average(data), 0), buff); // Show average
	simpleVUMeter(data, buff, 7, 0, 0);

	setImage(buff);
	buffFree(buff);
}

void simpleSwitch(uint8_t *data) {
	uint8_t *buff;
	uint8_t i;
	buff = buffNew();

	for (i = 2; i < 6; i++) {
		simpleVUMeter(data, buff, i, 0, 1);
	}

	setImage(buff);
	buffFree(buff);
}

void linLog(uint8_t *data) {
	uint8_t *buff;
	buff = buffNew();

	simpleVUMeter(data, buff, 2, 1, 0);
	filterData(data, 0);
	simpleVUMeter(data, buff, 5, 0, 0);

	setImage(buff);
	buffFree(buff);
}

void fullDepthLog(uint8_t *data) {
	uint8_t *buff;
	uint8_t i;
	buff = buffNew();

	for (i = 0; i < 8; i++) {
		simpleVUMeter(data, buff, i, 1, 0);
	}

	setImage(buff);
	buffFree(buff);
}

void fullDepthVisualization(uint8_t *data) {
	uint8_t *buff;
	uint8_t i;
	buff = buffNew();

	for (i = 0; i < 8; i++) {
		simpleVUMeter(data, buff, i, 0, 0);
	}

	setImage(buff);
	buffFree(buff);
}

void setRow(uint8_t x, uint8_t z, uint8_t height, uint8_t *buf) {
	uint8_t i;
	for (i = 0; i < height; i++) {
		buffSetPixel(buf, x, i, z);
	}
}

void horribleWave(uint8_t *audioData) {
	uint8_t *imageData = buffNew();

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
