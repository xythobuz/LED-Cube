/*
 * mem.c - HardwareEmulator
 * frame is represented as 65 bytes.
 * 0 - 63: frame data
 * 64: duration, 0 => 1/24th second
 *
 * mem.h
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

// return != 0 if error
int addFrame(char *frame);

// returns NULL if error
char *getFrame(int index);

int framesStored();

void clearMemory();