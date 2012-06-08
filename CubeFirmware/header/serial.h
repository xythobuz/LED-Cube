/*
 * serial.h
 *
 * Copyright 2011 Thomas Buck <xythobuz@me.com>
 *
 * This file is part of xyRobot.
 *
 * xyRobot is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * xyRobot is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with xyRobot.  If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef serial_h_
#define serial_h_

// RX & TX buffer size in bytes
#define RX_BUFFER_SIZE 32
#define TX_BUFFER_SIZE 32

// Select Baudrate with this macro
#define UART_BAUD_SELECT(baudRate,xtalCpu) ((xtalCpu)/((baudRate)*16l)-1)

#define ODD 2
#define EVEN 1
#define NONE 0

uint8_t serialInit(uint16_t baud, uint8_t databits, uint8_t parity, uint8_t stopbits);

uint8_t serialHasChar(void);
uint8_t serialGet(void);

// 1 if space remaining, 0 if full
uint8_t serialBufferSpaceRemaining(void);
void serialWrite(uint8_t data);
void serialWriteString(char *data);

void serialClose(void);

#endif /* SERIAL_H_ */
