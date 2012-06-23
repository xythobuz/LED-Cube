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

volatile int keepRunning = 1;

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
		printf("Usage:\n%s /dev/port [-d 0xff]\n", argv[0]);
		return 0;
	}

	if (serialOpen(argv[1]) != 0) {
		printf("Could not open port: %s\n", argv[1]);
		return 0;
	}

	if ((argc >= 4) && (strcmp(argv[2], "-d") == 0)) {
		sscanf(argv[3], "%x", &data);
		frameCount = 1;
	}

	if (argc == 3) {
		command = argv[2][0];
	}

	signal(SIGINT, intHandler);
	signal(SIGQUIT, intHandler);

	printf("Port opened. Sending test data:\n");

	printf("\tSending command 's'...");
	if (command != -1) {
		c = command;
	} else {
		c = 's';
	}
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
	serialClose();
	exit(0);
}
