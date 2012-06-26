/*
 * memLayer.h
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

// Free after usage!
uint8_t *getFrame(uint16_t frameNumber);
// 65 bytes framedata, data and duration...
void setFrame(uint16_t frameNumber, uint8_t *frameData);
void setDuration(uint16_t frameNumber, uint8_t duration);

void clearMem(void);

uint16_t getAnimationCount(void);
void setAnimationCount(uint16_t c);

// address 0 - 29
void setGeneralPurposeByte(uint8_t address, uint8_t data);
uint8_t getGeneralPurposeByte(uint8_t address);