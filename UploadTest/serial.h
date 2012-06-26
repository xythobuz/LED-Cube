/*
 * POSIX compatible serial port library
 * Uses 8 databits, no parity, 1 stop bit, no handshaking
 * By: Thomas Buck <taucher.bodensee@gmail.com>
 * Visit: www.xythobuz.org
 *
 * serial.h
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

// Use POSIX Baud constants (B2400, B9600...)
#define BAUD B38400
// Searchterm for ports in unix
#define SEARCH "tty."

// Open the serial port. Return 0 on success, -1 on error
int serialOpen(char *port);

// Write to port. Returns number of characters sent, -1 on error
ssize_t serialWrite(char *data, size_t length);

// Read from port. Return number of characters read, 0 if none available, -1 on error
ssize_t serialRead(char *data, size_t length);

// Close the serial Port
void serialClose(void);

// String array with serial port names
char** getSerialPorts(void);
