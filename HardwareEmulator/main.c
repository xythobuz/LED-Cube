/*
 * LED-Cube Hardware Emulator.
 * Creates a new pseudo terminal and emulates the LED Cube Hardware.
 * Used for testing of CubeControl Software.
 *
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
#include <stdlib.h>
#include <stdio.h>
#include <strings.h>

#include "serial.h"
#include "mem.h"

#define VERSION "LED-Cube Emu V1\n"

#define OK 0x42
#define ERROR 0x23

int sendFrames(void);
int recieveFrames(void);
int deleteFrames(void);
int serialWriteString(char *s);
int serialWriteTry(char *data, size_t length);
void intHandler(int dummy);

volatile int keepRunning = 1;

#define printf if(keepRunning)printf

int main(int argc, char *argv[]) {
	char c;
	ssize_t size;
	char *slave;

	if ((slave = serialOpen()) == NULL) {
		printf("Could not open a pseudo Terminal!\n");
		return -1;
	}

	printf("Waiting for CubeControl on \"%s\"...\n", slave);

	signal(SIGINT, intHandler);
	signal(SIGQUIT, intHandler);
	printf("Stop with CTRL+C...\n");

	while(keepRunning) {
		size = serialRead(&c, 1);
		if (size == -1) {
			// Error while reading
			printf("Could not read from psuedo terminal!\n");
			return -1;
		}
		if (size == 1) {
			switch(c) {
				case OK:
					if (serialWriteTry(&c, 1)) {
						printf("Could not write to pseudo terminal\n");
						return -1;
					}
					printf("OK!\n");
					break;

				case 'h': case 'H':
					printf("Help\n");
					if (serialWriteString("(d)elete, (g)et anims, (s)et anims, (v)ersion\n")) {
						printf("Could not write to pseudo terminal\n");
						return -1;
					}
					break;

				case 'v': case 'V':
					printf("Version\n");
					if (serialWriteString(VERSION)) {
						printf("Could not write to pseudo terminal\n");
						return -1;
					}
					break;

				case 's': case 'S':
					printf("Recieving... ");
					if (recieveFrames()) {
						printf("Error while recieving frames!\n");
						return -1;
					}
					printf("Done!\n");
					break;

				case 'g': case 'G':
					printf("Sending... ");
					if (sendFrames()) {
						printf("Error while sending frames!\n");
						return -1;
					}
					printf("Done!\n");
					break;

				case 'd': case 'D':
					printf("Deleting... ");
					if (deleteFrames()) {
						printf("Error while deleting frames!\n");
						return -1;
					}
					printf("Done!\n");
					break;

				default:
					printf("Unknown. Error!\n");
					c = ERROR;
					if (serialWriteTry(&c, 1)) {
						printf("Could not write to pseudo terminal\n");
						return -1;
					}
					break;
			}
		}
	}

	serialClose();

	return 0;
}

int sendFrames() {
	char c;
	ssize_t size;
	int frameCount, f, d;
	char *data;
	
	// Acknowledge sending this
	c = OK;
	if(serialWriteTry(&c, 1)) {
		printf("Could not write to pseudo terminal\n");
		return -1;	
	}
	
	// Send animation count. We dont store animations --> send 1
	printf("Sending animation count.\n");
	c = 1;
	if(serialWriteTry(&c, 1)) {
		printf("Could not write to pseudo terminal\n");
		return -1;	
	}

	// Await OK from Host software
	while(keepRunning) {
		size = serialRead(&c, 1);
		if (size == 1) {
			break;
		} else if (size == -1) {
			printf("Couldn't read from pseudo terminal");
			return -1;
		}
	}
	if (c != OK) {
		printf("Invalid acknowledge from Host (%d)!", c);
		return -1;
	}

	// Send framecount
	frameCount = framesStored();
	printf("Sending frameCount = %d\n", frameCount);
	c = frameCount;
	if(serialWriteTry(&c, 1)) {
		printf("Could not write to pseudo terminal\n");
		return -1;	
	}

	// Await OK from Host software
	while(keepRunning) {
		size = serialRead(&c, 1);
		if (size == 1) {
			break;
		} else if (size == -1) {
			printf("Couldn't read from pseudo terminal");
			return -1;
		}
	}
	if (c != OK) {
		printf("Invalid acknowledge from Host (%d)!", c);
		return -1;
	}
	
	for(f = 0; f < frameCount; f++){
		data = getFrame(f);

		printf("Sending duration = %d of frame %d\n", data[64], f);
		c = data[64]; // duration at end of frame data
		if(serialWriteTry(&c, 1)) {
			printf("Could not write to pseudo terminal\n");
			return -1;	
		}

		// Await OK from Host software
		while(keepRunning) {
			size = serialRead(&c, 1);
			if (size == 1) {
				break;
			} else if (size == -1) {
				printf("Couldn't read from pseudo terminal");
				return -1;
			}
		}
		if (c != OK) {
			printf("Invalid acknowledge from Host (%d)!", c);
			return -1;
		}

		printf("Sending frame data...");
		for(d = 0; d < 64; d++) {
			c = data[d];
			if(serialWriteTry(&c, 1)) {
				printf("Could not write to pseudo terminal\n");
				return -1;	
			}
		}
		printf(" %d successfully sent\n", f);

		// Await OK from Host software
		while(keepRunning) {
			size = serialRead(&c, 1);
			if (size == 1) {
				break;
			} else if (size == -1) {
				printf("Couldn't read from pseudo terminal");
				return -1;
			}
		}
		if (c != OK) {
			printf("Invalid acknowledge from Host (%d)!", c);
			return -1;
		}
	}

	printf("Done sending frames, start sending final sequence\n");
	c = OK;
	if(serialWriteTry(&c, 1)) {
		printf("Could not write to pseudo terminal\n");
		return -1;	
	}
	if(serialWriteTry(&c, 1)) {
		printf("Could not write to pseudo terminal\n");
		return -1;	
	}
	if(serialWriteTry(&c, 1)) {
		printf("Could not write to pseudo terminal\n");
		return -1;	
	}
	if(serialWriteTry(&c, 1)) {
		printf("Could not write to pseudo terminal\n");
		return -1;	
	}
	
	// Await OK from Host software
	while(keepRunning) {
		size = serialRead(&c, 1);
		if (size == 1) {
			break;
		} else if (size == -1) {
			printf("Couldn't read from pseudo terminal");
			return -1;
		}
	}
	if (c != OK) {
		printf("Invalid acknowledge from Host (%d)!", c);
	}

	return 0;	
}

int recieveFrames() {
	char c;
	ssize_t size;
	int animCount, a, frameCount, f, d;
	char data[65];

	clearMemory();

	// First send acknowledge
	c = OK;
	if (serialWriteTry(&c, 1)) {
		printf("Could not write to pseudo terminal\n");
		return -1;
	}

	printf("AnimationCount");
	while (keepRunning) {
		size = serialRead(&c, 1);
		if (size == 1) {
			break;
		} else if (size == -1) {
			printf("Could not read from psuedo terminal!\n");
			return -1;
		}
	}
	printf(" = %d\n", c);
	animCount = c;

	c = OK;
	if (serialWriteTry(&c, 1)) {
		printf("Could not write to pseudo terminal\n");
		return -1;
	}

	for (a = 0; a < animCount; a++) {
		printf("FrameCount");
		while (keepRunning) {
			size = serialRead(&c, 1);
			if (size == 1) {
				break;
			} else if (size == -1) {
				printf("Could not read from psuedo terminal!\n");
				return -1;
			}
		}
		printf(" = %d\n", c);
		frameCount = c;

		c = OK;
		if (serialWriteTry(&c, 1)) {
			printf("Could not write to pseudo terminal\n");
			return -1;
		}

		for (f = 0; f < frameCount; f++) {
			printf("Duration");
			while (keepRunning) {
				size = serialRead(&c, 1);
				if (size == 1) {
					break;
				} else if (size == -1) {
					printf("Could not read from psuedo terminal!\n");
					return -1;
				}
			}
			printf(" = %d\n", c);
			data[64] = c;

			// Acknowledge frame duration
			c = OK;
			if(serialWriteTry(&c, 1)){
				printf("Could not write to pseudo terminal\n");
				return -1;
			}

			printf("Data...");
			for (d = 0; d < 64; d++) {
				while (keepRunning) {
					size = serialRead(&c, 1);
					if (size == 1) {
						break; // We got our data byte
					} else if (size == -1) {
						printf("Could not read from psuedo terminal!\n");
						return -1;
					}
				}
				data[d] = c;
			}
			printf(" Done!\n");

			addFrame(data);

			// Acknowledge frame data
			c = OK;
			if(serialWriteTry(&c, 1)){
				printf("Could not write to pseudo terminal\n");
				return -1;
			}
		}
	}

	while (keepRunning) {
		size = serialRead(&c, 1);
		if (size == 1) {
			break;
		} else if (size == -1) {
			printf("Could not read from psuedo terminal!\n");
			return -1;
		}
	}
	while (keepRunning) {
		size = serialRead(&c, 1);
		if (size == 1) {
			break;
		} else if (size == -1) {
			printf("Could not read from psuedo terminal!\n");
			return -1;
		}
	}
	while (keepRunning) {
		size = serialRead(&c, 1);
		if (size == 1) {
			break;
		} else if (size == -1) {
			printf("Could not read from psuedo terminal!\n");
			return -1;
		}
	}
	while (keepRunning) {
		size = serialRead(&c, 1);
		if (size == 1) {
			break;
		} else if (size == -1) {
			printf("Could not read from psuedo terminal!\n");
			return -1;
		}
	}

	printf("Got 4 OKs!\n");

	c = OK;
	if (serialWriteTry(&c, 1)) {
		printf("Could not write to pseudo terminal\n");
		return -1;
	}

	return 0;
}

int deleteFrames() {
	char c = OK;
	clearMemory();
	if (serialWriteTry(&c, 1)) {
		printf("Could not write to pseudo terminal\n");
		return -1;
	}
	return 0;
}

int serialWriteString(char *s) {
	return serialWriteTry(s, strlen(s));
}

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
	printf("\nExiting...\n");
	keepRunning = 0;
	serialClose();
	exit(0);
}
