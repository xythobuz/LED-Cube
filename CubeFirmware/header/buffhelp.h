/*
 * buffhelp.h
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
uint8_t *buffNew(void);
void buffSetPixel(uint8_t *buffer, uint8_t x, uint8_t y, uint8_t z);
void buffClearPixel(uint8_t *buffer, uint8_t x, uint8_t y, uint8_t z);
void buffFillRect(uint8_t *buffer, uint8_t x1, uint8_t y1, uint8_t z1,
					uint8_t x2, uint8_t y2, uint8_t z2, uint8_t value);
void buffFree(uint8_t *buffer);