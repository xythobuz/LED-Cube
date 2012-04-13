/*
 * snake.c
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
#define UP 1
#define DOWN 2
#define LEFT 3
#define RIGHT 4
#define IN 5
#define OUT 6

void snake(void);
void setPixel(uint8_t x, uint8_t y, uint8_t z, uint8_t *buf);
void clearPixel(uint8_t x, uint8_t y, uint8_t z, uint8_t *buf);
uint8_t pixelSet(uint8_t x, uint8_t y, uint8_t z, uint8_t *buf);
void newCoin(uint8_t *x, uint8_t *y, uint8_t *z, uint8_t *buf);
void move(uint8_t *x, uint8_t *y, uint8_t *z, uint8_t dir);

void setPixel(uint8_t x, uint8_t y, uint8_t z, uint8_t *buf) {
	buf[(8 * z) + y] |= (1 << x);
}

void clearPixel(uint8_t x, uint8_t y, uint8_t z, uint8_t *buf) {
	buf[(8 * z) + y] &= ~(1 << x);
}

uint8_t pixelSet(uint8_t x, uint8_t y, uint8_t z, uint8_t *buf) {
	return buf[(8 * z) + y] &= (1 << x);
}

void displayBuffs(uint8_t *a, uint8_t *b) {
	uint8_t *buf = (uint8_t *)malloc(64);
	uint8_t i;
	for (i = 0; i < 64; i++) {
		buf[i] = a[i] | b[i];
	}
	setImage(buf);
	free(buf);
}

void newCoin(uint8_t *x, uint8_t *y, uint8_t *z, uint8_t *buf) {
	uint8_t tempX, tempY, tempZ;
	while (1) {
		tempX = (uint8_t)(((rand() / 256) / 32) - 1); // Num from 0 to 7
		tempY = (uint8_t)(((rand() / 256) / 32) - 1);
		tempZ = (uint8_t)(((rand() / 256) / 32) - 1);
		if (!pixelSet(tempX, tempY, tempZ, buf)) {
			break;
		}
	}

	*x = tempX;
	*y = tempY;
	*z = tempZ;
}

void move(uint8_t *x, uint8_t *y, uint8_t *z, uint8_t dir) {
	switch (dir) {
		case UP:
			*y = (*y + 1);
			break;

		case DOWN:
			*y = (*y - 1);
			break;

		case LEFT:
			*x = (*x - 1);
			break;

		case RIGHT:
			*x = (*x + 1);
			break;

		case IN:
			*z = (*z - 1);
			break;

		case OUT:
			*z = (*z + 1);
			break;

		default:
			break;
	}

	while (*x > 7) {
		*x -= 8;
	}
	while (*y > 7) {
		*y -= 8;
	}
	while (*z > 8) {
		*z -= 8;
	}
}

uint8_t isSet(uint8_t x, uint8_t y, uint8_t z, uint8_t *buf, uint8_t dir) {
	move(&x, &y, &z, dir);
	return pixelSet(x, y, z, buf);
}

uint8_t inverse(uint8_t dir) {
	if ((dir > 0) && (dir < 7)) {
		if ((dir % 2) == 0) {
			// even dir
			return (dir - 1);
		} else {
			// odd dir
			return (dir + 1);
		}
	} else {
		return 0;
	}
}

void clearTail(uint8_t x, uint8_t y, uint8_t z, uint8_t *buf, uint8_t wrongDir) {
	// dirs from 1 to 6
	uint8_t i;
	for (i = 1; i <= 6; i++) {
		if (i != wrongDir) {
			if (isSet(x, y, z, buf, i)) {
				move(&x, &y, &z, i);
				clearTail(x, y, z, buf, inverse(i));
				return;
			}
		}
	}
	// If we reached this point, we are in the last call and clear the pixel
	clearPixel(x, y, z, buf);
}

void snake() {
	uint8_t *snake = (uint8_t *)malloc(64); // Snake
	uint8_t i, xPos = 3, yPos = 3, zPos = 3, dir = UP, length = 1;
	uint8_t xCoin = 1, yCoin = 1, zCoin = 1;
	char c;
	for (i = 0; i < 64; i++) {
		snake[i] = 0;
	}
	setPixel(3, 3, 3, snake);

	serialWriteString(getString(23));

	while(1) {
		if (serialHasChar()) {
			c = serialGet();
			switch (c) {
				case 'x':
					free(snake);
					return;

				case 'w':
					dir = UP;
					break;

				case 'a':
					dir = LEFT;
					break;

				case 's':
					dir = DOWN;
					break;

				case 'd':
					dir = RIGHT;
					break;

				case 'q':
					dir = IN;
					break;

				case 'e':
					dir = OUT;
					break;

				default:
					break;
			}
		}

		if (isFinished() > 6) {
			// Perform next game step and display it
			move(&xPos, &yPos, &zPos, dir); // move snake head coords
			setPixel(xPos, yPos, zPos, snake); // Add snake head pixel
			if ((xPos == xCoin) && (yPos == yCoin) && (zCoin == zPos)) {
				newCoin(&xCoin, &yCoin, &zCoin, snake); // Set new coin
				if (length < 255) { // change length
					length++;
				} else {
					// You won :)
					free(snake);
					return;
				}
			} else {
				// Delete last snake pixel to match length
				clearTail(xPos, yPos, zPos, snake, 0);
			}

			setPixel(xCoin, yCoin, zCoin, snake);
			setImage(snake); // Display snake and coin
			clearPixel(xCoin, yCoin, zCoin, snake);
		}
	}

	free(snake);
}