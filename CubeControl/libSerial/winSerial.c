/*
 *
 * winSerial.c
 *
 * Windows 16 (& 32 & 64?) compatible serial port library
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
#include <windows.h>

#define BAUD CBR_38400;

HANDLE hSerial = INVALID_HANDLE_VALUE;

// Open the serial port
int serialOpen(char *port) {
	DCB dcbSerialParams = {0};
	COMMTIMEOUTS timeouts = {0};

	hSerial = CreateFile(port, GENERIC_READ | GENERIC_WRITE, 0, 0, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);

	if (hSerial == INVALID_HANDLE_VALUE) {
		return -1;
	}
	

	dcbSerialParams.DCBlength = sizeof(dcbSerialParams);
	if (!GetCommState(hSerial, &dcbSerialParams)) {
		CloseHandle(hSerial);
		hSerial = INVALID_HANDLE_VALUE;
		return -1;
	}
	dcbSerialParams.BaudRate = BAUD;
	dcbSerialParams.ByteSize = 8;
	dcbSerialParams.StopBits = ONESTOPBIT;
	dcbSerialParams.Parity = NOPARITY;
	if (!SetCommState(hSerial, &dcbSerialParams)) {
		CloseHandle(hSerial);
		hSerial = INVALID_HANDLE_VALUE;
		return -1;
	}
	
	timeouts.ReadIntervalTimeout = 1000;
	timeouts.ReadTotalTimeoutConstant = 1000;
	timeouts.ReadTotalTimeoutMultiplier = 1000;
	timeouts.WriteTotalTimeoutConstant = 1000;
	timeouts.WriteTotalTimeoutMultiplier = 1000;

	if (!SetCommTimeouts(hSerial, &timeouts)) {
		CloseHandle(hSerial);
		hSerial = INVALID_HANDLE_VALUE;
		return -1;
	}

	return 0;
}

// Write to port. Returns number of characters sent, -1 on error
ssize_t serialWrite(char *data, size_t length) {
	DWORD dwBytesWritten = 0;
	if (!WriteFile(hSerial, data, length, &dwBytesWritten, NULL)) {
		return -1;
	}
	return dwBytesWritten;

}

// Read from port. Return number of characters read, 0 if none available, -1 on error
ssize_t serialRead(char *data, size_t length) {
	DWORD dwBytesRead = 0;
	if (!ReadFile(hSerial, data, length, &dwBytesRead, NULL)) {
		return -1;
	}
	return dwBytesRead;
}

// Close the serial Port
void serialClose(void) {
	CloseHandle(hSerial);
	hSerial = INVALID_HANDLE_VALUE;
}

int availableSerialPorts(char *ports) {
	int i, c = 0;
	char portName[6];
	for (i = 0; i < 20; i++) {
		sprintf(portName, "COM%d", i + 1);
		if (serialOpen(portName) == 0) {
			// success
			ports[i] = 1;
			c++;
			serialClose();
		} else {
			ports[i] = 0;
		}
	}
	return c;
}

// Last element has to be NULL
char** getSerialPorts(const char *search) {
	int i, num, c = 0, s;
	char ports[20];
	char **portList;

	num = availableSerialPorts(ports);
	portList = (char **)malloc((num + 1) * sizeof(char *));
	for (i = 0; i < 20; i++) {
		// if ports[n] == 1 -> COMn+1 does exist
		if (ports[i] != 0) {
			if (i < 9) {
				s = 5;
			} else {
				s = 6;
			}
			portList[c] = (char *)malloc(s * sizeof(char));
			sprintf(portList[c], "COM%d", i + 1);
			c++;
		}
	}
	portList[c] = NULL;

	return portList;
}
