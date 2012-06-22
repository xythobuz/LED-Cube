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

/*
 * Call init(). A picture you set a new picture it will be displayed.
 * After the last part is applied to the latches, isFinished() will change
 * to 1. Now you can place a new picture here.
 */
extern void initCube(void);

// Copies the data in img into its own buffer
extern void setImage(uint8_t *img); // img[64]
extern uint8_t isFinished(void);
extern void close(void);

extern void fillBuffer(uint8_t val);

extern uint32_t getTriggerCount(void);