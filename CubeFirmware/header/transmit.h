/*
 * transmit.c
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

void recieveAnimations(void);
void transmitAnimations(void);
void sendAudioData(void);
void printTime(void);
void dumpFrame(uint8_t *f);
uint8_t *readLine(void);
uint8_t readNumber(uint8_t base);
void writeNumber(uint8_t num, uint8_t base);
uint8_t *readAFrame(void);
void simpleAnimationInput(void);