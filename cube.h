/*
 * cube.h
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
#include <stdint.h>

// Time one latch is active in ns
#define LATCHDELAY 63

extern volatile uint8_t **imgBuffer; // imgBuffer[8][8]
extern volatile uint8_t imgFlag;

extern void setFet(uint8_t data);
extern void selectLatch(uint8_t latchNr);
extern void setLatch(uint8_t latchNr, uint8_t data);
extern void isrCall(void);
extern void delay_ns(uint16_t ns);
