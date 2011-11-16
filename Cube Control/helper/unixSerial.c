/*
 *
 * unixSerial.c
 *
 * POSIX compatible serial port library
 * Uses 8 databits, no parity, 1 stop bit, no handshaking
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

#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

#define BAUD B19200

int fd = -1;

// Open the serial port
int serialOpen(char *port) {
	struct termios options;

	if (fd != -1) {
		close(fd);
	}
	fd = open(port, O_RDWR | O_NOCTTY | O_NDELAY);
	if (fd == -1) {
		return -1;
	}
	
	fcntl(fd, F_SETFL, FNDELAY); // read() isn't blocking'
	tcgetattr(fd, &options);
	cfsetispeed(&options, BAUD); // Set speed
	cfsetospeed(&options, BAUD);
	options.c_cflag |= (CLOCAL | CREAD);
	
	options.c_cflag &= ~PARENB; // 8N1
	options.c_cflag &= ~CSTOPB;
	options.c_cflag &= ~CSIZE;
	options.c_cflag |= CS8;
	
	options.c_lflag &= ~(ICANON | ECHO | ECHOE | ISIG); // Raw input
	options.c_oflag &= ~OPOST; // Raw output
	options.c_iflag &= ~(IXON | IXOFF | IXANY); // No flow control

	tcsetattr(fd, TCSANOW, &options);

	return 0;
}

// Write to port. Returns number of characters sent, -1 on error
ssize_t serialWrite(char *data, size_t length) {
	return write(fd, data, length);
}

// Read from port. Return number of characters read, 0 if none available, -1 on error
ssize_t serialRead(char *data, size_t length) {
	return read(fd, data, length);
}

// Close the serial Port
void serialClose(void) {
	close(fd);
}
