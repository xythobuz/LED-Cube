/*
 * LED-Cube Hardware Emulator.
 * Creates a new pseudo terminal and emulates the LED Cube Hardware.
 * Used for testing of CubeControl Software.
 */
#include <stdlib.h>
#include <stdio.h>
#include <strings.h>

#include "serial.h"

#define VERSION "LED-Cube Emu V1\n"

#define OK 0x42
#define ERROR 0x23

int serialWriteString(char *s);
int serialWriteTry(char *data, size_t length);
void intHandler(int dummy);

volatile int keepRunning = 1;

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
						printf("Could not write to pseudo terminal");
						return -1;
					}
					break;

				case 'h': case 'H':
					if (serialWriteString("(d)elete, (g)et anims, (s)et anims, (v)ersion\n")) {
						printf("Could not write to pseudo terminal");
						return -1;
					}
					break;

				case 'v': case 'V':
					if (serialWriteString(VERSION)) {
						printf("Could not write to pseudo terminal");
						return -1;
					}
					break;

				default:
					c = ERROR;
					if (serialWriteTry(&c, 1)) {
						printf("Could not write to pseudo terminal");
						return -1;
					}
					break;
			}
		}
	}

	serialClose();

	return 0;
}

int serialWriteString(char *s) {
	return serialWriteTry(s, strlen(s));
}

int serialWriteTry(char *data, size_t length) {
	int i = 0;
	int written = 0;
	int ret;
	while (1) {
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
	printf("\nExiting...\n");
}
