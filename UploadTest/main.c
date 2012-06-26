/*
 * main.c
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
// Allows to send test data or finished animations from CubeControl

#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include <time.h>

#include "serial.h"

#define OK 0x42
#define ERROR 0x23

void readAck(void);
int serialWriteString(char *s);
int serialReadTry(char *data, size_t length);
int serialWriteTry(char *data, size_t length);
void intHandler(int dummy);
void transferFile(char *file);

volatile int keepRunning = 1;
FILE *fp = NULL;

#define suicide intHandler(0)

int main(int argc, char *argv[]) {
	char c;
	int i, f;
	int animationCount = 1;
	int frameCount = 2;
	int duration = 3;
	int data = -1;
	char command = -1;

	if (argc < 2) {
		printf("Usage:\n%s /dev/port [-d 0xff] | [-f /file]\n", argv[0]);
		return 0;
	}

	if (serialOpen(argv[1]) != 0) {
		printf("Could not open port: %s\n", argv[1]);
		return 0;
	}

	signal(SIGINT, intHandler);
	signal(SIGQUIT, intHandler);

	if ((argc == 4) && (strcmp(argv[2], "-d") == 0)) {
		sscanf(argv[3], "%x", &data);
		frameCount = 1;
	}

	if ((argc == 4) && (strcmp(argv[2], "-f") == 0)) {
		printf("Trying to send from file.\n");
		transferFile(argv[3]);
	}

	if (argc == 3) {
		command = argv[2][0];
	}

	printf("Port opened. Sending test data:\n");

	if (command != -1) {
		c = command;
	} else {
		c = 's';
	}
	printf("\tSending command '%c'...", c);
	if (serialWriteTry(&c, 1) != 0) {
		printf(" Could not send it!\n");
		suicide;
	}
	printf(" Success!\n");

	if (command != -1) {
		suicide;
	}

	readAck();

	printf("\tSending anim count (%d)...", animationCount);
	c = (char)animationCount;
	if (serialWriteTry(&c, 1) != 0) {
		printf(" Could not send it!\n");
		suicide;
	}
	printf(" Success!\n");

	readAck();

	printf("\tSending frame count (%d)...", frameCount);
	c = (char)frameCount;
	if (serialWriteTry(&c, 1) != 0) {
		printf(" Could not send it!\n");
		suicide;
	}
	printf(" Success!\n");

	readAck();

	for (f = 0; f < frameCount; f++) {
		printf("\tSending duration (%d)...", duration);
		c = (char)duration;
		if (serialWriteTry(&c, 1) != 0) {
			printf(" Could not send it!\n");
			suicide;
		}
		printf(" Success!\n");

		readAck();

		printf("\tSending data");
		
		for(i = 0; i < 64; i++) {
			if (data == -1) {
				if (f == 0) {
					c = (char)i; // Some test data
				} else {
					c = (char)(63 - i);
				}
			} else {
				c = (char)data;
			}

			if (serialWriteTry(&c, 1) != 0) {
				printf(" Error while sending!\n");
				suicide;
			} else {
				printf(".");
			}
		}
		printf(" Success!\n");

		readAck();
	}

	printf("\tSending end sequence");
	for (i = 0; i < 4; i++) {
		// Send 4 OKs
		c = OK;
		if (serialWriteTry(&c, 1) != 0) {
			printf(" Error while sending!\n");
			suicide;
		} else {
			printf(".");
		}
	}
	printf(" Success!\n");

	readAck();

	printf("Finished. Success!\n");

	serialClose();
	return 0;
}

void writeS(char c) {
	if (serialWriteTry(&c, 1) != 0) {
		printf("Error while sending!\n");
		suicide;
	}
}

int readFrame(char *frame) {
	char lineBuffer[80];
	char buff[3];
	int lines, byte, i = 0, tmp;
	buff[2] = '\0';

	fgets(lineBuffer, 80, fp);// Frame name, ignore
	for (lines = 0; lines < 8; lines++) {
		fgets(lineBuffer, 80, fp);
		for(byte = 0; byte < 8; byte++) {
			buff[0] = lineBuffer[(2 * byte)];
			buff[1] = lineBuffer[(2 * byte) + 1];
			sscanf(buff, "%x", &tmp);
			frame[i++] = (char)tmp;
		}
	}

	fgets(lineBuffer, 80, fp);
	if(lineBuffer[strlen(lineBuffer)-1] == '\n') {
		lineBuffer[strlen(lineBuffer)-1] = '\0';
	}
	sscanf(lineBuffer, "%d", &lines);
	return lines;
}

void transferFile(char *file) {
	char lineBuffer[80];
	int f, i;
	int fMax = 0;
	char frame[64];
	int duration;

	fp = fopen(file, "r");
	if (fp != NULL) {
		printf("File opened...\n");
		fgets(lineBuffer, 80, fp);
		if (lineBuffer[strlen(lineBuffer)-1] == '\n') {
			lineBuffer[strlen(lineBuffer)-1] = '\0';
		}
		fMax = atoi(lineBuffer);
		printf("Has %d frames.\n", fMax);
		fgets(lineBuffer, 80, fp);
		printf("Sendind command.\n");
		writeS('s');
		readAck();
		printf("Sendind animation count.\n");
		writeS(1); // Animation count
		readAck();
		printf("Sending frame count.\n");
		writeS(fMax); // Frame count
		readAck();
		for (f = 0; f < fMax; f++) {
			printf("Reading frame from file... ");
			duration = readFrame(frame);
			printf("Done!\nSending duration.\n");
			writeS(duration);
			readAck();
			printf("Sending frame (");
			for (i = 0; i < 64; i++) {
				writeS(frame[i]);
				printf("%x", frame[i]);
				if (i < 63) {
					printf(" ");
				}
			}
			printf(") Done!\n");
			readAck();
			printf("Wrote frame %d\n\n", f);
		}
		printf("Sending end sequence!\n");
		writeS(0x42);
		writeS(0x42);
		writeS(0x42);
		writeS(0x42);
		readAck();
	} else {
		printf("File not found\n");
		suicide;
	}
	printf("Success!\n");
	suicide;
}

void readAck() {
	char c;
	printf("Awaiting acknowledge...");
	if (serialReadTry(&c, 1) != 0) {
		printf(" Could not read!\n");
		suicide;
	}
	if (c != OK) {
		printf(" Was not OK!\n");
		suicide;
	}
	printf(" OK\n");
}

int serialWriteString(char *s) {
	return serialWriteTry(s, strlen(s));
}

// 1 on error, 0 on success
int serialReadTry(char *data, size_t length) {
	int i = 0;
	int written = 0;
	int ret;
	time_t start, end;
	start = time(NULL);

	while (keepRunning) {
		ret = serialRead((data + written), (length - written));
		if (ret == -1) {
			i++;
		} else {
			written += ret;
		}
		if (i > 10) {
			return 1;
		}
		if (written == length) {
			break;
		}
		end = time(NULL);
		if (difftime(start, end) > 2) {
			printf("Timeout went by. Exit!");
			suicide;
		}
	}
	return 0;
}

// 1 on error, 0 on success
int serialWriteTry(char *data, size_t length) {
	int i = 0;
	int written = 0;
	int ret;
	while (keepRunning) {
		ret = serialWrite((data + written), (length - written));
		if (ret == -1) {
			i++;
		} else {
			written += ret;
		}
		if (i > 10) {
			return 1;
		}
		if (written == length) {
			break;
		}
	}
	return 0;
}

void intHandler(int dummy) {
	keepRunning = 0;
	if (fp != NULL) {
		fclose(fp);
	}
	serialClose();
	exit(0);
}
