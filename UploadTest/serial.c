/*
 * POSIX compatible serial port library
 * Uses 8 databits, no parity, 1 stop bit, no handshaking
 * By: Thomas Buck <taucher.bodensee@gmail.com>
 * Visit: www.xythobuz.org
 *
 * serial.c
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

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>
#include <dirent.h>
#include <errno.h>

#include "serial.h"

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
	ssize_t temp = read(fd, data, length);
	if ((temp == -1) && (errno == EAGAIN)) {
		return 0;
	} else {
		return temp;
	}
}

// Close the serial Port
void serialClose(void) {
	close(fd);
}

char** namesInDev(int *siz) {
	DIR *dir;
	struct dirent *ent;
	int i = 0, size = 0;
	char **files = NULL;
	dir = opendir("/dev/");
	while ((ent = readdir(dir)) != NULL) {
		size++;
	}
	files = (char **)malloc((size + 1) * sizeof(char *));
	files[size++] = NULL;
	closedir(dir);
	dir = opendir("/dev/");
	while ((ent = readdir(dir)) != NULL) {
		files[i] = (char *)malloc((strlen(ent->d_name) + 1) * sizeof(char));
		files[i] = strcpy(files[i], ent->d_name);
		i++;
	}
	closedir(dir);

	char *tmp = NULL;
	// Fix every string, addin /dev/ in front of it...
	for (i = 0; i < (size - 1); i++) {
		tmp = (char *)malloc((strlen(files[i]) + 6) * sizeof(char));
		tmp[0] = '/';
		tmp[1] = 'd';
		tmp[2] = 'e';
		tmp[3] = 'v';
		tmp[4] = '/';
		files[i] = strncat(tmp, files[i], strlen(files[i]));
	}

	*siz = size;
	return files;
}

char** getSerialPorts() {
	int size;
	char** files = namesInDev(&size);
	char **fin = NULL, **finish = NULL;
	int i = 0, j = 0, f, g;

	fin = (char **)malloc(size * sizeof(char *));
	// Has space for all files in dev!

	while (files[i] != NULL) {
		// Filter for SEARCH and if it is a serial port
		if (strstr(files[i], SEARCH) != NULL) {
			fin[j++] = files[i];
		} else {
			free(files[i]);
		}
		i++;
	}
	free(files);

	// Copy in memory with matching size, NULL at end
	finish = (char **)malloc((j + 1) * sizeof(char *));
	finish[j] = NULL; 
	for (i = 0; i < j; i++) {
		finish[i] = fin[i];
	}

	free(fin);

	return finish;
}
