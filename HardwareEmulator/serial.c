/*
 * POSIX compatible
 * Compatible API to libSerial (SerialHelper)
 * Opens a pseudoterminal, lets you write to it,
 * gives name of slave side.
 * By: Thomas Buck <taucher.bodensee@gmail.com>
 * Visit: www.xythobuz.org
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>
#include <dirent.h>
#include <errno.h>
#include <string.h>

#include "serial.h"

int fd = -1;

// Open pseudo terminal
// return name of slave side or NULL on error.
char *serialOpen() {
	struct termios options;

	if (fd != -1) {
		close(fd);
	}

	fd = posix_openpt(O_RDWR | O_NOCTTY);
	if (fd == -1) {
		return NULL;
	}

	// Set rigths
	if (grantpt(fd) == -1) {
		return NULL;
	}

	// Unlock slave
	if (unlockpt(fd) == -1) {
		return NULL;
	}

	// fcntl(fd, F_SETFL, FNDELAY); // read non blocking
	
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

	return ptsname(fd);
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
